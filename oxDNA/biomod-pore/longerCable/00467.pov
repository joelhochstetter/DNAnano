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
	<24.628386, 34.904770, 35.338509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.284636, 34.820629, 35.152077>,  <24.078386, 34.770145, 35.040218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.284636, 34.820629, 35.152077>,  <24.628386, 34.904770, 35.338509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.284636, 34.820629, 35.152077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485206, -0.047751, -0.873095,
		0.161400, -0.976459, 0.143099,
		-0.859375, -0.210350, -0.466077,
		24.026823, 34.757526, 35.012253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.481678, 34.462978, 35.902271>,  <24.628386, 34.904770, 35.338509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.481678, 34.462978, 35.902271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.330563, 34.701962, 36.185204>,  <24.239893, 34.845352, 36.354965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.330563, 34.701962, 36.185204>,  <24.481678, 34.462978, 35.902271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.330563, 34.701962, 36.185204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571750, 0.450357, -0.685770,
		-0.728271, -0.663494, 0.171457,
		-0.377787, 0.597457, 0.707334,
		24.217226, 34.881199, 36.397404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.055864, 34.803928, 36.321541>,  <24.481678, 34.462978, 35.902271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.055864, 34.803928, 36.321541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.227819, 34.446373, 36.372402>,  <25.330994, 34.231842, 36.402920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.227819, 34.446373, 36.372402>,  <25.055864, 34.803928, 36.321541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.227819, 34.446373, 36.372402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235939, 0.247152, 0.939813,
		-0.871509, -0.374015, 0.317150,
		0.429889, -0.893884, 0.127150,
		25.356787, 34.178207, 36.410549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.746901, 34.476387, 36.955563>,  <25.055864, 34.803928, 36.321541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.746901, 34.476387, 36.955563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.122314, 34.357681, 36.885044>,  <25.347563, 34.286457, 36.842735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.122314, 34.357681, 36.885044>,  <24.746901, 34.476387, 36.955563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.122314, 34.357681, 36.885044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255243, 0.252838, 0.933233,
		-0.232379, -0.920870, 0.313045,
		0.938536, -0.296767, -0.176292,
		25.403875, 34.268650, 36.832157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.965750, 34.165627, 37.555759>,  <24.746901, 34.476387, 36.955563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.965750, 34.165627, 37.555759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.307169, 34.268032, 37.374249>,  <25.512020, 34.329475, 37.265343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.307169, 34.268032, 37.374249>,  <24.965750, 34.165627, 37.555759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.307169, 34.268032, 37.374249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419158, 0.179891, 0.889913,
		0.309457, -0.949789, 0.046238,
		0.853547, 0.256009, -0.453780,
		25.563232, 34.344833, 37.238113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.453461, 33.897621, 38.005722>,  <24.965750, 34.165627, 37.555759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.453461, 33.897621, 38.005722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.659620, 34.163967, 37.789951>,  <25.783316, 34.323776, 37.660488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.659620, 34.163967, 37.789951>,  <25.453461, 33.897621, 38.005722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.659620, 34.163967, 37.789951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338887, 0.419793, 0.841980,
		0.787095, -0.616761, -0.009293,
		0.515399, 0.665867, -0.539429,
		25.814240, 34.363728, 37.628124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.282528, 33.866821, 38.234692>,  <25.453461, 33.897621, 38.005722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.282528, 33.866821, 38.234692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.135553, 34.199436, 38.068058>,  <26.047369, 34.399006, 37.968079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.135553, 34.199436, 38.068058>,  <26.282528, 33.866821, 38.234692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.135553, 34.199436, 38.068058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304182, 0.530728, 0.791076,
		0.878899, 0.163952, -0.447946,
		-0.367436, 0.831533, -0.416585,
		26.025322, 34.448895, 37.943081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.815674, 34.369640, 38.239590>,  <26.282528, 33.866821, 38.234692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.815674, 34.369640, 38.239590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.462826, 34.557232, 38.257137>,  <26.251116, 34.669785, 38.267666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.462826, 34.557232, 38.257137>,  <26.815674, 34.369640, 38.239590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.462826, 34.557232, 38.257137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326805, 0.542307, 0.774017,
		0.339206, 0.697112, -0.631644,
		-0.882121, 0.468975, 0.043866,
		26.198189, 34.697926, 38.270298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.972120, 35.121830, 38.485321>,  <26.815674, 34.369640, 38.239590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.972120, 35.121830, 38.485321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.575403, 35.078987, 38.513264>,  <26.337374, 35.053280, 38.530029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.575403, 35.078987, 38.513264>,  <26.972120, 35.121830, 38.485321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.575403, 35.078987, 38.513264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012154, 0.622764, 0.782316,
		-0.127293, 0.775044, -0.618953,
		-0.991791, -0.107106, 0.069854,
		26.277866, 35.046856, 38.534222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.568335, 35.860050, 38.363644>,  <26.972120, 35.121830, 38.485321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.568335, 35.860050, 38.363644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.330990, 35.619431, 38.577583>,  <26.188583, 35.475060, 38.705948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.330990, 35.619431, 38.577583>,  <26.568335, 35.860050, 38.363644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.330990, 35.619431, 38.577583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095141, 0.712211, 0.695488,
		-0.799293, 0.361790, -0.479831,
		-0.593362, -0.601551, 0.534845,
		26.152981, 35.438965, 38.738037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.879759, 36.246693, 38.451180>,  <26.568335, 35.860050, 38.363644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.879759, 36.246693, 38.451180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.940050, 35.955345, 38.718540>,  <25.976225, 35.780537, 38.878956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.940050, 35.955345, 38.718540>,  <25.879759, 36.246693, 38.451180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.940050, 35.955345, 38.718540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066895, 0.682092, 0.728201,
		-0.986310, -0.065046, 0.151533,
		0.150726, -0.728368, 0.668402,
		25.985268, 35.736835, 38.919060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.435047, 36.441284, 39.023762>,  <25.879759, 36.246693, 38.451180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.435047, 36.441284, 39.023762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.740595, 36.202412, 39.121635>,  <25.923923, 36.059086, 39.180359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.740595, 36.202412, 39.121635>,  <25.435047, 36.441284, 39.023762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.740595, 36.202412, 39.121635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187296, 0.567957, 0.801465,
		-0.617594, -0.566387, 0.545696,
		0.763871, -0.597186, 0.244685,
		25.969755, 36.023254, 39.195042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.575583, 36.236221, 39.731102>,  <25.435047, 36.441284, 39.023762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.575583, 36.236221, 39.731102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.959261, 36.266708, 39.622192>,  <26.189468, 36.285000, 39.556847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.959261, 36.266708, 39.622192>,  <25.575583, 36.236221, 39.731102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.959261, 36.266708, 39.622192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201688, 0.490435, 0.847818,
		0.198152, -0.868138, 0.455051,
		0.959196, 0.076218, -0.272274,
		26.247021, 36.289574, 39.540508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.888336, 35.925781, 40.260502>,  <25.575583, 36.236221, 39.731102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.888336, 35.925781, 40.260502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.141708, 36.161827, 40.060291>,  <26.293732, 36.303455, 39.940163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.141708, 36.161827, 40.060291>,  <25.888336, 35.925781, 40.260502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.141708, 36.161827, 40.060291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422680, 0.277947, 0.862605,
		0.648157, -0.757964, -0.073370,
		0.633431, 0.590115, -0.500530,
		26.331738, 36.338863, 39.910133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.517824, 35.820774, 40.417152>,  <25.888336, 35.925781, 40.260502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.517824, 35.820774, 40.417152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.480728, 36.218235, 40.391682>,  <26.458469, 36.456711, 40.376400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.480728, 36.218235, 40.391682>,  <26.517824, 35.820774, 40.417152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.480728, 36.218235, 40.391682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272764, 0.086864, 0.958152,
		0.957601, 0.071490, -0.279089,
		-0.092741, 0.993652, -0.063681,
		26.452906, 36.516331, 40.372578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.712862, 35.217709, 39.903957>,  <26.517824, 35.820774, 40.417152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.712862, 35.217709, 39.903957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.388720, 35.423542, 39.791870>,  <26.194233, 35.547043, 39.724617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.388720, 35.423542, 39.791870>,  <26.712862, 35.217709, 39.903957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.388720, 35.423542, 39.791870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163317, -0.657647, -0.735410,
		-0.562714, -0.550182, 0.616971,
		-0.810358, 0.514587, -0.280214,
		26.145613, 35.577919, 39.707806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.057377, 34.851082, 39.880989>,  <26.712862, 35.217709, 39.903957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.057377, 34.851082, 39.880989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.033291, 35.128181, 39.593525>,  <26.018839, 35.294441, 39.421047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.033291, 35.128181, 39.593525>,  <26.057377, 34.851082, 39.880989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.033291, 35.128181, 39.593525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132177, -0.719162, -0.682155,
		-0.989396, 0.053914, 0.134870,
		-0.060215, 0.692748, -0.718662,
		26.015226, 35.336006, 39.377926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.459227, 34.643360, 39.516563>,  <26.057377, 34.851082, 39.880989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.459227, 34.643360, 39.516563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.658710, 34.893097, 39.276070>,  <25.778400, 35.042938, 39.131775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.658710, 34.893097, 39.276070>,  <25.459227, 34.643360, 39.516563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.658710, 34.893097, 39.276070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197735, -0.593411, -0.780234,
		-0.843912, 0.507996, -0.172487,
		0.498711, 0.624342, -0.601236,
		25.808325, 35.080399, 39.095699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.066311, 34.807442, 38.859585>,  <25.459227, 34.643360, 39.516563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.066311, 34.807442, 38.859585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.441601, 34.897648, 38.754612>,  <25.666775, 34.951771, 38.691628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.441601, 34.897648, 38.754612>,  <25.066311, 34.807442, 38.859585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.441601, 34.897648, 38.754612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191891, -0.292013, -0.936966,
		-0.287938, 0.929446, -0.230699,
		0.938227, 0.225519, -0.262434,
		25.723068, 34.965305, 38.675880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.049543, 35.298393, 38.348057>,  <25.066311, 34.807442, 38.859585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.049543, 35.298393, 38.348057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.409269, 35.124825, 38.326363>,  <25.625105, 35.020683, 38.313347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.409269, 35.124825, 38.326363>,  <25.049543, 35.298393, 38.348057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.409269, 35.124825, 38.326363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250937, -0.410495, -0.876656,
		0.358135, 0.802001, -0.478051,
		0.899316, -0.433922, -0.054239,
		25.679064, 34.994648, 38.310089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.431545, 35.546436, 37.696468>,  <25.049543, 35.298393, 38.348057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.431545, 35.546436, 37.696468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.541145, 35.185719, 37.830147>,  <25.606905, 34.969288, 37.910355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.541145, 35.185719, 37.830147>,  <25.431545, 35.546436, 37.696468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.541145, 35.185719, 37.830147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298600, -0.410090, -0.861780,
		0.914200, 0.136337, -0.381641,
		0.274000, -0.901797, 0.334194,
		25.623344, 34.915180, 37.930405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.821621, 35.189796, 37.196110>,  <25.431545, 35.546436, 37.696468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.821621, 35.189796, 37.196110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.629587, 34.927040, 37.428665>,  <25.514366, 34.769386, 37.568199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.629587, 34.927040, 37.428665>,  <25.821621, 35.189796, 37.196110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.629587, 34.927040, 37.428665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273333, -0.517754, -0.810691,
		0.833552, -0.548113, 0.069016,
		-0.480084, -0.656889, 0.581392,
		25.485561, 34.729973, 37.603085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.621120, 35.210674, 37.025646>,  <25.821621, 35.189796, 37.196110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.621120, 35.210674, 37.025646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.379463, 34.954529, 37.215359>,  <26.234468, 34.800842, 37.329185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.379463, 34.954529, 37.215359>,  <26.621120, 35.210674, 37.025646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.379463, 34.954529, 37.215359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294860, -0.373294, -0.879607,
		0.740315, -0.671257, 0.036706,
		-0.604145, -0.640363, 0.474282,
		26.198219, 34.762421, 37.357643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.679363, 34.591312, 36.676796>,  <26.621120, 35.210674, 37.025646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.679363, 34.591312, 36.676796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.336948, 34.508606, 36.866302>,  <26.131500, 34.458984, 36.980007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.336948, 34.508606, 36.866302>,  <26.679363, 34.591312, 36.676796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.336948, 34.508606, 36.866302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408921, -0.289779, -0.865339,
		0.316205, -0.934493, 0.163513,
		-0.856037, -0.206761, 0.473763,
		26.080137, 34.446579, 37.008430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.533226, 33.861984, 36.506672>,  <26.679363, 34.591312, 36.676796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.533226, 33.861984, 36.506672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.207153, 34.076797, 36.593460>,  <26.011511, 34.205685, 36.645535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.207153, 34.076797, 36.593460>,  <26.533226, 33.861984, 36.506672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.207153, 34.076797, 36.593460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363717, -0.183087, -0.913339,
		-0.450768, -0.823453, 0.344577,
		-0.815179, 0.537033, 0.216974,
		25.962599, 34.237907, 36.658554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.954916, 33.667458, 36.160141>,  <26.533226, 33.861984, 36.506672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.954916, 33.667458, 36.160141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.301109, 33.505135, 36.277622>,  <26.508825, 33.407742, 36.348110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.301109, 33.505135, 36.277622>,  <25.954916, 33.667458, 36.160141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.301109, 33.505135, 36.277622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409550, -0.235602, 0.881340,
		-0.288464, -0.883067, -0.370110,
		0.865481, -0.405814, 0.293697,
		26.560755, 33.383392, 36.365730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.958641, 32.849991, 36.375118>,  <25.954916, 33.667458, 36.160141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.958641, 32.849991, 36.375118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.224459, 33.080128, 36.565849>,  <26.383949, 33.218212, 36.680286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.224459, 33.080128, 36.565849>,  <25.958641, 32.849991, 36.375118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.224459, 33.080128, 36.565849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387335, -0.280467, 0.878242,
		0.639026, -0.768320, 0.036469,
		0.664542, 0.575346, 0.476824,
		26.423822, 33.252731, 36.708897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.229166, 32.404278, 36.923149>,  <25.958641, 32.849991, 36.375118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.229166, 32.404278, 36.923149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240923, 32.796146, 37.002522>,  <26.247976, 33.031269, 37.050144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240923, 32.796146, 37.002522>,  <26.229166, 32.404278, 36.923149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.240923, 32.796146, 37.002522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580200, -0.144931, 0.801475,
		0.813943, -0.138688, 0.564147,
		0.029393, 0.979674, 0.198433,
		26.249741, 33.090050, 37.062050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.319340, 32.429680, 37.627377>,  <26.229166, 32.404278, 36.923149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.319340, 32.429680, 37.627377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.186577, 32.788887, 37.511860>,  <26.106920, 33.004410, 37.442551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.186577, 32.788887, 37.511860>,  <26.319340, 32.429680, 37.627377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.186577, 32.788887, 37.511860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697369, -0.027431, 0.716186,
		0.635228, 0.439100, 0.635356,
		-0.331906, 0.898019, -0.288790,
		26.087006, 33.058292, 37.425224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.300303, 32.908287, 38.260746>,  <26.319340, 32.429680, 37.627377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.300303, 32.908287, 38.260746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.020596, 32.986832, 37.985802>,  <25.852772, 33.033958, 37.820835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.020596, 32.986832, 37.985802>,  <26.300303, 32.908287, 38.260746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.020596, 32.986832, 37.985802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702719, -0.012352, 0.711360,
		0.131190, 0.980455, 0.146621,
		-0.699268, 0.196357, -0.687364,
		25.810816, 33.045738, 37.779594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.024017, 32.586033, 38.448345>,  <26.300303, 32.908287, 38.260746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.024017, 32.586033, 38.448345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.245438, 32.505505, 38.125099>,  <27.378290, 32.457188, 37.931152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.245438, 32.505505, 38.125099>,  <27.024017, 32.586033, 38.448345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.245438, 32.505505, 38.125099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527686, 0.665918, -0.527352,
		0.644305, 0.718349, 0.262387,
		0.553551, -0.201318, -0.808117,
		27.411503, 32.445110, 37.882664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.422453, 32.551907, 38.903656>,  <27.024017, 32.586033, 38.448345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.422453, 32.551907, 38.903656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.690702, 32.256378, 38.877090>,  <26.851652, 32.079060, 38.861153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.690702, 32.256378, 38.877090>,  <26.422453, 32.551907, 38.903656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.690702, 32.256378, 38.877090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416729, 0.301167, 0.857692,
		-0.613679, -0.602863, 0.509857,
		0.670623, -0.738820, -0.066411,
		26.891890, 32.034733, 38.857166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.531490, 32.062119, 39.553013>,  <26.422453, 32.551907, 38.903656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.531490, 32.062119, 39.553013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876255, 32.106907, 39.355198>,  <27.083115, 32.133778, 39.236507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876255, 32.106907, 39.355198>,  <26.531490, 32.062119, 39.553013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.876255, 32.106907, 39.355198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340660, 0.594541, 0.728335,
		0.375574, -0.796231, 0.474299,
		0.861914, 0.111969, -0.494538,
		27.134829, 32.140499, 39.206837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.010138, 31.948488, 40.022079>,  <26.531490, 32.062119, 39.553013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.010138, 31.948488, 40.022079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.207582, 32.165272, 39.750011>,  <27.326050, 32.295341, 39.586773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.207582, 32.165272, 39.750011>,  <27.010138, 31.948488, 40.022079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.207582, 32.165272, 39.750011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292562, 0.633029, 0.716716,
		0.818997, -0.552770, 0.153914,
		0.493612, 0.541959, -0.680168,
		27.355665, 32.327858, 39.545959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.732750, 32.002495, 40.191288>,  <27.010138, 31.948488, 40.022079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.732750, 32.002495, 40.191288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.632801, 32.324402, 39.975918>,  <27.572832, 32.517548, 39.846695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.632801, 32.324402, 39.975918>,  <27.732750, 32.002495, 40.191288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.632801, 32.324402, 39.975918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481249, 0.585744, 0.652153,
		0.840216, -0.096163, -0.533658,
		-0.249874, 0.804771, -0.538430,
		27.557838, 32.565834, 39.814388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.402245, 32.136513, 39.860462>,  <27.732750, 32.002495, 40.191288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.402245, 32.136513, 39.860462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.249990, 32.406029, 39.607124>,  <28.158638, 32.567738, 39.455120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.249990, 32.406029, 39.607124>,  <28.402245, 32.136513, 39.860462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.249990, 32.406029, 39.607124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317285, 0.738482, 0.594957,
		0.868589, 0.025511, -0.494876,
		-0.380635, 0.673790, -0.633343,
		28.135799, 32.608166, 39.417122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.977373, 32.676353, 39.621014>,  <28.402245, 32.136513, 39.860462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.977373, 32.676353, 39.621014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.606846, 32.826988, 39.625324>,  <28.384529, 32.917370, 39.627911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.606846, 32.826988, 39.625324>,  <28.977373, 32.676353, 39.621014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.606846, 32.826988, 39.625324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274867, 0.655981, 0.702949,
		0.257651, 0.654117, -0.711159,
		-0.926318, 0.376590, 0.010781,
		28.328951, 32.939964, 39.628559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.066397, 33.365902, 39.683647>,  <28.977373, 32.676353, 39.621014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.066397, 33.365902, 39.683647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.688154, 33.314640, 39.803249>,  <28.461208, 33.283882, 39.875011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.688154, 33.314640, 39.803249>,  <29.066397, 33.365902, 39.683647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.688154, 33.314640, 39.803249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118925, 0.719340, 0.684403,
		-0.302797, 0.682735, -0.664972,
		-0.945606, -0.128153, 0.299008,
		28.404472, 33.276196, 39.892952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.802849, 33.968861, 39.977703>,  <29.066397, 33.365902, 39.683647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.802849, 33.968861, 39.977703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578012, 33.686180, 40.149574>,  <28.443111, 33.516571, 40.252697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578012, 33.686180, 40.149574>,  <28.802849, 33.968861, 39.977703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.578012, 33.686180, 40.149574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160217, 0.602712, 0.781709,
		-0.811410, 0.370548, -0.452004,
		-0.562089, -0.706705, 0.429678,
		28.409386, 33.474167, 40.278477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.466696, 34.294678, 40.488228>,  <28.802849, 33.968861, 39.977703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.466696, 34.294678, 40.488228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.427252, 33.904053, 40.564762>,  <28.403585, 33.669678, 40.610683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.427252, 33.904053, 40.564762>,  <28.466696, 34.294678, 40.488228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.427252, 33.904053, 40.564762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123015, 0.202764, 0.971470,
		-0.987494, 0.072258, -0.140125,
		-0.098609, -0.976558, 0.191339,
		28.397669, 33.611084, 40.622166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.027256, 34.212044, 40.986652>,  <28.466696, 34.294678, 40.488228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.027256, 34.212044, 40.986652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.146828, 33.831444, 41.015747>,  <28.218571, 33.603085, 41.033203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.146828, 33.831444, 41.015747>,  <28.027256, 34.212044, 40.986652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.146828, 33.831444, 41.015747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068006, 0.054789, 0.996179,
		-0.951849, -0.302733, -0.048329,
		0.298929, -0.951499, 0.072739,
		28.236506, 33.545994, 41.037567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.539268, 33.787678, 41.316135>,  <28.027256, 34.212044, 40.986652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.539268, 33.787678, 41.316135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.894724, 33.645123, 41.431587>,  <28.107998, 33.559589, 41.500858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.894724, 33.645123, 41.431587>,  <27.539268, 33.787678, 41.316135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.894724, 33.645123, 41.431587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368546, -0.180396, 0.911938,
		-0.272942, -0.916755, -0.291654,
		0.888637, -0.356394, 0.288629,
		28.161316, 33.538204, 41.518177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.553122, 33.222931, 40.922039>,  <27.539268, 33.787678, 41.316135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.553122, 33.222931, 40.922039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.784975, 33.385326, 40.639423>,  <27.924088, 33.482765, 40.469852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.784975, 33.385326, 40.639423>,  <27.553122, 33.222931, 40.922039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.784975, 33.385326, 40.639423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263866, -0.726821, -0.634118,
		-0.770973, 0.553987, -0.314163,
		0.579633, 0.405991, -0.706538,
		27.958864, 33.507122, 40.427464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.181442, 33.348724, 40.284447>,  <27.553122, 33.222931, 40.922039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.181442, 33.348724, 40.284447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566612, 33.312325, 40.182861>,  <27.797714, 33.290485, 40.121910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566612, 33.312325, 40.182861>,  <27.181442, 33.348724, 40.284447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.566612, 33.312325, 40.182861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259023, -0.574994, -0.776073,
		-0.075406, 0.813081, -0.577246,
		0.962923, -0.091000, -0.253965,
		27.855490, 33.285023, 40.106670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.102119, 33.449852, 39.618809>,  <27.181442, 33.348724, 40.284447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.102119, 33.449852, 39.618809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.466547, 33.288361, 39.652172>,  <27.685204, 33.191467, 39.672188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.466547, 33.288361, 39.652172>,  <27.102119, 33.449852, 39.618809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.466547, 33.288361, 39.652172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242610, -0.688649, -0.683303,
		0.333304, 0.602302, -0.725356,
		0.911070, -0.403726, 0.083406,
		27.739868, 33.167244, 39.677193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.387062, 33.374077, 38.981457>,  <27.102119, 33.449852, 39.618809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.387062, 33.374077, 38.981457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.552698, 33.100136, 39.221294>,  <27.652079, 32.935772, 39.365196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.552698, 33.100136, 39.221294>,  <27.387062, 33.374077, 38.981457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.552698, 33.100136, 39.221294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036043, -0.670543, -0.740995,
		0.909523, 0.285226, -0.302348,
		0.414089, -0.684849, 0.599593,
		27.676926, 32.894680, 39.401173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.952473, 33.083340, 38.645271>,  <27.387062, 33.374077, 38.981457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.952473, 33.083340, 38.645271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825394, 32.825584, 38.923500>,  <27.749146, 32.670929, 39.090439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825394, 32.825584, 38.923500>,  <27.952473, 33.083340, 38.645271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.825394, 32.825584, 38.923500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213832, -0.665994, -0.714652,
		0.923766, -0.375781, 0.073795,
		-0.317700, -0.644392, 0.695576,
		27.730083, 32.632267, 39.132172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.278095, 32.431507, 38.545349>,  <27.952473, 33.083340, 38.645271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.278095, 32.431507, 38.545349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.931816, 32.380608, 38.738998>,  <27.724049, 32.350067, 38.855186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.931816, 32.380608, 38.738998>,  <28.278095, 32.431507, 38.545349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.931816, 32.380608, 38.738998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242839, -0.738957, -0.628468,
		0.437714, -0.661628, 0.608814,
		-0.865700, -0.127245, 0.484121,
		27.672106, 32.342434, 38.884235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.172134, 31.641989, 38.612621>,  <28.278095, 32.431507, 38.545349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.172134, 31.641989, 38.612621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825216, 31.840343, 38.630028>,  <27.617065, 31.959356, 38.640472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825216, 31.840343, 38.630028>,  <28.172134, 31.641989, 38.612621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.825216, 31.840343, 38.630028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407342, -0.656743, -0.634635,
		-0.286131, -0.568141, 0.771586,
		-0.867296, 0.495887, 0.043513,
		27.565027, 31.989109, 38.643082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.727812, 31.132704, 38.674202>,  <28.172134, 31.641989, 38.612621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.727812, 31.132704, 38.674202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.523256, 31.446224, 38.533272>,  <27.400524, 31.634336, 38.448711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.523256, 31.446224, 38.533272>,  <27.727812, 31.132704, 38.674202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.523256, 31.446224, 38.533272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428958, -0.588089, -0.685672,
		-0.744633, -0.199509, 0.636959,
		-0.511387, 0.783803, -0.352330,
		27.369841, 31.681366, 38.427574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.051613, 30.903795, 38.504730>,  <27.727812, 31.132704, 38.674202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.051613, 30.903795, 38.504730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.101006, 31.227480, 38.274971>,  <27.130642, 31.421690, 38.137115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.101006, 31.227480, 38.274971>,  <27.051613, 30.903795, 38.504730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.101006, 31.227480, 38.274971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285723, -0.525319, -0.801500,
		-0.950323, 0.263088, 0.166343,
		0.123482, 0.809212, -0.574394,
		27.138050, 31.470243, 38.102654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.379551, 31.093662, 38.060753>,  <27.051613, 30.903795, 38.504730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.379551, 31.093662, 38.060753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.730555, 31.191723, 37.895885>,  <26.941156, 31.250559, 37.796967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.730555, 31.191723, 37.895885>,  <26.379551, 31.093662, 38.060753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.730555, 31.191723, 37.895885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257580, -0.484022, -0.836286,
		-0.404512, 0.840014, -0.361588,
		0.877509, 0.245150, -0.412164,
		26.993807, 31.265268, 37.772236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.325085, 31.490395, 37.353428>,  <26.379551, 31.093662, 38.060753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.325085, 31.490395, 37.353428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.659706, 31.271471, 37.343418>,  <26.860479, 31.140116, 37.337410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.659706, 31.271471, 37.343418>,  <26.325085, 31.490395, 37.353428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.659706, 31.271471, 37.343418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360559, -0.515565, -0.777297,
		0.412519, 0.659276, -0.628636,
		0.836556, -0.547310, -0.025028,
		26.910673, 31.107279, 37.335911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.494310, 31.142061, 36.649052>,  <26.325085, 31.490395, 37.353428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.494310, 31.142061, 36.649052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.751406, 30.913847, 36.853550>,  <26.905663, 30.776918, 36.976250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.751406, 30.913847, 36.853550>,  <26.494310, 31.142061, 36.649052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.751406, 30.913847, 36.853550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234725, -0.781918, -0.577503,
		0.729239, 0.251182, -0.636489,
		0.642741, -0.570537, 0.511246,
		26.944227, 30.742685, 37.006924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.008171, 31.109800, 36.116680>,  <26.494310, 31.142061, 36.649052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.008171, 31.109800, 36.116680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.309566, 31.355059, 36.211597>,  <27.490404, 31.502213, 36.268547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.309566, 31.355059, 36.211597>,  <27.008171, 31.109800, 36.116680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.309566, 31.355059, 36.211597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343471, -0.059352, -0.937286,
		-0.560607, 0.787739, -0.255318,
		0.753490, 0.613144, 0.237293,
		27.535614, 31.539001, 36.282784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.004179, 31.734152, 35.732433>,  <27.008171, 31.109800, 36.116680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.004179, 31.734152, 35.732433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.376287, 31.642136, 35.846752>,  <27.599552, 31.586926, 35.915344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.376287, 31.642136, 35.846752>,  <27.004179, 31.734152, 35.732433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.376287, 31.642136, 35.846752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289539, -0.018057, -0.956996,
		0.225308, 0.973014, 0.049808,
		0.930271, -0.230040, 0.285794,
		27.655369, 31.573124, 35.932491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.563463, 32.284340, 35.736771>,  <27.004179, 31.734152, 35.732433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.563463, 32.284340, 35.736771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.702341, 31.924328, 35.631390>,  <27.785667, 31.708321, 35.568161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.702341, 31.924328, 35.631390>,  <27.563463, 32.284340, 35.736771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.702341, 31.924328, 35.631390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280921, 0.367841, -0.886440,
		0.894729, 0.233757, 0.380548,
		0.347193, -0.900028, -0.263452,
		27.806499, 31.654320, 35.552353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.177614, 32.407894, 35.315289>,  <27.563463, 32.284340, 35.736771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.177614, 32.407894, 35.315289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.079268, 32.035133, 35.208618>,  <28.020260, 31.811478, 35.144615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.079268, 32.035133, 35.208618>,  <28.177614, 32.407894, 35.315289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.079268, 32.035133, 35.208618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098947, 0.249558, -0.963291,
		0.964241, -0.263226, 0.030851,
		-0.245865, -0.931898, -0.266679,
		28.005508, 31.755564, 35.128613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.745106, 33.038696, 35.233669>,  <28.177614, 32.407894, 35.315289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.745106, 33.038696, 35.233669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.748285, 33.416546, 35.102444>,  <27.750193, 33.643253, 35.023708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.748285, 33.416546, 35.102444>,  <27.745106, 33.038696, 35.233669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.748285, 33.416546, 35.102444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959364, -0.099745, -0.263956,
		-0.282061, -0.312639, -0.907027,
		0.007949, 0.944620, -0.328068,
		27.750669, 33.699932, 35.004025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.917517, 33.067154, 34.397137>,  <27.745106, 33.038696, 35.233669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.917517, 33.067154, 34.397137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.015352, 33.399242, 34.597504>,  <28.074053, 33.598495, 34.717724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.015352, 33.399242, 34.597504>,  <27.917517, 33.067154, 34.397137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.015352, 33.399242, 34.597504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934516, -0.064079, -0.350105,
		-0.258565, 0.553744, -0.791525,
		0.244589, 0.830218, 0.500914,
		28.088728, 33.648308, 34.747776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.229944, 33.663418, 33.961895>,  <27.917517, 33.067154, 34.397137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.229944, 33.663418, 33.961895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.377598, 33.682613, 34.333149>,  <28.466190, 33.694130, 34.555901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.377598, 33.682613, 34.333149>,  <28.229944, 33.663418, 33.961895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.377598, 33.682613, 34.333149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929347, -0.026824, -0.368231,
		0.007224, 0.998487, -0.054504,
		0.369136, 0.047993, 0.928135,
		28.488338, 33.697010, 34.611591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.723234, 34.133770, 33.966499>,  <28.229944, 33.663418, 33.961895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.723234, 34.133770, 33.966499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803055, 33.922375, 34.296558>,  <28.850948, 33.795536, 34.494595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803055, 33.922375, 34.296558>,  <28.723234, 34.133770, 33.966499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803055, 33.922375, 34.296558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979886, 0.106595, -0.168702,
		0.001200, 0.842220, 0.539132,
		0.199553, -0.528491, 0.825152,
		28.862921, 33.763828, 34.544106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.010851, 34.445515, 34.641060>,  <28.723234, 34.133770, 33.966499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.010851, 34.445515, 34.641060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.120893, 34.085247, 34.506535>,  <29.186918, 33.869087, 34.425819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.120893, 34.085247, 34.506535>,  <29.010851, 34.445515, 34.641060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.120893, 34.085247, 34.506535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765945, 0.416747, -0.489540,
		0.581072, -0.122918, 0.804517,
		0.275106, -0.900674, -0.336309,
		29.203424, 33.815044, 34.405643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.711279, 34.543533, 34.592136>,  <29.010851, 34.445515, 34.641060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.711279, 34.543533, 34.592136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.636505, 34.200493, 34.400482>,  <29.591640, 33.994667, 34.285488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.636505, 34.200493, 34.400482>,  <29.711279, 34.543533, 34.592136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.636505, 34.200493, 34.400482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668035, 0.246626, -0.702072,
		0.720267, -0.451322, 0.526806,
		-0.186936, -0.857604, -0.479135,
		29.580423, 33.943211, 34.256741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376045, 34.367306, 34.214664>,  <29.711279, 34.543533, 34.592136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376045, 34.367306, 34.214664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.098173, 34.146549, 34.030125>,  <29.931450, 34.014095, 33.919403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.098173, 34.146549, 34.030125>,  <30.376045, 34.367306, 34.214664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.098173, 34.146549, 34.030125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507913, 0.077818, -0.857886,
		0.509357, -0.830280, 0.226252,
		-0.694680, -0.551887, -0.461347,
		29.889769, 33.980984, 33.891720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602884, 33.739326, 33.915062>,  <30.376045, 34.367306, 34.214664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.602884, 33.739326, 33.915062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.301796, 33.872654, 33.687973>,  <30.121143, 33.952652, 33.551720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.301796, 33.872654, 33.687973>,  <30.602884, 33.739326, 33.915062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.301796, 33.872654, 33.687973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603686, 0.005459, -0.797203,
		-0.262625, -0.942798, -0.205330,
		-0.752723, 0.333320, -0.567721,
		30.075979, 33.972649, 33.517658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.644337, 33.351059, 33.325336>,  <30.602884, 33.739326, 33.915062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.644337, 33.351059, 33.325336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518806, 33.715599, 33.218788>,  <30.443489, 33.934322, 33.154861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518806, 33.715599, 33.218788>,  <30.644337, 33.351059, 33.325336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518806, 33.715599, 33.218788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639163, -0.004681, -0.769057,
		-0.702128, -0.411601, -0.581034,
		-0.313824, 0.911352, -0.266367,
		30.424660, 33.989006, 33.138878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.394913, 33.305843, 32.671127>,  <30.644337, 33.351059, 33.325336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.394913, 33.305843, 32.671127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.538582, 33.669846, 32.753967>,  <30.624784, 33.888245, 32.803673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.538582, 33.669846, 32.753967>,  <30.394913, 33.305843, 32.671127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.538582, 33.669846, 32.753967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750404, -0.149663, -0.643813,
		-0.554876, 0.386650, -0.736624,
		0.359175, 0.910002, 0.207099,
		30.646334, 33.942844, 32.816097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643200, 33.565277, 32.124420>,  <30.394913, 33.305843, 32.671127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643200, 33.565277, 32.124420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.847122, 33.781494, 32.392128>,  <30.969475, 33.911224, 32.552753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.847122, 33.781494, 32.392128>,  <30.643200, 33.565277, 32.124420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.847122, 33.781494, 32.392128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805415, -0.026489, -0.592119,
		-0.302336, 0.840902, -0.448862,
		0.509804, 0.540539, 0.669266,
		31.000063, 33.943657, 32.592907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.079033, 34.012188, 31.794306>,  <30.643200, 33.565277, 32.124420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.079033, 34.012188, 31.794306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.279409, 34.015297, 32.140484>,  <31.399635, 34.017162, 32.348190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.279409, 34.015297, 32.140484>,  <31.079033, 34.012188, 31.794306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.279409, 34.015297, 32.140484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864189, -0.059136, -0.499681,
		0.047294, 0.998220, -0.036343,
		0.500940, 0.007775, 0.865447,
		31.429691, 34.017628, 32.400120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581760, 34.557209, 31.736147>,  <31.079033, 34.012188, 31.794306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581760, 34.557209, 31.736147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716150, 34.311741, 32.021954>,  <31.796785, 34.164459, 32.193436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716150, 34.311741, 32.021954>,  <31.581760, 34.557209, 31.736147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716150, 34.311741, 32.021954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891239, -0.038242, -0.451918,
		0.304652, 0.788638, 0.534076,
		0.335976, -0.613667, 0.714516,
		31.816942, 34.127640, 32.236309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304661, 34.729153, 31.813135>,  <31.581760, 34.557209, 31.736147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304661, 34.729153, 31.813135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281456, 34.362389, 31.971075>,  <32.267532, 34.142330, 32.065838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281456, 34.362389, 31.971075>,  <32.304661, 34.729153, 31.813135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281456, 34.362389, 31.971075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915113, -0.206919, -0.346054,
		0.399003, 0.341257, 0.851082,
		-0.058011, -0.916912, 0.394850,
		32.264053, 34.087315, 32.089531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878006, 34.669983, 32.246265>,  <32.304661, 34.729153, 31.813135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878006, 34.669983, 32.246265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744324, 34.304848, 32.152431>,  <32.664116, 34.085766, 32.096130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744324, 34.304848, 32.152431>,  <32.878006, 34.669983, 32.246265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744324, 34.304848, 32.152431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857698, -0.191385, -0.477207,
		0.390717, -0.360688, 0.846903,
		-0.334207, -0.912839, -0.234584,
		32.644062, 34.030994, 32.082058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376305, 34.257774, 32.427387>,  <32.878006, 34.669983, 32.246265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376305, 34.257774, 32.427387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150337, 34.045284, 32.174828>,  <33.014759, 33.917789, 32.023293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150337, 34.045284, 32.174828>,  <33.376305, 34.257774, 32.427387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150337, 34.045284, 32.174828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818979, -0.267575, -0.507619,
		0.100715, -0.803866, 0.586222,
		-0.564916, -0.531228, -0.631400,
		32.980862, 33.885918, 31.985407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693630, 33.633759, 32.576099>,  <33.376305, 34.257774, 32.427387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693630, 33.633759, 32.576099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505733, 33.591408, 32.225525>,  <33.392998, 33.565998, 32.015182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505733, 33.591408, 32.225525>,  <33.693630, 33.633759, 32.576099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505733, 33.591408, 32.225525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819205, -0.422280, -0.388051,
		-0.329014, -0.900261, 0.285098,
		-0.469738, -0.105880, -0.876434,
		33.364811, 33.559643, 31.962595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002617, 33.043304, 32.309891>,  <33.693630, 33.633759, 32.576099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002617, 33.043304, 32.309891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834576, 33.225666, 31.996033>,  <33.733753, 33.335083, 31.807718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834576, 33.225666, 31.996033>,  <34.002617, 33.043304, 32.309891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834576, 33.225666, 31.996033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683988, -0.409160, -0.603944,
		-0.596386, -0.790404, -0.139944,
		-0.420100, 0.455904, -0.784645,
		33.708546, 33.362438, 31.760639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115559, 32.546139, 31.792898>,  <34.002617, 33.043304, 32.309891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115559, 32.546139, 31.792898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001694, 32.889626, 31.622450>,  <33.933376, 33.095718, 31.520182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001694, 32.889626, 31.622450>,  <34.115559, 32.546139, 31.792898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001694, 32.889626, 31.622450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571614, -0.204792, -0.794555,
		-0.769561, -0.469756, -0.432556,
		-0.284663, 0.858714, -0.426119,
		33.916294, 33.147240, 31.494614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038540, 32.435177, 31.005466>,  <34.115559, 32.546139, 31.792898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038540, 32.435177, 31.005466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100033, 32.824905, 31.071262>,  <34.136929, 33.058743, 31.110741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100033, 32.824905, 31.071262>,  <34.038540, 32.435177, 31.005466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100033, 32.824905, 31.071262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628982, 0.031893, -0.776765,
		-0.762067, 0.222878, -0.607930,
		0.153735, 0.974324, 0.164491,
		34.146152, 33.117203, 31.120609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029114, 32.629715, 30.318842>,  <34.038540, 32.435177, 31.005466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029114, 32.629715, 30.318842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215843, 32.911949, 30.532091>,  <34.327881, 33.081291, 30.660042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215843, 32.911949, 30.532091>,  <34.029114, 32.629715, 30.318842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215843, 32.911949, 30.532091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618621, 0.170254, -0.767021,
		-0.631965, 0.687869, -0.357011,
		0.466827, 0.705585, 0.533124,
		34.355892, 33.123623, 30.692028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289528, 33.155449, 29.888685>,  <34.029114, 32.629715, 30.318842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289528, 33.155449, 29.888685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496426, 33.246132, 30.218792>,  <34.620564, 33.300541, 30.416855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496426, 33.246132, 30.218792>,  <34.289528, 33.155449, 29.888685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496426, 33.246132, 30.218792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765868, 0.307763, -0.564560,
		-0.381978, 0.924058, -0.014443,
		0.517242, 0.226711, 0.825266,
		34.651600, 33.314144, 30.466372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587154, 33.856831, 29.839199>,  <34.289528, 33.155449, 29.888685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587154, 33.856831, 29.839199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842228, 33.689377, 30.097843>,  <34.995270, 33.588905, 30.253029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842228, 33.689377, 30.097843>,  <34.587154, 33.856831, 29.839199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842228, 33.689377, 30.097843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757107, 0.495320, -0.425966,
		-0.141954, 0.761184, 0.632810,
		0.637682, -0.418637, 0.646610,
		35.033531, 33.563786, 30.291826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936710, 34.453995, 30.258997>,  <34.587154, 33.856831, 29.839199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936710, 34.453995, 30.258997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160275, 34.123417, 30.286165>,  <35.294415, 33.925072, 30.302467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160275, 34.123417, 30.286165>,  <34.936710, 34.453995, 30.258997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160275, 34.123417, 30.286165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720728, 0.443638, -0.532669,
		0.410087, 0.346668, 0.843593,
		0.558910, -0.826442, 0.067923,
		35.327946, 33.875484, 30.306541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565414, 34.747215, 30.410561>,  <34.936710, 34.453995, 30.258997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565414, 34.747215, 30.410561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666893, 34.391346, 30.258711>,  <35.727779, 34.177822, 30.167601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666893, 34.391346, 30.258711>,  <35.565414, 34.747215, 30.410561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666893, 34.391346, 30.258711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743860, 0.430314, -0.511372,
		0.618314, -0.152656, 0.770963,
		0.253692, -0.889677, -0.379624,
		35.743000, 34.124443, 30.144823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314041, 34.700047, 30.355707>,  <35.565414, 34.747215, 30.410561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314041, 34.700047, 30.355707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168335, 34.423946, 30.105629>,  <36.080910, 34.258286, 29.955582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168335, 34.423946, 30.105629>,  <36.314041, 34.700047, 30.355707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168335, 34.423946, 30.105629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645355, 0.296915, -0.703817,
		0.671438, -0.659849, 0.337299,
		-0.364264, -0.690247, -0.625197,
		36.059055, 34.216873, 29.918070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878513, 34.620686, 29.969061>,  <36.314041, 34.700047, 30.355707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878513, 34.620686, 29.969061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586300, 34.452457, 29.753860>,  <36.410973, 34.351521, 29.624741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586300, 34.452457, 29.753860>,  <36.878513, 34.620686, 29.969061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586300, 34.452457, 29.753860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463017, 0.274024, -0.842927,
		0.501935, -0.864888, -0.005452,
		-0.730532, -0.420570, -0.538000,
		36.367142, 34.326286, 29.592461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251438, 34.269459, 29.529072>,  <36.878513, 34.620686, 29.969061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251438, 34.269459, 29.529072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882351, 34.297291, 29.377417>,  <36.660896, 34.313992, 29.286423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882351, 34.297291, 29.377417>,  <37.251438, 34.269459, 29.529072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882351, 34.297291, 29.377417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382282, 0.291422, -0.876888,
		0.049473, -0.954060, -0.295501,
		-0.922720, 0.069583, -0.379138,
		36.605534, 34.318165, 29.263676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341011, 34.049488, 28.930517>,  <37.251438, 34.269459, 29.529072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341011, 34.049488, 28.930517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985203, 34.217991, 28.859753>,  <36.771717, 34.319092, 28.817293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985203, 34.217991, 28.859753>,  <37.341011, 34.049488, 28.930517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985203, 34.217991, 28.859753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307116, 0.264586, -0.914152,
		-0.338287, -0.867487, -0.364730,
		-0.889517, 0.421260, -0.176913,
		36.718346, 34.344368, 28.806679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873043, 33.666039, 28.421621>,  <37.341011, 34.049488, 28.930517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873043, 33.666039, 28.421621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791584, 34.057655, 28.422430>,  <36.742706, 34.292625, 28.422915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791584, 34.057655, 28.422430>,  <36.873043, 33.666039, 28.421621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791584, 34.057655, 28.422430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377376, 0.080403, -0.922563,
		-0.903390, -0.187119, -0.385841,
		-0.203652, 0.979041, 0.002021,
		36.730488, 34.351368, 28.423037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661530, 33.791824, 27.736225>,  <36.873043, 33.666039, 28.421621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661530, 33.791824, 27.736225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676556, 34.175385, 27.848719>,  <36.685574, 34.405521, 27.916216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676556, 34.175385, 27.848719>,  <36.661530, 33.791824, 27.736225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676556, 34.175385, 27.848719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422138, 0.239862, -0.874223,
		-0.905753, 0.151563, -0.395778,
		0.037568, 0.958903, 0.281236,
		36.687824, 34.463055, 27.933090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298626, 34.168922, 27.215794>,  <36.661530, 33.791824, 27.736225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298626, 34.168922, 27.215794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548363, 34.402042, 27.423845>,  <36.698204, 34.541916, 27.548677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548363, 34.402042, 27.423845>,  <36.298626, 34.168922, 27.215794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548363, 34.402042, 27.423845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571700, 0.112826, -0.812668,
		-0.532308, 0.804744, -0.262745,
		0.624346, 0.582801, 0.520130,
		36.735668, 34.576881, 27.579884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285488, 34.878403, 26.895706>,  <36.298626, 34.168922, 27.215794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285488, 34.878403, 26.895706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626720, 34.782413, 27.081036>,  <36.831459, 34.724819, 27.192232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626720, 34.782413, 27.081036>,  <36.285488, 34.878403, 26.895706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626720, 34.782413, 27.081036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473542, -0.016824, -0.880611,
		0.219115, 0.970634, 0.099283,
		0.853081, -0.239970, 0.463322,
		36.882645, 34.710423, 27.220032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704395, 35.228161, 26.402100>,  <36.285488, 34.878403, 26.895706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704395, 35.228161, 26.402100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981236, 35.050610, 26.629776>,  <37.147339, 34.944080, 26.766382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981236, 35.050610, 26.629776>,  <36.704395, 35.228161, 26.402100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981236, 35.050610, 26.629776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627204, -0.020451, -0.778586,
		0.357235, 0.895856, 0.264246,
		0.692097, -0.443874, 0.569190,
		37.188866, 34.917446, 26.800533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263809, 35.743393, 26.337255>,  <36.704395, 35.228161, 26.402100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263809, 35.743393, 26.337255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427303, 35.392677, 26.438591>,  <37.525398, 35.182247, 26.499392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427303, 35.392677, 26.438591>,  <37.263809, 35.743393, 26.337255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427303, 35.392677, 26.438591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678346, 0.106157, -0.727033,
		0.610560, 0.469014, 0.638155,
		0.408733, -0.876787, 0.253339,
		37.549923, 35.129642, 26.514593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946556, 35.870995, 26.298666>,  <37.263809, 35.743393, 26.337255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946556, 35.870995, 26.298666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943192, 35.472588, 26.334160>,  <37.941174, 35.233543, 26.355457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943192, 35.472588, 26.334160>,  <37.946556, 35.870995, 26.298666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943192, 35.472588, 26.334160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711242, -0.068338, -0.699618,
		0.702897, 0.057226, 0.708986,
		-0.008415, -0.996020, 0.088736,
		37.940666, 35.173782, 26.360781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589985, 35.688236, 26.459038>,  <37.946556, 35.870995, 26.298666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589985, 35.688236, 26.459038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425472, 35.374405, 26.273443>,  <38.326763, 35.186108, 26.162086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425472, 35.374405, 26.273443>,  <38.589985, 35.688236, 26.459038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425472, 35.374405, 26.273443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727553, 0.024080, -0.685629,
		0.549102, -0.619562, 0.560918,
		-0.411283, -0.784578, -0.463987,
		38.302086, 35.139030, 26.134247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081139, 35.171379, 26.318207>,  <38.589985, 35.688236, 26.459038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081139, 35.171379, 26.318207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807816, 35.050392, 26.052395>,  <38.643822, 34.977798, 25.892908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807816, 35.050392, 26.052395>,  <39.081139, 35.171379, 26.318207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807816, 35.050392, 26.052395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679958, 0.067941, -0.730096,
		0.265982, -0.950734, 0.159244,
		-0.683308, -0.302472, -0.664531,
		38.602821, 34.959652, 25.853035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460152, 34.695885, 25.889790>,  <39.081139, 35.171379, 26.318207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460152, 34.695885, 25.889790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147427, 34.842636, 25.688133>,  <38.959789, 34.930687, 25.567139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147427, 34.842636, 25.688133>,  <39.460152, 34.695885, 25.889790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147427, 34.842636, 25.688133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587884, 0.164354, -0.792074,
		-0.207740, -0.915634, -0.344178,
		-0.781817, 0.366882, -0.504143,
		38.912880, 34.952702, 25.536890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461380, 34.381725, 25.261864>,  <39.460152, 34.695885, 25.889790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461380, 34.381725, 25.261864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236691, 34.706837, 25.200085>,  <39.101875, 34.901905, 25.163017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236691, 34.706837, 25.200085>,  <39.461380, 34.381725, 25.261864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236691, 34.706837, 25.200085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700238, 0.367656, -0.611961,
		-0.440606, -0.451903, -0.775661,
		-0.561723, 0.812781, -0.154448,
		39.068172, 34.950672, 25.153749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394531, 34.419464, 24.587578>,  <39.461380, 34.381725, 25.261864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394531, 34.419464, 24.587578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347576, 34.796947, 24.711279>,  <39.319401, 35.023438, 24.785500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347576, 34.796947, 24.711279>,  <39.394531, 34.419464, 24.587578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347576, 34.796947, 24.711279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552523, 0.320826, -0.769278,
		-0.825189, 0.080563, -0.559082,
		-0.117392, 0.943706, 0.309255,
		39.312359, 35.080059, 24.804056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067810, 34.822960, 23.871609>,  <39.394531, 34.419464, 24.587578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067810, 34.822960, 23.871609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237118, 35.065956, 24.140471>,  <39.338703, 35.211754, 24.301788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237118, 35.065956, 24.140471>,  <39.067810, 34.822960, 23.871609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237118, 35.065956, 24.140471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607237, 0.360371, -0.708093,
		-0.672388, 0.707872, -0.216360,
		0.423269, 0.607495, 0.672155,
		39.364098, 35.248203, 24.342117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159458, 35.433762, 23.419224>,  <39.067810, 34.822960, 23.871609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159458, 35.433762, 23.419224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.407154, 35.518730, 23.721594>,  <39.555771, 35.569710, 23.903015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.407154, 35.518730, 23.721594>,  <39.159458, 35.433762, 23.419224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407154, 35.518730, 23.721594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608831, 0.478051, -0.633081,
		-0.495851, 0.852258, 0.166698,
		0.619239, 0.212423, 0.755923,
		39.592926, 35.582458, 23.948370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428551, 36.153740, 23.270399>,  <39.159458, 35.433762, 23.419224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428551, 36.153740, 23.270399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661606, 35.991791, 23.552284>,  <39.801437, 35.894623, 23.721415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661606, 35.991791, 23.552284>,  <39.428551, 36.153740, 23.270399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661606, 35.991791, 23.552284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807626, 0.385484, -0.446253,
		-0.090982, 0.829147, 0.551578,
		0.582634, -0.404868, 0.704713,
		39.836395, 35.870331, 23.763699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734810, 36.671471, 23.669842>,  <39.428551, 36.153740, 23.270399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734810, 36.671471, 23.669842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964581, 36.346195, 23.707266>,  <40.102444, 36.151028, 23.729721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964581, 36.346195, 23.707266>,  <39.734810, 36.671471, 23.669842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964581, 36.346195, 23.707266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809010, 0.546602, -0.216169,
		0.124647, 0.199864, 0.971863,
		0.574427, -0.813192, 0.093560,
		40.136909, 36.102238, 23.735334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383575, 36.927143, 23.973475>,  <39.734810, 36.671471, 23.669842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383575, 36.927143, 23.973475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460197, 36.582901, 23.784723>,  <40.506172, 36.376358, 23.671473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460197, 36.582901, 23.784723>,  <40.383575, 36.927143, 23.973475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460197, 36.582901, 23.784723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735386, 0.444260, -0.511704,
		0.650010, -0.248991, 0.717977,
		0.191559, -0.860602, -0.471878,
		40.517666, 36.324718, 23.643160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114056, 36.829041, 24.016987>,  <40.383575, 36.927143, 23.973475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114056, 36.829041, 24.016987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968094, 36.604652, 23.719759>,  <40.880516, 36.470020, 23.541422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968094, 36.604652, 23.719759>,  <41.114056, 36.829041, 24.016987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968094, 36.604652, 23.719759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707617, 0.351583, -0.612917,
		0.605082, -0.749465, 0.268661,
		-0.364903, -0.560974, -0.743070,
		40.858624, 36.436359, 23.496838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.669880, 36.551117, 23.740675>,  <41.114056, 36.829041, 24.016987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.669880, 36.551117, 23.740675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412502, 36.515476, 23.436558>,  <41.258076, 36.494091, 23.254087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412502, 36.515476, 23.436558>,  <41.669880, 36.551117, 23.740675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412502, 36.515476, 23.436558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685322, 0.375450, -0.623996,
		0.341054, -0.922550, -0.180513,
		-0.643441, -0.089106, -0.760292,
		41.219471, 36.488743, 23.208469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048935, 36.417244, 23.214842>,  <41.669880, 36.551117, 23.740675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048935, 36.417244, 23.214842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.717266, 36.532986, 23.023529>,  <41.518265, 36.602432, 22.908741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.717266, 36.532986, 23.023529>,  <42.048935, 36.417244, 23.214842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.717266, 36.532986, 23.023529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558694, 0.457280, -0.691922,
		0.018497, -0.840933, -0.540823,
		-0.829168, 0.289356, -0.478283,
		41.468517, 36.619793, 22.880045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.207474, 36.375267, 22.471502>,  <42.048935, 36.417244, 23.214842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.207474, 36.375267, 22.471502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.874149, 36.594841, 22.445391>,  <41.674152, 36.726585, 22.429724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.874149, 36.594841, 22.445391>,  <42.207474, 36.375267, 22.471502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.874149, 36.594841, 22.445391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404783, 0.525491, -0.748338,
		-0.376484, -0.650024, -0.660097,
		-0.833313, 0.548933, -0.065280,
		41.624157, 36.759521, 22.425806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.136078, 36.498035, 21.697908>,  <42.207474, 36.375267, 22.471502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.136078, 36.498035, 21.697908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.933529, 36.770973, 21.908808>,  <41.812000, 36.934734, 22.035347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.933529, 36.770973, 21.908808>,  <42.136078, 36.498035, 21.697908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.933529, 36.770973, 21.908808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273827, 0.707029, -0.652019,
		-0.817681, -0.185791, -0.544867,
		-0.506376, 0.682343, 0.527249,
		41.781616, 36.975677, 22.066982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.783237, 36.953426, 21.180576>,  <42.136078, 36.498035, 21.697908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.783237, 36.953426, 21.180576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.834915, 37.161072, 21.518530>,  <41.865921, 37.285660, 21.721302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.834915, 37.161072, 21.518530>,  <41.783237, 36.953426, 21.180576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.834915, 37.161072, 21.518530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466540, 0.720014, -0.513732,
		-0.875014, 0.460543, -0.149166,
		0.129194, 0.519114, 0.844884,
		41.873672, 37.316807, 21.771996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.464188, 37.678356, 21.098106>,  <41.783237, 36.953426, 21.180576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.464188, 37.678356, 21.098106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.783096, 37.643909, 21.337084>,  <41.974442, 37.623241, 21.480471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.783096, 37.643909, 21.337084>,  <41.464188, 37.678356, 21.098106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.783096, 37.643909, 21.337084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434511, 0.768914, -0.469011,
		-0.418995, 0.633526, 0.650452,
		0.797272, -0.086115, 0.597445,
		42.022278, 37.618076, 21.516317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352737, 38.227722, 20.688999>,  <41.464188, 37.678356, 21.098106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.352737, 38.227722, 20.688999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.682659, 38.237167, 20.914968>,  <41.880611, 38.242832, 21.050550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.682659, 38.237167, 20.914968>,  <41.352737, 38.227722, 20.688999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.682659, 38.237167, 20.914968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192440, 0.927757, -0.319740,
		-0.531662, 0.372437, 0.760675,
		0.824804, 0.023610, 0.564925,
		41.930099, 38.244251, 21.084446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291893, 38.852215, 21.091732>,  <41.352737, 38.227722, 20.688999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.291893, 38.852215, 21.091732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.670834, 38.729656, 21.054560>,  <41.898197, 38.656120, 21.032255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.670834, 38.729656, 21.054560>,  <41.291893, 38.852215, 21.091732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.670834, 38.729656, 21.054560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290214, 0.944325, -0.155002,
		0.135250, 0.119873, 0.983533,
		0.947356, -0.306399, -0.092932,
		41.955040, 38.637737, 21.026680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.879036, 39.124775, 21.574741>,  <41.291893, 38.852215, 21.091732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.879036, 39.124775, 21.574741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.971649, 39.086498, 21.187498>,  <42.027218, 39.063530, 20.955153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.971649, 39.086498, 21.187498>,  <41.879036, 39.124775, 21.574741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.971649, 39.086498, 21.187498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248380, 0.967983, -0.036280,
		0.940584, -0.232059, 0.247890,
		0.231534, -0.095695, -0.968109,
		42.041111, 39.057789, 20.897066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.520447, 39.273510, 22.014093>,  <41.879036, 39.124775, 21.574741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.520447, 39.273510, 22.014093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.193382, 39.048611, 22.063593>,  <41.997143, 38.913670, 22.093292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.193382, 39.048611, 22.063593>,  <42.520447, 39.273510, 22.014093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.193382, 39.048611, 22.063593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573983, -0.812767, 0.099767,
		0.044487, 0.152606, 0.987285,
		-0.817658, -0.562247, 0.123750,
		41.948086, 38.879936, 22.100718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.510990, 38.845581, 22.597116>,  <42.520447, 39.273510, 22.014093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.510990, 38.845581, 22.597116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.281513, 38.637764, 22.343834>,  <42.143826, 38.513073, 22.191864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.281513, 38.637764, 22.343834>,  <42.510990, 38.845581, 22.597116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.281513, 38.637764, 22.343834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548637, -0.817772, 0.173912,
		-0.608174, -0.247629, 0.754192,
		-0.573691, -0.519546, -0.633206,
		42.109406, 38.481899, 22.153872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.042305, 38.371349, 22.995842>,  <42.510990, 38.845581, 22.597116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.042305, 38.371349, 22.995842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.151501, 38.609116, 22.693279>,  <43.217018, 38.751774, 22.511742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.151501, 38.609116, 22.693279>,  <43.042305, 38.371349, 22.995842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.151501, 38.609116, 22.693279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587271, 0.725735, 0.358360,
		0.761964, 0.346386, 0.547200,
		0.272991, 0.594413, -0.756406,
		43.233398, 38.787437, 22.466358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.339321, 38.980766, 23.259167>,  <43.042305, 38.371349, 22.995842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.339321, 38.980766, 23.259167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.172554, 39.032265, 22.899254>,  <43.072495, 39.063164, 22.683306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.172554, 39.032265, 22.899254>,  <43.339321, 38.980766, 23.259167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.172554, 39.032265, 22.899254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678228, 0.614978, 0.402255,
		0.605136, 0.777962, -0.169072,
		-0.416915, 0.128749, -0.899781,
		43.047482, 39.070889, 22.629320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.200905, 39.724762, 23.214479>,  <43.339321, 38.980766, 23.259167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.200905, 39.724762, 23.214479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.957344, 39.523949, 22.968813>,  <42.811207, 39.403461, 22.821413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.957344, 39.523949, 22.968813>,  <43.200905, 39.724762, 23.214479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.957344, 39.523949, 22.968813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765611, 0.574523, 0.289418,
		0.207555, 0.646440, -0.734190,
		-0.608901, -0.502034, -0.614168,
		42.774673, 39.373337, 22.784563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.743000, 40.188820, 23.047791>,  <43.200905, 39.724762, 23.214479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.743000, 40.188820, 23.047791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.575199, 39.845863, 22.928530>,  <42.474518, 39.640091, 22.856974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.575199, 39.845863, 22.928530>,  <42.743000, 40.188820, 23.047791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.575199, 39.845863, 22.928530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849302, 0.254764, 0.462365,
		-0.320469, 0.447186, -0.835059,
		-0.419506, -0.857391, -0.298152,
		42.449348, 39.588646, 22.839085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.045910, 40.278954, 22.728863>,  <42.743000, 40.188820, 23.047791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.045910, 40.278954, 22.728863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060249, 39.909348, 22.881128>,  <42.068855, 39.687584, 22.972488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060249, 39.909348, 22.881128>,  <42.045910, 40.278954, 22.728863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.060249, 39.909348, 22.881128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934668, 0.103813, 0.340027,
		-0.353709, -0.367985, -0.859929,
		0.035852, -0.924019, 0.380663,
		42.071007, 39.632141, 22.995327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373962, 40.022991, 22.733360>,  <42.045910, 40.278954, 22.728863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.373962, 40.022991, 22.733360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567017, 39.793835, 22.998344>,  <41.682850, 39.656342, 23.157335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567017, 39.793835, 22.998344>,  <41.373962, 40.022991, 22.733360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.567017, 39.793835, 22.998344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807651, 0.001435, 0.589660,
		-0.338762, -0.819629, -0.462005,
		0.482639, -0.572893, 0.662460,
		41.711807, 39.621967, 23.197083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862301, 39.549416, 23.005487>,  <41.373962, 40.022991, 22.733360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862301, 39.549416, 23.005487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130096, 39.458672, 23.288420>,  <41.290775, 39.404224, 23.458179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130096, 39.458672, 23.288420>,  <40.862301, 39.549416, 23.005487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130096, 39.458672, 23.288420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739331, -0.111328, 0.664075,
		-0.071909, -0.967543, -0.242260,
		0.669491, -0.226863, 0.707330,
		41.330944, 39.390614, 23.500618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810822, 38.946400, 23.392084>,  <40.862301, 39.549416, 23.005487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.810822, 38.946400, 23.392084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002708, 39.185535, 23.648977>,  <41.117840, 39.329018, 23.803114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002708, 39.185535, 23.648977>,  <40.810822, 38.946400, 23.392084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002708, 39.185535, 23.648977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530140, -0.385759, 0.755077,
		0.699161, -0.702695, 0.131884,
		0.479714, 0.597837, 0.642234,
		41.146622, 39.364887, 23.841648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445728, 38.763523, 23.966448>,  <40.810822, 38.946400, 23.392084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445728, 38.763523, 23.966448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.707691, 39.019951, 24.126513>,  <40.864868, 39.173809, 24.222551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.707691, 39.019951, 24.126513>,  <40.445728, 38.763523, 23.966448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.707691, 39.019951, 24.126513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333100, -0.230425, 0.914302,
		0.678339, -0.732074, 0.062634,
		0.654905, 0.641070, 0.400160,
		40.904163, 39.212273, 24.246561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835373, 38.385120, 24.507290>,  <40.445728, 38.763523, 23.966448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835373, 38.385120, 24.507290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824257, 38.777664, 24.583351>,  <40.817589, 39.013191, 24.628988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824257, 38.777664, 24.583351>,  <40.835373, 38.385120, 24.507290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824257, 38.777664, 24.583351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499593, -0.178399, 0.847691,
		0.865814, -0.071446, 0.495238,
		-0.027786, 0.981361, 0.190154,
		40.815922, 39.072071, 24.640398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884346, 38.513817, 25.226015>,  <40.835373, 38.385120, 24.507290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884346, 38.513817, 25.226015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748085, 38.883640, 25.157730>,  <40.666328, 39.105534, 25.116758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748085, 38.883640, 25.157730>,  <40.884346, 38.513817, 25.226015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748085, 38.883640, 25.157730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465714, -0.008199, 0.884898,
		0.816742, 0.380946, 0.433374,
		-0.340651, 0.924561, -0.170715,
		40.645889, 39.161007, 25.106516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086285, 38.949821, 25.820551>,  <40.884346, 38.513817, 25.226015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086285, 38.949821, 25.820551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.768803, 39.108814, 25.636360>,  <40.578312, 39.204212, 25.525846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.768803, 39.108814, 25.636360>,  <41.086285, 38.949821, 25.820551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.768803, 39.108814, 25.636360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480873, 0.053623, 0.875149,
		0.372551, 0.916040, 0.148579,
		-0.793704, 0.397485, -0.460477,
		40.530693, 39.228062, 25.498217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753616, 39.224113, 26.411024>,  <41.086285, 38.949821, 25.820551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753616, 39.224113, 26.411024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.496502, 39.299675, 26.114069>,  <40.342232, 39.345013, 25.935896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.496502, 39.299675, 26.114069>,  <40.753616, 39.224113, 26.411024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.496502, 39.299675, 26.114069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705790, 0.230710, 0.669801,
		0.297802, 0.954510, -0.014974,
		-0.642787, 0.188900, -0.742390,
		40.303665, 39.356346, 25.891352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429127, 39.865936, 26.570860>,  <40.753616, 39.224113, 26.411024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429127, 39.865936, 26.570860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199944, 39.651367, 26.322998>,  <40.062431, 39.522625, 26.174280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199944, 39.651367, 26.322998>,  <40.429127, 39.865936, 26.570860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199944, 39.651367, 26.322998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781414, 0.129497, 0.610428,
		-0.247201, 0.833958, -0.493362,
		-0.572960, -0.536418, -0.619655,
		40.028057, 39.490440, 26.137102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818695, 40.252167, 26.437029>,  <40.429127, 39.865936, 26.570860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818695, 40.252167, 26.437029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726429, 39.870750, 26.359514>,  <39.671070, 39.641899, 26.313005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726429, 39.870750, 26.359514>,  <39.818695, 40.252167, 26.437029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726429, 39.870750, 26.359514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866413, 0.110629, 0.486919,
		-0.442859, 0.280213, -0.851679,
		-0.230662, -0.953542, -0.193787,
		39.657230, 39.584686, 26.301378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110683, 40.310707, 26.335718>,  <39.818695, 40.252167, 26.437029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.110683, 40.310707, 26.335718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200497, 39.930061, 26.419634>,  <39.254383, 39.701672, 26.469984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200497, 39.930061, 26.419634>,  <39.110683, 40.310707, 26.335718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200497, 39.930061, 26.419634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838617, -0.079057, 0.538954,
		-0.496292, -0.296946, -0.815793,
		0.224534, -0.951616, 0.209788,
		39.267857, 39.644577, 26.482571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457180, 40.014713, 26.364580>,  <39.110683, 40.310707, 26.335718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457180, 40.014713, 26.364580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667397, 39.727448, 26.547026>,  <38.793526, 39.555088, 26.656494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667397, 39.727448, 26.547026>,  <38.457180, 40.014713, 26.364580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667397, 39.727448, 26.547026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757893, -0.151632, 0.634512,
		-0.386523, -0.679152, -0.623982,
		0.525546, -0.718165, 0.456115,
		38.825062, 39.511997, 26.683861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956219, 39.545773, 26.557964>,  <38.457180, 40.014713, 26.364580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956219, 39.545773, 26.557964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.259087, 39.479664, 26.810751>,  <38.440807, 39.439999, 26.962423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.259087, 39.479664, 26.810751>,  <37.956219, 39.545773, 26.557964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259087, 39.479664, 26.810751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596881, -0.568098, 0.566566,
		0.265383, -0.806195, -0.528792,
		0.757169, -0.165269, 0.631967,
		38.486237, 39.430084, 27.000341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763863, 38.811646, 26.745970>,  <37.956219, 39.545773, 26.557964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763863, 38.811646, 26.745970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017078, 38.962719, 27.016264>,  <38.169010, 39.053364, 27.178440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017078, 38.962719, 27.016264>,  <37.763863, 38.811646, 26.745970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017078, 38.962719, 27.016264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457439, -0.521699, 0.720125,
		0.624506, -0.764976, -0.157491,
		0.633041, 0.377680, 0.675734,
		38.206989, 39.076023, 27.218985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981441, 38.252827, 27.109188>,  <37.763863, 38.811646, 26.745970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981441, 38.252827, 27.109188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053318, 38.570103, 27.341930>,  <38.096443, 38.760468, 27.481575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053318, 38.570103, 27.341930>,  <37.981441, 38.252827, 27.109188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053318, 38.570103, 27.341930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390405, -0.485408, 0.782280,
		0.902938, -0.367725, 0.222445,
		0.179688, 0.793194, 0.581855,
		38.107224, 38.808060, 27.516487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034363, 37.982254, 27.812008>,  <37.981441, 38.252827, 27.109188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034363, 37.982254, 27.812008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980583, 38.370644, 27.891132>,  <37.948315, 38.603680, 27.938606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980583, 38.370644, 27.891132>,  <38.034363, 37.982254, 27.812008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980583, 38.370644, 27.891132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617076, -0.238231, 0.749975,
		0.775333, -0.021232, 0.631196,
		-0.134447, 0.970976, 0.197810,
		37.940250, 38.661938, 27.950476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208923, 38.101456, 28.558727>,  <38.034363, 37.982254, 27.812008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208923, 38.101456, 28.558727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965118, 38.397270, 28.444483>,  <37.818836, 38.574760, 28.375937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965118, 38.397270, 28.444483>,  <38.208923, 38.101456, 28.558727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965118, 38.397270, 28.444483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618698, -0.218478, 0.754639,
		0.495685, 0.636671, 0.590717,
		-0.609515, 0.739539, -0.285611,
		37.782265, 38.619133, 28.358799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902534, 38.405025, 29.190323>,  <38.208923, 38.101456, 28.558727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902534, 38.405025, 29.190323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652172, 38.500690, 28.893393>,  <37.501957, 38.558090, 28.715235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652172, 38.500690, 28.893393>,  <37.902534, 38.405025, 29.190323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652172, 38.500690, 28.893393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773766, -0.071271, 0.629450,
		0.097632, 0.968361, 0.229662,
		-0.625903, 0.239159, -0.742327,
		37.464401, 38.572437, 28.670694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486176, 38.865696, 29.510258>,  <37.902534, 38.405025, 29.190323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486176, 38.865696, 29.510258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280117, 38.737141, 29.192430>,  <37.156483, 38.660007, 29.001734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280117, 38.737141, 29.192430>,  <37.486176, 38.865696, 29.510258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280117, 38.737141, 29.192430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811539, -0.115335, 0.572803,
		-0.275731, 0.939899, -0.201401,
		-0.515148, -0.321384, -0.794566,
		37.125572, 38.640724, 28.954062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805897, 39.311028, 29.497988>,  <37.486176, 38.865696, 29.510258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805897, 39.311028, 29.497988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731823, 38.975304, 29.293530>,  <36.687378, 38.773869, 29.170855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731823, 38.975304, 29.293530>,  <36.805897, 39.311028, 29.497988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731823, 38.975304, 29.293530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875700, -0.095090, 0.473399,
		-0.445933, 0.535275, -0.717373,
		-0.185183, -0.839308, -0.511144,
		36.676270, 38.723511, 29.140186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060932, 39.224907, 29.351000>,  <36.805897, 39.311028, 29.497988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060932, 39.224907, 29.351000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185753, 38.853279, 29.271549>,  <36.260647, 38.630302, 29.223879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185753, 38.853279, 29.271549>,  <36.060932, 39.224907, 29.351000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185753, 38.853279, 29.271549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836432, -0.367807, 0.406324,
		-0.450560, 0.039345, -0.891879,
		0.312052, -0.929070, -0.198628,
		36.279369, 38.574558, 29.211962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473721, 38.871662, 29.266630>,  <36.060932, 39.224907, 29.351000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473721, 38.871662, 29.266630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708706, 38.549316, 29.296217>,  <35.849697, 38.355911, 29.313969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708706, 38.549316, 29.296217>,  <35.473721, 38.871662, 29.266630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708706, 38.549316, 29.296217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728857, -0.487172, 0.481073,
		-0.351644, -0.336525, -0.873554,
		0.587464, -0.805862, 0.073968,
		35.884945, 38.307556, 29.318407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031219, 38.236954, 29.077553>,  <35.473721, 38.871662, 29.266630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031219, 38.236954, 29.077553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342648, 38.121178, 29.300283>,  <35.529503, 38.051712, 29.433922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342648, 38.121178, 29.300283>,  <35.031219, 38.236954, 29.077553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342648, 38.121178, 29.300283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617061, -0.514701, 0.595247,
		0.114310, -0.807036, -0.579332,
		0.778569, -0.289441, 0.556826,
		35.576218, 38.034344, 29.467331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920193, 37.571865, 29.144865>,  <35.031219, 38.236954, 29.077553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920193, 37.571865, 29.144865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193550, 37.619518, 29.432972>,  <35.357563, 37.648109, 29.605835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193550, 37.619518, 29.432972>,  <34.920193, 37.571865, 29.144865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193550, 37.619518, 29.432972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571391, -0.526811, 0.629271,
		0.454410, -0.841592, -0.291948,
		0.683392, 0.119131, 0.720266,
		35.398567, 37.655258, 29.649052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096119, 36.841686, 29.485867>,  <34.920193, 37.571865, 29.144865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096119, 36.841686, 29.485867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121983, 37.173321, 29.708014>,  <35.137501, 37.372303, 29.841301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121983, 37.173321, 29.708014>,  <35.096119, 36.841686, 29.485867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121983, 37.173321, 29.708014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816807, -0.275741, 0.506748,
		0.573276, -0.486394, 0.659375,
		0.064662, 0.829089, 0.555365,
		35.141380, 37.422047, 29.874622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884327, 36.607292, 30.225037>,  <35.096119, 36.841686, 29.485867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884327, 36.607292, 30.225037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879189, 36.999996, 30.300913>,  <34.876106, 37.235619, 30.346439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879189, 36.999996, 30.300913>,  <34.884327, 36.607292, 30.225037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879189, 36.999996, 30.300913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634283, -0.154652, 0.757475,
		0.772994, -0.110590, 0.624699,
		-0.012842, 0.981760, 0.189691,
		34.875336, 37.294525, 30.357821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881466, 36.656185, 30.908674>,  <34.884327, 36.607292, 30.225037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881466, 36.656185, 30.908674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745785, 37.007652, 30.774282>,  <34.664375, 37.218533, 30.693647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745785, 37.007652, 30.774282>,  <34.881466, 36.656185, 30.908674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745785, 37.007652, 30.774282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779539, -0.062637, 0.623214,
		0.526553, 0.473307, 0.706203,
		-0.339206, 0.878668, -0.335979,
		34.644024, 37.271252, 30.673489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698006, 36.988743, 31.488041>,  <34.881466, 36.656185, 30.908674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698006, 36.988743, 31.488041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490391, 37.197601, 31.217350>,  <34.365822, 37.322918, 31.054935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490391, 37.197601, 31.217350>,  <34.698006, 36.988743, 31.488041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490391, 37.197601, 31.217350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833752, -0.134864, 0.535414,
		0.188300, 0.842124, 0.505342,
		-0.519038, 0.522149, -0.676728,
		34.334679, 37.354244, 31.014332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271729, 37.391731, 31.935873>,  <34.698006, 36.988743, 31.488041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271729, 37.391731, 31.935873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098797, 37.400841, 31.575302>,  <33.995037, 37.406307, 31.358959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098797, 37.400841, 31.575302>,  <34.271729, 37.391731, 31.935873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098797, 37.400841, 31.575302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900992, -0.050913, 0.430838,
		-0.036082, 0.998443, 0.042532,
		-0.432332, 0.022775, -0.901427,
		33.969097, 37.407673, 31.304874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750233, 37.859016, 32.072796>,  <34.271729, 37.391731, 31.935873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750233, 37.859016, 32.072796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636509, 37.668728, 31.739843>,  <33.568275, 37.554554, 31.540071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636509, 37.668728, 31.739843>,  <33.750233, 37.859016, 32.072796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636509, 37.668728, 31.739843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932151, -0.065870, 0.356027,
		-0.224199, 0.877127, -0.424716,
		-0.284305, -0.475720, -0.832383,
		33.551216, 37.526012, 31.490129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160122, 38.105938, 31.879856>,  <33.750233, 37.859016, 32.072796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160122, 38.105938, 31.879856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182014, 37.748459, 31.701729>,  <33.195148, 37.533970, 31.594852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182014, 37.748459, 31.701729>,  <33.160122, 38.105938, 31.879856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182014, 37.748459, 31.701729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935896, -0.201351, 0.289061,
		-0.347998, 0.400950, -0.847429,
		0.054732, -0.893699, -0.445318,
		33.198433, 37.480350, 31.568134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473076, 37.996181, 31.644461>,  <33.160122, 38.105938, 31.879856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473076, 37.996181, 31.644461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615410, 37.622597, 31.631187>,  <32.700809, 37.398445, 31.623224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615410, 37.622597, 31.631187>,  <32.473076, 37.996181, 31.644461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615410, 37.622597, 31.631187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873119, -0.344895, 0.344544,
		-0.333238, -0.093620, -0.938183,
		0.355831, -0.933961, -0.033191,
		32.722160, 37.342407, 31.621233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899694, 37.599434, 31.533754>,  <32.473076, 37.996181, 31.644461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899694, 37.599434, 31.533754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157009, 37.326111, 31.671894>,  <32.311398, 37.162117, 31.754778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157009, 37.326111, 31.671894>,  <31.899694, 37.599434, 31.533754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157009, 37.326111, 31.671894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743696, -0.450501, 0.493929,
		-0.181926, -0.574575, -0.797976,
		0.643289, -0.683310, 0.345351,
		32.349995, 37.121117, 31.775499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482267, 36.958996, 31.564379>,  <31.899694, 37.599434, 31.533754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482267, 36.958996, 31.564379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806887, 36.893131, 31.788620>,  <32.001659, 36.853611, 31.923164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806887, 36.893131, 31.788620>,  <31.482267, 36.958996, 31.564379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806887, 36.893131, 31.788620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561086, -0.487309, 0.669113,
		0.163006, -0.857563, -0.487867,
		0.811549, -0.164666, 0.560601,
		32.050350, 36.843731, 31.956800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339579, 36.335892, 31.885481>,  <31.482267, 36.958996, 31.564379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339579, 36.335892, 31.885481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623917, 36.497921, 32.115479>,  <31.794519, 36.595139, 32.253475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623917, 36.497921, 32.115479>,  <31.339579, 36.335892, 31.885481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623917, 36.497921, 32.115479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342842, -0.514259, 0.786128,
		0.614133, -0.755947, -0.226682,
		0.710844, 0.405071, 0.574994,
		31.837170, 36.619442, 32.287975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773993, 35.837654, 32.243454>,  <31.339579, 36.335892, 31.885481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773993, 35.837654, 32.243454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777403, 36.176064, 32.456684>,  <31.779449, 36.379108, 32.584621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777403, 36.176064, 32.456684>,  <31.773993, 35.837654, 32.243454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777403, 36.176064, 32.456684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399102, -0.485914, 0.777563,
		0.916867, -0.219381, 0.333508,
		0.008527, 0.846026, 0.533074,
		31.779961, 36.429871, 32.616608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106297, 35.688866, 32.975323>,  <31.773993, 35.837654, 32.243454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106297, 35.688866, 32.975323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900793, 36.030430, 33.008511>,  <31.777491, 36.235371, 33.028423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900793, 36.030430, 33.008511>,  <32.106297, 35.688866, 32.975323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900793, 36.030430, 33.008511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560141, -0.407109, 0.721460,
		0.649841, 0.324184, 0.687468,
		-0.513760, 0.853913, 0.082968,
		31.746666, 36.286602, 33.033401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173767, 35.887150, 33.687046>,  <32.106297, 35.688866, 32.975323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173767, 35.887150, 33.687046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845940, 36.065651, 33.543293>,  <31.649242, 36.172752, 33.457039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845940, 36.065651, 33.543293>,  <32.173767, 35.887150, 33.687046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845940, 36.065651, 33.543293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540061, -0.392125, 0.744696,
		0.191400, 0.804422, 0.562380,
		-0.819573, 0.446254, -0.359384,
		31.600067, 36.199528, 33.435478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550411, 36.390648, 34.147243>,  <32.173767, 35.887150, 33.687046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550411, 36.390648, 34.147243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803642, 36.360966, 34.455452>,  <32.955582, 36.343155, 34.640377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803642, 36.360966, 34.455452>,  <32.550411, 36.390648, 34.147243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803642, 36.360966, 34.455452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674414, 0.541478, -0.501963,
		-0.379974, 0.837434, 0.392840,
		0.633075, -0.074204, 0.770525,
		32.993565, 36.338703, 34.686611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845905, 37.016590, 34.270317>,  <32.550411, 36.390648, 34.147243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845905, 37.016590, 34.270317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125160, 36.781654, 34.434093>,  <33.292713, 36.640694, 34.532360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125160, 36.781654, 34.434093>,  <32.845905, 37.016590, 34.270317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125160, 36.781654, 34.434093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715930, 0.566916, -0.407492,
		0.007220, 0.577613, 0.816279,
		0.698134, -0.587341, 0.409437,
		33.334602, 36.605453, 34.556923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318672, 37.542686, 34.264427>,  <32.845905, 37.016590, 34.270317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318672, 37.542686, 34.264427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494083, 37.190521, 34.336617>,  <33.599331, 36.979221, 34.379929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494083, 37.190521, 34.336617>,  <33.318672, 37.542686, 34.264427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494083, 37.190521, 34.336617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873786, 0.370711, -0.314756,
		0.210212, 0.295723, 0.931858,
		0.438531, -0.880410, 0.180471,
		33.625641, 36.926399, 34.390759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001118, 37.622189, 34.647369>,  <33.318672, 37.542686, 34.264427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001118, 37.622189, 34.647369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046394, 37.259930, 34.483910>,  <34.073559, 37.042576, 34.385834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046394, 37.259930, 34.483910>,  <34.001118, 37.622189, 34.647369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046394, 37.259930, 34.483910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903949, 0.264574, -0.335972,
		0.412389, -0.331369, 0.848605,
		0.113189, -0.905646, -0.408648,
		34.080353, 36.988235, 34.361317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615688, 37.381905, 34.868793>,  <34.001118, 37.622189, 34.647369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615688, 37.381905, 34.868793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505825, 37.204391, 34.527592>,  <34.439907, 37.097885, 34.322868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505825, 37.204391, 34.527592>,  <34.615688, 37.381905, 34.868793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505825, 37.204391, 34.527592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883206, 0.234285, -0.406273,
		0.380142, -0.864968, 0.327600,
		-0.274662, -0.443780, -0.853007,
		34.423428, 37.071259, 34.271690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212502, 37.065540, 34.674580>,  <34.615688, 37.381905, 34.868793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212502, 37.065540, 34.674580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980389, 37.094883, 34.350136>,  <34.841122, 37.112488, 34.155472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980389, 37.094883, 34.350136>,  <35.212502, 37.065540, 34.674580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980389, 37.094883, 34.350136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749911, 0.436588, -0.497016,
		0.317659, -0.896666, -0.308355,
		-0.580281, 0.073357, -0.811106,
		34.806305, 37.116890, 34.106804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634621, 36.773823, 34.169380>,  <35.212502, 37.065540, 34.674580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634621, 36.773823, 34.169380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364899, 37.006817, 33.987820>,  <35.203064, 37.146614, 33.878883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364899, 37.006817, 33.987820>,  <35.634621, 36.773823, 34.169380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364899, 37.006817, 33.987820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737465, 0.499369, -0.454726,
		-0.038209, -0.641358, -0.766290,
		-0.674304, 0.582486, -0.453899,
		35.162609, 37.181564, 33.851650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754604, 36.614120, 33.403797>,  <35.634621, 36.773823, 34.169380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754604, 36.614120, 33.403797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568275, 36.967964, 33.394993>,  <35.456478, 37.180271, 33.389709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568275, 36.967964, 33.394993>,  <35.754604, 36.614120, 33.403797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568275, 36.967964, 33.394993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735122, 0.373021, -0.566084,
		-0.492552, -0.279871, -0.824054,
		-0.465820, 0.884606, -0.022007,
		35.428528, 37.233345, 33.388390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630951, 36.833935, 32.736706>,  <35.754604, 36.614120, 33.403797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630951, 36.833935, 32.736706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635986, 37.184490, 32.929283>,  <35.639008, 37.394821, 33.044830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635986, 37.184490, 32.929283>,  <35.630951, 36.833935, 32.736706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635986, 37.184490, 32.929283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674247, 0.348112, -0.651313,
		-0.738398, 0.332812, -0.586519,
		0.012591, 0.876387, 0.481443,
		35.639763, 37.447407, 33.073715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911644, 37.271473, 32.182259>,  <35.630951, 36.833935, 32.736706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911644, 37.271473, 32.182259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915882, 37.539185, 32.479431>,  <35.918427, 37.699810, 32.657734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915882, 37.539185, 32.479431>,  <35.911644, 37.271473, 32.182259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915882, 37.539185, 32.479431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531015, 0.625789, -0.571324,
		-0.847296, 0.400564, -0.348766,
		0.010598, 0.669280, 0.742934,
		35.919060, 37.739967, 32.702312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792801, 37.892639, 31.816992>,  <35.911644, 37.271473, 32.182259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792801, 37.892639, 31.816992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991905, 37.939850, 32.160690>,  <36.111370, 37.968174, 32.366909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991905, 37.939850, 32.160690>,  <35.792801, 37.892639, 31.816992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991905, 37.939850, 32.160690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737790, 0.463202, -0.491029,
		-0.455956, 0.878359, 0.143490,
		0.497765, 0.118022, 0.859244,
		36.141235, 37.975258, 32.418465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925446, 38.656555, 31.873688>,  <35.792801, 37.892639, 31.816992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925446, 38.656555, 31.873688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190609, 38.446785, 32.087425>,  <36.349709, 38.320923, 32.215668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190609, 38.446785, 32.087425>,  <35.925446, 38.656555, 31.873688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190609, 38.446785, 32.087425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743386, 0.376190, -0.553045,
		0.089018, 0.763843, 0.639233,
		0.662913, -0.524428, 0.534343,
		36.389484, 38.289455, 32.247726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359665, 39.156662, 32.072609>,  <35.925446, 38.656555, 31.873688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359665, 39.156662, 32.072609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.589615, 38.832565, 32.118286>,  <36.727585, 38.638107, 32.145691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.589615, 38.832565, 32.118286>,  <36.359665, 39.156662, 32.072609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589615, 38.832565, 32.118286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767543, 0.485610, -0.418403,
		0.283552, 0.328175, 0.901054,
		0.574871, -0.810237, 0.114193,
		36.762077, 38.589493, 32.152542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952053, 39.392220, 32.397533>,  <36.359665, 39.156662, 32.072609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952053, 39.392220, 32.397533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075817, 39.047062, 32.237694>,  <37.150078, 38.839970, 32.141788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075817, 39.047062, 32.237694>,  <36.952053, 39.392220, 32.397533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075817, 39.047062, 32.237694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756476, 0.477983, -0.446404,
		0.576201, -0.164167, 0.800651,
		0.309413, -0.862891, -0.399603,
		37.168640, 38.788193, 32.117813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727802, 39.391171, 32.349182>,  <36.952053, 39.392220, 32.397533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727802, 39.391171, 32.349182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646061, 39.079021, 32.112789>,  <37.597015, 38.891731, 31.970955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646061, 39.079021, 32.112789>,  <37.727802, 39.391171, 32.349182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646061, 39.079021, 32.112789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712931, 0.295055, -0.636138,
		0.670797, -0.551326, 0.496056,
		-0.204356, -0.780373, -0.590979,
		37.584755, 38.844910, 31.935495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344002, 39.139233, 32.268757>,  <37.727802, 39.391171, 32.349182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344002, 39.139233, 32.268757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.158730, 38.952232, 31.967583>,  <38.047565, 38.840031, 31.786879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.158730, 38.952232, 31.967583>,  <38.344002, 39.139233, 32.268757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158730, 38.952232, 31.967583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769733, 0.208891, -0.603221,
		0.439287, -0.858957, 0.263097,
		-0.463182, -0.467502, -0.752931,
		38.019775, 38.811981, 31.741703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854431, 38.777725, 31.937662>,  <38.344002, 39.139233, 32.268757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854431, 38.777725, 31.937662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568668, 38.814583, 31.660208>,  <38.397209, 38.836697, 31.493736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568668, 38.814583, 31.660208>,  <38.854431, 38.777725, 31.937662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568668, 38.814583, 31.660208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690055, 0.257042, -0.676575,
		0.115949, -0.961997, -0.247219,
		-0.714408, 0.092147, -0.693635,
		38.354347, 38.842228, 31.452118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045269, 38.335018, 31.343697>,  <38.854431, 38.777725, 31.937662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045269, 38.335018, 31.343697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.775932, 38.574413, 31.170071>,  <38.614330, 38.718052, 31.065895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.775932, 38.574413, 31.170071>,  <39.045269, 38.335018, 31.343697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775932, 38.574413, 31.170071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640102, 0.178131, -0.747354,
		-0.369965, -0.781074, -0.503040,
		-0.673346, 0.598492, -0.434064,
		38.573929, 38.753960, 31.039852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050461, 38.158272, 30.628948>,  <39.045269, 38.335018, 31.343697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050461, 38.158272, 30.628948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938671, 38.540585, 30.665564>,  <38.871597, 38.769974, 30.687532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938671, 38.540585, 30.665564>,  <39.050461, 38.158272, 30.628948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938671, 38.540585, 30.665564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550400, 0.237594, -0.800380,
		-0.786737, -0.173300, -0.592462,
		-0.279472, 0.955780, 0.091540,
		38.854828, 38.827320, 30.693026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763123, 38.340282, 30.045174>,  <39.050461, 38.158272, 30.628948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763123, 38.340282, 30.045174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855434, 38.697845, 30.198885>,  <38.910820, 38.912384, 30.291113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855434, 38.697845, 30.198885>,  <38.763123, 38.340282, 30.045174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855434, 38.697845, 30.198885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517645, 0.221619, -0.826395,
		-0.823885, 0.389632, -0.411583,
		0.230775, 0.893908, 0.384280,
		38.924667, 38.966019, 30.314169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720276, 38.699207, 29.529833>,  <38.763123, 38.340282, 30.045174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720276, 38.699207, 29.529833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.949921, 38.921276, 29.770555>,  <39.087708, 39.054516, 29.914989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.949921, 38.921276, 29.770555>,  <38.720276, 38.699207, 29.529833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949921, 38.921276, 29.770555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668578, 0.106422, -0.735988,
		-0.472646, 0.824899, -0.310077,
		0.574116, 0.555173, 0.601809,
		39.122154, 39.087830, 29.951097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810516, 39.327667, 29.031780>,  <38.720276, 38.699207, 29.529833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810516, 39.327667, 29.031780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090332, 39.277935, 29.313257>,  <39.258221, 39.248096, 29.482143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090332, 39.277935, 29.313257>,  <38.810516, 39.327667, 29.031780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090332, 39.277935, 29.313257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714463, 0.102907, -0.692064,
		0.013627, 0.986891, 0.160814,
		0.699541, -0.124326, 0.703694,
		39.300194, 39.240639, 29.524366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391796, 39.802090, 28.810860>,  <38.810516, 39.327667, 29.031780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391796, 39.802090, 28.810860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558418, 39.577496, 29.096857>,  <39.658390, 39.442738, 29.268456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558418, 39.577496, 29.096857>,  <39.391796, 39.802090, 28.810860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558418, 39.577496, 29.096857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836049, -0.072319, -0.543868,
		0.357082, 0.824319, 0.439306,
		0.416551, -0.561487, 0.714995,
		39.683384, 39.409050, 29.311356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058655, 40.068443, 28.851881>,  <39.391796, 39.802090, 28.810860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058655, 40.068443, 28.851881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.086216, 39.707745, 29.022579>,  <40.102753, 39.491325, 29.124998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.086216, 39.707745, 29.022579>,  <40.058655, 40.068443, 28.851881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086216, 39.707745, 29.022579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802753, -0.203860, -0.560383,
		0.592317, 0.381182, 0.709831,
		0.068902, -0.901743, 0.426745,
		40.106888, 39.437222, 29.150602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751862, 39.956825, 28.904556>,  <40.058655, 40.068443, 28.851881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751862, 39.956825, 28.904556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.589039, 39.591774, 28.889526>,  <40.491344, 39.372742, 28.880508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.589039, 39.591774, 28.889526>,  <40.751862, 39.956825, 28.904556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589039, 39.591774, 28.889526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814928, -0.344288, -0.466216,
		0.412545, -0.220401, 0.883872,
		-0.407062, -0.912628, -0.037577,
		40.466919, 39.317986, 28.878254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330246, 39.411243, 29.125177>,  <40.751862, 39.956825, 28.904556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.330246, 39.411243, 29.125177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047241, 39.221451, 28.915684>,  <40.877438, 39.107574, 28.789988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047241, 39.221451, 28.915684>,  <41.330246, 39.411243, 29.125177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.047241, 39.221451, 28.915684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705833, -0.437757, -0.556927,
		0.034982, -0.763701, 0.644621,
		-0.707514, -0.474477, -0.523732,
		40.834988, 39.079109, 28.758564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630978, 38.858070, 29.025764>,  <41.330246, 39.411243, 29.125177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630978, 38.858070, 29.025764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349064, 38.863251, 28.742043>,  <41.179916, 38.866360, 28.571810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349064, 38.863251, 28.742043>,  <41.630978, 38.858070, 29.025764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349064, 38.863251, 28.742043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642347, -0.412734, -0.645787,
		-0.301120, -0.910759, 0.282567,
		-0.704781, 0.012954, -0.709306,
		41.137630, 38.867138, 28.529251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664585, 38.064419, 28.701286>,  <41.630978, 38.858070, 29.025764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.664585, 38.064419, 28.701286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.470154, 38.310577, 28.453089>,  <41.353493, 38.458271, 28.304171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.470154, 38.310577, 28.453089>,  <41.664585, 38.064419, 28.701286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.470154, 38.310577, 28.453089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225390, -0.597718, -0.769372,
		-0.844350, -0.513829, 0.151834,
		-0.486079, 0.615397, -0.620495,
		41.324329, 38.495197, 28.266941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.244965, 37.581203, 28.271996>,  <41.664585, 38.064419, 28.701286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.244965, 37.581203, 28.271996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259529, 37.934658, 28.085291>,  <41.268269, 38.146729, 27.973269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259529, 37.934658, 28.085291>,  <41.244965, 37.581203, 28.271996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259529, 37.934658, 28.085291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290882, -0.456220, -0.840983,
		-0.956066, -0.105149, -0.273645,
		0.036414, 0.883633, -0.466762,
		41.270454, 38.199749, 27.945263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.965462, 37.476093, 27.578003>,  <41.244965, 37.581203, 28.271996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.965462, 37.476093, 27.578003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160355, 37.822784, 27.535309>,  <41.277290, 38.030800, 27.509693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160355, 37.822784, 27.535309>,  <40.965462, 37.476093, 27.578003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.160355, 37.822784, 27.535309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380332, -0.320631, -0.867493,
		-0.786101, 0.382074, -0.485865,
		0.487230, 0.866727, -0.106734,
		41.306522, 38.082802, 27.503288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889988, 37.607159, 26.901787>,  <40.965462, 37.476093, 27.578003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.889988, 37.607159, 26.901787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221836, 37.791477, 27.027899>,  <41.420944, 37.902069, 27.103567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221836, 37.791477, 27.027899>,  <40.889988, 37.607159, 26.901787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221836, 37.791477, 27.027899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509956, -0.395443, -0.763917,
		-0.227335, 0.794538, -0.563053,
		0.829616, 0.460797, 0.315281,
		41.470722, 37.929718, 27.122482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094463, 38.142872, 26.396442>,  <40.889988, 37.607159, 26.901787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094463, 38.142872, 26.396442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.442783, 38.096889, 26.587645>,  <41.651775, 38.069298, 26.702366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.442783, 38.096889, 26.587645>,  <41.094463, 38.142872, 26.396442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.442783, 38.096889, 26.587645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454141, -0.184325, -0.871654,
		0.188313, 0.976119, -0.108303,
		0.870801, -0.114959, 0.478007,
		41.704025, 38.062401, 26.731047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.572220, 38.405460, 25.914780>,  <41.094463, 38.142872, 26.396442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.572220, 38.405460, 25.914780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.767944, 38.175987, 26.177525>,  <41.885380, 38.038303, 26.335171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.767944, 38.175987, 26.177525>,  <41.572220, 38.405460, 25.914780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.767944, 38.175987, 26.177525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673391, -0.230083, -0.702571,
		0.554184, 0.786099, 0.273730,
		0.489310, -0.573681, 0.656860,
		41.914738, 38.003883, 26.374582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.283607, 38.522392, 25.784204>,  <41.572220, 38.405460, 25.914780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.283607, 38.522392, 25.784204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.278442, 38.169262, 25.972013>,  <42.275345, 37.957382, 26.084698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.278442, 38.169262, 25.972013>,  <42.283607, 38.522392, 25.784204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.278442, 38.169262, 25.972013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652066, -0.363413, -0.665387,
		0.758052, 0.297569, 0.580353,
		-0.012909, -0.882827, 0.469521,
		42.274570, 37.904415, 26.112869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.996929, 38.219940, 25.746904>,  <42.283607, 38.522392, 25.784204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.996929, 38.219940, 25.746904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.768402, 37.909588, 25.853941>,  <42.631287, 37.723377, 25.918163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.768402, 37.909588, 25.853941>,  <42.996929, 38.219940, 25.746904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.768402, 37.909588, 25.853941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523032, -0.595451, -0.609816,
		0.632481, -0.208441, 0.746003,
		-0.571319, -0.775880, 0.267591,
		42.597008, 37.676823, 25.934217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.489563, 37.632984, 25.952337>,  <42.996929, 38.219940, 25.746904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.489563, 37.632984, 25.952337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.126297, 37.493126, 25.860264>,  <42.908337, 37.409210, 25.805019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.126297, 37.493126, 25.860264>,  <43.489563, 37.632984, 25.952337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.126297, 37.493126, 25.860264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406397, -0.604509, -0.685135,
		0.100409, -0.715760, 0.691090,
		-0.908163, -0.349650, -0.230184,
		42.853848, 37.388229, 25.791208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.512051, 36.903587, 25.891703>,  <43.489563, 37.632984, 25.952337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.512051, 36.903587, 25.891703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.203011, 37.011536, 25.661829>,  <43.017586, 37.076305, 25.523905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.203011, 37.011536, 25.661829>,  <43.512051, 36.903587, 25.891703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.203011, 37.011536, 25.661829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426170, -0.450498, -0.784494,
		-0.470611, -0.851010, 0.233039,
		-0.772596, 0.269878, -0.574684,
		42.971230, 37.092495, 25.489424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.423641, 36.386627, 25.428484>,  <43.512051, 36.903587, 25.891703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.423641, 36.386627, 25.428484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.219193, 36.693279, 25.273033>,  <43.096523, 36.877270, 25.179762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.219193, 36.693279, 25.273033>,  <43.423641, 36.386627, 25.428484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.219193, 36.693279, 25.273033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332001, -0.240960, -0.911983,
		-0.792796, -0.595163, -0.131361,
		-0.511126, 0.766628, -0.388627,
		43.065853, 36.923267, 25.156445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.914951, 35.805134, 25.541018>,  <43.423641, 36.386627, 25.428484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.914951, 35.805134, 25.541018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.133396, 35.473778, 25.590851>,  <44.264465, 35.274963, 25.620750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.133396, 35.473778, 25.590851>,  <43.914951, 35.805134, 25.541018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.133396, 35.473778, 25.590851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703078, -0.372395, 0.605809,
		-0.455458, -0.418428, -0.785797,
		0.546114, -0.828396, 0.124577,
		44.297230, 35.225258, 25.628225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.500900, 35.285000, 25.287170>,  <43.914951, 35.805134, 25.541018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.500900, 35.285000, 25.287170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.754387, 35.115543, 25.546070>,  <43.906479, 35.013870, 25.701410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.754387, 35.115543, 25.546070>,  <43.500900, 35.285000, 25.287170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.754387, 35.115543, 25.546070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770608, -0.272632, 0.576051,
		-0.067576, -0.863830, -0.499230,
		0.633716, -0.423638, 0.647252,
		43.944500, 34.988453, 25.740246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206181, 34.629135, 25.356562>,  <43.500900, 35.285000, 25.287170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.206181, 34.629135, 25.356562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.437939, 34.691624, 25.676537>,  <43.576992, 34.729115, 25.868523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.437939, 34.691624, 25.676537>,  <43.206181, 34.629135, 25.356562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.437939, 34.691624, 25.676537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752245, -0.275302, 0.598611,
		0.313740, -0.948580, -0.041992,
		0.579391, 0.156220, 0.799938,
		43.611755, 34.738491, 25.916517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.122871, 34.041718, 25.771788>,  <43.206181, 34.629135, 25.356562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.122871, 34.041718, 25.771788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.260281, 34.337402, 26.003496>,  <43.342724, 34.514812, 26.142521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.260281, 34.337402, 26.003496>,  <43.122871, 34.041718, 25.771788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.260281, 34.337402, 26.003496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639059, -0.267991, 0.720961,
		0.688185, -0.617853, 0.380342,
		0.343520, 0.739215, 0.579271,
		43.363335, 34.559166, 26.177277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.120590, 33.793350, 26.477936>,  <43.122871, 34.041718, 25.771788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.120590, 33.793350, 26.477936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.117157, 34.189331, 26.534391>,  <43.115097, 34.426918, 26.568264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.117157, 34.189331, 26.534391>,  <43.120590, 33.793350, 26.477936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.117157, 34.189331, 26.534391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686596, -0.108449, 0.718906,
		0.726989, -0.090732, 0.680628,
		-0.008586, 0.989953, 0.141138,
		43.114582, 34.486317, 26.576733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.987236, 33.841125, 27.228449>,  <43.120590, 33.793350, 26.477936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.987236, 33.841125, 27.228449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.944099, 34.210922, 27.082197>,  <42.918217, 34.432800, 26.994446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.944099, 34.210922, 27.082197>,  <42.987236, 33.841125, 27.228449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.944099, 34.210922, 27.082197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682126, 0.198740, 0.703709,
		0.723239, 0.325293, 0.609188,
		-0.107841, 0.924493, -0.365628,
		42.911747, 34.488270, 26.972509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.763206, 34.211243, 27.833197>,  <42.987236, 33.841125, 27.228449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.763206, 34.211243, 27.833197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.682156, 34.466175, 27.535807>,  <42.633526, 34.619133, 27.357372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.682156, 34.466175, 27.535807>,  <42.763206, 34.211243, 27.833197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.682156, 34.466175, 27.535807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567920, 0.542022, 0.619418,
		0.797753, 0.547745, 0.252123,
		-0.202627, 0.637328, -0.743475,
		42.621368, 34.657375, 27.312765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.648064, 34.824322, 28.165239>,  <42.763206, 34.211243, 27.833197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.648064, 34.824322, 28.165239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.481705, 34.899300, 27.809286>,  <42.381889, 34.944286, 27.595715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.481705, 34.899300, 27.809286>,  <42.648064, 34.824322, 28.165239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.481705, 34.899300, 27.809286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728163, 0.517567, 0.449335,
		0.544801, 0.834858, -0.078762,
		-0.415896, 0.187447, -0.889884,
		42.356937, 34.955532, 27.542320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.445541, 35.506310, 28.142488>,  <42.648064, 34.824322, 28.165239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.445541, 35.506310, 28.142488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.209248, 35.306252, 27.889225>,  <42.067471, 35.186218, 27.737267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.209248, 35.306252, 27.889225>,  <42.445541, 35.506310, 28.142488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.209248, 35.306252, 27.889225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806859, 0.362964, 0.466085,
		-0.003297, 0.786201, -0.617962,
		-0.590735, -0.500145, -0.633157,
		42.032028, 35.156208, 27.699278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.012180, 35.962112, 27.854986>,  <42.445541, 35.506310, 28.142488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.012180, 35.962112, 27.854986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.816185, 35.618038, 27.798441>,  <41.698586, 35.411594, 27.764513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.816185, 35.618038, 27.798441>,  <42.012180, 35.962112, 27.854986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.816185, 35.618038, 27.798441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794129, 0.373581, 0.479371,
		-0.359538, 0.347150, -0.866152,
		-0.489991, -0.860188, -0.141365,
		41.669189, 35.359982, 27.756031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369427, 36.197239, 27.644268>,  <42.012180, 35.962112, 27.854986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.369427, 36.197239, 27.644268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.330280, 35.823257, 27.780668>,  <41.306793, 35.598869, 27.862509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.330280, 35.823257, 27.780668>,  <41.369427, 36.197239, 27.644268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.330280, 35.823257, 27.780668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782617, 0.283965, 0.553963,
		-0.614763, -0.212660, -0.759502,
		-0.097866, -0.934954, 0.341002,
		41.300919, 35.542770, 27.882969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696297, 35.906494, 27.385164>,  <41.369427, 36.197239, 27.644268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696297, 35.906494, 27.385164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807152, 35.735607, 27.729414>,  <40.873665, 35.633076, 27.935965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807152, 35.735607, 27.729414>,  <40.696297, 35.906494, 27.385164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807152, 35.735607, 27.729414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890542, 0.222073, 0.397011,
		-0.360734, -0.876450, -0.318914,
		0.277139, -0.427221, 0.860625,
		40.890293, 35.607441, 27.987602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111645, 35.585426, 27.666195>,  <40.696297, 35.906494, 27.385164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111645, 35.585426, 27.666195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.341267, 35.562435, 27.992914>,  <40.479038, 35.548641, 28.188946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.341267, 35.562435, 27.992914>,  <40.111645, 35.585426, 27.666195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.341267, 35.562435, 27.992914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796999, 0.189519, 0.573477,
		-0.187761, -0.980193, 0.062984,
		0.574055, -0.057478, 0.816797,
		40.513485, 35.545193, 28.237953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755283, 35.232616, 28.121355>,  <40.111645, 35.585426, 27.666195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755283, 35.232616, 28.121355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.031631, 35.388985, 28.364624>,  <40.197441, 35.482807, 28.510586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.031631, 35.388985, 28.364624>,  <39.755283, 35.232616, 28.121355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031631, 35.388985, 28.364624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690497, 0.107480, 0.715306,
		0.214262, -0.914127, 0.344185,
		0.690873, 0.390921, 0.608173,
		40.238895, 35.506260, 28.547077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670219, 34.836205, 28.744986>,  <39.755283, 35.232616, 28.121355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670219, 34.836205, 28.744986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848206, 35.171551, 28.870935>,  <39.954998, 35.372757, 28.946507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848206, 35.171551, 28.870935>,  <39.670219, 34.836205, 28.744986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848206, 35.171551, 28.870935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553133, -0.019234, 0.832871,
		0.704307, -0.544768, 0.455169,
		0.444967, 0.838366, 0.314876,
		39.981697, 35.423061, 28.965399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871655, 34.767452, 29.401789>,  <39.670219, 34.836205, 28.744986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871655, 34.767452, 29.401789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850929, 35.165169, 29.364494>,  <39.838493, 35.403801, 29.342117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850929, 35.165169, 29.364494>,  <39.871655, 34.767452, 29.401789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850929, 35.165169, 29.364494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467454, 0.058356, 0.882089,
		0.882498, 0.089287, 0.461763,
		-0.051812, 0.994295, -0.093236,
		39.835384, 35.463459, 29.336523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129555, 35.059521, 30.086859>,  <39.871655, 34.767452, 29.401789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129555, 35.059521, 30.086859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939915, 35.371010, 29.922510>,  <39.826130, 35.557903, 29.823900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939915, 35.371010, 29.922510>,  <40.129555, 35.059521, 30.086859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939915, 35.371010, 29.922510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296582, 0.298137, 0.907278,
		0.829016, 0.551999, 0.089608,
		-0.474101, 0.778724, -0.410873,
		39.797684, 35.604626, 29.799248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325397, 35.674835, 30.636761>,  <40.129555, 35.059521, 30.086859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325397, 35.674835, 30.636761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999290, 35.757206, 30.420267>,  <39.803627, 35.806629, 30.290371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999290, 35.757206, 30.420267>,  <40.325397, 35.674835, 30.636761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999290, 35.757206, 30.420267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504863, 0.205048, 0.838492,
		0.283643, 0.956845, -0.063206,
		-0.815267, 0.205922, -0.541236,
		39.754711, 35.818981, 30.257896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209423, 36.347122, 30.777960>,  <40.325397, 35.674835, 30.636761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209423, 36.347122, 30.777960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.849701, 36.220058, 30.657730>,  <39.633869, 36.143818, 30.585592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.849701, 36.220058, 30.657730>,  <40.209423, 36.347122, 30.777960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849701, 36.220058, 30.657730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422140, 0.451001, 0.786381,
		-0.114243, 0.834080, -0.539684,
		-0.899303, -0.317661, -0.300575,
		39.579910, 36.124760, 30.567558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669041, 36.837948, 30.929407>,  <40.209423, 36.347122, 30.777960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669041, 36.837948, 30.929407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435711, 36.516251, 30.883928>,  <39.295715, 36.323231, 30.856642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435711, 36.516251, 30.883928>,  <39.669041, 36.837948, 30.929407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435711, 36.516251, 30.883928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575414, 0.310379, 0.756679,
		-0.573266, 0.506809, -0.643825,
		-0.583322, -0.804244, -0.113696,
		39.260715, 36.274979, 30.849819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965115, 37.047371, 31.005575>,  <39.669041, 36.837948, 30.929407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965115, 37.047371, 31.005575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960949, 36.652309, 31.068100>,  <38.958450, 36.415272, 31.105616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960949, 36.652309, 31.068100>,  <38.965115, 37.047371, 31.005575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960949, 36.652309, 31.068100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749539, 0.111185, 0.652556,
		-0.661878, -0.110364, -0.741442,
		-0.010419, -0.987653, 0.156313,
		38.957825, 36.356014, 31.114994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252365, 36.887287, 31.254805>,  <38.965115, 37.047371, 31.005575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252365, 36.887287, 31.254805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419086, 36.535580, 31.347025>,  <38.519119, 36.324554, 31.402357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419086, 36.535580, 31.347025>,  <38.252365, 36.887287, 31.254805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419086, 36.535580, 31.347025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489893, -0.003640, 0.871775,
		-0.765688, -0.476306, -0.432266,
		0.416805, -0.879272, 0.230552,
		38.544128, 36.271797, 31.416191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693573, 36.376656, 31.530638>,  <38.252365, 36.887287, 31.254805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693573, 36.376656, 31.530638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.057632, 36.305061, 31.680088>,  <38.276070, 36.262104, 31.769758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.057632, 36.305061, 31.680088>,  <37.693573, 36.376656, 31.530638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057632, 36.305061, 31.680088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401326, -0.157107, 0.902361,
		-0.102810, -0.971227, -0.214822,
		0.910147, -0.178986, 0.373627,
		38.330677, 36.251366, 31.792175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627926, 35.807709, 31.869261>,  <37.693573, 36.376656, 31.530638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627926, 35.807709, 31.869261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.963425, 35.961407, 32.023594>,  <38.164722, 36.053623, 32.116196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.963425, 35.961407, 32.023594>,  <37.627926, 35.807709, 31.869261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963425, 35.961407, 32.023594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389471, -0.071878, 0.918230,
		0.380555, -0.920430, 0.089364,
		0.838743, 0.384242, 0.385834,
		38.215050, 36.076679, 32.139343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752914, 35.366520, 32.416851>,  <37.627926, 35.807709, 31.869261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752914, 35.366520, 32.416851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969845, 35.692101, 32.500153>,  <38.100002, 35.887447, 32.550133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969845, 35.692101, 32.500153>,  <37.752914, 35.366520, 32.416851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969845, 35.692101, 32.500153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237647, -0.089130, 0.967254,
		0.805857, -0.574058, 0.145095,
		0.542327, 0.813949, 0.208249,
		38.132542, 35.936287, 32.562626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063828, 35.178364, 33.016300>,  <37.752914, 35.366520, 32.416851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063828, 35.178364, 33.016300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070984, 35.577915, 32.998783>,  <38.075279, 35.817646, 32.988274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070984, 35.577915, 32.998783>,  <38.063828, 35.178364, 33.016300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070984, 35.577915, 32.998783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326007, 0.047235, 0.944187,
		0.945198, -0.002616, 0.326487,
		0.017892, 0.998881, -0.043793,
		38.076351, 35.877579, 32.985645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396656, 35.371227, 33.549923>,  <38.063828, 35.178364, 33.016300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396656, 35.371227, 33.549923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169586, 35.683926, 33.446678>,  <38.033344, 35.871544, 33.384731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169586, 35.683926, 33.446678>,  <38.396656, 35.371227, 33.549923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169586, 35.683926, 33.446678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370037, 0.037778, 0.928249,
		0.735404, 0.622454, 0.267828,
		-0.567675, 0.781744, -0.258113,
		37.999283, 35.918449, 33.369244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374802, 35.847954, 34.060177>,  <38.396656, 35.371227, 33.549923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374802, 35.847954, 34.060177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044155, 35.969036, 33.870411>,  <37.845768, 36.041687, 33.756550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044155, 35.969036, 33.870411>,  <38.374802, 35.847954, 34.060177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044155, 35.969036, 33.870411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492923, 0.017307, 0.869901,
		0.271539, 0.952926, 0.134907,
		-0.826616, 0.302710, -0.474419,
		37.796169, 36.059849, 33.728085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163349, 36.278069, 34.546825>,  <38.374802, 35.847954, 34.060177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163349, 36.278069, 34.546825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857361, 36.189995, 34.304722>,  <37.673767, 36.137150, 34.159462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857361, 36.189995, 34.304722>,  <38.163349, 36.278069, 34.546825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857361, 36.189995, 34.304722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605935, -0.072499, 0.792204,
		-0.218310, 0.972761, -0.077957,
		-0.764973, -0.220183, -0.605257,
		37.627869, 36.123940, 34.123146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733490, 36.522991, 35.000805>,  <38.163349, 36.278069, 34.546825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733490, 36.522991, 35.000805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513737, 36.302708, 34.749443>,  <37.381886, 36.170536, 34.598625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513737, 36.302708, 34.749443>,  <37.733490, 36.522991, 35.000805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513737, 36.302708, 34.749443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518243, -0.365357, 0.773264,
		-0.655438, 0.750487, -0.084680,
		-0.549386, -0.550711, -0.628404,
		37.348923, 36.137493, 34.560921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063519, 36.670979, 35.169811>,  <37.733490, 36.522991, 35.000805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063519, 36.670979, 35.169811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065971, 36.320892, 34.976330>,  <37.067444, 36.110840, 34.860241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065971, 36.320892, 34.976330>,  <37.063519, 36.670979, 35.169811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065971, 36.320892, 34.976330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467144, -0.430191, 0.772472,
		-0.884160, 0.221220, -0.411488,
		0.006132, -0.875213, -0.483699,
		37.067810, 36.058327, 34.831219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394791, 36.398659, 35.207405>,  <37.063519, 36.670979, 35.169811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394791, 36.398659, 35.207405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.635731, 36.086926, 35.138332>,  <36.780296, 35.899887, 35.096889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.635731, 36.086926, 35.138332>,  <36.394791, 36.398659, 35.207405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635731, 36.086926, 35.138332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279880, -0.408799, 0.868649,
		-0.747558, -0.474898, -0.464359,
		0.602349, -0.779330, -0.172686,
		36.816437, 35.853127, 35.086525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983494, 35.754173, 35.407986>,  <36.394791, 36.398659, 35.207405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983494, 35.754173, 35.407986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366634, 35.639290, 35.410271>,  <36.596519, 35.570362, 35.411644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366634, 35.639290, 35.410271>,  <35.983494, 35.754173, 35.407986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366634, 35.639290, 35.410271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125414, -0.400200, 0.907806,
		-0.258440, -0.870260, -0.419352,
		0.957852, -0.287206, 0.005715,
		36.653992, 35.553127, 35.411983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948502, 35.129696, 35.663414>,  <35.983494, 35.754173, 35.407986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948502, 35.129696, 35.663414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338142, 35.209068, 35.706760>,  <36.571926, 35.256691, 35.732769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338142, 35.209068, 35.706760>,  <35.948502, 35.129696, 35.663414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338142, 35.209068, 35.706760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033086, -0.599243, 0.799884,
		0.223657, -0.775586, -0.590291,
		0.974106, 0.198430, 0.108364,
		36.630375, 35.268597, 35.739269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344906, 34.477303, 35.671894>,  <35.948502, 35.129696, 35.663414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344906, 34.477303, 35.671894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567120, 34.755951, 35.853485>,  <36.700447, 34.923141, 35.962440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567120, 34.755951, 35.853485>,  <36.344906, 34.477303, 35.671894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567120, 34.755951, 35.853485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081600, -0.589021, 0.803987,
		0.827482, -0.409595, -0.384064,
		0.555531, 0.696625, 0.453982,
		36.733780, 34.964939, 35.989681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747478, 34.105328, 36.054447>,  <36.344906, 34.477303, 35.671894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747478, 34.105328, 36.054447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856895, 34.460648, 36.202007>,  <36.922546, 34.673840, 36.290543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856895, 34.460648, 36.202007>,  <36.747478, 34.105328, 36.054447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856895, 34.460648, 36.202007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206019, -0.428740, 0.879624,
		0.939537, -0.164615, -0.300287,
		0.273544, 0.888304, 0.368903,
		36.938957, 34.727139, 36.312679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453270, 34.152519, 36.350605>,  <36.747478, 34.105328, 36.054447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453270, 34.152519, 36.350605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251781, 34.439545, 36.543007>,  <37.130886, 34.611759, 36.658447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251781, 34.439545, 36.543007>,  <37.453270, 34.152519, 36.350605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251781, 34.439545, 36.543007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210398, -0.438128, 0.873944,
		0.837851, 0.541429, 0.069722,
		-0.503726, 0.717565, 0.481001,
		37.100662, 34.654816, 36.687305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899773, 34.441059, 36.861698>,  <37.453270, 34.152519, 36.350605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899773, 34.441059, 36.861698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513214, 34.483902, 36.955162>,  <37.281277, 34.509609, 37.011242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513214, 34.483902, 36.955162>,  <37.899773, 34.441059, 36.861698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513214, 34.483902, 36.955162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130129, -0.580077, 0.804101,
		0.221671, 0.807489, 0.546648,
		-0.966400, 0.107111, 0.233664,
		37.223293, 34.516037, 37.025261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868984, 34.588657, 37.638611>,  <37.899773, 34.441059, 36.861698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868984, 34.588657, 37.638611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499954, 34.473358, 37.536030>,  <37.278538, 34.404179, 37.474480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499954, 34.473358, 37.536030>,  <37.868984, 34.588657, 37.638611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499954, 34.473358, 37.536030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057978, -0.553584, 0.830773,
		-0.381435, 0.781320, 0.494012,
		-0.922576, -0.288244, -0.256455,
		37.223183, 34.386887, 37.459095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614033, 34.582211, 38.330311>,  <37.868984, 34.588657, 37.638611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614033, 34.582211, 38.330311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391083, 34.374535, 38.071152>,  <37.257313, 34.249931, 37.915657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391083, 34.374535, 38.071152>,  <37.614033, 34.582211, 38.330311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391083, 34.374535, 38.071152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216729, -0.662320, 0.717190,
		-0.801473, 0.540165, 0.256640,
		-0.557378, -0.519187, -0.647900,
		37.223869, 34.218781, 37.876781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987247, 34.363453, 38.652531>,  <37.614033, 34.582211, 38.330311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987247, 34.363453, 38.652531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062473, 34.109161, 38.353069>,  <37.107609, 33.956585, 38.173393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062473, 34.109161, 38.353069>,  <36.987247, 34.363453, 38.652531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062473, 34.109161, 38.353069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041801, -0.756381, 0.652794,
		-0.981267, -0.154060, -0.115673,
		0.188063, -0.635731, -0.748652,
		37.118893, 33.918442, 38.128475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590126, 33.940865, 38.919373>,  <36.987247, 34.363453, 38.652531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590126, 33.940865, 38.919373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815472, 33.721676, 38.672035>,  <36.950680, 33.590164, 38.523632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815472, 33.721676, 38.672035>,  <36.590126, 33.940865, 38.919373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815472, 33.721676, 38.672035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153850, -0.665744, 0.730147,
		-0.811760, -0.506469, -0.290748,
		0.563361, -0.547973, -0.618345,
		36.984482, 33.557285, 38.486530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604496, 34.316681, 39.485737>,  <36.590126, 33.940865, 38.919373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604496, 34.316681, 39.485737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963696, 34.154221, 39.418041>,  <37.179214, 34.056744, 39.377426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963696, 34.154221, 39.418041>,  <36.604496, 34.316681, 39.485737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963696, 34.154221, 39.418041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171554, -0.030992, 0.984687,
		-0.405178, -0.913279, 0.041846,
		0.897998, -0.406153, -0.169234,
		37.233093, 34.032375, 39.367271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532051, 33.678547, 39.898624>,  <36.604496, 34.316681, 39.485737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532051, 33.678547, 39.898624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875538, 33.870918, 39.827839>,  <37.081631, 33.986340, 39.785370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875538, 33.870918, 39.827839>,  <36.532051, 33.678547, 39.898624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875538, 33.870918, 39.827839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090659, 0.197303, 0.976142,
		0.504371, -0.854270, 0.125826,
		0.858715, 0.480930, -0.176962,
		37.133152, 34.015198, 39.774750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946053, 33.549427, 40.536758>,  <36.532051, 33.678547, 39.898624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946053, 33.549427, 40.536758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092693, 33.875027, 40.356533>,  <37.180679, 34.070385, 40.248398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092693, 33.875027, 40.356533>,  <36.946053, 33.549427, 40.536758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092693, 33.875027, 40.356533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299708, 0.355141, 0.885466,
		0.880783, -0.459650, -0.113768,
		0.366601, 0.814000, -0.450563,
		37.202675, 34.119228, 40.221363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539173, 33.812855, 40.848331>,  <36.946053, 33.549427, 40.536758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539173, 33.812855, 40.848331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367603, 34.138256, 40.691242>,  <37.264660, 34.333496, 40.596989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367603, 34.138256, 40.691242>,  <37.539173, 33.812855, 40.848331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367603, 34.138256, 40.691242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166182, 0.498386, 0.850879,
		0.887923, 0.299700, -0.348960,
		-0.428925, 0.813506, -0.392724,
		37.238926, 34.382309, 40.573425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967449, 34.493740, 40.857800>,  <37.539173, 33.812855, 40.848331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967449, 34.493740, 40.857800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576523, 34.553379, 40.917961>,  <37.341969, 34.589161, 40.954060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576523, 34.553379, 40.917961>,  <37.967449, 34.493740, 40.857800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576523, 34.553379, 40.917961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206753, 0.517797, 0.830144,
		0.045891, 0.842411, -0.536878,
		-0.977316, 0.149097, 0.150408,
		37.283329, 34.598106, 40.963085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858673, 35.158936, 41.068283>,  <37.967449, 34.493740, 40.857800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858673, 35.158936, 41.068283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535156, 34.975235, 41.215218>,  <37.341045, 34.865013, 41.303379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535156, 34.975235, 41.215218>,  <37.858673, 35.158936, 41.068283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535156, 34.975235, 41.215218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018411, 0.604552, 0.796353,
		-0.587802, 0.650850, -0.480503,
		-0.808796, -0.459251, 0.367339,
		37.292519, 34.837460, 41.325420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304489, 35.666759, 41.268776>,  <37.858673, 35.158936, 41.068283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304489, 35.666759, 41.268776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274460, 35.337379, 41.493740>,  <37.256443, 35.139751, 41.628719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274460, 35.337379, 41.493740>,  <37.304489, 35.666759, 41.268776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274460, 35.337379, 41.493740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051326, 0.560060, 0.826861,
		-0.995857, 0.090939, 0.000220,
		-0.075070, -0.823446, 0.562407,
		37.251938, 35.090347, 41.662460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866066, 36.189865, 41.078403>,  <37.304489, 35.666759, 41.268776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866066, 36.189865, 41.078403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789104, 36.581013, 41.111294>,  <37.742928, 36.815701, 41.131027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789104, 36.581013, 41.111294>,  <37.866066, 36.189865, 41.078403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789104, 36.581013, 41.111294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498232, 0.025158, 0.866679,
		0.845426, 0.207718, -0.492044,
		-0.192404, 0.977865, 0.082222,
		37.731384, 36.874371, 41.135960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556526, 36.465302, 41.080811>,  <37.866066, 36.189865, 41.078403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556526, 36.465302, 41.080811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274170, 36.683628, 41.261391>,  <38.104755, 36.814625, 41.369740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274170, 36.683628, 41.261391>,  <38.556526, 36.465302, 41.080811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274170, 36.683628, 41.261391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500119, -0.067279, 0.863339,
		0.501597, 0.835200, -0.225481,
		-0.705891, 0.545815, 0.451446,
		38.062401, 36.847374, 41.396824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966793, 36.998341, 41.454773>,  <38.556526, 36.465302, 41.080811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966793, 36.998341, 41.454773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617851, 36.876637, 41.607834>,  <38.408485, 36.803612, 41.699669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617851, 36.876637, 41.607834>,  <38.966793, 36.998341, 41.454773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617851, 36.876637, 41.607834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468044, -0.293739, 0.833458,
		-0.141191, 0.906168, 0.398653,
		-0.872353, -0.304264, 0.382653,
		38.356144, 36.785358, 41.722630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138256, 37.126511, 42.074993>,  <38.966793, 36.998341, 41.454773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138256, 37.126511, 42.074993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781487, 36.954651, 42.131367>,  <38.567425, 36.851536, 42.165192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781487, 36.954651, 42.131367>,  <39.138256, 37.126511, 42.074993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781487, 36.954651, 42.131367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331384, -0.409040, 0.850218,
		-0.307650, 0.805037, 0.507214,
		-0.891928, -0.429653, 0.140935,
		38.513908, 36.825756, 42.173649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812740, 37.401588, 42.724754>,  <39.138256, 37.126511, 42.074993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812740, 37.401588, 42.724754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719463, 37.027050, 42.619781>,  <38.663498, 36.802326, 42.556797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719463, 37.027050, 42.619781>,  <38.812740, 37.401588, 42.724754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719463, 37.027050, 42.619781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424095, -0.340782, 0.839053,
		-0.875079, 0.084365, 0.476569,
		-0.233193, -0.936349, -0.262433,
		38.649506, 36.746143, 42.541050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612591, 36.958652, 43.314365>,  <38.812740, 37.401588, 42.724754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612591, 36.958652, 43.314365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.703556, 36.661682, 43.062305>,  <38.758133, 36.483498, 42.911072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.703556, 36.661682, 43.062305>,  <38.612591, 36.958652, 43.314365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703556, 36.661682, 43.062305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402548, -0.517554, 0.755045,
		-0.886702, -0.425370, 0.181165,
		0.227411, -0.742428, -0.630147,
		38.771778, 36.438953, 42.873260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283146, 36.312069, 43.532249>,  <38.612591, 36.958652, 43.314365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283146, 36.312069, 43.532249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597115, 36.192963, 43.314907>,  <38.785496, 36.121498, 43.184502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597115, 36.192963, 43.314907>,  <38.283146, 36.312069, 43.532249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597115, 36.192963, 43.314907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372278, -0.474369, 0.797736,
		-0.495290, -0.828438, -0.261490,
		0.784918, -0.297764, -0.543359,
		38.832592, 36.103634, 43.151901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470581, 35.605099, 43.770771>,  <38.283146, 36.312069, 43.532249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470581, 35.605099, 43.770771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.786049, 35.724224, 43.555622>,  <38.975330, 35.795700, 43.426533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.786049, 35.724224, 43.555622>,  <38.470581, 35.605099, 43.770771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786049, 35.724224, 43.555622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614342, -0.347310, 0.708491,
		0.024192, -0.889203, -0.456873,
		0.788669, 0.297816, -0.537872,
		39.022648, 35.813568, 43.394260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953728, 34.970486, 43.661575>,  <38.470581, 35.605099, 43.770771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953728, 34.970486, 43.661575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156055, 35.312168, 43.613453>,  <39.277451, 35.517178, 43.584579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156055, 35.312168, 43.613453>,  <38.953728, 34.970486, 43.661575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156055, 35.312168, 43.613453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543705, -0.207420, 0.813242,
		0.669725, -0.476764, -0.569355,
		0.505820, 0.854209, -0.120304,
		39.307800, 35.568432, 43.577362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573566, 34.812832, 43.729488>,  <38.953728, 34.970486, 43.661575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573566, 34.812832, 43.729488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.581657, 35.205070, 43.807480>,  <39.586510, 35.440414, 43.854275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.581657, 35.205070, 43.807480>,  <39.573566, 34.812832, 43.729488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581657, 35.205070, 43.807480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427873, -0.184747, 0.884756,
		0.903612, 0.065534, -0.423308,
		0.020224, 0.980598, 0.194980,
		39.587723, 35.499249, 43.865974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156025, 34.912861, 44.138367>,  <39.573566, 34.812832, 43.729488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.156025, 34.912861, 44.138367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.903671, 35.214645, 44.210785>,  <39.752258, 35.395718, 44.254234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.903671, 35.214645, 44.210785>,  <40.156025, 34.912861, 44.138367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903671, 35.214645, 44.210785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131686, -0.125834, 0.983273,
		0.764624, 0.644168, -0.019966,
		-0.630880, 0.754463, 0.181043,
		39.714409, 35.440983, 44.265099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327869, 35.392036, 44.754707>,  <40.156025, 34.912861, 44.138367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.327869, 35.392036, 44.754707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930565, 35.398781, 44.708828>,  <39.692184, 35.402828, 44.681301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930565, 35.398781, 44.708828>,  <40.327869, 35.392036, 44.754707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930565, 35.398781, 44.708828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115928, -0.135158, 0.984019,
		0.001085, 0.990681, 0.136200,
		-0.993257, 0.016857, -0.114701,
		39.632587, 35.403839, 44.674419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877232, 35.801529, 45.253963>,  <40.327869, 35.392036, 44.754707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877232, 35.801529, 45.253963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649834, 35.502686, 45.116184>,  <39.513397, 35.323380, 45.033516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649834, 35.502686, 45.116184>,  <39.877232, 35.801529, 45.253963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649834, 35.502686, 45.116184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283164, -0.215407, 0.934568,
		-0.772422, 0.628829, -0.089098,
		-0.568491, -0.747111, -0.344447,
		39.479286, 35.278553, 45.012852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155998, 35.826599, 45.516579>,  <39.877232, 35.801529, 45.253963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155998, 35.826599, 45.516579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.264881, 35.451405, 45.430702>,  <39.330212, 35.226288, 45.379177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.264881, 35.451405, 45.430702>,  <39.155998, 35.826599, 45.516579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264881, 35.451405, 45.430702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129045, -0.256682, 0.957842,
		-0.953546, -0.233029, -0.190914,
		0.272209, -0.937983, -0.214687,
		39.346542, 35.170010, 45.366295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573509, 35.221832, 45.488136>,  <39.155998, 35.826599, 45.516579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573509, 35.221832, 45.488136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951183, 35.152897, 45.600437>,  <39.177788, 35.111538, 45.667816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951183, 35.152897, 45.600437>,  <38.573509, 35.221832, 45.488136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951183, 35.152897, 45.600437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325465, -0.356277, 0.875865,
		-0.050917, -0.918351, -0.392479,
		0.944183, -0.172335, 0.280750,
		39.234440, 35.101196, 45.684662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868942, 35.684826, 44.802486>,  <38.573509, 35.221832, 45.488136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868942, 35.684826, 44.802486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.252529, 35.791847, 44.764988>,  <39.482681, 35.856060, 44.742489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.252529, 35.791847, 44.764988>,  <38.868942, 35.684826, 44.802486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252529, 35.791847, 44.764988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130230, 0.122014, -0.983948,
		-0.251824, 0.955785, 0.151852,
		0.958971, 0.267558, -0.093745,
		39.540222, 35.872116, 44.736866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089268, 36.440437, 44.519947>,  <38.868942, 35.684826, 44.802486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089268, 36.440437, 44.519947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377716, 36.178768, 44.428696>,  <39.550785, 36.021767, 44.373947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377716, 36.178768, 44.428696>,  <39.089268, 36.440437, 44.519947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377716, 36.178768, 44.428696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059872, 0.269201, -0.961221,
		0.690217, 0.706816, 0.154960,
		0.721122, -0.654173, -0.228126,
		39.594051, 35.982517, 44.360256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679329, 36.758991, 44.182262>,  <39.089268, 36.440437, 44.519947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679329, 36.758991, 44.182262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663765, 36.372505, 44.080349>,  <39.654427, 36.140614, 44.019199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663765, 36.372505, 44.080349>,  <39.679329, 36.758991, 44.182262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663765, 36.372505, 44.080349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113830, 0.257604, -0.959522,
		0.992738, -0.008332, -0.120007,
		-0.038909, -0.966215, -0.254785,
		39.652092, 36.082642, 44.003914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995667, 36.665749, 43.435413>,  <39.679329, 36.758991, 44.182262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995667, 36.665749, 43.435413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768871, 36.339508, 43.481567>,  <39.632793, 36.143764, 43.509258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768871, 36.339508, 43.481567>,  <39.995667, 36.665749, 43.435413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768871, 36.339508, 43.481567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272463, 0.053500, -0.960678,
		0.777361, -0.576129, -0.252556,
		-0.566986, -0.815606, 0.115385,
		39.598774, 36.094826, 43.516182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072762, 36.319378, 42.829762>,  <39.995667, 36.665749, 43.435413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072762, 36.319378, 42.829762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746731, 36.167393, 43.004704>,  <39.551113, 36.076202, 43.109669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746731, 36.167393, 43.004704>,  <40.072762, 36.319378, 42.829762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746731, 36.167393, 43.004704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499078, 0.077118, -0.863119,
		0.294227, -0.921781, -0.252489,
		-0.815078, -0.379964, 0.437351,
		39.502209, 36.053402, 43.135910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675381, 36.014229, 42.230297>,  <40.072762, 36.319378, 42.829762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675381, 36.014229, 42.230297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418007, 35.988743, 42.535435>,  <39.263584, 35.973450, 42.718517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418007, 35.988743, 42.535435>,  <39.675381, 36.014229, 42.230297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418007, 35.988743, 42.535435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760293, 0.169245, -0.627145,
		-0.089151, -0.983512, -0.157338,
		-0.643433, -0.063712, 0.762846,
		39.224976, 35.969627, 42.764290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158535, 35.545563, 42.073818>,  <39.675381, 36.014229, 42.230297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158535, 35.545563, 42.073818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.019585, 35.812519, 42.337307>,  <38.936214, 35.972694, 42.495399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.019585, 35.812519, 42.337307>,  <39.158535, 35.545563, 42.073818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019585, 35.812519, 42.337307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783319, 0.179644, -0.595096,
		-0.515498, -0.722714, 0.460377,
		-0.347380, 0.667393, 0.658721,
		38.915371, 36.012737, 42.534924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453030, 35.492302, 42.017548>,  <39.158535, 35.545563, 42.073818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453030, 35.492302, 42.017548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515018, 35.850697, 42.184010>,  <38.552212, 36.065735, 42.283886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515018, 35.850697, 42.184010>,  <38.453030, 35.492302, 42.017548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515018, 35.850697, 42.184010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734751, 0.386126, -0.557716,
		-0.660396, -0.219341, 0.718169,
		0.154974, 0.895989, 0.416157,
		38.561512, 36.119492, 42.308857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885864, 35.752464, 42.272648>,  <38.453030, 35.492302, 42.017548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885864, 35.752464, 42.272648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111423, 36.062305, 42.158096>,  <38.246758, 36.248211, 42.089367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111423, 36.062305, 42.158096>,  <37.885864, 35.752464, 42.272648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111423, 36.062305, 42.158096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723481, 0.296132, -0.623603,
		-0.398238, 0.558837, 0.727398,
		0.563899, 0.774601, -0.286376,
		38.280594, 36.294685, 42.072182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493389, 36.511574, 42.271255>,  <37.885864, 35.752464, 42.272648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493389, 36.511574, 42.271255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790211, 36.480362, 42.004944>,  <37.968304, 36.461636, 41.845158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790211, 36.480362, 42.004944>,  <37.493389, 36.511574, 42.271255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790211, 36.480362, 42.004944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601861, 0.359765, -0.712975,
		0.295156, 0.929775, 0.220004,
		0.742056, -0.078027, -0.665782,
		38.012829, 36.456955, 41.805210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557507, 37.239281, 41.884800>,  <37.493389, 36.511574, 42.271255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557507, 37.239281, 41.884800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681438, 36.900841, 41.711308>,  <37.755798, 36.697777, 41.607212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681438, 36.900841, 41.711308>,  <37.557507, 37.239281, 41.884800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681438, 36.900841, 41.711308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712154, 0.095729, -0.695466,
		0.629953, 0.524360, -0.572892,
		0.309832, -0.846098, -0.433730,
		37.774387, 36.647011, 41.581188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961956, 37.130955, 42.071377>,  <37.557507, 37.239281, 41.884800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961956, 37.130955, 42.071377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210045, 36.985672, 41.793266>,  <37.358898, 36.898502, 41.626400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210045, 36.985672, 41.793266>,  <36.961956, 37.130955, 42.071377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210045, 36.985672, 41.793266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126816, 0.828265, -0.545797,
		0.774111, 0.426686, 0.467645,
		0.620218, -0.363203, -0.695280,
		37.396111, 36.876713, 41.584682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933350, 37.679688, 41.608131>,  <36.961956, 37.130955, 42.071377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933350, 37.679688, 41.608131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621735, 37.453117, 41.715652>,  <36.434765, 37.317177, 41.780167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621735, 37.453117, 41.715652>,  <36.933350, 37.679688, 41.608131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621735, 37.453117, 41.715652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355200, 0.752024, 0.555240,
		-0.516650, 0.337076, -0.787053,
		-0.779041, -0.566426, 0.268804,
		36.388023, 37.283188, 41.796295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325466, 38.187763, 41.192547>,  <36.933350, 37.679688, 41.608131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325466, 38.187763, 41.192547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127075, 37.851746, 41.104603>,  <37.008041, 37.650135, 41.051834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127075, 37.851746, 41.104603>,  <37.325466, 38.187763, 41.192547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127075, 37.851746, 41.104603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034551, 0.233907, -0.971645,
		0.867649, -0.489509, -0.086988,
		-0.495976, -0.840041, -0.219862,
		36.978283, 37.599735, 41.038643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795975, 37.675285, 40.884060>,  <37.325466, 38.187763, 41.192547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795975, 37.675285, 40.884060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411739, 37.714394, 40.779980>,  <37.181198, 37.737858, 40.717533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411739, 37.714394, 40.779980>,  <37.795975, 37.675285, 40.884060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411739, 37.714394, 40.779980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275086, 0.200052, -0.940376,
		-0.039888, -0.974895, -0.219064,
		-0.960591, 0.097771, -0.260201,
		37.123562, 37.743725, 40.701920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779877, 37.349651, 40.276844>,  <37.795975, 37.675285, 40.884060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779877, 37.349651, 40.276844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477501, 37.611496, 40.279308>,  <37.296078, 37.768604, 40.280788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477501, 37.611496, 40.279308>,  <37.779877, 37.349651, 40.276844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477501, 37.611496, 40.279308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206409, 0.247268, -0.946707,
		-0.621253, -0.714379, -0.322037,
		-0.755937, 0.654616, 0.006162,
		37.250721, 37.807880, 40.281158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277287, 37.266842, 39.813374>,  <37.779877, 37.349651, 40.276844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277287, 37.266842, 39.813374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.287487, 37.661282, 39.879055>,  <37.293610, 37.897945, 39.918465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.287487, 37.661282, 39.879055>,  <37.277287, 37.266842, 39.813374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287487, 37.661282, 39.879055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439774, 0.136444, -0.887683,
		-0.897746, 0.094854, -0.430179,
		0.025505, 0.986096, 0.164207,
		37.295139, 37.957111, 39.928318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799408, 37.345882, 39.189919>,  <37.277287, 37.266842, 39.813374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799408, 37.345882, 39.189919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940063, 37.710930, 39.273323>,  <38.024456, 37.929958, 39.323368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940063, 37.710930, 39.273323>,  <37.799408, 37.345882, 39.189919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940063, 37.710930, 39.273323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845827, -0.405182, 0.346993,
		0.401159, 0.054351, -0.914395,
		0.351637, 0.912619, 0.208514,
		38.045555, 37.984715, 39.335876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607197, 37.473591, 39.004456>,  <37.799408, 37.345882, 39.189919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607197, 37.473591, 39.004456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465023, 37.688103, 39.310677>,  <38.379719, 37.816811, 39.494408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465023, 37.688103, 39.310677>,  <38.607197, 37.473591, 39.004456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465023, 37.688103, 39.310677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740322, -0.338476, 0.580824,
		0.570607, 0.773198, -0.276717,
		-0.355430, 0.536282, 0.765553,
		38.358395, 37.848988, 39.540344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200260, 37.706062, 39.347740>,  <38.607197, 37.473591, 39.004456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200260, 37.706062, 39.347740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916210, 37.718880, 39.629078>,  <38.745781, 37.726570, 39.797882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916210, 37.718880, 39.629078>,  <39.200260, 37.706062, 39.347740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916210, 37.718880, 39.629078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689146, -0.172985, 0.703672,
		0.144213, 0.984403, 0.100761,
		-0.710127, 0.032040, 0.703344,
		38.703171, 37.728493, 39.840080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981808, 37.806030, 39.000507>,  <39.200260, 37.706062, 39.347740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981808, 37.806030, 39.000507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.137516, 37.640152, 39.329506>,  <40.230942, 37.540623, 39.526905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.137516, 37.640152, 39.329506>,  <39.981808, 37.806030, 39.000507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.137516, 37.640152, 39.329506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908630, 0.026310, -0.416773,
		0.151195, 0.909579, 0.387049,
		0.389271, -0.414698, 0.822492,
		40.254299, 37.515743, 39.576252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556519, 38.191410, 39.151718>,  <39.981808, 37.806030, 39.000507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556519, 38.191410, 39.151718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.634285, 37.822262, 39.284691>,  <40.680943, 37.600773, 39.364475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.634285, 37.822262, 39.284691>,  <40.556519, 38.191410, 39.151718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634285, 37.822262, 39.284691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888984, 0.022519, -0.457385,
		0.414622, 0.384447, 0.824797,
		0.194414, -0.922873, 0.332430,
		40.692608, 37.545399, 39.384418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146385, 38.179043, 39.619705>,  <40.556519, 38.191410, 39.151718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.146385, 38.179043, 39.619705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.108467, 37.828739, 39.430367>,  <41.085716, 37.618557, 39.316765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.108467, 37.828739, 39.430367>,  <41.146385, 38.179043, 39.619705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.108467, 37.828739, 39.430367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984538, -0.012117, -0.174753,
		0.147307, -0.482592, 0.863369,
		-0.094796, -0.875761, -0.473345,
		41.080029, 37.566010, 39.288364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569889, 37.764153, 39.880341>,  <41.146385, 38.179043, 39.619705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.569889, 37.764153, 39.880341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515327, 37.637024, 39.505024>,  <41.482590, 37.560745, 39.279835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515327, 37.637024, 39.505024>,  <41.569889, 37.764153, 39.880341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515327, 37.637024, 39.505024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989356, 0.004758, -0.145439,
		0.050689, -0.948138, 0.313791,
		-0.136403, -0.317823, -0.938287,
		41.474407, 37.541676, 39.223537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.966076, 37.195431, 39.755432>,  <41.569889, 37.764153, 39.880341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.966076, 37.195431, 39.755432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906792, 37.369759, 39.400333>,  <41.871220, 37.474354, 39.187275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906792, 37.369759, 39.400333>,  <41.966076, 37.195431, 39.755432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.906792, 37.369759, 39.400333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973495, -0.093818, -0.208583,
		-0.174190, -0.895133, -0.410360,
		-0.148211, 0.435816, -0.887749,
		41.862328, 37.500504, 39.134010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.125233, 36.741615, 39.158955>,  <41.966076, 37.195431, 39.755432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.125233, 36.741615, 39.158955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.200073, 37.131165, 39.107483>,  <42.244976, 37.364895, 39.076599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.200073, 37.131165, 39.107483>,  <42.125233, 36.741615, 39.158955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.200073, 37.131165, 39.107483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964554, -0.206942, -0.163737,
		-0.186090, -0.093485, -0.978075,
		0.187097, 0.973877, -0.128681,
		42.256203, 37.423328, 39.068878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.434540, 36.934677, 38.462276>,  <42.125233, 36.741615, 39.158955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.434540, 36.934677, 38.462276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.556881, 37.176399, 38.756561>,  <42.630287, 37.321430, 38.933132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.556881, 37.176399, 38.756561>,  <42.434540, 36.934677, 38.462276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.556881, 37.176399, 38.756561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951538, -0.168008, -0.257581,
		-0.032051, 0.778842, -0.626401,
		0.305855, 0.604300, 0.735713,
		42.648636, 37.357689, 38.977276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.739201, 37.593121, 38.131432>,  <42.434540, 36.934677, 38.462276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.739201, 37.593121, 38.131432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.891846, 37.486549, 38.485470>,  <42.983433, 37.422607, 38.697891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.891846, 37.486549, 38.485470>,  <42.739201, 37.593121, 38.131432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.891846, 37.486549, 38.485470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922465, 0.049095, -0.382945,
		0.058572, 0.962604, 0.264503,
		0.381611, -0.266425, 0.885094,
		43.006329, 37.406620, 38.750999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.312668, 38.041107, 38.223537>,  <42.739201, 37.593121, 38.131432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.312668, 38.041107, 38.223537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.376228, 37.723152, 38.457767>,  <43.414364, 37.532379, 38.598305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.376228, 37.723152, 38.457767>,  <43.312668, 38.041107, 38.223537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.376228, 37.723152, 38.457767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899063, -0.128583, -0.418511,
		0.407966, 0.592972, 0.694225,
		0.158899, -0.794891, 0.585577,
		43.423897, 37.484684, 38.633442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.750092, 37.770275, 37.708641>,  <43.312668, 38.041107, 38.223537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.750092, 37.770275, 37.708641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.077358, 37.692112, 37.924946>,  <44.273720, 37.645214, 38.054729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.077358, 37.692112, 37.924946>,  <43.750092, 37.770275, 37.708641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.077358, 37.692112, 37.924946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259216, -0.714133, -0.650247,
		0.513234, 0.672184, -0.533628,
		0.818167, -0.195404, 0.540758,
		44.322807, 37.633492, 38.087173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.240978, 37.783066, 37.288960>,  <43.750092, 37.770275, 37.708641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.240978, 37.783066, 37.288960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.316154, 37.531727, 37.590916>,  <44.361259, 37.380924, 37.772091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.316154, 37.531727, 37.590916>,  <44.240978, 37.783066, 37.288960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.316154, 37.531727, 37.590916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190179, -0.730760, -0.655607,
		0.963592, 0.266781, -0.017842,
		0.187942, -0.628345, 0.754891,
		44.372536, 37.343224, 37.817383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.934948, 37.460518, 37.025101>,  <44.240978, 37.783066, 37.288960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.934948, 37.460518, 37.025101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.736748, 37.238586, 37.292427>,  <44.617828, 37.105427, 37.452824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.736748, 37.238586, 37.292427>,  <44.934948, 37.460518, 37.025101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.736748, 37.238586, 37.292427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228830, -0.825613, -0.515751,
		0.837926, -0.102621, 0.536049,
		-0.495496, -0.554826, 0.668320,
		44.588100, 37.072140, 37.492924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.506325, 36.994495, 37.421925>,  <44.934948, 37.460518, 37.025101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.506325, 36.994495, 37.421925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.134895, 36.848034, 37.446209>,  <44.912037, 36.760159, 37.460777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.134895, 36.848034, 37.446209>,  <45.506325, 36.994495, 37.421925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.134895, 36.848034, 37.446209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289143, -0.816202, -0.500211,
		0.232703, -0.446929, 0.863773,
		-0.928572, -0.366154, 0.060706,
		44.856323, 36.738186, 37.464420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.503666, 36.283161, 37.685375>,  <45.506325, 36.994495, 37.421925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.503666, 36.283161, 37.685375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.173759, 36.333820, 37.464931>,  <44.975815, 36.364216, 37.332664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.173759, 36.333820, 37.464931>,  <45.503666, 36.283161, 37.685375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.173759, 36.333820, 37.464931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193387, -0.852655, -0.485366,
		-0.531374, -0.506891, 0.678751,
		-0.824769, 0.126649, -0.551105,
		44.926331, 36.371815, 37.299599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.126419, 35.955666, 37.122086>,  <45.503666, 36.283161, 37.685375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.126419, 35.955666, 37.122086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.485237, 36.065113, 36.983269>,  <45.700527, 36.130783, 36.899979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.485237, 36.065113, 36.983269>,  <45.126419, 35.955666, 37.122086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.485237, 36.065113, 36.983269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441789, -0.535209, 0.719982,
		0.011261, -0.799178, -0.600989,
		0.897048, 0.273618, -0.347041,
		45.754353, 36.147198, 36.879158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.599209, 35.330116, 36.967999>,  <45.126419, 35.955666, 37.122086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.599209, 35.330116, 36.967999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.814304, 35.652992, 37.065395>,  <45.943363, 35.846718, 37.123833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.814304, 35.652992, 37.065395>,  <45.599209, 35.330116, 36.967999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.814304, 35.652992, 37.065395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272892, -0.439889, 0.855586,
		0.797726, -0.393635, -0.456820,
		0.537739, 0.807186, 0.243491,
		45.975628, 35.895149, 37.138443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.356037, 35.123032, 37.232254>,  <45.599209, 35.330116, 36.967999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.356037, 35.123032, 37.232254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.225208, 35.472977, 37.375156>,  <46.146709, 35.682945, 37.460899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.225208, 35.472977, 37.375156>,  <46.356037, 35.123032, 37.232254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.225208, 35.472977, 37.375156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037891, -0.365603, 0.929999,
		0.944239, 0.317714, 0.086429,
		-0.327073, 0.874867, 0.357255,
		46.127087, 35.735435, 37.482334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.870064, 34.738140, 36.971733>,  <46.356037, 35.123032, 37.232254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.870064, 34.738140, 36.971733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.099617, 35.063950, 36.937752>,  <47.237347, 35.259434, 36.917362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.099617, 35.063950, 36.937752>,  <46.870064, 34.738140, 36.971733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.099617, 35.063950, 36.937752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221858, -0.254489, -0.941284,
		-0.788315, 0.521336, -0.326754,
		0.573880, 0.814521, -0.084955,
		47.271782, 35.308308, 36.912266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.646317, 35.123562, 36.411087>,  <46.870064, 34.738140, 36.971733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.646317, 35.123562, 36.411087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.031246, 35.190212, 36.497028>,  <47.262203, 35.230202, 36.548592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.031246, 35.190212, 36.497028>,  <46.646317, 35.123562, 36.411087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.031246, 35.190212, 36.497028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240981, -0.156754, -0.957787,
		-0.125916, 0.973480, -0.191003,
		0.962327, 0.166629, 0.214852,
		47.319942, 35.240200, 36.561485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.978497, 35.698154, 36.067101>,  <46.646317, 35.123562, 36.411087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.978497, 35.698154, 36.067101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.242844, 35.412319, 36.158863>,  <47.401451, 35.240818, 36.213921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.242844, 35.412319, 36.158863>,  <46.978497, 35.698154, 36.067101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.242844, 35.412319, 36.158863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067544, -0.247798, -0.966454,
		0.747460, 0.654190, -0.115494,
		0.660864, -0.714585, 0.229406,
		47.441101, 35.197945, 36.227684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.535801, 35.824184, 35.790344>,  <46.978497, 35.698154, 36.067101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.535801, 35.824184, 35.790344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.482105, 35.429897, 35.831028>,  <47.449890, 35.193325, 35.855438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.482105, 35.429897, 35.831028>,  <47.535801, 35.824184, 35.790344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.482105, 35.429897, 35.831028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129991, -0.084236, -0.987931,
		0.982387, -0.145836, -0.116827,
		-0.134235, -0.985716, 0.101709,
		47.441833, 35.134182, 35.861542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.899521, 35.558853, 35.264969>,  <47.535801, 35.824184, 35.790344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.899521, 35.558853, 35.264969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.577961, 35.344112, 35.367363>,  <47.385025, 35.215267, 35.428799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.577961, 35.344112, 35.367363>,  <47.899521, 35.558853, 35.264969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.577961, 35.344112, 35.367363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236224, -0.106793, -0.965812,
		0.545838, -0.836889, -0.040966,
		-0.803902, -0.536854, 0.255985,
		47.336792, 35.183056, 35.444157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.889782, 34.906963, 34.941910>,  <47.899521, 35.558853, 35.264969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.889782, 34.906963, 34.941910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.504227, 34.996700, 34.999313>,  <47.272896, 35.050545, 35.033756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.504227, 34.996700, 34.999313>,  <47.889782, 34.906963, 34.941910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.504227, 34.996700, 34.999313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196028, -0.232890, -0.952541,
		-0.180277, -0.946272, 0.268457,
		-0.963884, 0.224346, 0.143512,
		47.215061, 35.064003, 35.042366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.339603, 31.956434, 28.561024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.987446, 32.083183, 28.419884>,  <38.776154, 32.159233, 28.335199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.987446, 32.083183, 28.419884>,  <39.339603, 31.956434, 28.561024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987446, 32.083183, 28.419884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342233, 0.090574, 0.935239,
		0.328310, 0.944134, 0.028703,
		-0.880391, 0.316871, -0.352850,
		38.723328, 32.178246, 28.314028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102779, 32.373798, 29.031178>,  <39.339603, 31.956434, 28.561024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102779, 32.373798, 29.031178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.758957, 32.293987, 28.842983>,  <38.552666, 32.246101, 28.730066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.758957, 32.293987, 28.842983>,  <39.102779, 32.373798, 29.031178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758957, 32.293987, 28.842983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487520, 0.044040, 0.872000,
		-0.153271, 0.978901, -0.135131,
		-0.859553, -0.199531, -0.470484,
		38.501091, 32.234127, 28.701838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607441, 32.851158, 29.380390>,  <39.102779, 32.373798, 29.031178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607441, 32.851158, 29.380390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.386669, 32.562168, 29.213825>,  <38.254204, 32.388775, 29.113886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.386669, 32.562168, 29.213825>,  <38.607441, 32.851158, 29.380390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386669, 32.562168, 29.213825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524792, -0.087133, 0.846759,
		-0.648046, 0.685884, -0.331058,
		-0.551932, -0.722476, -0.416412,
		38.221088, 32.345425, 29.088902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887997, 33.045090, 29.581810>,  <38.607441, 32.851158, 29.380390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887997, 33.045090, 29.581810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.884998, 32.654320, 29.496431>,  <37.883202, 32.419857, 29.445204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.884998, 32.654320, 29.496431>,  <37.887997, 33.045090, 29.581810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884998, 32.654320, 29.496431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525621, -0.177737, 0.831945,
		-0.850686, 0.118426, -0.512161,
		-0.007494, -0.976926, -0.213446,
		37.882751, 32.361240, 29.432398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194176, 32.755966, 29.602480>,  <37.887997, 33.045090, 29.581810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194176, 32.755966, 29.602480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.422726, 32.431477, 29.652199>,  <37.559856, 32.236782, 29.682030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.422726, 32.431477, 29.652199>,  <37.194176, 32.755966, 29.602480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422726, 32.431477, 29.652199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612297, -0.320522, 0.722743,
		-0.546466, -0.489063, -0.679847,
		0.571373, -0.811223, 0.124298,
		37.594139, 32.188110, 29.689487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801079, 32.220448, 29.497665>,  <37.194176, 32.755966, 29.602480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801079, 32.220448, 29.497665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.088722, 32.061508, 29.725700>,  <37.261307, 31.966146, 29.862522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.088722, 32.061508, 29.725700>,  <36.801079, 32.220448, 29.497665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088722, 32.061508, 29.725700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683886, -0.259208, 0.681991,
		-0.123214, -0.880300, -0.458137,
		0.719109, -0.397344, 0.570087,
		37.304455, 31.942305, 29.896727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533352, 31.528547, 29.823833>,  <36.801079, 32.220448, 29.497665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533352, 31.528547, 29.823833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.844086, 31.631590, 30.053677>,  <37.030525, 31.693415, 30.191582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.844086, 31.631590, 30.053677>,  <36.533352, 31.528547, 29.823833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844086, 31.631590, 30.053677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518427, -0.256330, 0.815799,
		0.357445, -0.931629, -0.065575,
		0.776831, 0.257607, 0.574606,
		37.077133, 31.708872, 30.226059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641964, 30.962290, 30.304914>,  <36.533352, 31.528547, 29.823833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641964, 30.962290, 30.304914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.845051, 31.256369, 30.484564>,  <36.966904, 31.432816, 30.592354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.845051, 31.256369, 30.484564>,  <36.641964, 30.962290, 30.304914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845051, 31.256369, 30.484564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406471, -0.255222, 0.877293,
		0.759608, -0.627971, 0.169255,
		0.507717, 0.735196, 0.449121,
		36.997368, 31.476927, 30.619301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638668, 30.690744, 30.974152>,  <36.641964, 30.962290, 30.304914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638668, 30.690744, 30.974152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.758888, 31.067915, 31.031511>,  <36.831020, 31.294216, 31.065928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.758888, 31.067915, 31.031511>,  <36.638668, 30.690744, 30.974152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758888, 31.067915, 31.031511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475064, 0.017626, 0.879775,
		0.827033, -0.332540, 0.453247,
		0.300549, 0.942925, 0.143401,
		36.849052, 31.350792, 31.074532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772655, 30.702240, 31.729197>,  <36.638668, 30.690744, 30.974152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772655, 30.702240, 31.729197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.737114, 31.079792, 31.601950>,  <36.715790, 31.306322, 31.525602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.737114, 31.079792, 31.601950>,  <36.772655, 30.702240, 31.729197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737114, 31.079792, 31.601950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471060, 0.241583, 0.848375,
		0.877614, 0.225235, 0.423158,
		-0.088856, 0.943879, -0.318116,
		36.710457, 31.362955, 31.506516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021114, 31.151243, 32.250275>,  <36.772655, 30.702240, 31.729197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021114, 31.151243, 32.250275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.782532, 31.383188, 32.028286>,  <36.639381, 31.522354, 31.895092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.782532, 31.383188, 32.028286>,  <37.021114, 31.151243, 32.250275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782532, 31.383188, 32.028286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352139, 0.432287, 0.830136,
		0.721272, 0.690571, -0.053650,
		-0.596460, 0.579862, -0.554973,
		36.603592, 31.557146, 31.861794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128452, 31.871740, 32.464237>,  <37.021114, 31.151243, 32.250275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128452, 31.871740, 32.464237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.768833, 31.863897, 32.289272>,  <36.553062, 31.859192, 32.184296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.768833, 31.863897, 32.289272>,  <37.128452, 31.871740, 32.464237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768833, 31.863897, 32.289272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379044, 0.534920, 0.755107,
		0.219174, 0.844676, -0.488350,
		-0.899049, -0.019606, -0.437410,
		36.499119, 31.858015, 32.158051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839050, 32.589245, 32.527390>,  <37.128452, 31.871740, 32.464237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839050, 32.589245, 32.527390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.521534, 32.351742, 32.474705>,  <36.331024, 32.209240, 32.443096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.521534, 32.351742, 32.474705>,  <36.839050, 32.589245, 32.527390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521534, 32.351742, 32.474705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444842, 0.419141, 0.791478,
		-0.414738, 0.686860, -0.596838,
		-0.793794, -0.593754, -0.131710,
		36.283398, 32.173615, 32.435192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383236, 32.995827, 32.909279>,  <36.839050, 32.589245, 32.527390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383236, 32.995827, 32.909279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.202606, 32.648476, 32.827297>,  <36.094231, 32.440063, 32.778111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.202606, 32.648476, 32.827297>,  <36.383236, 32.995827, 32.909279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202606, 32.648476, 32.827297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558341, 0.095856, 0.824055,
		-0.695944, 0.486553, -0.528136,
		-0.451572, -0.868376, -0.204952,
		36.067135, 32.387962, 32.765812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739269, 33.203838, 33.123615>,  <36.383236, 32.995827, 32.909279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739269, 33.203838, 33.123615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.734627, 32.803883, 33.120041>,  <35.731842, 32.563908, 33.117897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.734627, 32.803883, 33.120041>,  <35.739269, 33.203838, 33.123615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734627, 32.803883, 33.120041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565312, -0.000812, 0.824877,
		-0.824795, 0.014627, -0.565242,
		-0.011607, -0.999893, -0.008938,
		35.731144, 32.503914, 33.117359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987514, 33.022358, 33.135094>,  <35.739269, 33.203838, 33.123615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987514, 33.022358, 33.135094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.217224, 32.725143, 33.272556>,  <35.355049, 32.546814, 33.355034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.217224, 32.725143, 33.272556>,  <34.987514, 33.022358, 33.135094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217224, 32.725143, 33.272556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530605, -0.018150, 0.847425,
		-0.623432, -0.669003, -0.404683,
		0.574275, -0.743038, 0.343660,
		35.389507, 32.502232, 33.375656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576797, 32.510193, 33.462322>,  <34.987514, 33.022358, 33.135094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576797, 32.510193, 33.462322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.917534, 32.378605, 33.625362>,  <35.121975, 32.299652, 33.723186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.917534, 32.378605, 33.625362>,  <34.576797, 32.510193, 33.462322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917534, 32.378605, 33.625362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467108, -0.125000, 0.875320,
		-0.237007, -0.936029, -0.260146,
		0.851843, -0.328974, 0.407601,
		35.173088, 32.279915, 33.747643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419033, 31.922361, 33.880424>,  <34.576797, 32.510193, 33.462322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419033, 31.922361, 33.880424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.776100, 32.054184, 34.003410>,  <34.990341, 32.133278, 34.077202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.776100, 32.054184, 34.003410>,  <34.419033, 31.922361, 33.880424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776100, 32.054184, 34.003410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275153, -0.141832, 0.950881,
		0.356978, -0.933421, -0.035930,
		0.892669, 0.329558, 0.307464,
		35.043900, 32.153049, 34.095650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705612, 31.446018, 34.379112>,  <34.419033, 31.922361, 33.880424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705612, 31.446018, 34.379112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.902897, 31.782356, 34.468311>,  <35.021267, 31.984159, 34.521832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.902897, 31.782356, 34.468311>,  <34.705612, 31.446018, 34.379112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902897, 31.782356, 34.468311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301305, -0.075352, 0.950546,
		0.816063, -0.536007, 0.216187,
		0.493210, 0.840844, 0.222994,
		35.050861, 32.034611, 34.535210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020557, 31.304863, 35.005917>,  <34.705612, 31.446018, 34.379112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020557, 31.304863, 35.005917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.045582, 31.703600, 34.986351>,  <35.060596, 31.942842, 34.974609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.045582, 31.703600, 34.986351>,  <35.020557, 31.304863, 35.005917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045582, 31.703600, 34.986351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280143, 0.064584, 0.957783,
		0.957917, -0.046220, 0.283299,
		0.062565, 0.996841, -0.048918,
		35.064350, 32.002651, 34.971676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484264, 31.484735, 35.509689>,  <35.020557, 31.304863, 35.005917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484264, 31.484735, 35.509689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.228756, 31.786171, 35.447624>,  <35.075451, 31.967031, 35.410385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.228756, 31.786171, 35.447624>,  <35.484264, 31.484735, 35.509689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228756, 31.786171, 35.447624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217309, 0.016742, 0.975959,
		0.738068, 0.657134, 0.153067,
		-0.638774, 0.753587, -0.155158,
		35.037125, 32.012249, 35.401077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840763, 31.869875, 35.984688>,  <35.484264, 31.484735, 35.509689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840763, 31.869875, 35.984688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.008575, 32.029957, 36.310589>,  <36.109264, 32.126007, 36.506130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.008575, 32.029957, 36.310589>,  <35.840763, 31.869875, 35.984688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008575, 32.029957, 36.310589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676100, 0.461156, -0.574651,
		-0.605709, 0.791941, -0.077111,
		0.419530, 0.400206, 0.814757,
		36.134434, 32.150021, 36.555016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967201, 32.644382, 35.889156>,  <35.840763, 31.869875, 35.984688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967201, 32.644382, 35.889156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.219830, 32.529099, 36.177059>,  <36.371407, 32.459930, 36.349800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.219830, 32.529099, 36.177059>,  <35.967201, 32.644382, 35.889156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219830, 32.529099, 36.177059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734413, 0.519938, -0.436237,
		-0.248504, 0.804116, 0.540041,
		0.631572, -0.288207, 0.719759,
		36.409302, 32.442638, 36.392986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366463, 33.236771, 36.075165>,  <35.967201, 32.644382, 35.889156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366463, 33.236771, 36.075165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.605339, 32.929108, 36.166176>,  <36.748665, 32.744511, 36.220783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.605339, 32.929108, 36.166176>,  <36.366463, 33.236771, 36.075165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605339, 32.929108, 36.166176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696353, 0.356383, -0.622963,
		0.398067, 0.530466, 0.748430,
		0.597189, -0.769153, 0.227528,
		36.784496, 32.698360, 36.234436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127743, 33.454384, 36.293831>,  <36.366463, 33.236771, 36.075165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127743, 33.454384, 36.293831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.150162, 33.064053, 36.209332>,  <37.163612, 32.829853, 36.158634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.150162, 33.064053, 36.209332>,  <37.127743, 33.454384, 36.293831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150162, 33.064053, 36.209332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685476, 0.191441, -0.702477,
		0.725935, -0.105434, 0.679634,
		0.056045, -0.975825, -0.211246,
		37.166977, 32.771305, 36.145958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802670, 33.215431, 36.381294>,  <37.127743, 33.454384, 36.293831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802670, 33.215431, 36.381294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.632313, 32.964619, 36.120388>,  <37.530098, 32.814133, 35.963844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.632313, 32.964619, 36.120388>,  <37.802670, 33.215431, 36.381294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632313, 32.964619, 36.120388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692767, 0.237715, -0.680856,
		0.581970, -0.741840, 0.333143,
		-0.425893, -0.627028, -0.652266,
		37.504543, 32.776508, 35.924709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387753, 33.167267, 35.975498>,  <37.802670, 33.215431, 36.381294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387753, 33.167267, 35.975498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.118385, 32.979992, 35.746655>,  <37.956764, 32.867626, 35.609348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.118385, 32.979992, 35.746655>,  <38.387753, 33.167267, 35.975498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118385, 32.979992, 35.746655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561529, 0.179399, -0.807776,
		0.480823, -0.865229, 0.142087,
		-0.673420, -0.468183, -0.572110,
		37.916359, 32.839539, 35.575020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803368, 32.773552, 35.476490>,  <38.387753, 33.167267, 35.975498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803368, 32.773552, 35.476490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.432911, 32.804306, 35.328785>,  <38.210636, 32.822758, 35.240162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.432911, 32.804306, 35.328785>,  <38.803368, 32.773552, 35.476490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432911, 32.804306, 35.328785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371998, 0.024391, -0.927913,
		-0.062339, -0.996741, -0.051192,
		-0.926138, 0.076888, -0.369265,
		38.155071, 32.827374, 35.218006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808037, 32.391830, 34.888268>,  <38.803368, 32.773552, 35.476490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808037, 32.391830, 34.888268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.502228, 32.645203, 34.840492>,  <38.318741, 32.797226, 34.811825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.502228, 32.645203, 34.840492>,  <38.808037, 32.391830, 34.888268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502228, 32.645203, 34.840492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309854, 0.198653, -0.929800,
		-0.565238, -0.747863, -0.348146,
		-0.764523, 0.633433, -0.119442,
		38.272869, 32.835232, 34.804661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667309, 32.232510, 34.192219>,  <38.808037, 32.391830, 34.888268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667309, 32.232510, 34.192219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.530987, 32.594250, 34.294979>,  <38.449192, 32.811295, 34.356636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.530987, 32.594250, 34.294979>,  <38.667309, 32.232510, 34.192219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530987, 32.594250, 34.294979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176563, 0.329966, -0.927334,
		-0.923405, -0.270683, -0.272130,
		-0.340807, 0.904352, 0.256899,
		38.428745, 32.865555, 34.372047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385502, 32.334068, 33.618713>,  <38.667309, 32.232510, 34.192219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385502, 32.334068, 33.618713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.397434, 32.681255, 33.817005>,  <38.404594, 32.889568, 33.935982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.397434, 32.681255, 33.817005>,  <38.385502, 32.334068, 33.618713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397434, 32.681255, 33.817005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363732, 0.452520, -0.814202,
		-0.931026, 0.204604, -0.302205,
		0.029835, 0.867965, 0.495728,
		38.406384, 32.941647, 33.965725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925465, 32.803196, 33.295033>,  <38.385502, 32.334068, 33.618713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925465, 32.803196, 33.295033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.223118, 32.991955, 33.484173>,  <38.401711, 33.105209, 33.597656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.223118, 32.991955, 33.484173>,  <37.925465, 32.803196, 33.295033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223118, 32.991955, 33.484173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421185, 0.217999, -0.880386,
		-0.518529, 0.854279, -0.036534,
		0.744131, 0.471893, 0.472848,
		38.446358, 33.133522, 33.626026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125145, 33.353813, 32.870178>,  <37.925465, 32.803196, 33.295033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125145, 33.353813, 32.870178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.441402, 33.318611, 33.112545>,  <38.631157, 33.297489, 33.257965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.441402, 33.318611, 33.112545>,  <38.125145, 33.353813, 32.870178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441402, 33.318611, 33.112545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607004, 0.242249, -0.756877,
		-0.080174, 0.966215, 0.244952,
		0.790645, -0.088005, 0.605918,
		38.678596, 33.292210, 33.294319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585831, 33.837025, 32.613472>,  <38.125145, 33.353813, 32.870178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585831, 33.837025, 32.613472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.817612, 33.589062, 32.825111>,  <38.956680, 33.440285, 32.952095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.817612, 33.589062, 32.825111>,  <38.585831, 33.837025, 32.613472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817612, 33.589062, 32.825111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678619, 0.007469, -0.734453,
		0.451341, 0.784639, 0.425009,
		0.579455, -0.619908, 0.529100,
		38.991447, 33.403088, 32.983841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277706, 34.063812, 32.588230>,  <38.585831, 33.837025, 32.613472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277706, 34.063812, 32.588230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.344452, 33.690311, 32.714890>,  <39.384499, 33.466213, 32.790886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.344452, 33.690311, 32.714890>,  <39.277706, 34.063812, 32.588230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344452, 33.690311, 32.714890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752044, -0.087158, -0.653325,
		0.637640, 0.347153, 0.687677,
		0.166867, -0.933750, 0.316650,
		39.394512, 33.410187, 32.809883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032425, 34.043175, 32.769733>,  <39.277706, 34.063812, 32.588230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.032425, 34.043175, 32.769733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.906326, 33.670555, 32.697243>,  <39.830669, 33.446983, 32.653748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.906326, 33.670555, 32.697243>,  <40.032425, 34.043175, 32.769733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906326, 33.670555, 32.697243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763523, -0.135547, -0.631395,
		0.563608, -0.337417, 0.753986,
		-0.315244, -0.931545, -0.181231,
		39.811752, 33.391090, 32.642872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591972, 33.692913, 32.597725>,  <40.032425, 34.043175, 32.769733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591972, 33.692913, 32.597725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.296398, 33.479179, 32.433548>,  <40.119053, 33.350941, 32.335041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.296398, 33.479179, 32.433548>,  <40.591972, 33.692913, 32.597725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296398, 33.479179, 32.433548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564815, -0.159097, -0.809736,
		0.367368, -0.830167, 0.419361,
		-0.738935, -0.534332, -0.410444,
		40.074718, 33.318878, 32.310413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.979855, 33.214428, 32.370792>,  <40.591972, 33.692913, 32.597725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.979855, 33.214428, 32.370792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.632652, 33.169697, 32.177273>,  <40.424332, 33.142857, 32.061161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.632652, 33.169697, 32.177273>,  <40.979855, 33.214428, 32.370792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.632652, 33.169697, 32.177273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494847, -0.275576, -0.824127,
		-0.041164, -0.954753, 0.294538,
		-0.868005, -0.111827, -0.483800,
		40.372250, 33.136150, 32.032131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986305, 32.606110, 31.936028>,  <40.979855, 33.214428, 32.370792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986305, 32.606110, 31.936028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.671391, 32.797863, 31.780920>,  <40.482441, 32.912914, 31.687855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.671391, 32.797863, 31.780920>,  <40.986305, 32.606110, 31.936028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.671391, 32.797863, 31.780920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297706, -0.255193, -0.919917,
		-0.539951, -0.839682, 0.058195,
		-0.787289, 0.479386, -0.387771,
		40.435204, 32.941677, 31.664589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678181, 32.156116, 31.410788>,  <40.986305, 32.606110, 31.936028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678181, 32.156116, 31.410788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.547703, 32.528427, 31.344761>,  <40.469418, 32.751816, 31.305145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.547703, 32.528427, 31.344761>,  <40.678181, 32.156116, 31.410788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.547703, 32.528427, 31.344761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402589, -0.021205, -0.915135,
		-0.855291, -0.364962, -0.367805,
		-0.326190, 0.930781, -0.165066,
		40.449844, 32.807663, 31.295240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.370975, 32.102615, 30.752092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.405426, 32.501099, 30.756924>,  <40.426098, 32.740189, 30.759823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.405426, 32.501099, 30.756924>,  <40.370975, 32.102615, 30.752092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405426, 32.501099, 30.756924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404078, -0.023848, -0.914413,
		-0.910660, 0.083640, -0.404601,
		0.086130, 0.996211, 0.012079,
		40.431267, 32.799961, 30.760548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993187, 32.370979, 30.200073>,  <40.370975, 32.102615, 30.752092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993187, 32.370979, 30.200073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.276421, 32.635483, 30.299149>,  <40.446362, 32.794186, 30.358593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.276421, 32.635483, 30.299149>,  <39.993187, 32.370979, 30.200073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276421, 32.635483, 30.299149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274615, 0.065278, -0.959336,
		-0.650541, 0.747309, -0.135371,
		0.708084, 0.661262, 0.247688,
		40.488846, 32.833862, 30.373455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918194, 32.847183, 29.680811>,  <39.993187, 32.370979, 30.200073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.918194, 32.847183, 29.680811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.283607, 32.906231, 29.832420>,  <40.502857, 32.941662, 29.923386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.283607, 32.906231, 29.832420>,  <39.918194, 32.847183, 29.680811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283607, 32.906231, 29.832420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373460, 0.064818, -0.925379,
		-0.161175, 0.986918, 0.004082,
		0.913537, 0.147623, 0.379021,
		40.557671, 32.950520, 29.946127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187603, 33.387341, 29.327904>,  <39.918194, 32.847183, 29.680811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187603, 33.387341, 29.327904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.506443, 33.208382, 29.490124>,  <40.697746, 33.101006, 29.587456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.506443, 33.208382, 29.490124>,  <40.187603, 33.387341, 29.327904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506443, 33.208382, 29.490124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423334, -0.064900, -0.903646,
		0.430608, 0.891978, 0.137667,
		0.797098, -0.447396, 0.405551,
		40.745571, 33.074162, 29.611790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758770, 33.715607, 28.974735>,  <40.187603, 33.387341, 29.327904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.758770, 33.715607, 28.974735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.869293, 33.361320, 29.123955>,  <40.935608, 33.148750, 29.213486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.869293, 33.361320, 29.123955>,  <40.758770, 33.715607, 28.974735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869293, 33.361320, 29.123955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328846, -0.277599, -0.902662,
		0.903058, 0.372089, 0.214561,
		0.276309, -0.885714, 0.373048,
		40.952187, 33.095608, 29.235868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483315, 33.614914, 28.776205>,  <40.758770, 33.715607, 28.974735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.483315, 33.614914, 28.776205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.368927, 33.246719, 28.882734>,  <41.300297, 33.025803, 28.946651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.368927, 33.246719, 28.882734>,  <41.483315, 33.614914, 28.776205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368927, 33.246719, 28.882734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451453, -0.374570, -0.809869,
		0.845230, -0.111362, 0.522670,
		-0.285965, -0.920487, 0.266323,
		41.283138, 32.970573, 28.962631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074982, 33.246674, 28.725731>,  <41.483315, 33.614914, 28.776205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.074982, 33.246674, 28.725731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.766247, 32.994095, 28.695959>,  <41.581005, 32.842548, 28.678097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.766247, 32.994095, 28.695959>,  <42.074982, 33.246674, 28.725731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.766247, 32.994095, 28.695959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384208, -0.369923, -0.845896,
		0.506608, -0.681490, 0.528129,
		-0.771837, -0.631450, -0.074427,
		41.534695, 32.804661, 28.673632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.382515, 32.548252, 28.599260>,  <42.074982, 33.246674, 28.725731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.382515, 32.548252, 28.599260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.006229, 32.542580, 28.463699>,  <41.780457, 32.539177, 28.382362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.006229, 32.542580, 28.463699>,  <42.382515, 32.548252, 28.599260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.006229, 32.542580, 28.463699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321254, -0.357906, -0.876755,
		-0.108860, -0.933650, 0.341244,
		-0.940715, -0.014183, -0.338901,
		41.724014, 32.538326, 28.362030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.243992, 31.851908, 28.392408>,  <42.382515, 32.548252, 28.599260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.243992, 31.851908, 28.392408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.005772, 32.104973, 28.194395>,  <41.862839, 32.256813, 28.075588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.005772, 32.104973, 28.194395>,  <42.243992, 31.851908, 28.392408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.005772, 32.104973, 28.194395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412662, -0.287769, -0.864233,
		-0.689222, -0.718977, -0.089694,
		-0.595552, 0.632662, -0.495032,
		41.827106, 32.294773, 28.045885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.079784, 31.497385, 27.765009>,  <42.243992, 31.851908, 28.392408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.079784, 31.497385, 27.765009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.996754, 31.883387, 27.700911>,  <41.946938, 32.114986, 27.662451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.996754, 31.883387, 27.700911>,  <42.079784, 31.497385, 27.765009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.996754, 31.883387, 27.700911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434417, -0.055840, -0.898979,
		-0.876467, -0.256219, -0.407624,
		-0.207574, 0.965005, -0.160247,
		41.934483, 32.172890, 27.652836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769104, 31.419285, 27.072842>,  <42.079784, 31.497385, 27.765009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.769104, 31.419285, 27.072842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.868748, 31.805708, 27.100197>,  <41.928535, 32.037563, 27.116610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.868748, 31.805708, 27.100197>,  <41.769104, 31.419285, 27.072842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.868748, 31.805708, 27.100197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467747, -0.058181, -0.881946,
		-0.848031, 0.251691, -0.466363,
		0.249111, 0.966057, 0.068388,
		41.943481, 32.095524, 27.120714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.629345, 31.746183, 26.458775>,  <41.769104, 31.419285, 27.072842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.629345, 31.746183, 26.458775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.905830, 31.999147, 26.598652>,  <42.071720, 32.150925, 26.682577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.905830, 31.999147, 26.598652>,  <41.629345, 31.746183, 26.458775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905830, 31.999147, 26.598652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518855, -0.097484, -0.849286,
		-0.503007, 0.768476, -0.395511,
		0.691212, 0.632410, 0.349692,
		42.113194, 32.188869, 26.703560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.840973, 32.213718, 25.919048>,  <41.629345, 31.746183, 26.458775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.840973, 32.213718, 25.919048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.142670, 32.315136, 26.161314>,  <42.323689, 32.375988, 26.306673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.142670, 32.315136, 26.161314>,  <41.840973, 32.213718, 25.919048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.142670, 32.315136, 26.161314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613267, 0.057498, -0.787780,
		-0.234560, 0.965614, -0.112122,
		0.754245, 0.253542, 0.605666,
		42.368942, 32.391197, 26.343014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171925, 32.837688, 25.654196>,  <41.840973, 32.213718, 25.919048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.171925, 32.837688, 25.654196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.453522, 32.656075, 25.872643>,  <42.622478, 32.547104, 26.003710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.453522, 32.656075, 25.872643>,  <42.171925, 32.837688, 25.654196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.453522, 32.656075, 25.872643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677328, 0.197972, -0.708543,
		0.213590, 0.868709, 0.446905,
		0.703993, -0.454039, 0.546116,
		42.664719, 32.519863, 26.036478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.800293, 33.311768, 25.558588>,  <42.171925, 32.837688, 25.654196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.800293, 33.311768, 25.558588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.924095, 32.959690, 25.702513>,  <42.998375, 32.748444, 25.788868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.924095, 32.959690, 25.702513>,  <42.800293, 33.311768, 25.558588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.924095, 32.959690, 25.702513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777608, 0.016495, -0.628533,
		0.547297, 0.474324, 0.689552,
		0.309502, -0.880196, 0.359811,
		43.016945, 32.695633, 25.810455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.532799, 33.434387, 25.834522>,  <42.800293, 33.311768, 25.558588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.532799, 33.434387, 25.834522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.453419, 33.062103, 25.711630>,  <43.405792, 32.838734, 25.637896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.453419, 33.062103, 25.711630>,  <43.532799, 33.434387, 25.834522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.453419, 33.062103, 25.711630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734634, 0.066250, -0.675222,
		0.648792, -0.359699, 0.670586,
		-0.198451, -0.930713, -0.307230,
		43.393883, 32.782890, 25.619461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.202438, 33.122578, 25.735733>,  <43.532799, 33.434387, 25.834522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.202438, 33.122578, 25.735733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.940266, 32.901043, 25.530336>,  <43.782963, 32.768124, 25.407099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.940266, 32.901043, 25.530336>,  <44.202438, 33.122578, 25.735733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.940266, 32.901043, 25.530336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623676, -0.013455, -0.781567,
		0.425950, -0.832518, 0.354233,
		-0.655435, -0.553835, -0.513490,
		43.743637, 32.734894, 25.376289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.638134, 32.760761, 25.525261>,  <44.202438, 33.122578, 25.735733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.638134, 32.760761, 25.525261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.321064, 32.683872, 25.293842>,  <44.130821, 32.637741, 25.154991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.321064, 32.683872, 25.293842>,  <44.638134, 32.760761, 25.525261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.321064, 32.683872, 25.293842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603406, -0.111980, -0.789533,
		0.086979, -0.974942, 0.204751,
		-0.792677, -0.192220, -0.578546,
		44.083260, 32.626205, 25.120279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.812290, 32.217640, 25.157026>,  <44.638134, 32.760761, 25.525261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.812290, 32.217640, 25.157026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.537949, 32.391651, 24.923670>,  <44.373344, 32.496059, 24.783655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.537949, 32.391651, 24.923670>,  <44.812290, 32.217640, 25.157026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.537949, 32.391651, 24.923670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629387, -0.047857, -0.775617,
		-0.365337, -0.899143, -0.240980,
		-0.685858, 0.435031, -0.583392,
		44.332191, 32.522160, 24.748652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.936459, 31.828896, 24.520761>,  <44.812290, 32.217640, 25.157026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.936459, 31.828896, 24.520761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.694912, 32.134640, 24.430338>,  <44.549984, 32.318085, 24.376083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.694912, 32.134640, 24.430338>,  <44.936459, 31.828896, 24.520761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.694912, 32.134640, 24.430338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487775, 0.130058, -0.863227,
		-0.630415, -0.631538, -0.451373,
		-0.603865, 0.764360, -0.226058,
		44.513752, 32.363949, 24.362520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.609039, 31.769960, 23.912186>,  <44.936459, 31.828896, 24.520761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.609039, 31.769960, 23.912186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.617138, 32.169598, 23.927158>,  <44.621998, 32.409382, 23.936142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.617138, 32.169598, 23.927158>,  <44.609039, 31.769960, 23.912186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.617138, 32.169598, 23.927158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470980, 0.023495, -0.881831,
		-0.881912, 0.035479, -0.470078,
		0.020242, 0.999094, 0.037430,
		44.623211, 32.469326, 23.938387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.502048, 31.955948, 23.231527>,  <44.609039, 31.769960, 23.912186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.502048, 31.955948, 23.231527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.668709, 32.279976, 23.396540>,  <44.768707, 32.474392, 23.495546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.668709, 32.279976, 23.396540>,  <44.502048, 31.955948, 23.231527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.668709, 32.279976, 23.396540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402255, 0.242662, -0.882783,
		-0.815223, 0.533759, -0.224749,
		0.416655, 0.810072, 0.412531,
		44.793705, 32.522999, 23.520300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.276455, 32.428955, 22.793360>,  <44.502048, 31.955948, 23.231527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.276455, 32.428955, 22.793360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.610222, 32.567741, 22.964643>,  <44.810482, 32.651012, 23.067413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.610222, 32.567741, 22.964643>,  <44.276455, 32.428955, 22.793360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.610222, 32.567741, 22.964643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431885, 0.071031, -0.899127,
		-0.342383, 0.935184, -0.090580,
		0.834416, 0.346966, 0.428211,
		44.860546, 32.671833, 23.093107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.505424, 32.487274, 22.764942>,  <44.276455, 32.428955, 22.793360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.505424, 32.487274, 22.764942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.154453, 32.345215, 22.893929>,  <42.943871, 32.259979, 22.971321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.154453, 32.345215, 22.893929>,  <43.505424, 32.487274, 22.764942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.154453, 32.345215, 22.893929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398781, -0.913651, 0.078846,
		0.266619, 0.197775, 0.943292,
		-0.877433, -0.355145, 0.322466,
		42.891224, 32.238670, 22.990667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.747211, 33.147316, 22.593607>,  <43.505424, 32.487274, 22.764942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.747211, 33.147316, 22.593607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.492771, 33.261486, 22.306856>,  <43.340107, 33.329987, 22.134806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.492771, 33.261486, 22.306856>,  <43.747211, 33.147316, 22.593607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.492771, 33.261486, 22.306856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542409, 0.495379, 0.678522,
		0.548791, 0.820448, -0.160295,
		-0.636098, 0.285422, -0.716878,
		43.301941, 33.347111, 22.091793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.578419, 33.867142, 22.742388>,  <43.747211, 33.147316, 22.593607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.578419, 33.867142, 22.742388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.266163, 33.746510, 22.523428>,  <43.078808, 33.674129, 22.392052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.266163, 33.746510, 22.523428>,  <43.578419, 33.867142, 22.742388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.266163, 33.746510, 22.523428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624907, 0.363470, 0.690927,
		-0.009406, 0.881442, -0.472199,
		-0.780642, -0.301580, -0.547401,
		43.031971, 33.656036, 22.359207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.061916, 34.387829, 22.835396>,  <43.578419, 33.867142, 22.742388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.061916, 34.387829, 22.835396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.875195, 34.065594, 22.689455>,  <42.763161, 33.872253, 22.601891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.875195, 34.065594, 22.689455>,  <43.061916, 34.387829, 22.835396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.875195, 34.065594, 22.689455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725895, 0.113378, 0.678397,
		-0.505145, 0.581521, -0.637700,
		-0.466804, -0.805592, -0.364851,
		42.735153, 33.823917, 22.580000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.358624, 34.589195, 22.733765>,  <43.061916, 34.387829, 22.835396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.358624, 34.589195, 22.733765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.353519, 34.190239, 22.762190>,  <42.350456, 33.950867, 22.779245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.353519, 34.190239, 22.762190>,  <42.358624, 34.589195, 22.733765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.353519, 34.190239, 22.762190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746996, 0.056751, 0.662402,
		-0.664707, -0.044631, -0.745770,
		-0.012760, -0.997391, 0.071062,
		42.349693, 33.891022, 22.783508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.613461, 34.361362, 22.592836>,  <42.358624, 34.589195, 22.733765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.613461, 34.361362, 22.592836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.794605, 34.054657, 22.774822>,  <41.903294, 33.870636, 22.884014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.794605, 34.054657, 22.774822>,  <41.613461, 34.361362, 22.592836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.794605, 34.054657, 22.774822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762407, -0.068491, 0.643463,
		-0.462221, -0.638270, -0.615600,
		0.452866, -0.766760, 0.454963,
		41.930466, 33.824631, 22.911312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041634, 33.924046, 22.745417>,  <41.613461, 34.361362, 22.592836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041634, 33.924046, 22.745417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.337215, 33.787098, 22.977533>,  <41.514565, 33.704929, 23.116802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.337215, 33.787098, 22.977533>,  <41.041634, 33.924046, 22.745417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.337215, 33.787098, 22.977533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658938, -0.187571, 0.728435,
		-0.140545, -0.920654, -0.364204,
		0.738951, -0.342366, 0.580291,
		41.558899, 33.684387, 23.151621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.780518, 33.387508, 23.181173>,  <41.041634, 33.924046, 22.745417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.780518, 33.387508, 23.181173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.109089, 33.517204, 23.368841>,  <41.306232, 33.595020, 23.481441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.109089, 33.517204, 23.368841>,  <40.780518, 33.387508, 23.181173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109089, 33.517204, 23.368841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441614, -0.158927, 0.883017,
		0.360873, -0.932529, 0.012641,
		0.821430, 0.324239, 0.469171,
		41.355518, 33.614475, 23.509592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872059, 32.941898, 23.722836>,  <40.780518, 33.387508, 23.181173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872059, 32.941898, 23.722836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.087143, 33.261368, 23.830896>,  <41.216194, 33.453049, 23.895733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.087143, 33.261368, 23.830896>,  <40.872059, 32.941898, 23.722836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087143, 33.261368, 23.830896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350496, -0.079670, 0.933169,
		0.766822, -0.596465, 0.237093,
		0.537714, 0.798675, 0.270151,
		41.248459, 33.500969, 23.911942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257656, 32.801403, 24.292006>,  <40.872059, 32.941898, 23.722836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.257656, 32.801403, 24.292006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.227985, 33.199982, 24.307926>,  <41.210182, 33.439129, 24.317478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.227985, 33.199982, 24.307926>,  <41.257656, 32.801403, 24.292006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227985, 33.199982, 24.307926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442226, -0.068638, 0.894273,
		0.893831, 0.048733, 0.445748,
		-0.074176, 0.996451, 0.039800,
		41.205734, 33.498917, 24.319866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680176, 32.986938, 24.894331>,  <41.257656, 32.801403, 24.292006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.680176, 32.986938, 24.894331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.401485, 33.263294, 24.817133>,  <41.234272, 33.429108, 24.770815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.401485, 33.263294, 24.817133>,  <41.680176, 32.986938, 24.894331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401485, 33.263294, 24.817133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411751, -0.164866, 0.896259,
		0.587399, 0.703910, 0.399341,
		-0.696723, 0.690891, -0.192993,
		41.192467, 33.470562, 24.759235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.690311, 33.372097, 25.501818>,  <41.680176, 32.986938, 24.894331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.690311, 33.372097, 25.501818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.346478, 33.430443, 25.305922>,  <41.140179, 33.465450, 25.188383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.346478, 33.430443, 25.305922>,  <41.690311, 33.372097, 25.501818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.346478, 33.430443, 25.305922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510476, -0.201725, 0.835896,
		0.023131, 0.968521, 0.247857,
		-0.859581, 0.145860, -0.489740,
		41.088604, 33.474201, 25.159000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.276360, 33.688889, 25.931736>,  <41.690311, 33.372097, 25.501818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.276360, 33.688889, 25.931736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.019993, 33.537167, 25.664797>,  <40.866173, 33.446133, 25.504633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.019993, 33.537167, 25.664797>,  <41.276360, 33.688889, 25.931736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019993, 33.537167, 25.664797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634727, -0.227037, 0.738631,
		-0.431677, 0.896986, -0.095241,
		-0.640919, -0.379303, -0.667348,
		40.827717, 33.423374, 25.464592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611740, 33.937626, 26.168085>,  <41.276360, 33.688889, 25.931736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611740, 33.937626, 26.168085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.468891, 33.653999, 25.924877>,  <40.383183, 33.483822, 25.778952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.468891, 33.653999, 25.924877>,  <40.611740, 33.937626, 26.168085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468891, 33.653999, 25.924877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609124, -0.316695, 0.727098,
		-0.708119, 0.630022, -0.318811,
		-0.357121, -0.709068, -0.608019,
		40.361755, 33.441280, 25.742472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864666, 34.044701, 26.195055>,  <40.611740, 33.937626, 26.168085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864666, 34.044701, 26.195055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.947735, 33.668030, 26.089132>,  <39.997578, 33.442028, 26.025579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.947735, 33.668030, 26.089132>,  <39.864666, 34.044701, 26.195055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947735, 33.668030, 26.089132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725161, -0.329892, 0.604411,
		-0.656515, 0.066507, -0.751375,
		0.207675, -0.941673, -0.264808,
		40.010036, 33.385529, 26.009689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208088, 33.759327, 26.025541>,  <39.864666, 34.044701, 26.195055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208088, 33.759327, 26.025541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.471371, 33.479195, 26.136034>,  <39.629341, 33.311115, 26.202330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.471371, 33.479195, 26.136034>,  <39.208088, 33.759327, 26.025541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471371, 33.479195, 26.136034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668550, -0.375047, 0.642169,
		-0.346132, -0.607353, -0.715063,
		0.658206, -0.700330, 0.276230,
		39.668831, 33.269096, 26.218904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853821, 33.272102, 26.166225>,  <39.208088, 33.759327, 26.025541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853821, 33.272102, 26.166225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.174992, 33.113552, 26.344305>,  <39.367695, 33.018421, 26.451153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.174992, 33.113552, 26.344305>,  <38.853821, 33.272102, 26.166225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174992, 33.113552, 26.344305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585723, -0.386003, 0.712692,
		-0.110646, -0.833000, -0.542097,
		0.802923, -0.396375, 0.445197,
		39.415867, 32.994640, 26.477863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527069, 32.724525, 26.443653>,  <38.853821, 33.272102, 26.166225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527069, 32.724525, 26.443653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.857899, 32.778320, 26.661963>,  <39.056396, 32.810596, 26.792948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.857899, 32.778320, 26.661963>,  <38.527069, 32.724525, 26.443653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857899, 32.778320, 26.661963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442809, -0.442185, 0.779995,
		0.346230, -0.886784, -0.306168,
		0.827070, 0.134484, 0.545774,
		39.106018, 32.818665, 26.825695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652191, 32.048363, 26.659288>,  <38.527069, 32.724525, 26.443653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652191, 32.048363, 26.659288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.836552, 32.315956, 26.892538>,  <38.947166, 32.476513, 27.032488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.836552, 32.315956, 26.892538>,  <38.652191, 32.048363, 26.659288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836552, 32.315956, 26.892538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413136, -0.419789, 0.808144,
		0.785424, -0.613381, 0.082902,
		0.460898, 0.668986, 0.583122,
		38.974823, 32.516651, 27.067474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975952, 31.652946, 27.074842>,  <38.652191, 32.048363, 26.659288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975952, 31.652946, 27.074842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.955185, 32.007034, 27.259750>,  <38.942726, 32.219486, 27.370695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.955185, 32.007034, 27.259750>,  <38.975952, 31.652946, 27.074842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955185, 32.007034, 27.259750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331265, -0.451951, 0.828254,
		0.942108, -0.110134, 0.316705,
		-0.051916, 0.885218, 0.462270,
		38.939610, 32.272598, 27.398432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136463, 31.491365, 27.791880>,  <38.975952, 31.652946, 27.074842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136463, 31.491365, 27.791880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.933296, 31.835901, 27.796112>,  <38.811398, 32.042622, 27.798651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.933296, 31.835901, 27.796112>,  <39.136463, 31.491365, 27.791880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933296, 31.835901, 27.796112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406536, -0.250518, 0.878618,
		0.759441, 0.441963, 0.477409,
		-0.507916, 0.861342, 0.010580,
		38.780922, 32.094303, 27.799286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.650936, 32.683315, 33.842037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.444233, 32.895782, 33.573463>,  <39.320210, 33.023262, 33.412319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.444233, 32.895782, 33.573463>,  <39.650936, 32.683315, 33.842037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444233, 32.895782, 33.573463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476482, 0.473144, 0.741013,
		0.711286, 0.702850, 0.008590,
		-0.516757, 0.531165, -0.671436,
		39.289207, 33.055134, 33.372032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687618, 33.371262, 34.157696>,  <39.650936, 32.683315, 33.842037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687618, 33.371262, 34.157696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.387230, 33.349812, 33.894432>,  <39.206997, 33.336941, 33.736473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.387230, 33.349812, 33.894432>,  <39.687618, 33.371262, 34.157696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387230, 33.349812, 33.894432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646105, 0.265481, 0.715589,
		0.136356, 0.962624, -0.234014,
		-0.750969, -0.053622, -0.658156,
		39.161938, 33.333725, 33.696983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328758, 33.895493, 34.206215>,  <39.687618, 33.371262, 34.157696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328758, 33.895493, 34.206215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.060246, 33.654030, 34.034176>,  <38.899139, 33.509151, 33.930954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.060246, 33.654030, 34.034176>,  <39.328758, 33.895493, 34.206215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060246, 33.654030, 34.034176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570249, 0.049929, 0.819954,
		-0.473495, 0.795681, -0.377750,
		-0.671282, -0.603655, -0.430094,
		38.858860, 33.472935, 33.905148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645329, 34.129932, 34.491364>,  <39.328758, 33.895493, 34.206215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645329, 34.129932, 34.491364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.566895, 33.768253, 34.339588>,  <38.519836, 33.551247, 34.248524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.566895, 33.768253, 34.339588>,  <38.645329, 34.129932, 34.491364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566895, 33.768253, 34.339588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547621, -0.220010, 0.807284,
		-0.813427, 0.366081, -0.452019,
		-0.196083, -0.904201, -0.379436,
		38.508068, 33.496994, 34.225758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944580, 34.014122, 34.575855>,  <38.645329, 34.129932, 34.491364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944580, 34.014122, 34.575855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.083820, 33.647556, 34.496857>,  <38.167366, 33.427616, 34.449455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.083820, 33.647556, 34.496857>,  <37.944580, 34.014122, 34.575855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083820, 33.647556, 34.496857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630953, -0.384848, 0.673640,
		-0.693341, -0.109883, -0.712182,
		0.348103, -0.916416, -0.197500,
		38.188251, 33.372631, 34.437607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360394, 33.670338, 34.615044>,  <37.944580, 34.014122, 34.575855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360394, 33.670338, 34.615044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.652275, 33.412598, 34.706558>,  <37.827404, 33.257954, 34.761467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.652275, 33.412598, 34.706558>,  <37.360394, 33.670338, 34.615044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652275, 33.412598, 34.706558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601372, -0.445558, 0.663197,
		-0.325397, -0.621521, -0.712621,
		0.729704, -0.644353, 0.228782,
		37.871185, 33.219292, 34.775192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076057, 32.974850, 34.587746>,  <37.360394, 33.670338, 34.615044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076057, 32.974850, 34.587746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.401310, 32.928284, 34.815876>,  <37.596462, 32.900345, 34.952755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.401310, 32.928284, 34.815876>,  <37.076057, 32.974850, 34.587746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401310, 32.928284, 34.815876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511197, -0.611414, 0.604028,
		0.278384, -0.782700, -0.556671,
		0.813130, -0.116417, 0.570322,
		37.645248, 32.893360, 34.986973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020226, 32.305309, 34.792099>,  <37.076057, 32.974850, 34.587746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020226, 32.305309, 34.792099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.275154, 32.487900, 35.040436>,  <37.428112, 32.597454, 35.189438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.275154, 32.487900, 35.040436>,  <37.020226, 32.305309, 34.792099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275154, 32.487900, 35.040436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440665, -0.445048, 0.779581,
		0.632167, -0.770429, -0.082485,
		0.637321, 0.456477, 0.620846,
		37.466351, 32.624844, 35.226688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941326, 31.832331, 35.258099>,  <37.020226, 32.305309, 34.792099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941326, 31.832331, 35.258099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.136536, 32.126080, 35.446789>,  <37.253662, 32.302330, 35.560005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.136536, 32.126080, 35.446789>,  <36.941326, 31.832331, 35.258099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136536, 32.126080, 35.446789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272632, -0.385160, 0.881659,
		0.829156, -0.558883, 0.012244,
		0.488028, 0.734372, 0.471728,
		37.282944, 32.346390, 35.588306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301765, 31.554594, 35.858482>,  <36.941326, 31.832331, 35.258099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301765, 31.554594, 35.858482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.271225, 31.940760, 35.958199>,  <37.252903, 32.172459, 36.018028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.271225, 31.940760, 35.958199>,  <37.301765, 31.554594, 35.858482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271225, 31.940760, 35.958199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388576, -0.259057, 0.884250,
		0.918248, -0.029357, 0.394915,
		-0.076347, 0.965416, 0.249287,
		37.248322, 32.230385, 36.032986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493202, 31.650393, 36.652321>,  <37.301765, 31.554594, 35.858482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493202, 31.650393, 36.652321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.277466, 31.964273, 36.530106>,  <37.148026, 32.152603, 36.456776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.277466, 31.964273, 36.530106>,  <37.493202, 31.650393, 36.652321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277466, 31.964273, 36.530106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600398, -0.103928, 0.792919,
		0.590453, 0.611097, 0.527187,
		-0.539340, 0.784704, -0.305537,
		37.115665, 32.199684, 36.438446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201630, 31.910439, 37.269588>,  <37.493202, 31.650393, 36.652321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201630, 31.910439, 37.269588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.953339, 32.080860, 37.006325>,  <36.804363, 32.183113, 36.848366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.953339, 32.080860, 37.006325>,  <37.201630, 31.910439, 37.269588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953339, 32.080860, 37.006325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774903, -0.205712, 0.597669,
		0.119247, 0.881000, 0.457841,
		-0.620730, 0.426053, -0.658159,
		36.767120, 32.208675, 36.808876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829742, 32.370079, 37.615948>,  <37.201630, 31.910439, 37.269588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829742, 32.370079, 37.615948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.616394, 32.269833, 37.292786>,  <36.488384, 32.209682, 37.098888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.616394, 32.269833, 37.292786>,  <36.829742, 32.370079, 37.615948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616394, 32.269833, 37.292786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790310, -0.192822, 0.581575,
		-0.301534, 0.948689, -0.095220,
		-0.533373, -0.250618, -0.807901,
		36.456383, 32.194649, 37.050415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221325, 32.757286, 37.358643>,  <36.829742, 32.370079, 37.615948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221325, 32.757286, 37.358643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.203644, 32.361790, 37.301453>,  <36.193035, 32.124493, 37.267139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.203644, 32.361790, 37.301453>,  <36.221325, 32.757286, 37.358643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203644, 32.361790, 37.301453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612781, -0.086198, 0.785538,
		-0.789016, 0.122333, -0.602070,
		-0.044200, -0.988739, -0.142975,
		36.190384, 32.065166, 37.258560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441490, 33.524593, 37.052406>,  <36.221325, 32.757286, 37.358643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441490, 33.524593, 37.052406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.643589, 33.742046, 37.320492>,  <36.764851, 33.872517, 37.481342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.643589, 33.742046, 37.320492>,  <36.441490, 33.524593, 37.052406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643589, 33.742046, 37.320492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086874, 0.804733, -0.587246,
		-0.858590, 0.238481, 0.453818,
		0.505249, 0.543628, 0.670218,
		36.795162, 33.905136, 37.521557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005764, 34.086758, 37.288002>,  <36.441490, 33.524593, 37.052406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005764, 34.086758, 37.288002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.393967, 34.170773, 37.335331>,  <36.626888, 34.221180, 37.363728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.393967, 34.170773, 37.335331>,  <36.005764, 34.086758, 37.288002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393967, 34.170773, 37.335331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074408, 0.727850, -0.681687,
		-0.229299, 0.652779, 0.722013,
		0.970508, 0.210034, 0.118323,
		36.685120, 34.233784, 37.370827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073952, 34.913937, 37.370895>,  <36.005764, 34.086758, 37.288002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073952, 34.913937, 37.370895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.415600, 34.750481, 37.242210>,  <36.620586, 34.652409, 37.164997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.415600, 34.750481, 37.242210>,  <36.073952, 34.913937, 37.370895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415600, 34.750481, 37.242210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078781, 0.713103, -0.696618,
		0.514080, 0.569649, 0.641266,
		0.854117, -0.408637, -0.321715,
		36.671833, 34.627888, 37.145695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500755, 35.586140, 37.303562>,  <36.073952, 34.913937, 37.370895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500755, 35.586140, 37.303562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.672195, 35.278431, 37.114029>,  <36.775059, 35.093803, 37.000309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.672195, 35.278431, 37.114029>,  <36.500755, 35.586140, 37.303562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672195, 35.278431, 37.114029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272575, 0.610105, -0.743959,
		0.861398, 0.189705, 0.471175,
		0.428599, -0.769275, -0.473834,
		36.800774, 35.047649, 36.971878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094395, 35.767624, 36.991779>,  <36.500755, 35.586140, 37.303562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094395, 35.767624, 36.991779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.999611, 35.461182, 36.752804>,  <36.942741, 35.277317, 36.609417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.999611, 35.461182, 36.752804>,  <37.094395, 35.767624, 36.991779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999611, 35.461182, 36.752804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288400, 0.531765, -0.796274,
		0.927727, -0.360986, 0.094938,
		-0.236959, -0.766105, -0.597440,
		36.928524, 35.231350, 36.573570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439014, 35.938366, 36.490963>,  <37.094395, 35.767624, 36.991779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439014, 35.938366, 36.490963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.243443, 35.626526, 36.334415>,  <37.126099, 35.439423, 36.240486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.243443, 35.626526, 36.334415>,  <37.439014, 35.938366, 36.490963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243443, 35.626526, 36.334415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088473, 0.402023, -0.911345,
		0.867828, -0.480205, -0.127586,
		-0.488925, -0.779603, -0.391372,
		37.096764, 35.392647, 36.217003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771564, 35.754147, 35.861111>,  <37.439014, 35.938366, 36.490963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771564, 35.754147, 35.861111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.425003, 35.559727, 35.815311>,  <37.217068, 35.443077, 35.787830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.425003, 35.559727, 35.815311>,  <37.771564, 35.754147, 35.861111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425003, 35.559727, 35.815311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001436, 0.226868, -0.973925,
		0.499348, -0.843973, -0.195860,
		-0.866400, -0.486046, -0.114498,
		37.165081, 35.413914, 35.780964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867188, 35.148849, 35.400997>,  <37.771564, 35.754147, 35.861111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867188, 35.148849, 35.400997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.487846, 35.275646, 35.396046>,  <37.260242, 35.351723, 35.393074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.487846, 35.275646, 35.396046>,  <37.867188, 35.148849, 35.400997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487846, 35.275646, 35.396046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080067, 0.201424, -0.976226,
		-0.306959, -0.926794, -0.216401,
		-0.948349, 0.316988, -0.012377,
		37.203342, 35.370743, 35.392334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444809, 34.804737, 34.844582>,  <37.867188, 35.148849, 35.400997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444809, 34.804737, 34.844582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.253162, 35.146992, 34.922894>,  <37.138176, 35.352345, 34.969879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.253162, 35.146992, 34.922894>,  <37.444809, 34.804737, 34.844582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253162, 35.146992, 34.922894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246966, 0.345445, -0.905359,
		-0.842292, -0.385422, -0.376822,
		-0.479117, 0.855639, 0.195780,
		37.109428, 35.403683, 34.981628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261608, 34.915630, 34.216412>,  <37.444809, 34.804737, 34.844582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261608, 34.915630, 34.216412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.175804, 35.259590, 34.401695>,  <37.124321, 35.465965, 34.512863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.175804, 35.259590, 34.401695>,  <37.261608, 34.915630, 34.216412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175804, 35.259590, 34.401695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329666, 0.510158, -0.794392,
		-0.919405, -0.017701, -0.392914,
		-0.214510, 0.859899, 0.463206,
		37.111450, 35.517559, 34.540657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800640, 35.297775, 33.716785>,  <37.261608, 34.915630, 34.216412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800640, 35.297775, 33.716785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.966000, 35.553673, 33.975964>,  <37.065216, 35.707211, 34.131470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.966000, 35.553673, 33.975964>,  <36.800640, 35.297775, 33.716785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966000, 35.553673, 33.975964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312568, 0.568650, -0.760880,
		-0.855220, 0.517073, 0.035116,
		0.413400, 0.639744, 0.647942,
		37.090019, 35.745594, 34.170345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571846, 35.903698, 33.421932>,  <36.800640, 35.297775, 33.716785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571846, 35.903698, 33.421932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.908638, 35.966248, 33.628471>,  <37.110714, 36.003777, 33.752396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.908638, 35.966248, 33.628471>,  <36.571846, 35.903698, 33.421932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908638, 35.966248, 33.628471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426932, 0.392021, -0.814892,
		-0.329851, 0.906568, 0.263311,
		0.841978, 0.156377, 0.516351,
		37.161232, 36.013161, 33.783379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722229, 36.494507, 33.142921>,  <36.571846, 35.903698, 33.421932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722229, 36.494507, 33.142921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.061989, 36.372116, 33.314919>,  <37.265846, 36.298683, 33.418118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.061989, 36.372116, 33.314919>,  <36.722229, 36.494507, 33.142921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061989, 36.372116, 33.314919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514075, 0.295441, -0.805258,
		0.119353, 0.905037, 0.408244,
		0.849401, -0.305978, 0.429995,
		37.316811, 36.280323, 33.443916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255772, 36.938416, 32.934872>,  <36.722229, 36.494507, 33.142921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255772, 36.938416, 32.934872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.480846, 36.633762, 33.063435>,  <37.615891, 36.450970, 33.140572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.480846, 36.633762, 33.063435>,  <37.255772, 36.938416, 32.934872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480846, 36.633762, 33.063435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596820, 0.105243, -0.795443,
		0.572009, 0.639407, 0.513775,
		0.562683, -0.761632, 0.321410,
		37.649651, 36.405273, 33.159859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231770, 37.705784, 33.031231>,  <37.255772, 36.938416, 32.934872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231770, 37.705784, 33.031231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.976608, 37.917007, 32.807007>,  <36.823513, 38.043743, 32.672470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.976608, 37.917007, 32.807007>,  <37.231770, 37.705784, 33.031231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976608, 37.917007, 32.807007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708284, -0.116515, 0.696246,
		0.302344, 0.841177, 0.448340,
		-0.637905, 0.528058, -0.560565,
		36.785236, 38.075424, 32.638836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763512, 38.103985, 33.530296>,  <37.231770, 37.705784, 33.031231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763512, 38.103985, 33.530296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.568623, 38.092796, 33.181164>,  <36.451691, 38.086082, 32.971684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.568623, 38.092796, 33.181164>,  <36.763512, 38.103985, 33.530296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568623, 38.092796, 33.181164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840127, -0.257764, 0.477225,
		-0.238336, 0.965803, 0.102084,
		-0.487219, -0.027976, -0.872832,
		36.422459, 38.084404, 32.919315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140099, 38.504784, 33.675758>,  <36.763512, 38.103985, 33.530296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140099, 38.504784, 33.675758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.045483, 38.273495, 33.363422>,  <35.988712, 38.134724, 33.176022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.045483, 38.273495, 33.363422>,  <36.140099, 38.504784, 33.675758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045483, 38.273495, 33.363422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720584, -0.434695, 0.540184,
		-0.651772, 0.690436, -0.313833,
		-0.236540, -0.578220, -0.780839,
		35.974522, 38.100029, 33.129169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401817, 38.577206, 33.585331>,  <36.140099, 38.504784, 33.675758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401817, 38.577206, 33.585331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.476437, 38.217777, 33.426453>,  <35.521210, 38.002121, 33.331127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.476437, 38.217777, 33.426453>,  <35.401817, 38.577206, 33.585331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476437, 38.217777, 33.426453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872712, -0.337242, 0.353047,
		-0.451190, 0.280777, -0.847108,
		0.186552, -0.898572, -0.397197,
		35.532402, 37.948204, 33.307293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746197, 38.340527, 33.420082>,  <35.401817, 38.577206, 33.585331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746197, 38.340527, 33.420082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.968437, 38.008392, 33.402931>,  <35.101784, 37.809113, 33.392643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.968437, 38.008392, 33.402931>,  <34.746197, 38.340527, 33.420082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968437, 38.008392, 33.402931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752670, -0.524204, 0.398370,
		-0.353258, -0.189066, -0.916222,
		0.555605, -0.830340, -0.042875,
		35.135120, 37.759289, 33.390068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232594, 37.837196, 33.260910>,  <34.746197, 38.340527, 33.420082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232594, 37.837196, 33.260910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.533222, 37.630260, 33.424614>,  <34.713600, 37.506100, 33.522835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.533222, 37.630260, 33.424614>,  <34.232594, 37.837196, 33.260910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533222, 37.630260, 33.424614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657021, -0.642413, 0.394498,
		0.058822, -0.565386, -0.822726,
		0.751574, -0.517343, 0.409258,
		34.758694, 37.475056, 33.547390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092564, 37.143547, 33.021603>,  <34.232594, 37.837196, 33.260910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092564, 37.143547, 33.021603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.311382, 37.152927, 33.356312>,  <34.442673, 37.158554, 33.557137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.311382, 37.152927, 33.356312>,  <34.092564, 37.143547, 33.021603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311382, 37.152927, 33.356312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653170, -0.613233, 0.444201,
		0.523553, -0.789554, -0.320150,
		0.547048, 0.023450, 0.836773,
		34.475498, 37.159962, 33.607346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189098, 36.430058, 33.198490>,  <34.092564, 37.143547, 33.021603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189098, 36.430058, 33.198490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.250889, 36.627357, 33.540916>,  <34.287964, 36.745739, 33.746372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.250889, 36.627357, 33.540916>,  <34.189098, 36.430058, 33.198490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250889, 36.627357, 33.540916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625528, -0.621855, 0.471181,
		0.764756, -0.608278, 0.212478,
		0.154479, 0.493249, 0.856062,
		34.297234, 36.775333, 33.797733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070724, 35.883144, 33.708668>,  <34.189098, 36.430058, 33.198490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070724, 35.883144, 33.708668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.084503, 36.225266, 33.915462>,  <34.092770, 36.430538, 34.039539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.084503, 36.225266, 33.915462>,  <34.070724, 35.883144, 33.708668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084503, 36.225266, 33.915462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631887, -0.382135, 0.674309,
		0.774295, -0.349905, 0.527290,
		0.034448, 0.855301, 0.516985,
		34.094837, 36.481857, 34.070557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195747, 35.749336, 34.407497>,  <34.070724, 35.883144, 33.708668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195747, 35.749336, 34.407497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.021816, 36.108871, 34.385494>,  <33.917458, 36.324593, 34.372292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.021816, 36.108871, 34.385494>,  <34.195747, 35.749336, 34.407497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021816, 36.108871, 34.385494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615099, -0.251839, 0.747148,
		0.657709, 0.358713, 0.662378,
		-0.434824, 0.898834, -0.055007,
		33.891369, 36.378521, 34.368992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200954, 35.873264, 35.138405>,  <34.195747, 35.749336, 34.407497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200954, 35.873264, 35.138405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.922504, 36.106071, 34.970280>,  <33.755432, 36.245754, 34.869404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.922504, 36.106071, 34.970280>,  <34.200954, 35.873264, 35.138405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922504, 36.106071, 34.970280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655568, -0.276701, 0.702615,
		0.292634, 0.764652, 0.574171,
		-0.696129, 0.582017, -0.420309,
		33.713665, 36.280678, 34.844189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867958, 36.291019, 35.665432>,  <34.200954, 35.873264, 35.138405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867958, 36.291019, 35.665432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.604927, 36.285278, 35.364132>,  <33.447109, 36.281834, 35.183353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.604927, 36.285278, 35.364132>,  <33.867958, 36.291019, 35.665432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604927, 36.285278, 35.364132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687901, -0.396277, 0.608076,
		-0.307221, 0.918019, 0.250712,
		-0.657577, -0.014349, -0.753251,
		33.407654, 36.280975, 35.138157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.770447, 39.951797, 30.585392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564213, 39.672981, 30.386074>,  <39.440472, 39.505692, 30.266483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564213, 39.672981, 30.386074>,  <39.770447, 39.951797, 30.585392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564213, 39.672981, 30.386074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729734, 0.052428, 0.681718,
		-0.449063, 0.715108, -0.535689,
		-0.515587, -0.697045, -0.498295,
		39.409538, 39.463867, 30.236586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192780, 40.147308, 30.849638>,  <39.770447, 39.951797, 30.585392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192780, 40.147308, 30.849638> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091450, 39.798710, 30.681679>,  <39.030651, 39.589550, 30.580904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091450, 39.798710, 30.681679>,  <39.192780, 40.147308, 30.849638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091450, 39.798710, 30.681679> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748375, -0.098494, 0.655922,
		-0.612994, 0.480402, -0.627258,
		-0.253325, -0.871500, -0.419897,
		39.015453, 39.537258, 30.555710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389267, 40.062840, 30.817886>,  <39.192780, 40.147308, 30.849638>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389267, 40.062840, 30.817886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517445, 39.686661, 30.772486>,  <38.594349, 39.460953, 30.745245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517445, 39.686661, 30.772486>,  <38.389267, 40.062840, 30.817886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517445, 39.686661, 30.772486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739218, -0.323187, 0.590853,
		-0.592346, -0.105432, -0.798755,
		0.320442, -0.940444, -0.113501,
		38.613579, 39.404526, 30.738436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820522, 39.703030, 30.634611>,  <38.389267, 40.062840, 30.817886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820522, 39.703030, 30.634611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058151, 39.413105, 30.774166>,  <38.200729, 39.239151, 30.857899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058151, 39.413105, 30.774166>,  <37.820522, 39.703030, 30.634611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058151, 39.413105, 30.774166> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747092, -0.336358, 0.573338,
		-0.298209, -0.601260, -0.741322,
		0.594075, -0.724810, 0.348892,
		38.236374, 39.195660, 30.878832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431709, 39.116364, 30.629515>,  <37.820522, 39.703030, 30.634611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431709, 39.116364, 30.629515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732868, 39.017006, 30.873302>,  <37.913563, 38.957390, 31.019575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732868, 39.017006, 30.873302>,  <37.431709, 39.116364, 30.629515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732868, 39.017006, 30.873302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627908, -0.548552, 0.552107,
		0.197184, -0.798368, -0.568971,
		0.752894, -0.248395, 0.609467,
		37.958736, 38.942486, 31.056143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450905, 38.358326, 30.672615>,  <37.431709, 39.116364, 30.629515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450905, 38.358326, 30.672615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626690, 38.479042, 31.011034>,  <37.732162, 38.551472, 31.214085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626690, 38.479042, 31.011034>,  <37.450905, 38.358326, 30.672615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626690, 38.479042, 31.011034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615523, -0.584808, 0.528329,
		0.654221, -0.752941, -0.071239,
		0.439462, 0.301794, 0.846046,
		37.758530, 38.569580, 31.264849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350739, 37.893143, 31.086542>,  <37.450905, 38.358326, 30.672615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350739, 37.893143, 31.086542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429287, 38.184086, 31.349566>,  <37.476414, 38.358654, 31.507380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429287, 38.184086, 31.349566>,  <37.350739, 37.893143, 31.086542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429287, 38.184086, 31.349566> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717211, -0.350739, 0.602155,
		0.668616, -0.589853, 0.452799,
		0.196369, 0.727363, 0.657558,
		37.488197, 38.402294, 31.546833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412445, 37.574955, 31.689463>,  <37.350739, 37.893143, 31.086542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412445, 37.574955, 31.689463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347923, 37.951283, 31.808691>,  <37.309208, 38.177078, 31.880228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347923, 37.951283, 31.808691>,  <37.412445, 37.574955, 31.689463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347923, 37.951283, 31.808691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648039, -0.328765, 0.686992,
		0.744328, -0.082344, 0.662718,
		-0.161309, 0.940815, 0.298071,
		37.299530, 38.233528, 31.898113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522484, 37.542511, 32.387131>,  <37.412445, 37.574955, 31.689463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522484, 37.542511, 32.387131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293404, 37.867680, 32.344849>,  <37.155956, 38.062778, 32.319477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293404, 37.867680, 32.344849>,  <37.522484, 37.542511, 32.387131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293404, 37.867680, 32.344849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584313, -0.314362, 0.748168,
		0.574970, 0.490243, 0.655035,
		-0.572702, 0.812920, -0.105707,
		37.121593, 38.111557, 32.313137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170258, 37.145458, 32.825642>,  <37.522484, 37.542511, 32.387131>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170258, 37.145458, 32.825642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161022, 36.752777, 32.901249>,  <38.155479, 36.517170, 32.946613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161022, 36.752777, 32.901249>,  <38.170258, 37.145458, 32.825642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161022, 36.752777, 32.901249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724696, -0.146678, -0.673276,
		0.688681, 0.121431, 0.714823,
		-0.023092, -0.981703, 0.189015,
		38.154095, 36.458267, 32.957954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912193, 36.933136, 32.911449>,  <38.170258, 37.145458, 32.825642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912193, 36.933136, 32.911449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657505, 36.643696, 32.804871>,  <38.504692, 36.470032, 32.740925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657505, 36.643696, 32.804871>,  <38.912193, 36.933136, 32.911449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657505, 36.643696, 32.804871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594195, -0.240195, -0.767619,
		0.491448, -0.647080, 0.582896,
		-0.636719, -0.723598, -0.266448,
		38.466488, 36.426617, 32.724937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360390, 36.556492, 32.587563>,  <38.912193, 36.933136, 32.911449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360390, 36.556492, 32.587563> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009609, 36.417976, 32.454269>,  <38.799141, 36.334869, 32.374294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009609, 36.417976, 32.454269>,  <39.360390, 36.556492, 32.587563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009609, 36.417976, 32.454269> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413463, -0.190191, -0.890435,
		0.244968, -0.918647, 0.309965,
		-0.876948, -0.346287, -0.333236,
		38.746525, 36.314091, 32.354298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507439, 35.915947, 32.180416>,  <39.360390, 36.556492, 32.587563>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507439, 35.915947, 32.180416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144333, 36.037941, 32.065212>,  <38.926468, 36.111137, 31.996090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144333, 36.037941, 32.065212>,  <39.507439, 35.915947, 32.180416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144333, 36.037941, 32.065212> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218542, -0.242214, -0.945289,
		-0.358057, -0.921042, 0.153221,
		-0.907763, 0.304982, -0.288013,
		38.872005, 36.129436, 31.978809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307831, 35.320583, 31.774759>,  <39.507439, 35.915947, 32.180416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307831, 35.320583, 31.774759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071865, 35.625778, 31.669048>,  <38.930286, 35.808895, 31.605621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071865, 35.625778, 31.669048>,  <39.307831, 35.320583, 31.774759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071865, 35.625778, 31.669048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190060, -0.186893, -0.963820,
		-0.784778, -0.618801, -0.034763,
		-0.589916, 0.762992, -0.264279,
		38.894890, 35.854675, 31.589766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941692, 35.047016, 31.201647>,  <39.307831, 35.320583, 31.774759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941692, 35.047016, 31.201647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929665, 35.446495, 31.185146>,  <38.922447, 35.686184, 31.175245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929665, 35.446495, 31.185146>,  <38.941692, 35.047016, 31.201647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929665, 35.446495, 31.185146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417138, -0.024967, -0.908500,
		-0.908345, -0.044527, -0.415844,
		-0.030071, 0.998696, -0.041253,
		38.920643, 35.746105, 31.172770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505356, 35.204185, 30.695621>,  <38.941692, 35.047016, 31.201647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505356, 35.204185, 30.695621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756767, 35.509964, 30.753010>,  <38.907612, 35.693432, 30.787443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756767, 35.509964, 30.753010>,  <38.505356, 35.204185, 30.695621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756767, 35.509964, 30.753010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259164, -0.031916, -0.965306,
		-0.733342, 0.643901, -0.218175,
		0.628525, 0.764443, 0.143471,
		38.945324, 35.739296, 30.796051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442394, 35.695797, 30.121111>,  <38.505356, 35.204185, 30.695621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442394, 35.695797, 30.121111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802040, 35.807510, 30.255920>,  <39.017830, 35.874538, 30.336807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802040, 35.807510, 30.255920>,  <38.442394, 35.695797, 30.121111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802040, 35.807510, 30.255920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307606, 0.144604, -0.940462,
		-0.311391, 0.949258, 0.044107,
		0.899119, 0.279283, 0.337026,
		39.071777, 35.891296, 30.357029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680836, 36.069088, 29.466879>,  <38.442394, 35.695797, 30.121111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680836, 36.069088, 29.466879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009022, 35.993988, 29.682877>,  <39.205933, 35.948929, 29.812475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009022, 35.993988, 29.682877>,  <38.680836, 36.069088, 29.466879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009022, 35.993988, 29.682877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559335, 0.068200, -0.826132,
		0.118276, 0.979847, 0.160969,
		0.820461, -0.187747, 0.539996,
		39.255161, 35.937664, 29.844875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131111, 36.585155, 29.284153>,  <38.680836, 36.069088, 29.466879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131111, 36.585155, 29.284153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349529, 36.290691, 29.444105>,  <39.480579, 36.114014, 29.540077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349529, 36.290691, 29.444105>,  <39.131111, 36.585155, 29.284153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349529, 36.290691, 29.444105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685976, 0.118892, -0.717845,
		0.480905, 0.666285, 0.569908,
		0.546047, -0.736158, 0.399880,
		39.513344, 36.069843, 29.564070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823574, 36.785297, 29.296261>,  <39.131111, 36.585155, 29.284153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823574, 36.785297, 29.296261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853580, 36.386662, 29.310028>,  <39.871586, 36.147480, 29.318289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853580, 36.386662, 29.310028>,  <39.823574, 36.785297, 29.296261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853580, 36.386662, 29.310028> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847014, 0.045470, -0.529623,
		0.526251, 0.068885, 0.847535,
		0.075020, -0.996588, 0.034418,
		39.876087, 36.087685, 29.320354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524452, 36.585304, 29.207912>,  <39.823574, 36.785297, 29.296261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524452, 36.585304, 29.207912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380009, 36.218414, 29.140614>,  <40.293343, 35.998280, 29.100233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380009, 36.218414, 29.140614>,  <40.524452, 36.585304, 29.207912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380009, 36.218414, 29.140614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775985, -0.195497, -0.599690,
		0.517157, -0.347110, 0.782345,
		-0.361104, -0.917222, -0.168249,
		40.271679, 35.943249, 29.090139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060726, 36.220604, 29.234266>,  <40.524452, 36.585304, 29.207912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.060726, 36.220604, 29.234266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810101, 35.992912, 29.021324>,  <40.659725, 35.856297, 28.893559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810101, 35.992912, 29.021324>,  <41.060726, 36.220604, 29.234266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.810101, 35.992912, 29.021324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756695, -0.280731, -0.590427,
		0.186640, -0.772767, 0.606627,
		-0.626561, -0.569229, -0.532353,
		40.622131, 35.822144, 28.861618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.298267, 35.483311, 29.305773>,  <41.060726, 36.220604, 29.234266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.298267, 35.483311, 29.305773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063644, 35.505825, 28.982592>,  <40.922871, 35.519333, 28.788683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063644, 35.505825, 28.982592>,  <41.298267, 35.483311, 29.305773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.063644, 35.505825, 28.982592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710457, -0.443198, -0.546650,
		-0.388850, -0.894655, 0.219973,
		-0.586555, 0.056283, -0.807951,
		40.887676, 35.522709, 28.740206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.834232, 33.907772, 25.581558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.946857, 34.244823, 25.765163>,  <38.014435, 34.447056, 25.875326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.946857, 34.244823, 25.765163>,  <37.834232, 33.907772, 25.581558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946857, 34.244823, 25.765163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766280, -0.090460, 0.636107,
		0.577526, -0.530839, 0.620221,
		0.281565, 0.842631, 0.459014,
		38.031326, 34.497612, 25.902868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849606, 33.822964, 26.271496>,  <37.834232, 33.907772, 25.581558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849606, 33.822964, 26.271496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.883430, 34.220802, 26.295565>,  <37.903725, 34.459507, 26.310005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.883430, 34.220802, 26.295565>,  <37.849606, 33.822964, 26.271496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883430, 34.220802, 26.295565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458622, -0.014760, 0.888509,
		0.884599, -0.102729, 0.454897,
		0.084561, 0.994600, 0.060171,
		37.908798, 34.519184, 26.313616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134251, 34.032204, 26.943623>,  <37.849606, 33.822964, 26.271496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134251, 34.032204, 26.943623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.944702, 34.359539, 26.813536>,  <37.830975, 34.555943, 26.735483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.944702, 34.359539, 26.813536>,  <38.134251, 34.032204, 26.943623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944702, 34.359539, 26.813536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506318, 0.048962, 0.860956,
		0.720479, 0.572644, 0.391139,
		-0.473870, 0.818341, -0.325216,
		37.802540, 34.605042, 26.715971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253681, 34.451790, 27.453732>,  <38.134251, 34.032204, 26.943623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253681, 34.451790, 27.453732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.926655, 34.594883, 27.273237>,  <37.730438, 34.680740, 27.164940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.926655, 34.594883, 27.273237>,  <38.253681, 34.451790, 27.453732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926655, 34.594883, 27.273237> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403975, 0.202112, 0.892163,
		0.410355, 0.911690, -0.020725,
		-0.817565, 0.357731, -0.451238,
		37.681385, 34.702202, 27.137865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984219, 34.935085, 27.835098>,  <38.253681, 34.451790, 27.453732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984219, 34.935085, 27.835098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.645439, 34.842804, 27.643492>,  <37.442173, 34.787437, 27.528528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.645439, 34.842804, 27.643492>,  <37.984219, 34.935085, 27.835098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645439, 34.842804, 27.643492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526488, 0.238330, 0.816094,
		-0.074110, 0.943385, -0.323314,
		-0.846946, -0.230702, -0.479018,
		37.391354, 34.773594, 27.499786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601948, 35.447697, 28.091612>,  <37.984219, 34.935085, 27.835098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601948, 35.447697, 28.091612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.335037, 35.188545, 27.944645>,  <37.174892, 35.033054, 27.856464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.335037, 35.188545, 27.944645>,  <37.601948, 35.447697, 28.091612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335037, 35.188545, 27.944645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549048, 0.094542, 0.830426,
		-0.503280, 0.755853, -0.418802,
		-0.667275, -0.647879, -0.367419,
		37.134853, 34.994183, 27.834419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942612, 35.743729, 28.219162>,  <37.601948, 35.447697, 28.091612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942612, 35.743729, 28.219162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.878212, 35.353909, 28.156767>,  <36.839573, 35.120018, 28.119331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.878212, 35.353909, 28.156767>,  <36.942612, 35.743729, 28.219162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878212, 35.353909, 28.156767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572960, -0.036399, 0.818774,
		-0.803615, 0.221193, -0.552519,
		-0.160997, -0.974551, -0.155985,
		36.829914, 35.061543, 28.109972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373825, 35.549084, 28.513405>,  <36.942612, 35.743729, 28.219162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373825, 35.549084, 28.513405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.458725, 35.159519, 28.481274>,  <36.509666, 34.925781, 28.461994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.458725, 35.159519, 28.481274>,  <36.373825, 35.549084, 28.513405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458725, 35.159519, 28.481274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489950, -0.177182, 0.853555,
		-0.845516, -0.141813, -0.514773,
		0.212254, -0.973907, -0.080329,
		36.522400, 34.867348, 28.457174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721844, 35.122787, 28.694315>,  <36.373825, 35.549084, 28.513405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721844, 35.122787, 28.694315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.015385, 34.854767, 28.739014>,  <36.191509, 34.693954, 28.765833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.015385, 34.854767, 28.739014>,  <35.721844, 35.122787, 28.694315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015385, 34.854767, 28.739014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483371, -0.399489, 0.778949,
		-0.477297, -0.625648, -0.617051,
		0.733853, -0.670054, 0.111745,
		36.235542, 34.653751, 28.772537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429955, 34.358219, 28.723358>,  <35.721844, 35.122787, 28.694315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429955, 34.358219, 28.723358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.791679, 34.349976, 28.893906>,  <36.008717, 34.345028, 28.996235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.791679, 34.349976, 28.893906>,  <35.429955, 34.358219, 28.723358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791679, 34.349976, 28.893906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374490, -0.517691, 0.769255,
		0.204872, -0.855319, -0.475874,
		0.904314, -0.020611, 0.426369,
		36.062973, 34.343792, 29.021816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495369, 33.751553, 28.853899>,  <35.429955, 34.358219, 28.723358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495369, 33.751553, 28.853899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.756016, 33.930668, 29.098810>,  <35.912403, 34.038136, 29.245756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.756016, 33.930668, 29.098810>,  <35.495369, 33.751553, 28.853899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756016, 33.930668, 29.098810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332915, -0.556453, 0.761267,
		0.681591, -0.699889, -0.213517,
		0.651615, 0.447789, 0.612277,
		35.951500, 34.065006, 29.282494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935108, 33.264820, 29.111341>,  <35.495369, 33.751553, 28.853899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935108, 33.264820, 29.111341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.932579, 33.569775, 29.370180>,  <35.931061, 33.752747, 29.525482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.932579, 33.569775, 29.370180>,  <35.935108, 33.264820, 29.111341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932579, 33.569775, 29.370180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328113, -0.612863, 0.718847,
		0.944617, -0.207774, 0.254024,
		-0.006324, 0.762383, 0.647094,
		35.930683, 33.798489, 29.564308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137398, 32.940033, 29.748949>,  <35.935108, 33.264820, 29.111341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137398, 32.940033, 29.748949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.014645, 33.300732, 29.870716>,  <35.940994, 33.517151, 29.943775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.014645, 33.300732, 29.870716>,  <36.137398, 32.940033, 29.748949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014645, 33.300732, 29.870716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492166, -0.424123, 0.760192,
		0.814614, 0.083467, 0.573967,
		-0.306883, 0.901750, 0.304417,
		35.922581, 33.571259, 29.962042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024178, 32.817108, 30.503016>,  <36.137398, 32.940033, 29.748949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024178, 32.817108, 30.503016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.809368, 33.147171, 30.432899>,  <35.680485, 33.345207, 30.390829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.809368, 33.147171, 30.432899>,  <36.024178, 32.817108, 30.503016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809368, 33.147171, 30.432899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629347, -0.253530, 0.734605,
		0.561723, 0.504816, 0.655461,
		-0.537019, 0.825157, -0.175291,
		35.648262, 33.394718, 30.380312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390064, 32.528873, 31.091141>,  <36.024178, 32.817108, 30.503016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390064, 32.528873, 31.091141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.512360, 32.166637, 31.208740>,  <36.585735, 31.949297, 31.279301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.512360, 32.166637, 31.208740>,  <36.390064, 32.528873, 31.091141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512360, 32.166637, 31.208740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767290, 0.051517, -0.639228,
		0.563732, 0.421017, 0.710599,
		0.305734, -0.905588, 0.294000,
		36.604080, 31.894960, 31.296940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078400, 32.601768, 31.223867>,  <36.390064, 32.528873, 31.091141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078400, 32.601768, 31.223867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.016865, 32.211216, 31.163179>,  <36.979942, 31.976885, 31.126766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.016865, 32.211216, 31.163179>,  <37.078400, 32.601768, 31.223867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016865, 32.211216, 31.163179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731052, -0.009168, -0.682260,
		0.664753, -0.215872, 0.715194,
		-0.153837, -0.976379, -0.151720,
		36.970715, 31.918303, 31.117664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683083, 32.374718, 31.162334>,  <37.078400, 32.601768, 31.223867>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683083, 32.374718, 31.162334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.444523, 32.099358, 30.997211>,  <37.301388, 31.934141, 30.898138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.444523, 32.099358, 30.997211>,  <37.683083, 32.374718, 31.162334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444523, 32.099358, 30.997211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628815, -0.081049, -0.773320,
		0.498899, -0.720786, 0.481216,
		-0.596400, -0.688404, -0.412805,
		37.265602, 31.892838, 30.873369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223228, 31.908251, 30.917231>,  <37.683083, 32.374718, 31.162334>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223228, 31.908251, 30.917231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.892632, 31.847824, 30.700310>,  <37.694275, 31.811569, 30.570156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.892632, 31.847824, 30.700310>,  <38.223228, 31.908251, 30.917231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892632, 31.847824, 30.700310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550445, -0.014939, -0.834738,
		0.118000, -0.988411, 0.095501,
		-0.826490, -0.151067, -0.542303,
		37.644684, 31.802504, 30.537619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339245, 31.270645, 30.446745>,  <38.223228, 31.908251, 30.917231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339245, 31.270645, 30.446745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.037640, 31.486113, 30.296381>,  <37.856678, 31.615393, 30.206163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.037640, 31.486113, 30.296381>,  <38.339245, 31.270645, 30.446745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037640, 31.486113, 30.296381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474402, 0.050753, -0.878844,
		-0.454326, -0.840988, -0.293813,
		-0.754010, 0.538668, -0.375908,
		37.811436, 31.647713, 30.183609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301571, 31.131931, 29.784084>,  <38.339245, 31.270645, 30.446745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301571, 31.131931, 29.784084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.064671, 31.452141, 29.747417>,  <37.922531, 31.644266, 29.725418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.064671, 31.452141, 29.747417>,  <38.301571, 31.131931, 29.784084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064671, 31.452141, 29.747417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328011, 0.135619, -0.934888,
		-0.735971, -0.583752, -0.342901,
		-0.592246, 0.800526, -0.091665,
		37.886997, 31.692299, 29.719917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942272, 31.086283, 29.098522>,  <38.301571, 31.131931, 29.784084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942272, 31.086283, 29.098522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.907589, 31.477526, 29.174189>,  <37.886780, 31.712273, 29.219587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.907589, 31.477526, 29.174189>,  <37.942272, 31.086283, 29.098522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907589, 31.477526, 29.174189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229069, 0.204367, -0.951715,
		-0.969541, -0.039187, -0.241775,
		-0.086706, 0.978110, 0.189165,
		37.881577, 31.770958, 29.230938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527626, 31.417568, 28.579206>,  <37.942272, 31.086283, 29.098522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527626, 31.417568, 28.579206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.736553, 31.720779, 28.735451>,  <37.861908, 31.902706, 28.829197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.736553, 31.720779, 28.735451>,  <37.527626, 31.417568, 28.579206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736553, 31.720779, 28.735451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350786, 0.226518, -0.908647,
		-0.777260, 0.611624, -0.147591,
		0.522319, 0.758027, 0.390612,
		37.893250, 31.948187, 28.852634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444099, 32.040184, 28.069233>,  <37.527626, 31.417568, 28.579206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444099, 32.040184, 28.069233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.786919, 32.081219, 28.271204>,  <37.992611, 32.105839, 28.392385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.786919, 32.081219, 28.271204>,  <37.444099, 32.040184, 28.069233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786919, 32.081219, 28.271204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470353, 0.244288, -0.847992,
		-0.210338, 0.964261, 0.161116,
		0.857045, 0.102583, 0.504926,
		38.044033, 32.111992, 28.422682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647217, 32.729015, 27.845020>,  <37.444099, 32.040184, 28.069233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647217, 32.729015, 27.845020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.972897, 32.551445, 27.994694>,  <38.168304, 32.444901, 28.084497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.972897, 32.551445, 27.994694>,  <37.647217, 32.729015, 27.845020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972897, 32.551445, 27.994694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528740, 0.300714, -0.793729,
		0.239835, 0.844097, 0.479562,
		0.814195, -0.443927, 0.374185,
		38.217155, 32.418266, 28.106949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187340, 33.300182, 27.929956>,  <37.647217, 32.729015, 27.845020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187340, 33.300182, 27.929956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.351055, 32.938740, 27.879396>,  <38.449284, 32.721874, 27.849060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.351055, 32.938740, 27.879396>,  <38.187340, 33.300182, 27.929956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351055, 32.938740, 27.879396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659400, 0.388696, -0.643512,
		0.630612, 0.180036, 0.754927,
		0.409293, -0.903605, -0.126400,
		38.473843, 32.667660, 27.841476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895401, 33.395901, 28.043245>,  <38.187340, 33.300182, 27.929956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895401, 33.395901, 28.043245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.896812, 33.059242, 27.827238>,  <38.897659, 32.857246, 27.697634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.896812, 33.059242, 27.827238>,  <38.895401, 33.395901, 28.043245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896812, 33.059242, 27.827238> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634862, 0.419117, -0.649070,
		0.772618, -0.340548, 0.535806,
		0.003526, -0.841646, -0.540018,
		38.897869, 32.806747, 27.665232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663971, 33.234379, 27.891520>,  <38.895401, 33.395901, 28.043245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663971, 33.234379, 27.891520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.441788, 33.033642, 27.626307>,  <39.308475, 32.913200, 27.467178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.441788, 33.033642, 27.626307>,  <39.663971, 33.234379, 27.891520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441788, 33.033642, 27.626307> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542620, 0.385443, -0.746323,
		0.630100, -0.774329, 0.058213,
		-0.555461, -0.501846, -0.663034,
		39.275150, 32.883087, 27.427397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176167, 32.948433, 27.525953>,  <39.663971, 33.234379, 27.891520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176167, 32.948433, 27.525953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.852665, 32.898464, 27.296061>,  <39.658566, 32.868481, 27.158125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.852665, 32.898464, 27.296061>,  <40.176167, 32.948433, 27.525953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852665, 32.898464, 27.296061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518606, 0.309470, -0.797042,
		0.277427, -0.942668, -0.185501,
		-0.808753, -0.124920, -0.574728,
		39.610039, 32.860985, 27.123642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471935, 32.446362, 27.995955>,  <40.176167, 32.948433, 27.525953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471935, 32.446362, 27.995955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.846466, 32.416809, 28.133265>,  <41.071182, 32.399078, 28.215651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.846466, 32.416809, 28.133265>,  <40.471935, 32.446362, 27.995955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.846466, 32.416809, 28.133265> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327655, 0.167678, 0.929799,
		-0.126253, -0.983070, 0.132794,
		0.936324, -0.073880, 0.343277,
		41.127365, 32.394646, 28.236248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460396, 32.095226, 28.698454>,  <40.471935, 32.446362, 27.995955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460396, 32.095226, 28.698454> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.802528, 32.302456, 28.698900>,  <41.007809, 32.426796, 28.699167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.802528, 32.302456, 28.698900>,  <40.460396, 32.095226, 28.698454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802528, 32.302456, 28.698900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001417, 0.000186, 0.999999,
		0.518078, -0.855333, 0.000894,
		0.855332, 0.518079, 0.001116,
		41.059128, 32.457878, 28.699234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.893810, 31.745016, 29.268667>,  <40.460396, 32.095226, 28.698454>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.893810, 31.745016, 29.268667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.010574, 32.116478, 29.177113>,  <41.080631, 32.339355, 29.122181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.010574, 32.116478, 29.177113>,  <40.893810, 31.745016, 29.268667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.010574, 32.116478, 29.177113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038337, 0.250475, 0.967364,
		0.955679, -0.273604, 0.108717,
		0.291905, 0.928657, -0.228884,
		41.098145, 32.395077, 29.108448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.427795, 31.972338, 29.739134>,  <40.893810, 31.745016, 29.268667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.427795, 31.972338, 29.739134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.273254, 32.306866, 29.583544>,  <41.180531, 32.507584, 29.490191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.273254, 32.306866, 29.583544>,  <41.427795, 31.972338, 29.739134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273254, 32.306866, 29.583544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060210, 0.397951, 0.915429,
		0.920384, 0.377098, -0.103395,
		-0.386352, 0.836320, -0.388973,
		41.157349, 32.557762, 29.466852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626740, 32.354870, 30.146090>,  <41.427795, 31.972338, 29.739134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626740, 32.354870, 30.146090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.389034, 32.620747, 29.964968>,  <41.246410, 32.780273, 29.856295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.389034, 32.620747, 29.964968>,  <41.626740, 32.354870, 30.146090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.389034, 32.620747, 29.964968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145710, 0.464708, 0.873393,
		0.790961, 0.585004, -0.179306,
		-0.594264, 0.664693, -0.452807,
		41.210754, 32.820156, 29.829126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.744392, 33.006371, 30.452433>,  <41.626740, 32.354870, 30.146090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.744392, 33.006371, 30.452433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.379150, 32.985142, 30.290731>,  <41.160004, 32.972404, 30.193710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.379150, 32.985142, 30.290731>,  <41.744392, 33.006371, 30.452433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379150, 32.985142, 30.290731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395699, 0.354362, 0.847260,
		0.098284, 0.933601, -0.344572,
		-0.913106, -0.053075, -0.404253,
		41.105217, 32.969219, 30.169455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463379, 33.612823, 30.685499>,  <41.744392, 33.006371, 30.452433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463379, 33.612823, 30.685499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.157352, 33.374374, 30.588085>,  <40.973736, 33.231304, 30.529636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.157352, 33.374374, 30.588085>,  <41.463379, 33.612823, 30.685499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.157352, 33.374374, 30.588085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505465, 0.321617, 0.800667,
		-0.398970, 0.735663, -0.547377,
		-0.765067, -0.596122, -0.243537,
		40.927834, 33.195538, 30.515024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859276, 33.973598, 30.883459>,  <41.463379, 33.612823, 30.685499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.859276, 33.973598, 30.883459> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.728729, 33.595787, 30.898146>,  <40.650402, 33.369099, 30.906958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.728729, 33.595787, 30.898146>,  <40.859276, 33.973598, 30.883459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728729, 33.595787, 30.898146> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680121, 0.261623, 0.684827,
		-0.656445, 0.198534, -0.727780,
		-0.326365, -0.944530, 0.036714,
		40.630821, 33.312428, 30.909161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116764, 34.005489, 30.941389>,  <40.859276, 33.973598, 30.883459>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116764, 34.005489, 30.941389> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.218937, 33.636055, 31.055748>,  <40.280239, 33.414394, 31.124363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.218937, 33.636055, 31.055748>,  <40.116764, 34.005489, 30.941389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218937, 33.636055, 31.055748> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791912, -0.030225, 0.609887,
		-0.554644, -0.382190, -0.739122,
		0.255432, -0.923589, 0.285897,
		40.295567, 33.358978, 31.141518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486721, 33.660679, 31.137955>,  <40.116764, 34.005489, 30.941389>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486721, 33.660679, 31.137955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.760418, 33.408993, 31.285414>,  <39.924637, 33.257980, 31.373888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.760418, 33.408993, 31.285414>,  <39.486721, 33.660679, 31.137955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760418, 33.408993, 31.285414> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550157, -0.113566, 0.827303,
		-0.478689, -0.768887, -0.423876,
		0.684240, -0.629218, 0.368645,
		39.965691, 33.220226, 31.396008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172016, 33.044697, 31.368872>,  <39.486721, 33.660679, 31.137955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172016, 33.044697, 31.368872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.521046, 33.046238, 31.564260>,  <39.730461, 33.047161, 31.681494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.521046, 33.046238, 31.564260>,  <39.172016, 33.044697, 31.368872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521046, 33.046238, 31.564260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484928, -0.113686, 0.867133,
		0.058873, -0.993509, -0.097331,
		0.872570, 0.003853, 0.488474,
		39.782818, 33.047394, 31.710802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218616, 32.501492, 31.893263>,  <39.172016, 33.044697, 31.368872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218616, 32.501492, 31.893263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.481586, 32.774017, 32.022015>,  <39.639370, 32.937534, 32.099266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.481586, 32.774017, 32.022015>,  <39.218616, 32.501492, 31.893263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481586, 32.774017, 32.022015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410877, -0.033947, 0.911059,
		0.631643, -0.731204, 0.257618,
		0.657424, 0.681313, 0.321877,
		39.678814, 32.978413, 32.118576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487709, 32.153873, 32.493237>,  <39.218616, 32.501492, 31.893263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487709, 32.153873, 32.493237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.541023, 32.549183, 32.523048>,  <39.573013, 32.786369, 32.540936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.541023, 32.549183, 32.523048>,  <39.487709, 32.153873, 32.493237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541023, 32.549183, 32.523048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466534, -0.003779, 0.884495,
		0.874402, -0.152664, 0.460558,
		0.133290, 0.988271, 0.074528,
		39.581009, 32.845665, 32.545406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515060, 32.173679, 33.147968>,  <39.487709, 32.153873, 32.493237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515060, 32.173679, 33.147968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.475449, 32.561405, 33.057968>,  <39.451683, 32.794041, 33.003967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.475449, 32.561405, 33.057968>,  <39.515060, 32.173679, 33.147968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475449, 32.561405, 33.057968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296782, 0.187052, 0.936446,
		0.949796, 0.159514, 0.269151,
		-0.099031, 0.969312, -0.225003,
		39.445740, 32.852200, 32.990467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.312729, 34.839081, 28.953129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.200432, 35.095325, 28.667248>,  <41.133053, 35.249073, 28.495718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.200432, 35.095325, 28.667248>,  <41.312729, 34.839081, 28.953129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.200432, 35.095325, 28.667248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555546, -0.498766, -0.665283,
		-0.782656, -0.583825, -0.215863,
		-0.280744, 0.640610, -0.714704,
		41.116207, 35.287510, 28.452837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.152695, 34.330055, 28.344719>,  <41.312729, 34.839081, 28.953129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.152695, 34.330055, 28.344719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.178223, 34.690056, 28.172239>,  <41.193539, 34.906055, 28.068752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.178223, 34.690056, 28.172239>,  <41.152695, 34.330055, 28.344719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.178223, 34.690056, 28.172239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624509, -0.373039, -0.686171,
		-0.778405, -0.225495, -0.585864,
		0.063822, 0.899997, -0.431199,
		41.197369, 34.960056, 28.042879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145092, 34.172371, 27.558334>,  <41.152695, 34.330055, 28.344719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.145092, 34.172371, 27.558334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.306736, 34.529228, 27.639112>,  <41.403725, 34.743343, 27.687580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.306736, 34.529228, 27.639112>,  <41.145092, 34.172371, 27.558334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.306736, 34.529228, 27.639112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709450, -0.166335, -0.684846,
		-0.577386, 0.420026, -0.700146,
		0.404112, 0.892138, 0.201947,
		41.427971, 34.796871, 27.699697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.258762, 34.490402, 26.894764>,  <41.145092, 34.172371, 27.558334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.258762, 34.490402, 26.894764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.488373, 34.682835, 27.159807>,  <41.626141, 34.798294, 27.318832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.488373, 34.682835, 27.159807>,  <41.258762, 34.490402, 26.894764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.488373, 34.682835, 27.159807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774982, -0.057929, -0.629323,
		-0.264372, 0.874759, -0.406084,
		0.574029, 0.481084, 0.662607,
		41.660583, 34.827160, 27.358589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.701515, 34.892670, 26.465593>,  <41.258762, 34.490402, 26.894764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.701515, 34.892670, 26.465593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.916275, 34.938999, 26.799856>,  <42.045132, 34.966797, 27.000414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.916275, 34.938999, 26.799856>,  <41.701515, 34.892670, 26.465593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.916275, 34.938999, 26.799856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841885, -0.137559, -0.521831,
		0.054510, 0.983698, -0.171368,
		0.536897, 0.115828, 0.835659,
		42.077343, 34.973747, 27.050554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.248669, 35.411327, 26.315115>,  <41.701515, 34.892670, 26.465593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.248669, 35.411327, 26.315115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.378788, 35.207790, 26.633928>,  <42.456860, 35.085667, 26.825216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.378788, 35.207790, 26.633928>,  <42.248669, 35.411327, 26.315115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.378788, 35.207790, 26.633928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920929, -0.020841, -0.389172,
		0.214638, 0.860607, 0.461829,
		0.325299, -0.508843, 0.797032,
		42.476379, 35.055138, 26.873037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.840389, 35.757206, 26.557474>,  <42.248669, 35.411327, 26.315115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.840389, 35.757206, 26.557474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.841473, 35.375092, 26.675741>,  <42.842121, 35.145824, 26.746702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.841473, 35.375092, 26.675741>,  <42.840389, 35.757206, 26.557474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.841473, 35.375092, 26.675741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912426, -0.118641, -0.391668,
		0.409233, 0.270833, 0.871308,
		0.002704, -0.955287, 0.295667,
		42.842285, 35.088505, 26.764441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.440697, 35.693905, 26.809631>,  <42.840389, 35.757206, 26.557474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.440697, 35.693905, 26.809631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.339542, 35.309898, 26.761612>,  <43.278851, 35.079494, 26.732801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.339542, 35.309898, 26.761612>,  <43.440697, 35.693905, 26.809631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.339542, 35.309898, 26.761612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882977, -0.178293, -0.434239,
		0.395474, -0.215813, 0.892763,
		-0.252887, -0.960019, -0.120048,
		43.263676, 35.021893, 26.725597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.982567, 35.352486, 27.081390>,  <43.440697, 35.693905, 26.809631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.982567, 35.352486, 27.081390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.807312, 35.105183, 26.820377>,  <43.702160, 34.956802, 26.663771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.807312, 35.105183, 26.820377>,  <43.982567, 35.352486, 27.081390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.807312, 35.105183, 26.820377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842240, -0.028682, -0.538340,
		0.314116, -0.785453, 0.533287,
		-0.438136, -0.618256, -0.652530,
		43.675873, 34.919704, 26.624619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.434135, 34.848511, 26.902330>,  <43.982567, 35.352486, 27.081390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.434135, 34.848511, 26.902330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.172817, 34.871201, 26.600342>,  <44.016026, 34.884815, 26.419149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.172817, 34.871201, 26.600342>,  <44.434135, 34.848511, 26.902330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.172817, 34.871201, 26.600342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740472, -0.159963, -0.652773,
		-0.157749, -0.985496, 0.062555,
		-0.653311, 0.056654, -0.754967,
		43.976826, 34.888218, 26.373850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.791504, 34.431641, 26.449337>,  <44.434135, 34.848511, 26.902330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.791504, 34.431641, 26.449337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.532673, 34.598835, 26.194284>,  <44.377373, 34.699154, 26.041252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.532673, 34.598835, 26.194284>,  <44.791504, 34.431641, 26.449337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.532673, 34.598835, 26.194284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736150, 0.124868, -0.665201,
		-0.198427, -0.899830, -0.388502,
		-0.647079, 0.417989, -0.637632,
		44.338551, 34.724232, 26.002995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.932095, 34.109287, 25.774231>,  <44.791504, 34.431641, 26.449337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.932095, 34.109287, 25.774231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.739216, 34.457916, 25.738775>,  <44.623489, 34.667091, 25.717503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.739216, 34.457916, 25.738775>,  <44.932095, 34.109287, 25.774231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.739216, 34.457916, 25.738775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739525, 0.350709, -0.574549,
		-0.469672, -0.342595, -0.813656,
		-0.482194, 0.871569, -0.088640,
		44.594559, 34.719387, 25.712183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.221245, 34.313644, 25.134714>,  <44.932095, 34.109287, 25.774231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.221245, 34.313644, 25.134714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.006603, 34.611328, 25.293818>,  <44.877819, 34.789936, 25.389278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.006603, 34.611328, 25.293818>,  <45.221245, 34.313644, 25.134714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.006603, 34.611328, 25.293818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605195, 0.667899, -0.433185,
		-0.588040, 0.008270, -0.808790,
		-0.536608, 0.744206, 0.397756,
		44.845619, 34.834591, 25.413145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.154644, 33.611397, 24.618526>,  <45.221245, 34.313644, 25.134714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.154644, 33.611397, 24.618526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.895733, 33.903351, 24.706436>,  <44.740387, 34.078526, 24.759182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.895733, 33.903351, 24.706436>,  <45.154644, 33.611397, 24.618526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.895733, 33.903351, 24.706436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411054, 0.577031, -0.705741,
		-0.641927, -0.366469, -0.673520,
		-0.647275, 0.729887, 0.219773,
		44.701550, 34.122318, 24.772367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.379368, 33.555576, 24.008690>,  <45.154644, 33.611397, 24.618526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.379368, 33.555576, 24.008690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.179630, 33.253582, 23.838678>,  <45.059788, 33.072384, 23.736671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.179630, 33.253582, 23.838678>,  <45.379368, 33.555576, 24.008690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.179630, 33.253582, 23.838678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585526, -0.067517, 0.807837,
		-0.638602, 0.652256, -0.408349,
		-0.499346, -0.754986, -0.425029,
		45.029827, 33.027088, 23.711170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.687199, 33.709946, 24.069218>,  <45.379368, 33.555576, 24.008690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.687199, 33.709946, 24.069218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.671803, 33.313656, 24.017094>,  <44.662563, 33.075882, 23.985819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.671803, 33.313656, 24.017094>,  <44.687199, 33.709946, 24.069218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.671803, 33.313656, 24.017094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763264, -0.055018, 0.643740,
		-0.644939, 0.124239, -0.754068,
		-0.038491, -0.990726, -0.130311,
		44.660255, 33.016438, 23.978001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.966850, 33.561958, 24.008617>,  <44.687199, 33.709946, 24.069218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.966850, 33.561958, 24.008617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.123646, 33.207943, 24.109058>,  <44.217724, 32.995533, 24.169323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.123646, 33.207943, 24.109058>,  <43.966850, 33.561958, 24.008617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.123646, 33.207943, 24.109058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803514, -0.196451, 0.561935,
		-0.448004, -0.422039, -0.788147,
		0.391991, -0.885037, 0.251103,
		44.241241, 32.942432, 24.184389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.379761, 33.108551, 23.991671>,  <43.966850, 33.561958, 24.008617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.379761, 33.108551, 23.991671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.659554, 32.947830, 24.228069>,  <43.827427, 32.851398, 24.369909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.659554, 32.947830, 24.228069>,  <43.379761, 33.108551, 23.991671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.659554, 32.947830, 24.228069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691187, -0.170202, 0.702347,
		-0.181631, -0.899762, -0.396787,
		0.699479, -0.401822, 0.590990,
		43.869396, 32.827290, 24.405369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.106888, 32.465645, 24.297064>,  <43.379761, 33.108551, 23.991671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.106888, 32.465645, 24.297064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.416080, 32.492062, 24.549456>,  <43.601597, 32.507912, 24.700891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.416080, 32.492062, 24.549456>,  <43.106888, 32.465645, 24.297064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.416080, 32.492062, 24.549456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607554, -0.209342, 0.766195,
		0.182692, -0.975610, -0.121693,
		0.772982, 0.066043, 0.630980,
		43.647976, 32.511875, 24.738750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.083054, 31.827105, 24.761213>,  <43.106888, 32.465645, 24.297064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.083054, 31.827105, 24.761213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.298859, 32.112911, 24.939377>,  <43.428341, 32.284397, 25.046274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.298859, 32.112911, 24.939377>,  <43.083054, 31.827105, 24.761213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.298859, 32.112911, 24.939377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508318, -0.145309, 0.848821,
		0.671220, -0.684360, 0.284806,
		0.539515, 0.714518, 0.445407,
		43.460712, 32.327267, 25.073000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.244354, 31.460405, 25.449438>,  <43.083054, 31.827105, 24.761213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.244354, 31.460405, 25.449438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.284184, 31.857046, 25.482443>,  <43.308083, 32.095032, 25.502245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.284184, 31.857046, 25.482443>,  <43.244354, 31.460405, 25.449438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.284184, 31.857046, 25.482443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603772, -0.005700, 0.797136,
		0.790913, -0.129193, 0.598135,
		0.099575, 0.991603, 0.082512,
		43.314056, 32.154526, 25.507196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.351604, 31.484140, 26.148054>,  <43.244354, 31.460405, 25.449438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.351604, 31.484140, 26.148054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.247772, 31.849535, 26.022730>,  <43.185474, 32.068771, 25.947535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.247772, 31.849535, 26.022730>,  <43.351604, 31.484140, 26.148054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.247772, 31.849535, 26.022730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561396, 0.121244, 0.818618,
		0.785782, 0.388388, 0.481354,
		-0.259580, 0.913485, -0.313310,
		43.169899, 32.123581, 25.928738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.618462, 32.012531, 26.729967>,  <43.351604, 31.484140, 26.148054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.618462, 32.012531, 26.729967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.327164, 32.169914, 26.505520>,  <43.152386, 32.264343, 26.370852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.327164, 32.169914, 26.505520>,  <43.618462, 32.012531, 26.729967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.327164, 32.169914, 26.505520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566493, 0.115168, 0.815979,
		0.385673, 0.912102, 0.139019,
		-0.728245, 0.393455, -0.561117,
		43.108688, 32.287952, 26.337185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.339046, 32.485306, 27.176569>,  <43.618462, 32.012531, 26.729967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.339046, 32.485306, 27.176569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.047676, 32.423222, 26.909645>,  <42.872852, 32.385971, 26.749491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.047676, 32.423222, 26.909645>,  <43.339046, 32.485306, 27.176569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.047676, 32.423222, 26.909645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677153, 0.311232, 0.666782,
		0.104197, 0.937574, -0.331811,
		-0.728428, -0.155210, -0.667310,
		42.829147, 32.376659, 26.709452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.917553, 33.056156, 27.292341>,  <43.339046, 32.485306, 27.176569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.917553, 33.056156, 27.292341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.672890, 32.798103, 27.109180>,  <42.526093, 32.643272, 26.999283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.672890, 32.798103, 27.109180>,  <42.917553, 33.056156, 27.292341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.672890, 32.798103, 27.109180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694059, 0.159809, 0.701956,
		-0.379679, 0.747170, -0.545510,
		-0.611658, -0.645135, -0.457904,
		42.489391, 32.604565, 26.971809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.283936, 33.335793, 27.382841>,  <42.917553, 33.056156, 27.292341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.283936, 33.335793, 27.382841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.172977, 32.960854, 27.298529>,  <42.106403, 32.735889, 27.247942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.172977, 32.960854, 27.298529>,  <42.283936, 33.335793, 27.382841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.172977, 32.960854, 27.298529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679582, 0.036353, 0.732698,
		-0.679132, 0.346490, -0.647090,
		-0.277396, -0.937349, -0.210780,
		42.089760, 32.679649, 27.235294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530422, 33.328400, 27.407261>,  <42.283936, 33.335793, 27.382841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530422, 33.328400, 27.407261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.645432, 32.952782, 27.482653>,  <41.714436, 32.727409, 27.527887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.645432, 32.952782, 27.482653>,  <41.530422, 33.328400, 27.407261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.645432, 32.952782, 27.482653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664603, -0.053912, 0.745249,
		-0.689662, -0.339540, -0.639593,
		0.287523, -0.939045, 0.188478,
		41.731689, 32.671066, 27.539196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.925140, 32.952999, 27.363850>,  <41.530422, 33.328400, 27.407261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.925140, 32.952999, 27.363850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.214161, 32.773712, 27.574379>,  <41.387573, 32.666138, 27.700697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.214161, 32.773712, 27.574379>,  <40.925140, 32.952999, 27.363850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.214161, 32.773712, 27.574379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622736, -0.091396, 0.777075,
		-0.300196, -0.889239, -0.345161,
		0.722552, -0.448219, 0.526325,
		41.430927, 32.639248, 27.732277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475155, 32.508369, 26.962635>,  <40.925140, 32.952999, 27.363850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.475155, 32.508369, 26.962635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.125160, 32.636883, 26.817766>,  <39.915161, 32.713989, 26.730844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.125160, 32.636883, 26.817766>,  <40.475155, 32.508369, 26.962635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.125160, 32.636883, 26.817766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420112, 0.132066, -0.897811,
		-0.240622, -0.937729, -0.250532,
		-0.874990, 0.321284, -0.362173,
		39.862663, 32.733269, 26.709114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316895, 32.127243, 26.428682>,  <40.475155, 32.508369, 26.962635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316895, 32.127243, 26.428682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.149696, 32.484024, 26.359747>,  <40.049377, 32.698093, 26.318386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.149696, 32.484024, 26.359747>,  <40.316895, 32.127243, 26.428682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149696, 32.484024, 26.359747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540750, 0.091855, -0.836153,
		-0.729978, -0.442701, -0.520718,
		-0.417996, 0.891952, -0.172339,
		40.024296, 32.751610, 26.308044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068043, 32.158310, 25.712198>,  <40.316895, 32.127243, 26.428682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068043, 32.158310, 25.712198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.110546, 32.535286, 25.839016>,  <40.136047, 32.761471, 25.915108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.110546, 32.535286, 25.839016>,  <40.068043, 32.158310, 25.712198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110546, 32.535286, 25.839016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333577, 0.266586, -0.904245,
		-0.936715, 0.201844, -0.286048,
		0.106260, 0.942439, 0.317046,
		40.142426, 32.818016, 25.934130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114052, 32.476433, 25.007467>,  <40.068043, 32.158310, 25.712198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114052, 32.476433, 25.007467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.174225, 32.803600, 25.229595>,  <40.210331, 32.999901, 25.362873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.174225, 32.803600, 25.229595>,  <40.114052, 32.476433, 25.007467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174225, 32.803600, 25.229595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391667, 0.466443, -0.793113,
		-0.907726, 0.336813, -0.250181,
		0.150436, 0.817917, 0.555321,
		40.219357, 33.048977, 25.396191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931854, 33.127712, 24.598146>,  <40.114052, 32.476433, 25.007467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931854, 33.127712, 24.598146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.208733, 33.222103, 24.870962>,  <40.374859, 33.278736, 25.034651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.208733, 33.222103, 24.870962>,  <39.931854, 33.127712, 24.598146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208733, 33.222103, 24.870962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473202, 0.565151, -0.675784,
		-0.544923, 0.790519, 0.279533,
		0.692199, 0.235975, 0.682039,
		40.416393, 33.292896, 25.075573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024017, 33.858509, 24.606169>,  <39.931854, 33.127712, 24.598146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024017, 33.858509, 24.606169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.359398, 33.707436, 24.763319>,  <40.560627, 33.616791, 24.857609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.359398, 33.707436, 24.763319>,  <40.024017, 33.858509, 24.606169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359398, 33.707436, 24.763319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544199, 0.618704, -0.566615,
		-0.029069, 0.688882, 0.724291,
		0.838452, -0.377687, 0.392874,
		40.610935, 33.594128, 24.881182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470673, 34.506229, 24.564756>,  <40.024017, 33.858509, 24.606169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470673, 34.506229, 24.564756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.689018, 34.175301, 24.617786>,  <40.820026, 33.976746, 24.649605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.689018, 34.175301, 24.617786>,  <40.470673, 34.506229, 24.564756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689018, 34.175301, 24.617786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722140, 0.384294, -0.575180,
		0.424909, 0.409709, 0.807212,
		0.545863, -0.827319, 0.132577,
		40.852776, 33.927105, 24.657560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611198, 35.221905, 24.624239>,  <40.470673, 34.506229, 24.564756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611198, 35.221905, 24.624239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.387348, 35.441574, 24.375971>,  <40.253040, 35.573376, 24.227011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.387348, 35.441574, 24.375971>,  <40.611198, 35.221905, 24.624239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387348, 35.441574, 24.375971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820292, -0.260345, 0.509256,
		0.118083, 0.794120, 0.596178,
		-0.559623, 0.549175, -0.620668,
		40.219460, 35.606327, 24.189770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336887, 35.861069, 24.968163>,  <40.611198, 35.221905, 24.624239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336887, 35.861069, 24.968163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.099823, 35.793125, 24.653227>,  <39.957584, 35.752361, 24.464264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.099823, 35.793125, 24.653227>,  <40.336887, 35.861069, 24.968163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099823, 35.793125, 24.653227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710311, -0.350662, 0.610323,
		-0.379757, 0.920970, 0.087173,
		-0.592657, -0.169854, -0.787342,
		39.922028, 35.742168, 24.417025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753117, 36.257999, 25.040993>,  <40.336887, 35.861069, 24.968163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753117, 36.257999, 25.040993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.657841, 35.934093, 24.826502>,  <39.600674, 35.739750, 24.697807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.657841, 35.934093, 24.826502>,  <39.753117, 36.257999, 25.040993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657841, 35.934093, 24.826502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741788, -0.204703, 0.638629,
		-0.626909, 0.549885, -0.551916,
		-0.238194, -0.809767, -0.536228,
		39.586384, 35.691162, 24.665634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998863, 36.323227, 24.840488>,  <39.753117, 36.257999, 25.040993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998863, 36.323227, 24.840488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.113491, 35.941391, 24.873087>,  <39.182266, 35.712292, 24.892647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.113491, 35.941391, 24.873087>,  <38.998863, 36.323227, 24.840488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113491, 35.941391, 24.873087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587814, -0.108013, 0.801753,
		-0.756541, -0.277661, -0.592073,
		0.286567, -0.954587, 0.081497,
		39.199463, 35.655014, 24.897535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350246, 35.994759, 25.023445>,  <38.998863, 36.323227, 24.840488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350246, 35.994759, 25.023445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.569527, 35.661400, 25.051489>,  <38.701096, 35.461384, 25.068316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.569527, 35.661400, 25.051489>,  <38.350246, 35.994759, 25.023445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569527, 35.661400, 25.051489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646293, -0.368932, 0.667977,
		-0.530828, -0.411499, -0.740872,
		0.548203, -0.833401, 0.070110,
		38.733986, 35.411381, 25.072521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888729, 35.460583, 24.897932>,  <38.350246, 35.994759, 25.023445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888729, 35.460583, 24.897932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.203747, 35.298832, 25.083946>,  <38.392757, 35.201782, 25.195555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.203747, 35.298832, 25.083946>,  <37.888729, 35.460583, 24.897932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203747, 35.298832, 25.083946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615935, -0.540999, 0.572665,
		0.020014, -0.737430, -0.675126,
		0.787543, -0.404372, 0.465037,
		38.440010, 35.177521, 25.223457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793610, 34.739349, 24.876822>,  <37.888729, 35.460583, 24.897932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793610, 34.739349, 24.876822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.038971, 34.814125, 25.183752>,  <38.186188, 34.858990, 25.367910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.038971, 34.814125, 25.183752>,  <37.793610, 34.739349, 24.876822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038971, 34.814125, 25.183752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634703, -0.461496, 0.619817,
		0.469988, -0.867222, -0.164431,
		0.613403, 0.186941, 0.767326,
		38.222992, 34.870209, 25.413950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.158043, 37.567570, 24.355267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.424141, 37.391788, 24.596704>,  <42.583801, 37.286320, 24.741568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.424141, 37.391788, 24.596704>,  <42.158043, 37.567570, 24.355267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.424141, 37.391788, 24.596704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577337, 0.209836, 0.789083,
		-0.473419, -0.873413, -0.114119,
		0.665249, -0.439452, 0.603594,
		42.623714, 37.259953, 24.777782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.835842, 37.335346, 24.895163>,  <42.158043, 37.567570, 24.355267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.835842, 37.335346, 24.895163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.197460, 37.284576, 25.058420>,  <42.414433, 37.254112, 25.156376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.197460, 37.284576, 25.058420>,  <41.835842, 37.335346, 24.895163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.197460, 37.284576, 25.058420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376581, 0.215171, 0.901048,
		-0.202191, -0.968293, 0.146726,
		0.904049, -0.126930, 0.408146,
		42.468674, 37.246498, 25.180864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752312, 36.850372, 25.390474>,  <41.835842, 37.335346, 24.895163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752312, 36.850372, 25.390474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.077873, 37.046482, 25.515179>,  <42.273209, 37.164146, 25.590002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.077873, 37.046482, 25.515179>,  <41.752312, 36.850372, 25.390474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.077873, 37.046482, 25.515179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433326, 0.154790, 0.887845,
		0.387027, -0.857714, 0.338432,
		0.813903, 0.490272, 0.311762,
		42.322044, 37.193565, 25.608707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.838669, 36.619686, 26.121374>,  <41.752312, 36.850372, 25.390474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.838669, 36.619686, 26.121374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.046844, 36.956829, 26.066631>,  <42.171749, 37.159115, 26.033785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.046844, 36.956829, 26.066631>,  <41.838669, 36.619686, 26.121374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.046844, 36.956829, 26.066631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347567, 0.355496, 0.867652,
		0.779960, -0.403996, 0.477965,
		0.520442, 0.842858, -0.136857,
		42.202976, 37.209686, 26.025574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.258781, 36.751755, 26.712870>,  <41.838669, 36.619686, 26.121374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.258781, 36.751755, 26.712870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.251194, 37.107624, 26.530390>,  <42.246643, 37.321148, 26.420902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.251194, 37.107624, 26.530390>,  <42.258781, 36.751755, 26.712870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.251194, 37.107624, 26.530390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204353, 0.443198, 0.872820,
		0.978713, 0.109783, 0.173401,
		-0.018970, 0.889676, -0.456198,
		42.245502, 37.374527, 26.393530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.639263, 37.208694, 27.125782>,  <42.258781, 36.751755, 26.712870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.639263, 37.208694, 27.125782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.418602, 37.454651, 26.900362>,  <42.286205, 37.602226, 26.765110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.418602, 37.454651, 26.900362>,  <42.639263, 37.208694, 27.125782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.418602, 37.454651, 26.900362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247239, 0.524740, 0.814568,
		0.796589, 0.588688, -0.137448,
		-0.551651, 0.614893, -0.563549,
		42.253105, 37.639118, 26.731297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.742085, 37.852093, 27.426517>,  <42.639263, 37.208694, 27.125782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.742085, 37.852093, 27.426517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.405167, 37.883518, 27.213213>,  <42.203014, 37.902374, 27.085230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.405167, 37.883518, 27.213213>,  <42.742085, 37.852093, 27.426517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.405167, 37.883518, 27.213213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414616, 0.537744, 0.734115,
		0.344435, 0.839439, -0.420364,
		-0.842294, 0.078565, -0.533263,
		42.152477, 37.907089, 27.053234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.578392, 38.499714, 27.562550>,  <42.742085, 37.852093, 27.426517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.578392, 38.499714, 27.562550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.238083, 38.338779, 27.427305>,  <42.033897, 38.242218, 27.346159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.238083, 38.338779, 27.427305>,  <42.578392, 38.499714, 27.562550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.238083, 38.338779, 27.427305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506221, 0.454545, 0.732891,
		-0.141182, 0.794679, -0.590384,
		-0.850769, -0.402335, -0.338109,
		41.982853, 38.218079, 27.325872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.062309, 39.068317, 27.470425>,  <42.578392, 38.499714, 27.562550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.062309, 39.068317, 27.470425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.820362, 38.749786, 27.471272>,  <41.675194, 38.558670, 27.471781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.820362, 38.749786, 27.471272>,  <42.062309, 39.068317, 27.470425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.820362, 38.749786, 27.471272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686961, 0.523140, 0.504389,
		-0.402766, 0.303633, -0.863474,
		-0.604867, -0.796324, 0.002119,
		41.638901, 38.510891, 27.471907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.441685, 39.351116, 27.324669>,  <42.062309, 39.068317, 27.470425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.441685, 39.351116, 27.324669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.367691, 38.997707, 27.496792>,  <41.323296, 38.785660, 27.600065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.367691, 38.997707, 27.496792>,  <41.441685, 39.351116, 27.324669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.367691, 38.997707, 27.496792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661954, 0.435657, 0.609935,
		-0.726358, -0.172013, -0.665443,
		-0.184989, -0.883524, 0.430308,
		41.312195, 38.732651, 27.625885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790291, 39.247368, 27.323948>,  <41.441685, 39.351116, 27.324669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790291, 39.247368, 27.323948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.909504, 39.008293, 27.621658>,  <40.981033, 38.864849, 27.800285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.909504, 39.008293, 27.621658>,  <40.790291, 39.247368, 27.323948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909504, 39.008293, 27.621658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722451, 0.368378, 0.585117,
		-0.623891, -0.712089, -0.322009,
		0.298034, -0.597685, 0.744277,
		40.998913, 38.828987, 27.844942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195988, 38.939392, 27.602585>,  <40.790291, 39.247368, 27.323948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195988, 38.939392, 27.602585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.481270, 38.912441, 27.881670>,  <40.652439, 38.896271, 28.049122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.481270, 38.912441, 27.881670>,  <40.195988, 38.939392, 27.602585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481270, 38.912441, 27.881670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674252, 0.206195, 0.709132,
		-0.191642, -0.976189, 0.101631,
		0.713202, -0.067375, 0.697713,
		40.695232, 38.892227, 28.090984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563995, 38.651825, 27.252699>,  <40.195988, 38.939392, 27.602585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563995, 38.651825, 27.252699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.340042, 38.933159, 27.077496>,  <39.205669, 39.101959, 26.972374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.340042, 38.933159, 27.077496>,  <39.563995, 38.651825, 27.252699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340042, 38.933159, 27.077496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557815, -0.070938, -0.826928,
		-0.612680, -0.707310, -0.352614,
		-0.559881, 0.703335, -0.438010,
		39.172077, 39.144161, 26.946093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439049, 38.355923, 26.653915>,  <39.563995, 38.651825, 27.252699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439049, 38.355923, 26.653915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.341301, 38.738045, 26.587372>,  <39.282650, 38.967319, 26.547445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.341301, 38.738045, 26.587372>,  <39.439049, 38.355923, 26.653915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341301, 38.738045, 26.587372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575616, 0.004850, -0.817705,
		-0.780351, -0.295582, -0.551074,
		-0.244371, 0.955305, -0.166357,
		39.267990, 39.024635, 26.537464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222305, 38.365200, 26.090557>,  <39.439049, 38.355923, 26.653915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222305, 38.365200, 26.090557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.363113, 38.733173, 26.159613>,  <39.447598, 38.953957, 26.201046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.363113, 38.733173, 26.159613>,  <39.222305, 38.365200, 26.090557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363113, 38.733173, 26.159613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517320, -0.037511, -0.854970,
		-0.780038, 0.390281, -0.489103,
		0.352025, 0.919932, 0.172640,
		39.468719, 39.009151, 26.211405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260975, 38.702583, 25.421354>,  <39.222305, 38.365200, 26.090557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260975, 38.702583, 25.421354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.465843, 38.962021, 25.646568>,  <39.588764, 39.117683, 25.781696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.465843, 38.962021, 25.646568>,  <39.260975, 38.702583, 25.421354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465843, 38.962021, 25.646568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583785, 0.217941, -0.782111,
		-0.629980, 0.729266, -0.267015,
		0.512173, 0.648593, 0.563033,
		39.619495, 39.156597, 25.815477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347633, 39.308689, 25.013758>,  <39.260975, 38.702583, 25.421354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347633, 39.308689, 25.013758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.637802, 39.332855, 25.288015>,  <39.811905, 39.347355, 25.452570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.637802, 39.332855, 25.288015>,  <39.347633, 39.308689, 25.013758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637802, 39.332855, 25.288015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672089, 0.152762, -0.724542,
		-0.148513, 0.986415, 0.070214,
		0.725425, 0.060414, 0.685645,
		39.855431, 39.350979, 25.493710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599693, 39.983620, 24.984673>,  <39.347633, 39.308689, 25.013758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599693, 39.983620, 24.984673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.872822, 39.724236, 25.119282>,  <40.036701, 39.568604, 25.200047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.872822, 39.724236, 25.119282>,  <39.599693, 39.983620, 24.984673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872822, 39.724236, 25.119282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617010, 0.265201, -0.740923,
		0.391215, 0.713558, 0.581193,
		0.682824, -0.648463, 0.336522,
		40.077667, 39.529697, 25.220238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177013, 40.265961, 24.736979>,  <39.599693, 39.983620, 24.984673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177013, 40.265961, 24.736979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.326813, 39.911785, 24.847061>,  <40.416695, 39.699280, 24.913111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.326813, 39.911785, 24.847061>,  <40.177013, 40.265961, 24.736979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326813, 39.911785, 24.847061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714128, 0.086125, -0.694697,
		0.591413, 0.456697, 0.664574,
		0.374503, -0.885444, 0.275205,
		40.439163, 39.646152, 24.929623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913994, 40.372932, 24.847847>,  <40.177013, 40.265961, 24.736979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913994, 40.372932, 24.847847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.884823, 39.978516, 24.787985>,  <40.867321, 39.741863, 24.752068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.884823, 39.978516, 24.787985>,  <40.913994, 40.372932, 24.847847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884823, 39.978516, 24.787985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758390, 0.042621, -0.650406,
		0.647708, -0.160930, 0.744699,
		-0.072930, -0.986045, -0.149654,
		40.862946, 39.682701, 24.743088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598484, 40.127907, 24.866573>,  <40.913994, 40.372932, 24.847847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.598484, 40.127907, 24.866573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.378101, 39.849632, 24.682198>,  <41.245872, 39.682667, 24.571571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.378101, 39.849632, 24.682198>,  <41.598484, 40.127907, 24.866573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.378101, 39.849632, 24.682198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706357, -0.094609, -0.701505,
		0.444421, -0.712085, 0.543531,
		-0.550953, -0.695690, -0.460940,
		41.212814, 39.640926, 24.543915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.116508, 39.788521, 24.491999>,  <41.598484, 40.127907, 24.866573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.116508, 39.788521, 24.491999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.791477, 39.654507, 24.301228>,  <41.596458, 39.574097, 24.186764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.791477, 39.654507, 24.301228>,  <42.116508, 39.788521, 24.491999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.791477, 39.654507, 24.301228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571817, -0.299811, -0.763635,
		0.112857, -0.893232, 0.435201,
		-0.812582, -0.335037, -0.476929,
		41.547703, 39.553997, 24.158150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191750, 39.145973, 24.411919>,  <42.116508, 39.788521, 24.491999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191750, 39.145973, 24.411919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.944889, 39.258373, 24.117937>,  <41.796772, 39.325813, 23.941547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.944889, 39.258373, 24.117937>,  <42.191750, 39.145973, 24.411919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.944889, 39.258373, 24.117937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652603, -0.339025, -0.677622,
		-0.439580, -0.897832, 0.025850,
		-0.617154, 0.280999, -0.734956,
		41.759743, 39.342674, 23.897449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554710, 38.896568, 23.834211>,  <42.191750, 39.145973, 24.411919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.554710, 38.896568, 23.834211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.262119, 39.105518, 23.658907>,  <42.086567, 39.230888, 23.553724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.262119, 39.105518, 23.658907>,  <42.554710, 38.896568, 23.834211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.262119, 39.105518, 23.658907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493433, -0.038082, -0.868949,
		-0.470604, -0.851867, -0.229899,
		-0.731474, 0.522371, -0.438261,
		42.042675, 39.262230, 23.527428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.268032, 38.411240, 23.417101>,  <42.554710, 38.896568, 23.834211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.268032, 38.411240, 23.417101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.241226, 38.797195, 23.315510>,  <42.225143, 39.028767, 23.254555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.241226, 38.797195, 23.315510>,  <42.268032, 38.411240, 23.417101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.241226, 38.797195, 23.315510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411337, -0.205192, -0.888087,
		-0.909016, -0.163989, -0.383141,
		-0.067019, 0.964885, -0.253977,
		42.221119, 39.086662, 23.239317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.846695, 37.927540, 22.960011>,  <42.268032, 38.411240, 23.417101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.846695, 37.927540, 22.960011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.848000, 37.791420, 22.583887>,  <41.848782, 37.709747, 22.358213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.848000, 37.791420, 22.583887>,  <41.846695, 37.927540, 22.960011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.848000, 37.791420, 22.583887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583533, -0.764265, 0.274569,
		-0.812083, 0.547807, -0.201069,
		0.003259, -0.340303, -0.940310,
		41.848976, 37.689327, 22.301794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143387, 37.915260, 22.720650>,  <41.846695, 37.927540, 22.960011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.143387, 37.915260, 22.720650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.349800, 37.634876, 22.523727>,  <41.473648, 37.466644, 22.405573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.349800, 37.634876, 22.523727>,  <41.143387, 37.915260, 22.720650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349800, 37.634876, 22.523727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613037, -0.703637, 0.359278,
		-0.598245, 0.116402, -0.792814,
		0.516032, -0.700960, -0.492306,
		41.504608, 37.424587, 22.376036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609898, 37.489098, 22.446177>,  <41.143387, 37.915260, 22.720650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.609898, 37.489098, 22.446177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.930885, 37.250496, 22.452175>,  <41.123478, 37.107334, 22.455774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.930885, 37.250496, 22.452175>,  <40.609898, 37.489098, 22.446177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.930885, 37.250496, 22.452175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537668, -0.711961, 0.451691,
		-0.258757, -0.370533, -0.892048,
		0.802470, -0.596504, 0.014999,
		41.171627, 37.071545, 22.456675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489223, 36.815647, 22.033409>,  <40.609898, 37.489098, 22.446177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489223, 36.815647, 22.033409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.752678, 36.771202, 22.331095>,  <40.910751, 36.744534, 22.509706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.752678, 36.771202, 22.331095>,  <40.489223, 36.815647, 22.033409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.752678, 36.771202, 22.331095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591078, -0.688444, 0.420323,
		0.465645, -0.716728, -0.519111,
		0.658637, -0.111114, 0.744212,
		40.950268, 36.737869, 22.554358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295242, 36.255623, 22.312197>,  <40.489223, 36.815647, 22.033409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295242, 36.255623, 22.312197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.569984, 36.326443, 22.594158>,  <40.734829, 36.368935, 22.763334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.569984, 36.326443, 22.594158>,  <40.295242, 36.255623, 22.312197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569984, 36.326443, 22.594158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469166, -0.632723, 0.616072,
		0.555082, -0.753867, -0.351523,
		0.686854, 0.177047, 0.704902,
		40.776039, 36.379559, 22.805628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321014, 35.660614, 22.633167>,  <40.295242, 36.255623, 22.312197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321014, 35.660614, 22.633167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.511013, 35.899010, 22.892141>,  <40.625011, 36.042046, 23.047525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.511013, 35.899010, 22.892141>,  <40.321014, 35.660614, 22.633167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511013, 35.899010, 22.892141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480937, -0.440316, 0.758170,
		0.736939, -0.671504, 0.077485,
		0.474996, 0.595990, 0.647437,
		40.653511, 36.077808, 23.086372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773720, 35.223297, 23.102764>,  <40.321014, 35.660614, 22.633167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773720, 35.223297, 23.102764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.707405, 35.574997, 23.281399>,  <40.667614, 35.786015, 23.388580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.707405, 35.574997, 23.281399>,  <40.773720, 35.223297, 23.102764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.707405, 35.574997, 23.281399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405920, -0.473557, 0.781648,
		0.898745, -0.051690, 0.435414,
		-0.165790, 0.879245, 0.446589,
		40.657669, 35.838772, 23.415375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001053, 35.133362, 23.791027>,  <40.773720, 35.223297, 23.102764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001053, 35.133362, 23.791027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.730236, 35.427700, 23.795858>,  <40.567745, 35.604305, 23.798758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.730236, 35.427700, 23.795858>,  <41.001053, 35.133362, 23.791027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.730236, 35.427700, 23.795858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522173, -0.491878, 0.696701,
		0.518607, 0.465387, 0.717260,
		-0.677040, 0.735848, 0.012079,
		40.527122, 35.648453, 23.799482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243923, 34.760315, 24.443247>,  <41.001053, 35.133362, 23.791027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.243923, 34.760315, 24.443247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.234219, 34.361786, 24.410366>,  <41.228397, 34.122669, 24.390638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.234219, 34.361786, 24.410366>,  <41.243923, 34.760315, 24.443247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.234219, 34.361786, 24.410366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590500, 0.052067, -0.805356,
		0.806673, -0.068075, 0.587065,
		-0.024258, -0.996320, -0.082200,
		41.226940, 34.062889, 24.385706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920078, 34.560863, 24.228788>,  <41.243923, 34.760315, 24.443247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920078, 34.560863, 24.228788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.715427, 34.230495, 24.134054>,  <41.592636, 34.032276, 24.077213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.715427, 34.230495, 24.134054>,  <41.920078, 34.560863, 24.228788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.715427, 34.230495, 24.134054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628319, -0.171638, -0.758786,
		0.586048, -0.537023, 0.606757,
		-0.511628, -0.825922, -0.236834,
		41.561939, 33.982719, 24.063004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.343113, 34.045773, 24.174480>,  <41.920078, 34.560863, 24.228788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.343113, 34.045773, 24.174480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.038673, 33.866459, 23.986965>,  <41.856010, 33.758869, 23.874456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.038673, 33.866459, 23.986965>,  <42.343113, 34.045773, 24.174480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.038673, 33.866459, 23.986965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620540, -0.292839, -0.727445,
		0.188823, -0.844562, 0.501059,
		-0.761102, -0.448285, -0.468790,
		41.810341, 33.731972, 23.846329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.618332, 33.463261, 23.881113>,  <42.343113, 34.045773, 24.174480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.618332, 33.463261, 23.881113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.272442, 33.502178, 23.684021>,  <42.064907, 33.525528, 23.565765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.272442, 33.502178, 23.684021>,  <42.618332, 33.463261, 23.881113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.272442, 33.502178, 23.684021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427411, -0.372661, -0.823677,
		-0.263758, -0.922853, 0.280666,
		-0.864726, 0.097292, -0.492730,
		42.013023, 33.531368, 23.536201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.478699, 32.857769, 23.516172>,  <42.618332, 33.463261, 23.881113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.478699, 32.857769, 23.516172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.302567, 33.160526, 23.323002>,  <42.196888, 33.342182, 23.207100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.302567, 33.160526, 23.323002>,  <42.478699, 32.857769, 23.516172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.302567, 33.160526, 23.323002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568618, -0.181161, -0.802405,
		-0.694823, -0.627926, -0.350613,
		-0.440334, 0.756895, -0.482925,
		42.170467, 33.387596, 23.178123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264271, 32.616886, 22.807899>,  <42.478699, 32.857769, 23.516172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.264271, 32.616886, 22.807899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.273533, 33.015469, 22.775551>,  <42.279091, 33.254620, 22.756142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.273533, 33.015469, 22.775551>,  <42.264271, 32.616886, 22.807899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.273533, 33.015469, 22.775551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480457, -0.082033, -0.873174,
		-0.876713, -0.018634, -0.480654,
		0.023158, 0.996455, -0.080872,
		42.280479, 33.314404, 22.751289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215332, 32.795864, 22.127308>,  <42.264271, 32.616886, 22.807899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.215332, 32.795864, 22.127308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.371567, 33.138092, 22.263216>,  <42.465309, 33.343430, 22.344761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.371567, 33.138092, 22.263216>,  <42.215332, 32.795864, 22.127308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.371567, 33.138092, 22.263216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408761, 0.169519, -0.896760,
		-0.824837, 0.489147, -0.283511,
		0.390587, 0.855569, 0.339769,
		42.488743, 33.394764, 22.365147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.001301, 33.278519, 21.724371>,  <42.215332, 32.795864, 22.127308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.001301, 33.278519, 21.724371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.335190, 33.397251, 21.909901>,  <42.535522, 33.468491, 22.021219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.335190, 33.397251, 21.909901>,  <42.001301, 33.278519, 21.724371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.335190, 33.397251, 21.909901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515462, -0.124808, -0.847775,
		-0.193755, 0.946739, -0.257184,
		0.834720, 0.296829, 0.463826,
		42.585606, 33.486301, 22.049049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.319981, 33.570827, 21.188183>,  <42.001301, 33.278519, 21.724371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.319981, 33.570827, 21.188183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.599731, 33.533806, 21.471676>,  <42.767582, 33.511593, 21.641771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.599731, 33.533806, 21.471676>,  <42.319981, 33.570827, 21.188183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599731, 33.533806, 21.471676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713748, 0.037881, -0.699378,
		0.037881, 0.994987, 0.092551,
		0.699378, -0.092551, 0.708735,
		42.809544, 33.506039, 21.684296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.776413, 32.448486, 35.290741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.128414, 32.428944, 35.479725>,  <34.339615, 32.417217, 35.593113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.128414, 32.428944, 35.479725>,  <33.776413, 32.448486, 35.290741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128414, 32.428944, 35.479725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474951, 0.080480, -0.876325,
		0.004787, 0.995558, 0.094025,
		0.879999, -0.048852, 0.472456,
		34.392414, 32.414288, 35.621460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252014, 33.014614, 35.136166>,  <33.776413, 32.448486, 35.290741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252014, 33.014614, 35.136166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.513233, 32.720848, 35.210091>,  <34.669964, 32.544586, 35.254444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.513233, 32.720848, 35.210091>,  <34.252014, 33.014614, 35.136166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513233, 32.720848, 35.210091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493505, 0.227585, -0.839439,
		0.574440, 0.639400, 0.511064,
		0.653048, -0.734420, 0.184813,
		34.709148, 32.500523, 35.265533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034382, 33.285015, 34.883438>,  <34.252014, 33.014614, 35.136166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034382, 33.285015, 34.883438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.048874, 32.886208, 34.910675>,  <35.057568, 32.646923, 34.927017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.048874, 32.886208, 34.910675>,  <35.034382, 33.285015, 34.883438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048874, 32.886208, 34.910675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524007, -0.039066, -0.850818,
		0.850943, 0.066504, 0.521031,
		0.036228, -0.997021, 0.068092,
		35.059742, 32.587101, 34.931103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734303, 33.153862, 34.653530>,  <35.034382, 33.285015, 34.883438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734303, 33.153862, 34.653530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.522930, 32.814346, 34.646427>,  <35.396107, 32.610638, 34.642166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.522930, 32.814346, 34.646427>,  <35.734303, 33.153862, 34.653530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522930, 32.814346, 34.646427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446798, -0.260252, -0.855944,
		0.721895, -0.460244, 0.516763,
		-0.528432, -0.848790, -0.017762,
		35.364399, 32.559708, 34.641098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187771, 32.591648, 34.480324>,  <35.734303, 33.153862, 34.653530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187771, 32.591648, 34.480324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.826233, 32.462475, 34.368050>,  <35.609310, 32.384972, 34.300686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.826233, 32.462475, 34.368050>,  <36.187771, 32.591648, 34.480324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826233, 32.462475, 34.368050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383071, -0.318516, -0.867067,
		0.190599, -0.891214, 0.411593,
		-0.903841, -0.322931, -0.280690,
		35.555080, 32.365597, 34.283844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333549, 31.949551, 34.159946>,  <36.187771, 32.591648, 34.480324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333549, 31.949551, 34.159946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.955608, 32.016926, 34.047607>,  <35.728844, 32.057350, 33.980206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.955608, 32.016926, 34.047607>,  <36.333549, 31.949551, 34.159946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955608, 32.016926, 34.047607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243362, -0.212703, -0.946326,
		-0.219147, -0.962487, 0.159979,
		-0.944854, 0.168451, -0.280846,
		35.672150, 32.067459, 33.963356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117172, 31.367970, 33.750179>,  <36.333549, 31.949551, 34.159946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117172, 31.367970, 33.750179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.900017, 31.689615, 33.653297>,  <35.769722, 31.882603, 33.595169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.900017, 31.689615, 33.653297>,  <36.117172, 31.367970, 33.750179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900017, 31.689615, 33.653297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251240, -0.119690, -0.960496,
		-0.801341, -0.582298, -0.137047,
		-0.542892, 0.804116, -0.242209,
		35.737148, 31.930851, 33.580635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925331, 31.183895, 33.185200>,  <36.117172, 31.367970, 33.750179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925331, 31.183895, 33.185200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.865833, 31.579182, 33.170773>,  <35.830135, 31.816355, 33.162117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.865833, 31.579182, 33.170773>,  <35.925331, 31.183895, 33.185200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865833, 31.579182, 33.170773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243981, 0.001329, -0.969779,
		-0.958305, -0.153050, -0.241304,
		-0.148745, 0.988218, -0.036068,
		35.821209, 31.875647, 33.159954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446033, 31.192255, 32.652733>,  <35.925331, 31.183895, 33.185200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446033, 31.192255, 32.652733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.612041, 31.555319, 32.677753>,  <35.711647, 31.773157, 32.692764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.612041, 31.555319, 32.677753>,  <35.446033, 31.192255, 32.652733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612041, 31.555319, 32.677753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350053, -0.095846, -0.931814,
		-0.839775, 0.408617, -0.357507,
		0.415020, 0.907660, 0.062549,
		35.736549, 31.827618, 32.696518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273705, 31.430824, 32.124550>,  <35.446033, 31.192255, 32.652733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273705, 31.430824, 32.124550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.595303, 31.642639, 32.232754>,  <35.788261, 31.769728, 32.297676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.595303, 31.642639, 32.232754>,  <35.273705, 31.430824, 32.124550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595303, 31.642639, 32.232754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313128, 0.009708, -0.949661,
		-0.505508, 0.848230, -0.158008,
		0.803997, 0.529539, 0.270512,
		35.836502, 31.801500, 32.313908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371197, 31.761379, 31.538620>,  <35.273705, 31.430824, 32.124550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371197, 31.761379, 31.538620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.722412, 31.808083, 31.724276>,  <35.933140, 31.836105, 31.835669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.722412, 31.808083, 31.724276>,  <35.371197, 31.761379, 31.538620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722412, 31.808083, 31.724276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461735, 0.048499, -0.885691,
		-0.125923, 0.991975, -0.011328,
		0.878034, 0.116760, 0.464137,
		35.985821, 31.843111, 31.863518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736290, 32.215836, 31.163097>,  <35.371197, 31.761379, 31.538620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736290, 32.215836, 31.163097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.016010, 32.034355, 31.384052>,  <36.183842, 31.925467, 31.516626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.016010, 32.034355, 31.384052>,  <35.736290, 32.215836, 31.163097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016010, 32.034355, 31.384052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541167, -0.168860, -0.823787,
		0.467029, 0.875009, 0.127444,
		0.699301, -0.453701, 0.552389,
		36.225800, 31.898245, 31.549768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789612, 33.067974, 31.177197>,  <35.736290, 32.215836, 31.163097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789612, 33.067974, 31.177197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.553768, 33.217270, 30.890684>,  <35.412262, 33.306847, 30.718777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.553768, 33.217270, 30.890684>,  <35.789612, 33.067974, 31.177197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553768, 33.217270, 30.890684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782598, -0.044658, 0.620924,
		0.199764, 0.926660, 0.318426,
		-0.589606, 0.373238, -0.716281,
		35.376884, 33.329243, 30.675800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386711, 33.610378, 31.500399>,  <35.789612, 33.067974, 31.177197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386711, 33.610378, 31.500399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.156910, 33.541298, 31.180368>,  <35.019028, 33.499851, 30.988350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.156910, 33.541298, 31.180368>,  <35.386711, 33.610378, 31.500399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156910, 33.541298, 31.180368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818423, 0.134795, 0.558582,
		0.011379, 0.975707, -0.218781,
		-0.574503, -0.172699, -0.800076,
		34.984558, 33.489487, 30.940346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898975, 34.155064, 31.524549>,  <35.386711, 33.610378, 31.500399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898975, 34.155064, 31.524549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.749813, 33.853882, 31.307661>,  <34.660316, 33.673172, 31.177528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.749813, 33.853882, 31.307661>,  <34.898975, 34.155064, 31.524549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749813, 33.853882, 31.307661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920141, 0.224812, 0.320626,
		-0.119518, 0.618483, -0.776656,
		-0.372903, -0.752953, -0.542223,
		34.637943, 33.627995, 31.144995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199589, 34.338608, 31.429846>,  <34.898975, 34.155064, 31.524549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199589, 34.338608, 31.429846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.192520, 33.959572, 31.302250>,  <34.188278, 33.732151, 31.225693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.192520, 33.959572, 31.302250>,  <34.199589, 34.338608, 31.429846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192520, 33.959572, 31.302250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957855, -0.075442, 0.277169,
		-0.286708, 0.310444, -0.906324,
		-0.017671, -0.947594, -0.318990,
		34.187218, 33.675293, 31.206553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687588, 34.354191, 31.041491>,  <34.199589, 34.338608, 31.429846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687588, 34.354191, 31.041491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.750877, 33.973999, 31.148485>,  <33.788853, 33.745884, 31.212683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.750877, 33.973999, 31.148485>,  <33.687588, 34.354191, 31.041491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750877, 33.973999, 31.148485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944046, -0.066230, 0.323096,
		-0.289381, -0.303641, -0.907778,
		0.158227, -0.950482, 0.267486,
		33.798344, 33.688854, 31.228731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158665, 33.984135, 30.762609>,  <33.687588, 34.354191, 31.041491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158665, 33.984135, 30.762609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.316177, 33.788990, 31.074232>,  <33.410683, 33.671902, 31.261206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.316177, 33.788990, 31.074232>,  <33.158665, 33.984135, 30.762609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316177, 33.788990, 31.074232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883007, 0.034736, 0.468073,
		-0.255418, -0.872227, -0.417111,
		0.393778, -0.487866, 0.779055,
		33.434311, 33.642632, 31.307949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765106, 33.345234, 30.811646>,  <33.158665, 33.984135, 30.762609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765106, 33.345234, 30.811646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.948002, 33.405094, 31.162312>,  <33.057739, 33.441010, 31.372711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.948002, 33.405094, 31.162312>,  <32.765106, 33.345234, 30.811646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948002, 33.405094, 31.162312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886720, 0.001045, 0.462305,
		0.068271, -0.988737, 0.133183,
		0.457238, 0.149658, 0.876662,
		33.085175, 33.449989, 31.425310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329662, 32.985088, 31.301472>,  <32.765106, 33.345234, 30.811646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329662, 32.985088, 31.301472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.535759, 33.260162, 31.506065>,  <32.659416, 33.425205, 31.628822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.535759, 33.260162, 31.506065>,  <32.329662, 32.985088, 31.301472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535759, 33.260162, 31.506065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799055, 0.169653, 0.576827,
		0.309900, -0.705910, 0.636909,
		0.515241, 0.687684, 0.511485,
		32.690331, 33.466469, 31.659512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159050, 32.816177, 31.903833>,  <32.329662, 32.985088, 31.301472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159050, 32.816177, 31.903833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.309662, 33.180347, 31.972357>,  <32.400028, 33.398849, 32.013470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.309662, 33.180347, 31.972357>,  <32.159050, 32.816177, 31.903833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309662, 33.180347, 31.972357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760988, 0.198504, 0.617652,
		0.528322, -0.362928, 0.767567,
		0.376529, 0.910428, 0.171310,
		32.422619, 33.453476, 32.023750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154987, 32.860699, 32.678635>,  <32.159050, 32.816177, 31.903833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154987, 32.860699, 32.678635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.191906, 33.219936, 32.506630>,  <32.214058, 33.435478, 32.403427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.191906, 33.219936, 32.506630>,  <32.154987, 32.860699, 32.678635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191906, 33.219936, 32.506630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689772, 0.369114, 0.622871,
		0.718120, 0.239121, 0.653548,
		0.092292, 0.898096, -0.430007,
		32.219593, 33.489365, 32.377628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182568, 33.355698, 33.208248>,  <32.154987, 32.860699, 32.678635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182568, 33.355698, 33.208248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.073761, 33.599804, 32.910633>,  <32.008476, 33.746269, 32.732063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.073761, 33.599804, 32.910633>,  <32.182568, 33.355698, 33.208248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073761, 33.599804, 32.910633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781700, 0.310791, 0.540698,
		0.561208, 0.728687, 0.392506,
		-0.272012, 0.610266, -0.744033,
		31.992157, 33.782883, 32.687424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990831, 33.937851, 33.568008>,  <32.182568, 33.355698, 33.208248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990831, 33.937851, 33.568008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.822784, 33.986404, 33.208282>,  <31.721956, 34.015537, 32.992447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.822784, 33.986404, 33.208282>,  <31.990831, 33.937851, 33.568008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822784, 33.986404, 33.208282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884503, 0.166772, 0.435708,
		0.202867, 0.978496, 0.037297,
		-0.420119, 0.121380, -0.899315,
		31.696749, 34.022820, 32.938488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703445, 34.591671, 33.463192>,  <31.990831, 33.937851, 33.568008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703445, 34.591671, 33.463192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.471394, 34.381474, 33.214256>,  <31.332163, 34.255356, 33.064896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.471394, 34.381474, 33.214256>,  <31.703445, 34.591671, 33.463192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471394, 34.381474, 33.214256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812684, 0.424778, 0.398886,
		0.054747, 0.737172, -0.673483,
		-0.580128, -0.525491, -0.622343,
		31.297356, 34.223827, 33.027554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294500, 35.002621, 33.154644>,  <31.703445, 34.591671, 33.463192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294500, 35.002621, 33.154644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.119455, 34.643257, 33.139942>,  <31.014429, 34.427639, 33.131123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.119455, 34.643257, 33.139942>,  <31.294500, 35.002621, 33.154644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119455, 34.643257, 33.139942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850481, 0.400306, 0.341230,
		-0.291852, 0.180586, -0.939261,
		-0.437613, -0.898412, -0.036755,
		30.988171, 34.373734, 33.128918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.889795, 35.574051, 33.440094>,  <31.294500, 35.002621, 33.154644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.889795, 35.574051, 33.440094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.915413, 35.892502, 33.680790>,  <30.930784, 36.083572, 33.825207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.915413, 35.892502, 33.680790>,  <30.889795, 35.574051, 33.440094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915413, 35.892502, 33.680790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409471, 0.528916, -0.743358,
		-0.910072, 0.294001, -0.292116,
		0.064044, 0.796123, 0.601737,
		30.934626, 36.131340, 33.861313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.641689, 36.110088, 32.889313>,  <30.889795, 35.574051, 33.440094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.641689, 36.110088, 32.889313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.846729, 36.208481, 33.218369>,  <30.969753, 36.267517, 33.415802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.846729, 36.208481, 33.218369>,  <30.641689, 36.110088, 32.889313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846729, 36.208481, 33.218369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485671, 0.707027, -0.514039,
		-0.708070, 0.663029, 0.242959,
		0.512601, 0.245977, 0.822639,
		31.000509, 36.282272, 33.465160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687017, 36.867771, 32.865204>,  <30.641689, 36.110088, 32.889313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687017, 36.867771, 32.865204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.973410, 36.675472, 33.067692>,  <31.145245, 36.560093, 33.189182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.973410, 36.675472, 33.067692>,  <30.687017, 36.867771, 32.865204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973410, 36.675472, 33.067692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689557, 0.600216, -0.405281,
		-0.109002, 0.639238, 0.761244,
		0.715982, -0.480745, 0.506216,
		31.188204, 36.531250, 33.219555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101952, 37.393028, 33.157883>,  <30.687017, 36.867771, 32.865204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101952, 37.393028, 33.157883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.314539, 37.055981, 33.123154>,  <31.442091, 36.853752, 33.102318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.314539, 37.055981, 33.123154>,  <31.101952, 37.393028, 33.157883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.314539, 37.055981, 33.123154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703521, 0.496166, -0.508801,
		0.471803, 0.209330, 0.856495,
		0.531471, -0.842615, -0.086824,
		31.473980, 36.803196, 33.097107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965046, 37.488552, 33.290012>,  <31.101952, 37.393028, 33.157883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965046, 37.488552, 33.290012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.881687, 37.154957, 33.085644>,  <31.831671, 36.954800, 32.963024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.881687, 37.154957, 33.085644>,  <31.965046, 37.488552, 33.290012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881687, 37.154957, 33.085644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780221, 0.173242, -0.601034,
		0.589767, -0.523883, 0.614591,
		-0.208399, -0.833987, -0.510917,
		31.819168, 36.904762, 32.932369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559628, 37.137501, 33.159451>,  <31.965046, 37.488552, 33.290012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559628, 37.137501, 33.159451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.338360, 36.967201, 32.873028>,  <32.205601, 36.865021, 32.701172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.338360, 36.967201, 32.873028>,  <32.559628, 37.137501, 33.159451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338360, 36.967201, 32.873028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752634, 0.113076, -0.648657,
		0.357135, -0.897748, 0.257884,
		-0.553170, -0.425750, -0.716058,
		32.172409, 36.839478, 32.658211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018005, 36.654087, 32.815720>,  <32.559628, 37.137501, 33.159451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018005, 36.654087, 32.815720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.728573, 36.691692, 32.542198>,  <32.554913, 36.714256, 32.378086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.728573, 36.691692, 32.542198>,  <33.018005, 36.654087, 32.815720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728573, 36.691692, 32.542198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681412, 0.255207, -0.685964,
		0.110023, -0.962305, -0.248725,
		-0.723583, 0.094012, -0.683805,
		32.511497, 36.719894, 32.337055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113708, 36.218994, 32.313282>,  <33.018005, 36.654087, 32.815720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113708, 36.218994, 32.313282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.911663, 36.523483, 32.150600>,  <32.790436, 36.706177, 32.052990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.911663, 36.523483, 32.150600>,  <33.113708, 36.218994, 32.313282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911663, 36.523483, 32.150600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742414, 0.142934, -0.654516,
		-0.440098, -0.632547, -0.637337,
		-0.505109, 0.761219, -0.406707,
		32.760132, 36.751850, 32.028587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083527, 36.066936, 31.614777>,  <33.113708, 36.218994, 32.313282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083527, 36.066936, 31.614777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.998901, 36.457336, 31.635448>,  <32.948124, 36.691574, 31.647852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.998901, 36.457336, 31.635448>,  <33.083527, 36.066936, 31.614777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998901, 36.457336, 31.635448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793804, 0.202439, -0.573493,
		-0.570190, -0.080306, -0.817578,
		-0.211565, 0.975997, 0.051681,
		32.935432, 36.750137, 31.650953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252510, 36.382427, 30.936440>,  <33.083527, 36.066936, 31.614777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252510, 36.382427, 30.936440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.213161, 36.715340, 31.154661>,  <33.189552, 36.915089, 31.285593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.213161, 36.715340, 31.154661>,  <33.252510, 36.382427, 30.936440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213161, 36.715340, 31.154661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829864, 0.371168, -0.416606,
		-0.549225, 0.411752, -0.727195,
		-0.098373, 0.832283, 0.545553,
		33.183651, 36.965023, 31.318327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248363, 36.845581, 30.434198>,  <33.252510, 36.382427, 30.936440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248363, 36.845581, 30.434198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.379433, 37.021179, 30.768843>,  <33.458073, 37.126537, 30.969629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.379433, 37.021179, 30.768843>,  <33.248363, 36.845581, 30.434198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379433, 37.021179, 30.768843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785102, 0.366087, -0.499595,
		-0.525592, 0.820525, -0.224702,
		0.327670, 0.438997, 0.836609,
		33.477734, 37.152878, 31.019825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400780, 37.441727, 30.131598>,  <33.248363, 36.845581, 30.434198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400780, 37.441727, 30.131598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.580173, 37.433056, 30.489008>,  <33.687809, 37.427853, 30.703455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.580173, 37.433056, 30.489008>,  <33.400780, 37.441727, 30.131598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580173, 37.433056, 30.489008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797799, 0.460419, -0.389270,
		-0.402959, 0.887437, 0.223786,
		0.448488, -0.021677, 0.893526,
		33.714722, 37.426552, 30.757067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764271, 38.036049, 30.066732>,  <33.400780, 37.441727, 30.131598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764271, 38.036049, 30.066732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.940762, 37.880932, 30.390446>,  <34.046654, 37.787861, 30.584673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.940762, 37.880932, 30.390446>,  <33.764271, 38.036049, 30.066732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940762, 37.880932, 30.390446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876409, 0.380107, -0.295680,
		-0.192951, 0.839723, 0.507577,
		0.441222, -0.387793, 0.809283,
		34.073128, 37.764595, 30.633230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204891, 38.462471, 30.351772>,  <33.764271, 38.036049, 30.066732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204891, 38.462471, 30.351772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.339016, 38.100895, 30.457945>,  <34.419491, 37.883949, 30.521648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.339016, 38.100895, 30.457945>,  <34.204891, 38.462471, 30.351772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339016, 38.100895, 30.457945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866548, 0.185366, -0.463395,
		0.369680, 0.385390, 0.845465,
		0.335309, -0.903943, 0.265433,
		34.439610, 37.829712, 30.537575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820934, 38.561619, 30.501991>,  <34.204891, 38.462471, 30.351772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820934, 38.561619, 30.501991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.823410, 38.166687, 30.438572>,  <34.824894, 37.929726, 30.400520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.823410, 38.166687, 30.438572>,  <34.820934, 38.561619, 30.501991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823410, 38.166687, 30.438572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917790, 0.068553, -0.391104,
		0.397018, -0.143094, 0.906587,
		0.006185, -0.987332, -0.158547,
		34.825264, 37.870487, 30.391008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522480, 38.297611, 30.750120>,  <34.820934, 38.561619, 30.501991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522480, 38.297611, 30.750120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.409946, 38.021008, 30.483988>,  <35.342426, 37.855045, 30.324308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.409946, 38.021008, 30.483988>,  <35.522480, 38.297611, 30.750120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409946, 38.021008, 30.483988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836810, 0.162560, -0.522803,
		0.469679, -0.703839, 0.532928,
		-0.281336, -0.691509, -0.665331,
		35.325546, 37.813553, 30.284389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095886, 37.994362, 30.668781>,  <35.522480, 38.297611, 30.750120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095886, 37.994362, 30.668781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.881294, 37.905861, 30.343023>,  <35.752537, 37.852760, 30.147570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.881294, 37.905861, 30.343023>,  <36.095886, 37.994362, 30.668781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881294, 37.905861, 30.343023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829421, 0.039827, -0.557202,
		0.155715, -0.974404, 0.162143,
		-0.536482, -0.221249, -0.814393,
		35.720348, 37.839485, 30.098705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451405, 37.546047, 30.271982>,  <36.095886, 37.994362, 30.668781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451405, 37.546047, 30.271982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.197384, 37.720448, 30.016920>,  <36.044971, 37.825089, 29.863882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.197384, 37.720448, 30.016920>,  <36.451405, 37.546047, 30.271982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197384, 37.720448, 30.016920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733273, 0.080653, -0.675135,
		-0.242934, -0.896323, -0.370930,
		-0.635055, 0.436006, -0.637655,
		36.006866, 37.851250, 29.825623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740204, 37.361984, 29.645283>,  <36.451405, 37.546047, 30.271982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740204, 37.361984, 29.645283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.476974, 37.643387, 29.537933>,  <36.319038, 37.812229, 29.473524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.476974, 37.643387, 29.537933>,  <36.740204, 37.361984, 29.645283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476974, 37.643387, 29.537933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553804, 0.210740, -0.805537,
		-0.510144, -0.678725, -0.528286,
		-0.658069, 0.703506, -0.268373,
		36.279552, 37.854439, 29.457422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595390, 37.343300, 28.892735>,  <36.740204, 37.361984, 29.645283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595390, 37.343300, 28.892735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.509842, 37.717995, 29.003574>,  <36.458511, 37.942810, 29.070078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.509842, 37.717995, 29.003574>,  <36.595390, 37.343300, 28.892735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509842, 37.717995, 29.003574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484940, 0.348053, -0.802304,
		-0.847993, -0.037212, -0.528699,
		-0.213871, 0.936736, 0.277101,
		36.445679, 37.999016, 29.086704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570541, 37.752609, 28.256598>,  <36.595390, 37.343300, 28.892735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570541, 37.752609, 28.256598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.599453, 38.042263, 28.530943>,  <36.616798, 38.216053, 28.695551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.599453, 38.042263, 28.530943>,  <36.570541, 37.752609, 28.256598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599453, 38.042263, 28.530943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588498, 0.524239, -0.615502,
		-0.805261, 0.448116, -0.388260,
		0.072276, 0.724131, 0.685865,
		36.621136, 38.259502, 28.736702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382671, 38.299236, 27.956585>,  <36.570541, 37.752609, 28.256598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382671, 38.299236, 27.956585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.625969, 38.426304, 28.247549>,  <36.771950, 38.502544, 28.422127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.625969, 38.426304, 28.247549>,  <36.382671, 38.299236, 27.956585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625969, 38.426304, 28.247549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647797, 0.330914, -0.686189,
		-0.458689, 0.888585, -0.004506,
		0.608246, 0.317666, 0.727410,
		36.808441, 38.521603, 28.465773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641609, 38.976078, 27.736828>,  <36.382671, 38.299236, 27.956585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641609, 38.976078, 27.736828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.898148, 38.863274, 28.022245>,  <37.052071, 38.795589, 28.193495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.898148, 38.863274, 28.022245>,  <36.641609, 38.976078, 27.736828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898148, 38.863274, 28.022245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745919, 0.446957, -0.493796,
		-0.179665, 0.848939, 0.497014,
		0.641347, -0.282014, 0.713542,
		37.090553, 38.778671, 28.236309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072063, 39.572563, 27.848095>,  <36.641609, 38.976078, 27.736828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072063, 39.572563, 27.848095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.280254, 39.273003, 28.012167>,  <37.405170, 39.093266, 28.110611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.280254, 39.273003, 28.012167>,  <37.072063, 39.572563, 27.848095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280254, 39.273003, 28.012167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839904, 0.362478, -0.403944,
		0.153832, 0.554757, 0.817668,
		0.520477, -0.748902, 0.410182,
		37.436398, 39.048332, 28.135221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649799, 39.879505, 28.185303>,  <37.072063, 39.572563, 27.848095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649799, 39.879505, 28.185303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.762299, 39.502178, 28.114828>,  <37.829800, 39.275780, 28.072544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.762299, 39.502178, 28.114828>,  <37.649799, 39.879505, 28.185303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762299, 39.502178, 28.114828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822137, 0.331553, -0.462777,
		0.494963, -0.014693, 0.868790,
		0.281251, -0.943322, -0.176186,
		37.846672, 39.219181, 28.061972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350826, 39.755787, 28.379580>,  <37.649799, 39.879505, 28.185303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350826, 39.755787, 28.379580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.269714, 39.493862, 28.088346>,  <38.221046, 39.336708, 27.913607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.269714, 39.493862, 28.088346>,  <38.350826, 39.755787, 28.379580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269714, 39.493862, 28.088346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832045, 0.276820, -0.480700,
		0.516314, -0.703276, 0.488694,
		-0.202784, -0.654808, -0.728083,
		38.208878, 39.297421, 27.869921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995098, 39.465313, 28.195007>,  <38.350826, 39.755787, 28.379580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995098, 39.465313, 28.195007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.777340, 39.347698, 27.880766>,  <38.646687, 39.277130, 27.692221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.777340, 39.347698, 27.880766>,  <38.995098, 39.465313, 28.195007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777340, 39.347698, 27.880766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736569, 0.280566, -0.615425,
		0.401370, -0.913689, 0.063836,
		-0.544397, -0.294032, -0.785606,
		38.614021, 39.259487, 27.645084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478313, 39.151566, 27.790173>,  <38.995098, 39.465313, 28.195007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478313, 39.151566, 27.790173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.178722, 39.210869, 27.531855>,  <38.998966, 39.246452, 27.376863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.178722, 39.210869, 27.531855>,  <39.478313, 39.151566, 27.790173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178722, 39.210869, 27.531855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649009, -0.032192, -0.760100,
		-0.133481, -0.988425, -0.072110,
		-0.748980, 0.148259, -0.645794,
		38.954029, 39.255344, 27.338116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841427, 38.490395, 28.156349>,  <39.478313, 39.151566, 27.790173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841427, 38.490395, 28.156349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.153561, 38.660755, 28.339514>,  <40.340843, 38.762970, 28.449411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.153561, 38.660755, 28.339514>,  <39.841427, 38.490395, 28.156349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.153561, 38.660755, 28.339514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506353, 0.000609, 0.862326,
		0.366988, -0.904769, 0.216133,
		0.780337, 0.425903, 0.457909,
		40.387661, 38.788525, 28.476887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856804, 38.175644, 28.886171>,  <39.841427, 38.490395, 28.156349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.856804, 38.175644, 28.886171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.057316, 38.521729, 28.881603>,  <40.177624, 38.729378, 28.878862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.057316, 38.521729, 28.881603>,  <39.856804, 38.175644, 28.886171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057316, 38.521729, 28.881603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502567, 0.301867, 0.810126,
		0.704375, -0.400363, 0.586145,
		0.501282, 0.865209, -0.011418,
		40.207699, 38.781292, 28.878178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066921, 38.242500, 29.531450>,  <39.856804, 38.175644, 28.886171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066921, 38.242500, 29.531450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.076160, 38.614002, 29.383461>,  <40.081703, 38.836903, 29.294666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.076160, 38.614002, 29.383461>,  <40.066921, 38.242500, 29.531450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076160, 38.614002, 29.383461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398070, 0.348017, 0.848778,
		0.917064, 0.127668, 0.377749,
		0.023101, 0.928754, -0.369975,
		40.083092, 38.892628, 29.272469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326488, 38.616150, 30.106800>,  <40.066921, 38.242500, 29.531450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326488, 38.616150, 30.106800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.117386, 38.871426, 29.880726>,  <39.991924, 39.024593, 29.745081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.117386, 38.871426, 29.880726>,  <40.326488, 38.616150, 30.106800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117386, 38.871426, 29.880726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491063, 0.316511, 0.811590,
		0.696839, 0.701806, 0.147934,
		-0.522756, 0.638192, -0.565188,
		39.960560, 39.062881, 29.711170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207153, 39.291965, 30.428438>,  <40.326488, 38.616150, 30.106800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207153, 39.291965, 30.428438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.919197, 39.259911, 30.152658>,  <39.746426, 39.240677, 29.987190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.919197, 39.259911, 30.152658>,  <40.207153, 39.291965, 30.428438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919197, 39.259911, 30.152658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673531, 0.320637, 0.665994,
		0.167690, 0.943806, -0.284800,
		-0.719887, -0.080141, -0.689450,
		39.703232, 39.235867, 29.945824>
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
