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
	<23.942226, 35.037357, 35.193184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.194277, 35.159805, 34.907742>,  <24.345507, 35.233276, 34.736477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.194277, 35.159805, 34.907742>,  <23.942226, 35.037357, 35.193184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.194277, 35.159805, 34.907742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491945, 0.553653, 0.671906,
		0.600774, -0.774440, 0.198277,
		0.630128, 0.306122, -0.713602,
		24.383314, 35.251640, 34.693661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.598898, 34.960602, 35.446831>,  <23.942226, 35.037357, 35.193184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.598898, 34.960602, 35.446831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.574108, 35.286762, 35.216602>,  <24.559235, 35.482460, 35.078465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.574108, 35.286762, 35.216602>,  <24.598898, 34.960602, 35.446831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.574108, 35.286762, 35.216602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571084, 0.501919, 0.649569,
		0.818549, -0.288440, -0.496770,
		-0.061976, 0.815402, -0.575568,
		24.555515, 35.531384, 35.043930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.309744, 35.117496, 35.226994>,  <24.598898, 34.960602, 35.446831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.309744, 35.117496, 35.226994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.071018, 35.438431, 35.223736>,  <24.927784, 35.630993, 35.221783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.071018, 35.438431, 35.223736>,  <25.309744, 35.117496, 35.226994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.071018, 35.438431, 35.223736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667699, 0.502238, 0.549487,
		0.444964, 0.322505, -0.835463,
		-0.596813, 0.802339, -0.008141,
		24.891973, 35.679134, 35.221294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.737520, 35.661060, 34.835388>,  <25.309744, 35.117496, 35.226994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.737520, 35.661060, 34.835388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.489933, 35.761383, 35.133106>,  <25.341381, 35.821575, 35.311737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.489933, 35.761383, 35.133106>,  <25.737520, 35.661060, 34.835388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.489933, 35.761383, 35.133106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686556, 0.633038, 0.357637,
		-0.381472, 0.732367, -0.564019,
		-0.618967, 0.250802, 0.744297,
		25.304243, 35.836624, 35.356396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.677776, 36.310814, 34.774868>,  <25.737520, 35.661060, 34.835388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.677776, 36.310814, 34.774868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.600536, 36.199905, 35.151344>,  <25.554193, 36.133358, 35.377228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.600536, 36.199905, 35.151344>,  <25.677776, 36.310814, 34.774868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.600536, 36.199905, 35.151344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815797, 0.487589, 0.311017,
		-0.545149, 0.827874, 0.132046,
		-0.193099, -0.277274, 0.941186,
		25.542606, 36.116722, 35.433701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.288523, 36.251377, 34.253380>,  <25.677776, 36.310814, 34.774868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.288523, 36.251377, 34.253380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.524546, 36.570972, 34.206978>,  <26.666159, 36.762730, 34.179138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.524546, 36.570972, 34.206978>,  <26.288523, 36.251377, 34.253380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.524546, 36.570972, 34.206978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435668, 0.194138, -0.878922,
		-0.679725, 0.569152, 0.462644,
		0.590057, 0.798984, -0.116001,
		26.701563, 36.810669, 34.172176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.862785, 36.879951, 34.170788>,  <26.288523, 36.251377, 34.253380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.862785, 36.879951, 34.170788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.226551, 36.938850, 34.015205>,  <26.444811, 36.974190, 33.921856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.226551, 36.938850, 34.015205>,  <25.862785, 36.879951, 34.170788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.226551, 36.938850, 34.015205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415160, 0.265848, -0.870039,
		-0.024708, 0.952703, 0.302897,
		0.909413, 0.147248, -0.388955,
		26.499374, 36.983025, 33.898518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.794785, 37.450630, 33.802170>,  <25.862785, 36.879951, 34.170788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.794785, 37.450630, 33.802170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.122507, 37.295494, 33.633255>,  <26.319139, 37.202412, 33.531906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.122507, 37.295494, 33.633255>,  <25.794785, 37.450630, 33.802170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.122507, 37.295494, 33.633255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313863, 0.312979, -0.896401,
		0.479823, 0.866964, 0.134698,
		0.819305, -0.387837, -0.422282,
		26.368299, 37.179142, 33.506569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.108440, 37.981647, 33.326214>,  <25.794785, 37.450630, 33.802170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.108440, 37.981647, 33.326214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.231886, 37.626564, 33.189545>,  <26.305954, 37.413513, 33.107544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.231886, 37.626564, 33.189545>,  <26.108440, 37.981647, 33.326214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.231886, 37.626564, 33.189545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252196, 0.269982, -0.929251,
		0.917144, 0.372949, -0.140555,
		0.308615, -0.887704, -0.341668,
		26.324471, 37.360252, 33.087044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.273527, 38.166782, 32.702602>,  <26.108440, 37.981647, 33.326214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.273527, 38.166782, 32.702602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.303005, 37.768127, 32.688244>,  <26.320692, 37.528934, 32.679630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.303005, 37.768127, 32.688244>,  <26.273527, 38.166782, 32.702602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.303005, 37.768127, 32.688244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139914, 0.025302, -0.989840,
		0.987417, 0.077970, -0.137578,
		0.073696, -0.996634, -0.035893,
		26.325113, 37.469135, 32.677475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.798298, 37.871811, 32.162651>,  <26.273527, 38.166782, 32.702602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.798298, 37.871811, 32.162651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.532074, 37.577789, 32.214390>,  <26.372339, 37.401379, 32.245434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.532074, 37.577789, 32.214390>,  <26.798298, 37.871811, 32.162651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.532074, 37.577789, 32.214390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186367, -0.004132, -0.982471,
		0.722700, -0.678000, -0.134239,
		-0.665561, -0.735050, 0.129343,
		26.332405, 37.357273, 32.253193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.815695, 37.415550, 31.608971>,  <26.798298, 37.871811, 32.162651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.815695, 37.415550, 31.608971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.440821, 37.347248, 31.730640>,  <26.215897, 37.306267, 31.803642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.440821, 37.347248, 31.730640>,  <26.815695, 37.415550, 31.608971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.440821, 37.347248, 31.730640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326531, 0.122709, -0.937187,
		0.122709, -0.977642, -0.170760,
		0.937187, 0.170760, -0.304173,
		26.159664, 37.296021, 31.821892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.581636, 36.782959, 31.293808>,  <26.815695, 37.415550, 31.608971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.581636, 36.782959, 31.293808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.261503, 37.003868, 31.387159>,  <26.069424, 37.136414, 31.443171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.261503, 37.003868, 31.387159>,  <26.581636, 36.782959, 31.293808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.261503, 37.003868, 31.387159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294299, -0.022741, -0.955443,
		-0.522356, -0.833355, 0.180733,
		-0.800333, 0.552270, 0.233377,
		26.021402, 37.169548, 31.457172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.042831, 36.496246, 31.039623>,  <26.581636, 36.782959, 31.293808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.042831, 36.496246, 31.039623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.872818, 36.855835, 31.081959>,  <25.770809, 37.071587, 31.107361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.872818, 36.855835, 31.081959>,  <26.042831, 36.496246, 31.039623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.872818, 36.855835, 31.081959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374799, -0.068352, -0.924583,
		-0.823937, -0.432647, 0.365984,
		-0.425034, 0.898968, 0.105838,
		25.745308, 37.125526, 31.113710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.396927, 36.442764, 30.697445>,  <26.042831, 36.496246, 31.039623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.396927, 36.442764, 30.697445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.482126, 36.833153, 30.715872>,  <25.533245, 37.067387, 30.726927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.482126, 36.833153, 30.715872>,  <25.396927, 36.442764, 30.697445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.482126, 36.833153, 30.715872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370517, 0.124308, -0.920470,
		-0.904074, 0.178988, 0.388089,
		0.212996, 0.975966, 0.046065,
		25.546024, 37.125942, 30.729691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.000910, 36.708385, 30.138382>,  <25.396927, 36.442764, 30.697445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.000910, 36.708385, 30.138382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.206137, 37.039379, 30.229622>,  <25.329273, 37.237976, 30.284367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.206137, 37.039379, 30.229622>,  <25.000910, 36.708385, 30.138382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.206137, 37.039379, 30.229622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243655, 0.395217, -0.885683,
		-0.823039, 0.398838, 0.404395,
		0.513068, 0.827485, 0.228100,
		25.360058, 37.287624, 30.298052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.616928, 37.220284, 29.953369>,  <25.000910, 36.708385, 30.138382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.616928, 37.220284, 29.953369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.980021, 37.387627, 29.966042>,  <25.197876, 37.488033, 29.973644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.980021, 37.387627, 29.966042>,  <24.616928, 37.220284, 29.953369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.980021, 37.387627, 29.966042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204184, 0.506466, -0.837736,
		-0.366514, 0.753971, 0.545156,
		0.907732, 0.418354, 0.031679,
		25.252340, 37.513134, 29.975546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.511103, 37.888153, 29.608397>,  <24.616928, 37.220284, 29.953369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.511103, 37.888153, 29.608397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.900665, 37.797379, 29.607513>,  <25.134403, 37.742916, 29.606983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.900665, 37.797379, 29.607513>,  <24.511103, 37.888153, 29.608397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.900665, 37.797379, 29.607513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077017, 0.339639, -0.937397,
		0.213475, 0.912769, 0.348255,
		0.973908, -0.226932, -0.002206,
		25.192837, 37.729298, 29.606852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.832306, 38.481869, 29.363419>,  <24.511103, 37.888153, 29.608397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.832306, 38.481869, 29.363419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.102085, 38.193390, 29.300177>,  <25.263952, 38.020302, 29.262232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.102085, 38.193390, 29.300177>,  <24.832306, 38.481869, 29.363419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.102085, 38.193390, 29.300177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159419, 0.351336, -0.922577,
		0.720907, 0.597025, 0.351930,
		0.674447, -0.721197, -0.158103,
		25.304419, 37.977032, 29.252747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.303398, 38.811794, 28.882734>,  <24.832306, 38.481869, 29.363419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.303398, 38.811794, 28.882734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.380444, 38.420204, 28.855869>,  <25.426672, 38.185249, 28.839750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.380444, 38.420204, 28.855869>,  <25.303398, 38.811794, 28.882734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.380444, 38.420204, 28.855869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204278, 0.106949, -0.973053,
		0.959776, 0.173706, 0.220583,
		0.192616, -0.978973, -0.067163,
		25.438229, 38.126511, 28.835720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.903530, 38.820625, 28.569368>,  <25.303398, 38.811794, 28.882734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.903530, 38.820625, 28.569368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.750093, 38.458378, 28.497025>,  <25.658031, 38.241028, 28.453619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.750093, 38.458378, 28.497025>,  <25.903530, 38.820625, 28.569368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.750093, 38.458378, 28.497025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074168, 0.164996, -0.983501,
		0.920519, -0.390678, 0.003876,
		-0.383593, -0.905620, -0.180857,
		25.635015, 38.186691, 28.442768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.319817, 38.501575, 28.085043>,  <25.903530, 38.820625, 28.569368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.319817, 38.501575, 28.085043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.966463, 38.316143, 28.057558>,  <25.754452, 38.204884, 28.041067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.966463, 38.316143, 28.057558>,  <26.319817, 38.501575, 28.085043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.966463, 38.316143, 28.057558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066755, 0.020654, -0.997556,
		0.463872, -0.885811, 0.012701,
		-0.883383, -0.463586, -0.068713,
		25.701448, 38.177067, 28.036943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.454136, 37.838486, 27.693954>,  <26.319817, 38.501575, 28.085043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.454136, 37.838486, 27.693954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.067430, 37.938969, 27.674902>,  <25.835407, 37.999256, 27.663471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.067430, 37.938969, 27.674902>,  <26.454136, 37.838486, 27.693954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.067430, 37.938969, 27.674902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032211, -0.065148, -0.997355,
		-0.253645, -0.965738, 0.054891,
		-0.966761, 0.251206, -0.047632,
		25.777403, 38.014332, 27.660612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.075464, 37.357899, 27.206917>,  <26.454136, 37.838486, 27.693954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.075464, 37.357899, 27.206917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.864363, 37.694592, 27.252460>,  <25.737701, 37.896606, 27.279787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.864363, 37.694592, 27.252460>,  <26.075464, 37.357899, 27.206917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.864363, 37.694592, 27.252460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036849, 0.111232, -0.993111,
		-0.848598, -0.528314, -0.027686,
		-0.527754, 0.841731, 0.113859,
		25.706036, 37.947109, 27.286619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.545387, 37.246769, 26.746101>,  <26.075464, 37.357899, 27.206917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.545387, 37.246769, 26.746101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.563486, 37.644608, 26.783487>,  <25.574347, 37.883308, 26.805918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.563486, 37.644608, 26.783487>,  <25.545387, 37.246769, 26.746101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.563486, 37.644608, 26.783487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027337, 0.094756, -0.995125,
		-0.998602, 0.042473, 0.031477,
		0.045249, 0.994594, 0.093462,
		25.577061, 37.942986, 26.811525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.005024, 37.459614, 26.392887>,  <25.545387, 37.246769, 26.746101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.005024, 37.459614, 26.392887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.271318, 37.758087, 26.393284>,  <25.431095, 37.937172, 26.393522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.271318, 37.758087, 26.393284>,  <25.005024, 37.459614, 26.392887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.271318, 37.758087, 26.393284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036187, 0.033615, -0.998780,
		-0.745308, 0.664889, 0.049382,
		0.665738, 0.746185, 0.000993,
		25.471039, 37.981941, 26.393581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.799652, 38.124454, 26.113930>,  <25.005024, 37.459614, 26.392887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.799652, 38.124454, 26.113930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.187998, 38.041821, 26.065351>,  <25.421005, 37.992241, 26.036205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.187998, 38.041821, 26.065351>,  <24.799652, 38.124454, 26.113930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.187998, 38.041821, 26.065351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128385, -0.020478, -0.991513,
		0.202342, 0.978215, -0.046404,
		0.970863, -0.206583, -0.121445,
		25.479258, 37.979847, 26.028917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.285065, 38.665806, 25.867828>,  <24.799652, 38.124454, 26.113930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.285065, 38.665806, 25.867828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.365797, 38.285637, 25.773207>,  <25.414236, 38.057533, 25.716433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.365797, 38.285637, 25.773207>,  <25.285065, 38.665806, 25.867828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.365797, 38.285637, 25.773207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320804, 0.164052, -0.932830,
		0.925392, 0.264161, -0.271789,
		0.201830, -0.950424, -0.236556,
		25.426346, 38.000511, 25.702240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.789190, 38.665668, 25.312965>,  <25.285065, 38.665806, 25.867828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.789190, 38.665668, 25.312965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.529274, 38.362411, 25.334833>,  <25.373323, 38.180458, 25.347954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.529274, 38.362411, 25.334833>,  <25.789190, 38.665668, 25.312965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.529274, 38.362411, 25.334833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446498, 0.322498, -0.834646,
		0.615150, -0.566758, -0.548066,
		-0.649793, -0.758143, 0.054672,
		25.334335, 38.134968, 25.351234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.587603, 39.265182, 25.041897>,  <25.789190, 38.665668, 25.312965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.587603, 39.265182, 25.041897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711617, 39.436367, 25.381479>,  <25.786026, 39.539078, 25.585230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711617, 39.436367, 25.381479>,  <25.587603, 39.265182, 25.041897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.711617, 39.436367, 25.381479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226344, -0.900509, 0.371285,
		0.923388, 0.077045, -0.376056,
		0.310036, 0.427958, 0.848958,
		25.804626, 39.564754, 25.636168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.304663, 39.173561, 25.211905>,  <25.587603, 39.265182, 25.041897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.304663, 39.173561, 25.211905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.111925, 39.209930, 25.560516>,  <25.996283, 39.231750, 25.769684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.111925, 39.209930, 25.560516>,  <26.304663, 39.173561, 25.211905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.111925, 39.209930, 25.560516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155817, -0.969861, 0.187326,
		0.862293, 0.226061, 0.453153,
		-0.481843, 0.090921, 0.871528,
		25.967373, 39.237206, 25.821974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.961046, 39.336586, 25.114952>,  <26.304663, 39.173561, 25.211905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.961046, 39.336586, 25.114952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.726078, 39.595661, 25.309040>,  <26.585098, 39.751106, 25.425493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.726078, 39.595661, 25.309040>,  <26.961046, 39.336586, 25.114952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.726078, 39.595661, 25.309040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802763, 0.390379, 0.450751,
		0.102529, 0.654294, -0.749258,
		-0.587418, 0.647691, 0.485218,
		26.549852, 39.789967, 25.454605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.682564, 39.445164, 25.103153>,  <26.961046, 39.336586, 25.114952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.682564, 39.445164, 25.103153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.781649, 39.829433, 25.153343>,  <27.841099, 40.059994, 25.183458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.781649, 39.829433, 25.153343>,  <27.682564, 39.445164, 25.103153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.781649, 39.829433, 25.153343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307465, -0.200769, 0.930138,
		0.918751, -0.191826, -0.345107,
		0.247711, 0.960674, 0.125477,
		27.855963, 40.117634, 25.190987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.152617, 39.411484, 25.637529>,  <27.682564, 39.445164, 25.103153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.152617, 39.411484, 25.637529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096018, 39.805107, 25.594439>,  <28.062059, 40.041283, 25.568584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096018, 39.805107, 25.594439>,  <28.152617, 39.411484, 25.637529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.096018, 39.805107, 25.594439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249325, 0.140741, 0.958138,
		0.958027, 0.108712, -0.265265,
		-0.141494, 0.984060, -0.107729,
		28.053570, 40.100327, 25.562120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678835, 39.632919, 25.936895>,  <28.152617, 39.411484, 25.637529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678835, 39.632919, 25.936895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.393610, 39.912228, 25.962065>,  <28.222475, 40.079811, 25.977167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.393610, 39.912228, 25.962065>,  <28.678835, 39.632919, 25.936895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.393610, 39.912228, 25.962065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185409, 0.101256, 0.977431,
		0.676141, 0.708635, -0.201668,
		-0.713062, 0.698272, 0.062924,
		28.179691, 40.121708, 25.980942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855621, 40.201698, 26.327341>,  <28.678835, 39.632919, 25.936895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855621, 40.201698, 26.327341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.458570, 40.249317, 26.336473>,  <28.220341, 40.277889, 26.341953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.458570, 40.249317, 26.336473>,  <28.855621, 40.201698, 26.327341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.458570, 40.249317, 26.336473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007973, -0.123835, 0.992271,
		0.120951, 0.985136, 0.121973,
		-0.992627, 0.119043, 0.022833,
		28.160782, 40.285030, 26.343323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.697765, 40.813145, 26.697226>,  <28.855621, 40.201698, 26.327341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.697765, 40.813145, 26.697226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.390518, 40.559277, 26.731134>,  <28.206169, 40.406956, 26.751480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.390518, 40.559277, 26.731134>,  <28.697765, 40.813145, 26.697226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.390518, 40.559277, 26.731134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075365, 0.041863, 0.996277,
		-0.635857, 0.771648, 0.015676,
		-0.768118, -0.634671, 0.084774,
		28.160082, 40.368874, 26.756567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.349211, 41.010872, 27.203751>,  <28.697765, 40.813145, 26.697226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.349211, 41.010872, 27.203751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.182871, 40.648895, 27.167625>,  <28.083067, 40.431709, 27.145950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.182871, 40.648895, 27.167625>,  <28.349211, 41.010872, 27.203751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.182871, 40.648895, 27.167625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099836, -0.144135, 0.984509,
		-0.903937, 0.400391, 0.150284,
		-0.415850, -0.904938, -0.090315,
		28.058115, 40.377415, 27.140532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.671665, 40.961472, 27.645090>,  <28.349211, 41.010872, 27.203751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.671665, 40.961472, 27.645090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.812147, 40.590096, 27.596655>,  <27.896437, 40.367271, 27.567593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.812147, 40.590096, 27.596655>,  <27.671665, 40.961472, 27.645090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.812147, 40.590096, 27.596655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018861, -0.122287, 0.992316,
		-0.936109, -0.350789, -0.025436,
		0.351204, -0.928436, -0.121090,
		27.917509, 40.311565, 27.560328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.373732, 40.659664, 28.204178>,  <27.671665, 40.961472, 27.645090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.373732, 40.659664, 28.204178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644728, 40.387806, 28.091684>,  <27.807325, 40.224693, 28.024189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644728, 40.387806, 28.091684>,  <27.373732, 40.659664, 28.204178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.644728, 40.387806, 28.091684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149704, -0.246938, 0.957398,
		-0.720134, -0.690731, -0.065554,
		0.677492, -0.679641, -0.281233,
		27.847975, 40.183914, 28.007315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.194530, 40.076454, 28.569052>,  <27.373732, 40.659664, 28.204178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.194530, 40.076454, 28.569052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.572781, 40.007973, 28.458429>,  <27.799730, 39.966885, 28.392056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.572781, 40.007973, 28.458429>,  <27.194530, 40.076454, 28.569052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.572781, 40.007973, 28.458429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149789, -0.525523, 0.837490,
		-0.288714, -0.833377, -0.471304,
		0.945625, -0.171199, -0.276557,
		27.856468, 39.956612, 28.375462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.244764, 39.477242, 28.806673>,  <27.194530, 40.076454, 28.569052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.244764, 39.477242, 28.806673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.626324, 39.591717, 28.770510>,  <27.855259, 39.660404, 28.748812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.626324, 39.591717, 28.770510>,  <27.244764, 39.477242, 28.806673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.626324, 39.591717, 28.770510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198486, -0.375599, 0.905278,
		0.225126, -0.881487, -0.415088,
		0.953898, 0.286191, -0.090406,
		27.912493, 39.677574, 28.743387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.641251, 38.895313, 29.012022>,  <27.244764, 39.477242, 28.806673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.641251, 38.895313, 29.012022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.902332, 39.197144, 29.039143>,  <28.058981, 39.378242, 29.055414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.902332, 39.197144, 29.039143>,  <27.641251, 38.895313, 29.012022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.902332, 39.197144, 29.039143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213055, -0.268697, 0.939367,
		0.727038, -0.598684, -0.336145,
		0.652705, 0.754573, 0.067800,
		28.098145, 39.423515, 29.059483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.264931, 38.654713, 29.280228>,  <27.641251, 38.895313, 29.012022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.264931, 38.654713, 29.280228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.329855, 39.043930, 29.345770>,  <28.368809, 39.277458, 29.385096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.329855, 39.043930, 29.345770>,  <28.264931, 38.654713, 29.280228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.329855, 39.043930, 29.345770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275428, -0.204135, 0.939398,
		0.947520, -0.107343, -0.301136,
		0.162310, 0.973040, 0.163857,
		28.378548, 39.335842, 29.394926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.953529, 38.728149, 29.428499>,  <28.264931, 38.654713, 29.280228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.953529, 38.728149, 29.428499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.775875, 39.052055, 29.581877>,  <28.669283, 39.246399, 29.673903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.775875, 39.052055, 29.581877>,  <28.953529, 38.728149, 29.428499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.775875, 39.052055, 29.581877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240651, -0.304427, 0.921635,
		0.863035, 0.501609, -0.059662,
		-0.444138, 0.809761, 0.383443,
		28.642633, 39.294983, 29.696909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.399834, 38.951885, 29.929060>,  <28.953529, 38.728149, 29.428499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.399834, 38.951885, 29.929060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.085760, 39.173843, 30.039022>,  <28.897316, 39.307018, 30.105000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.085760, 39.173843, 30.039022>,  <29.399834, 38.951885, 29.929060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.085760, 39.173843, 30.039022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197497, -0.196359, 0.960437,
		0.586925, 0.808413, 0.044587,
		-0.785184, 0.554899, 0.274907,
		28.850204, 39.340313, 30.121494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574265, 39.536671, 30.436581>,  <29.399834, 38.951885, 29.929060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574265, 39.536671, 30.436581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186853, 39.445812, 30.477291>,  <28.954407, 39.391296, 30.501719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186853, 39.445812, 30.477291>,  <29.574265, 39.536671, 30.436581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186853, 39.445812, 30.477291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150635, -0.209380, 0.966162,
		-0.198153, 0.951085, 0.237007,
		-0.968527, -0.227150, 0.101777,
		28.896296, 39.377666, 30.507824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.543955, 39.840092, 31.047083>,  <29.574265, 39.536671, 30.436581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.543955, 39.840092, 31.047083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.229036, 39.601925, 30.983032>,  <29.040085, 39.459023, 30.944601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.229036, 39.601925, 30.983032>,  <29.543955, 39.840092, 31.047083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.229036, 39.601925, 30.983032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131349, -0.415706, 0.899964,
		-0.602423, 0.687505, 0.405491,
		-0.787296, -0.595420, -0.160127,
		28.992847, 39.423298, 30.934994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.063189, 39.873280, 31.658455>,  <29.543955, 39.840092, 31.047083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.063189, 39.873280, 31.658455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.996096, 39.520985, 31.481295>,  <28.955841, 39.309608, 31.374998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.996096, 39.520985, 31.481295>,  <29.063189, 39.873280, 31.658455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.996096, 39.520985, 31.481295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061242, -0.457706, 0.886992,
		-0.983929, 0.121652, 0.130710,
		-0.167731, -0.880742, -0.442900,
		28.945776, 39.256763, 31.348425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.541885, 39.626053, 32.005585>,  <29.063189, 39.873280, 31.658455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.541885, 39.626053, 32.005585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707935, 39.302158, 31.839693>,  <28.807566, 39.107822, 31.740156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707935, 39.302158, 31.839693>,  <28.541885, 39.626053, 32.005585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.707935, 39.302158, 31.839693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152833, -0.387321, 0.909189,
		-0.896834, -0.440814, -0.037034,
		0.415127, -0.809732, -0.414734,
		28.832474, 39.059238, 31.715273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.179228, 39.067329, 32.298309>,  <28.541885, 39.626053, 32.005585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.179228, 39.067329, 32.298309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.527496, 38.922028, 32.165661>,  <28.736458, 38.834846, 32.086071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.527496, 38.922028, 32.165661>,  <28.179228, 39.067329, 32.298309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.527496, 38.922028, 32.165661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137523, -0.467550, 0.873204,
		-0.472261, -0.805874, -0.357122,
		0.870664, -0.363268, -0.331632,
		28.788698, 38.813053, 32.066174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078699, 38.454834, 32.494488>,  <28.179228, 39.067329, 32.298309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.078699, 38.454834, 32.494488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.472624, 38.480885, 32.430103>,  <28.708979, 38.496513, 32.391472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.472624, 38.480885, 32.430103>,  <28.078699, 38.454834, 32.494488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.472624, 38.480885, 32.430103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164292, -0.649462, 0.742433,
		-0.056188, -0.757600, -0.650296,
		0.984810, 0.065122, -0.160960,
		28.768066, 38.500420, 32.381817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.292124, 37.853043, 32.586796>,  <28.078699, 38.454834, 32.494488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.292124, 37.853043, 32.586796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.638594, 38.049480, 32.623821>,  <28.846476, 38.167343, 32.646038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.638594, 38.049480, 32.623821>,  <28.292124, 37.853043, 32.586796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.638594, 38.049480, 32.623821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318143, -0.684722, 0.655699,
		0.385390, -0.538502, -0.749327,
		0.866176, 0.491092, 0.092564,
		28.898447, 38.196808, 32.651592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.811466, 37.311947, 32.511494>,  <28.292124, 37.853043, 32.586796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.811466, 37.311947, 32.511494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.971434, 37.637245, 32.680588>,  <29.067415, 37.832424, 32.782043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.971434, 37.637245, 32.680588>,  <28.811466, 37.311947, 32.511494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.971434, 37.637245, 32.680588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354903, -0.562642, 0.746645,
		0.845049, -0.148569, -0.513634,
		0.399920, 0.813241, 0.422732,
		29.091410, 37.881218, 32.807407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.468258, 37.132607, 32.637276>,  <28.811466, 37.311947, 32.511494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.468258, 37.132607, 32.637276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.376337, 37.427116, 32.891861>,  <29.321184, 37.603825, 33.044613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.376337, 37.427116, 32.891861>,  <29.468258, 37.132607, 32.637276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.376337, 37.427116, 32.891861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207584, -0.601837, 0.771169,
		0.950841, 0.309337, -0.014535,
		-0.229803, 0.736277, 0.636465,
		29.307396, 37.647999, 33.082802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.872124, 36.994141, 33.187923>,  <29.468258, 37.132607, 32.637276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.872124, 36.994141, 33.187923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.642740, 37.279163, 33.349617>,  <29.505110, 37.450176, 33.446632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.642740, 37.279163, 33.349617>,  <29.872124, 36.994141, 33.187923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.642740, 37.279163, 33.349617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035075, -0.471627, 0.881101,
		0.818483, 0.519454, 0.245466,
		-0.573459, 0.712556, 0.404238,
		29.470703, 37.492931, 33.470890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.231863, 37.234241, 33.839767>,  <29.872124, 36.994141, 33.187923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.231863, 37.234241, 33.839767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.835890, 37.289967, 33.849762>,  <29.598307, 37.323402, 33.855759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.835890, 37.289967, 33.849762>,  <30.231863, 37.234241, 33.839767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.835890, 37.289967, 33.849762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047992, -0.496491, 0.866714,
		0.133148, 0.856790, 0.498179,
		-0.989934, 0.139310, 0.024988,
		29.538910, 37.331760, 33.857258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.614752, 37.447674, 33.235703>,  <30.231863, 37.234241, 33.839767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.614752, 37.447674, 33.235703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891766, 37.619160, 33.003632>,  <31.057974, 37.722050, 32.864391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891766, 37.619160, 33.003632>,  <30.614752, 37.447674, 33.235703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891766, 37.619160, 33.003632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676573, -0.665038, 0.316185,
		-0.250286, -0.611499, -0.750617,
		0.692536, 0.428711, -0.580173,
		31.099525, 37.747772, 32.829578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.048925, 36.888592, 32.863567>,  <30.614752, 37.447674, 33.235703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.048925, 36.888592, 32.863567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281389, 37.209530, 32.917973>,  <31.420868, 37.402092, 32.950615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281389, 37.209530, 32.917973>,  <31.048925, 36.888592, 32.863567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281389, 37.209530, 32.917973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676900, -0.569376, 0.466494,
		0.451732, -0.179038, -0.874004,
		0.581158, 0.802344, 0.136015,
		31.455736, 37.450233, 32.958778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602444, 36.649414, 33.290661>,  <31.048925, 36.888592, 32.863567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602444, 36.649414, 33.290661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693020, 37.036991, 33.250927>,  <31.747366, 37.269539, 33.227085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693020, 37.036991, 33.250927>,  <31.602444, 36.649414, 33.290661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.693020, 37.036991, 33.250927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821503, -0.135196, 0.553944,
		0.523313, -0.207039, -0.826607,
		0.226442, 0.968946, -0.099334,
		31.760952, 37.327675, 33.221127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378063, 36.637566, 33.146065>,  <31.602444, 36.649414, 33.290661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378063, 36.637566, 33.146065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204395, 36.952614, 33.320946>,  <32.100197, 37.141644, 33.425877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204395, 36.952614, 33.320946>,  <32.378063, 36.637566, 33.146065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204395, 36.952614, 33.320946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552253, -0.150722, 0.819939,
		0.711699, 0.597439, -0.369529,
		-0.434167, 0.787623, 0.437206,
		32.074146, 37.188900, 33.452106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876663, 37.174244, 33.349751>,  <32.378063, 36.637566, 33.146065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876663, 37.174244, 33.349751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575695, 37.132011, 33.609818>,  <32.395115, 37.106674, 33.765858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575695, 37.132011, 33.609818>,  <32.876663, 37.174244, 33.349751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575695, 37.132011, 33.609818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639834, -0.351615, 0.683359,
		0.156462, 0.930172, 0.332113,
		-0.752418, -0.105577, 0.650170,
		32.349968, 37.100338, 33.804867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011787, 37.610676, 33.852844>,  <32.876663, 37.174244, 33.349751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011787, 37.610676, 33.852844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759968, 37.355045, 34.029594>,  <32.608875, 37.201668, 34.135647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759968, 37.355045, 34.029594>,  <33.011787, 37.610676, 33.852844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759968, 37.355045, 34.029594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614982, -0.062293, 0.786077,
		-0.474836, 0.766618, 0.432235,
		-0.629546, -0.639074, 0.441878,
		32.571102, 37.163322, 34.162159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827618, 37.852829, 34.496254>,  <33.011787, 37.610676, 33.852844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827618, 37.852829, 34.496254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809731, 37.453423, 34.508709>,  <32.798996, 37.213779, 34.516182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809731, 37.453423, 34.508709>,  <32.827618, 37.852829, 34.496254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809731, 37.453423, 34.508709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520163, 0.003338, 0.854061,
		-0.852896, 0.054392, 0.519241,
		-0.044721, -0.998514, 0.031140,
		32.796314, 37.153870, 34.518051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518677, 37.585491, 35.160793>,  <32.827618, 37.852829, 34.496254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518677, 37.585491, 35.160793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729412, 37.277519, 35.016762>,  <32.855854, 37.092735, 34.930344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729412, 37.277519, 35.016762>,  <32.518677, 37.585491, 35.160793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729412, 37.277519, 35.016762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426769, -0.126755, 0.895434,
		-0.735060, -0.625417, 0.261802,
		0.526834, -0.769927, -0.360081,
		32.887463, 37.046539, 34.908737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337624, 37.082386, 35.534317>,  <32.518677, 37.585491, 35.160793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337624, 37.082386, 35.534317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710453, 37.032890, 35.398121>,  <32.934151, 37.003193, 35.316402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710453, 37.032890, 35.398121>,  <32.337624, 37.082386, 35.534317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710453, 37.032890, 35.398121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334648, -0.065911, 0.940035,
		-0.138762, -0.990123, -0.020024,
		0.932071, -0.123740, -0.340488,
		32.990074, 36.995770, 35.295975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721195, 36.649460, 36.083279>,  <32.337624, 37.082386, 35.534317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721195, 36.649460, 36.083279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037628, 36.756939, 35.863461>,  <33.227486, 36.821426, 35.731571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037628, 36.756939, 35.863461>,  <32.721195, 36.649460, 36.083279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037628, 36.756939, 35.863461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591692, -0.108134, 0.798879,
		0.155233, -0.957136, -0.244528,
		0.791077, 0.268697, -0.549543,
		33.274952, 36.837547, 35.698597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284168, 36.230911, 36.169910>,  <32.721195, 36.649460, 36.083279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284168, 36.230911, 36.169910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486485, 36.554462, 36.049984>,  <33.607876, 36.748592, 35.978027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486485, 36.554462, 36.049984>,  <33.284168, 36.230911, 36.169910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486485, 36.554462, 36.049984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567279, -0.050034, 0.822004,
		0.649899, -0.585845, -0.484166,
		0.505792, 0.808877, -0.299820,
		33.638222, 36.797127, 35.960037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967648, 36.085114, 36.214348>,  <33.284168, 36.230911, 36.169910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967648, 36.085114, 36.214348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975288, 36.484886, 36.203175>,  <33.979874, 36.724751, 36.196472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975288, 36.484886, 36.203175>,  <33.967648, 36.085114, 36.214348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975288, 36.484886, 36.203175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512472, 0.014196, 0.858587,
		0.858491, -0.030718, -0.511907,
		0.019107, 0.999427, -0.027929,
		33.981022, 36.784714, 36.194798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620262, 36.267914, 36.287319>,  <33.967648, 36.085114, 36.214348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620262, 36.267914, 36.287319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477329, 36.615337, 36.424675>,  <34.391571, 36.823792, 36.507088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477329, 36.615337, 36.424675>,  <34.620262, 36.267914, 36.287319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477329, 36.615337, 36.424675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441383, -0.166974, 0.881646,
		0.823102, 0.466603, -0.323704,
		-0.357329, 0.868563, 0.343387,
		34.370129, 36.875908, 36.527691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182465, 36.613487, 36.614315>,  <34.620262, 36.267914, 36.287319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182465, 36.613487, 36.614315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884602, 36.822327, 36.780640>,  <34.705883, 36.947632, 36.880436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884602, 36.822327, 36.780640>,  <35.182465, 36.613487, 36.614315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884602, 36.822327, 36.780640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425491, -0.108657, 0.898416,
		0.514244, 0.845935, -0.141238,
		-0.744654, 0.522100, 0.415814,
		34.661205, 36.978958, 36.905384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469254, 37.109623, 37.086639>,  <35.182465, 36.613487, 36.614315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469254, 37.109623, 37.086639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094757, 37.091866, 37.226059>,  <34.870060, 37.081211, 37.309711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094757, 37.091866, 37.226059>,  <35.469254, 37.109623, 37.086639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094757, 37.091866, 37.226059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344823, 0.074452, 0.935711,
		-0.067487, 0.996236, -0.054398,
		-0.936239, -0.044391, 0.348549,
		34.813885, 37.078548, 37.330624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420334, 37.631817, 37.603733>,  <35.469254, 37.109623, 37.086639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420334, 37.631817, 37.603733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111511, 37.396690, 37.700394>,  <34.926216, 37.255615, 37.758389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111511, 37.396690, 37.700394>,  <35.420334, 37.631817, 37.603733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111511, 37.396690, 37.700394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371855, -0.109453, 0.921816,
		-0.515409, 0.801556, 0.303087,
		-0.772060, -0.587816, 0.241650,
		34.879894, 37.220345, 37.772888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169918, 37.749916, 38.332794>,  <35.420334, 37.631817, 37.603733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169918, 37.749916, 38.332794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002747, 37.394966, 38.254917>,  <34.902443, 37.181995, 38.208191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002747, 37.394966, 38.254917>,  <35.169918, 37.749916, 38.332794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002747, 37.394966, 38.254917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004474, -0.212288, 0.977197,
		-0.908470, 0.409267, 0.084750,
		-0.417926, -0.887375, -0.194688,
		34.877369, 37.128754, 38.196510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713718, 37.617218, 38.985226>,  <35.169918, 37.749916, 38.332794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713718, 37.617218, 38.985226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746868, 37.271320, 38.787098>,  <34.766758, 37.063782, 38.668221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746868, 37.271320, 38.787098>,  <34.713718, 37.617218, 38.985226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746868, 37.271320, 38.787098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126496, -0.483881, 0.865943,
		-0.988499, -0.134419, 0.069286,
		0.082873, -0.864749, -0.495320,
		34.771729, 37.011894, 38.638500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292603, 37.061619, 39.280788>,  <34.713718, 37.617218, 38.985226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292603, 37.061619, 39.280788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601948, 36.885902, 39.097950>,  <34.787556, 36.780472, 38.988247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601948, 36.885902, 39.097950>,  <34.292603, 37.061619, 39.280788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601948, 36.885902, 39.097950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195643, -0.520442, 0.831182,
		-0.603024, -0.732231, -0.316544,
		0.773360, -0.439293, -0.457095,
		34.833958, 36.754116, 38.960823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200027, 36.490265, 39.570068>,  <34.292603, 37.061619, 39.280788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200027, 36.490265, 39.570068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574902, 36.481373, 39.430820>,  <34.799828, 36.476036, 39.347271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574902, 36.481373, 39.430820>,  <34.200027, 36.490265, 39.570068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574902, 36.481373, 39.430820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301649, -0.449541, 0.840786,
		-0.175187, -0.892983, -0.414597,
		0.937186, -0.022232, -0.348121,
		34.856056, 36.474705, 39.326385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497147, 35.876148, 39.395412>,  <34.200027, 36.490265, 39.570068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497147, 35.876148, 39.395412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818237, 36.092312, 39.496273>,  <35.010891, 36.222012, 39.556789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818237, 36.092312, 39.496273>,  <34.497147, 35.876148, 39.395412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818237, 36.092312, 39.496273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149742, -0.591946, 0.791945,
		0.577240, -0.597958, -0.556094,
		0.802728, 0.540413, 0.252155,
		35.059055, 36.254436, 39.571918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861675, 35.397301, 39.826729>,  <34.497147, 35.876148, 39.395412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861675, 35.397301, 39.826729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050941, 35.743511, 39.892414>,  <35.164501, 35.951241, 39.931828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050941, 35.743511, 39.892414>,  <34.861675, 35.397301, 39.826729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050941, 35.743511, 39.892414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104317, -0.240138, 0.965117,
		0.874774, -0.439533, -0.203915,
		0.473169, 0.865531, 0.164216,
		35.192894, 36.003170, 39.941677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465935, 35.302792, 40.225609>,  <34.861675, 35.397301, 39.826729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465935, 35.302792, 40.225609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385044, 35.689011, 40.291130>,  <35.336510, 35.920742, 40.330441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385044, 35.689011, 40.291130>,  <35.465935, 35.302792, 40.225609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385044, 35.689011, 40.291130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153368, -0.133969, 0.979046,
		0.967255, 0.223112, -0.120991,
		-0.202228, 0.965543, 0.163800,
		35.324375, 35.978672, 40.340271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916721, 35.434910, 40.678658>,  <35.465935, 35.302792, 40.225609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916721, 35.434910, 40.678658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632004, 35.714760, 40.703526>,  <35.461174, 35.882671, 40.718445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632004, 35.714760, 40.703526>,  <35.916721, 35.434910, 40.678658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632004, 35.714760, 40.703526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030883, -0.057254, 0.997882,
		0.701706, 0.712209, 0.019146,
		-0.711797, 0.699628, 0.062171,
		35.418465, 35.924648, 40.722176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080292, 35.971485, 41.217445>,  <35.916721, 35.434910, 40.678658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080292, 35.971485, 41.217445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683880, 36.023514, 41.205139>,  <35.446033, 36.054729, 41.197758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683880, 36.023514, 41.205139>,  <36.080292, 35.971485, 41.217445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683880, 36.023514, 41.205139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027393, 0.027620, 0.999243,
		0.130819, 0.991120, -0.023810,
		-0.991028, 0.130068, -0.030763,
		35.386570, 36.062534, 41.195911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847347, 36.535954, 41.753098>,  <36.080292, 35.971485, 41.217445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847347, 36.535954, 41.753098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514336, 36.345318, 41.640129>,  <35.314529, 36.230938, 41.572350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514336, 36.345318, 41.640129>,  <35.847347, 36.535954, 41.753098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514336, 36.345318, 41.640129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321710, 0.000891, 0.946838,
		-0.450998, 0.879127, -0.154064,
		-0.832528, -0.476586, -0.282422,
		35.264576, 36.202343, 41.555401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288643, 36.906647, 42.006500>,  <35.847347, 36.535954, 41.753098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288643, 36.906647, 42.006500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152729, 36.536331, 41.940212>,  <35.071182, 36.314140, 41.900440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152729, 36.536331, 41.940212>,  <35.288643, 36.906647, 42.006500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152729, 36.536331, 41.940212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437634, -0.000328, 0.899153,
		-0.832480, 0.378042, -0.405045,
		-0.339785, -0.925788, -0.165717,
		35.050793, 36.258595, 41.890495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653591, 36.846973, 42.238499>,  <35.288643, 36.906647, 42.006500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653591, 36.846973, 42.238499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726715, 36.453747, 42.243633>,  <34.770588, 36.217812, 42.246716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726715, 36.453747, 42.243633>,  <34.653591, 36.846973, 42.238499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726715, 36.453747, 42.243633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663680, -0.113763, 0.739315,
		-0.725334, -0.143676, -0.673237,
		0.182811, -0.983064, 0.012839,
		34.781559, 36.158829, 42.247486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935921, 36.568050, 42.463356>,  <34.653591, 36.846973, 42.238499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935921, 36.568050, 42.463356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221886, 36.296597, 42.530708>,  <34.393467, 36.133724, 42.571117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221886, 36.296597, 42.530708>,  <33.935921, 36.568050, 42.463356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221886, 36.296597, 42.530708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477920, -0.298498, 0.826130,
		-0.510380, -0.671085, -0.537734,
		0.714915, -0.678634, 0.168377,
		34.436359, 36.093006, 42.581223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586231, 35.971344, 42.864857>,  <33.935921, 36.568050, 42.463356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586231, 35.971344, 42.864857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981152, 35.938034, 42.918961>,  <34.218105, 35.918049, 42.951424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981152, 35.938034, 42.918961>,  <33.586231, 35.971344, 42.864857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981152, 35.938034, 42.918961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153011, -0.269986, 0.950629,
		-0.042647, -0.959256, -0.279301,
		0.987304, -0.083278, 0.135263,
		34.277344, 35.913052, 42.959538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804359, 35.347443, 43.165428>,  <33.586231, 35.971344, 42.864857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804359, 35.347443, 43.165428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116573, 35.577274, 43.263912>,  <34.303902, 35.715172, 43.323002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116573, 35.577274, 43.263912>,  <33.804359, 35.347443, 43.165428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116573, 35.577274, 43.263912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126185, -0.240936, 0.962303,
		0.612241, -0.782181, -0.115556,
		0.780537, 0.574580, 0.246211,
		34.350735, 35.749649, 43.337776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153484, 34.941780, 43.646366>,  <33.804359, 35.347443, 43.165428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153484, 34.941780, 43.646366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305641, 35.304615, 43.718475>,  <34.396935, 35.522316, 43.761742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305641, 35.304615, 43.718475>,  <34.153484, 34.941780, 43.646366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305641, 35.304615, 43.718475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036198, -0.180171, 0.982969,
		0.924117, -0.380439, -0.035701,
		0.380392, 0.907086, 0.180270,
		34.419758, 35.576740, 43.772556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647728, 34.802402, 44.149010>,  <34.153484, 34.941780, 43.646366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647728, 34.802402, 44.149010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574158, 35.194782, 44.173996>,  <34.530014, 35.430210, 44.188988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574158, 35.194782, 44.173996>,  <34.647728, 34.802402, 44.149010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574158, 35.194782, 44.173996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454864, 0.028605, 0.890101,
		0.871361, 0.192125, -0.451462,
		-0.183925, 0.980953, 0.062466,
		34.518982, 35.489067, 44.192734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169476, 35.064053, 44.489868>,  <34.647728, 34.802402, 44.149010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169476, 35.064053, 44.489868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901844, 35.357063, 44.540051>,  <34.741264, 35.532871, 44.570160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901844, 35.357063, 44.540051>,  <35.169476, 35.064053, 44.489868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901844, 35.357063, 44.540051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200249, 0.015134, 0.979628,
		0.715707, 0.680568, -0.156814,
		-0.669077, 0.732528, 0.125452,
		34.701122, 35.576820, 44.577686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455135, 35.529533, 44.966965>,  <35.169476, 35.064053, 44.489868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455135, 35.529533, 44.966965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064121, 35.603897, 45.006691>,  <34.829514, 35.648518, 45.030525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064121, 35.603897, 45.006691>,  <35.455135, 35.529533, 44.966965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064121, 35.603897, 45.006691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100866, -0.001101, 0.994899,
		0.185072, 0.982566, -0.017676,
		-0.977535, 0.185911, 0.099311,
		34.770863, 35.659672, 45.036484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398750, 36.007362, 45.486172>,  <35.455135, 35.529533, 44.966965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398750, 36.007362, 45.486172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042847, 35.827015, 45.457741>,  <34.829304, 35.718807, 45.440681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042847, 35.827015, 45.457741>,  <35.398750, 36.007362, 45.486172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042847, 35.827015, 45.457741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003333, -0.149294, 0.988787,
		-0.456425, 0.880016, 0.131333,
		-0.889756, -0.450869, -0.071074,
		34.775921, 35.691753, 45.436417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968391, 36.200504, 46.094120>,  <35.398750, 36.007362, 45.486172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968391, 36.200504, 46.094120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.785477, 35.866619, 45.971390>,  <34.675728, 35.666286, 45.897751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.785477, 35.866619, 45.971390>,  <34.968391, 36.200504, 46.094120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785477, 35.866619, 45.971390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099451, -0.390842, 0.915069,
		-0.883740, 0.387937, 0.261741,
		-0.457289, -0.834714, -0.306822,
		34.648289, 35.616203, 45.879345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866261, 35.828381, 46.617123>,  <34.968391, 36.200504, 46.094120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866261, 35.828381, 46.617123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.736557, 35.524673, 46.391426>,  <34.658737, 35.342449, 46.256008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.736557, 35.524673, 46.391426>,  <34.866261, 35.828381, 46.617123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736557, 35.524673, 46.391426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101276, -0.620904, 0.777317,
		-0.940532, 0.194906, 0.278228,
		-0.324256, -0.759269, -0.564241,
		34.639278, 35.296894, 46.222153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378101, 35.476627, 46.978924>,  <34.866261, 35.828381, 46.617123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378101, 35.476627, 46.978924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509750, 35.193199, 46.729248>,  <34.588741, 35.023144, 46.579445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509750, 35.193199, 46.729248>,  <34.378101, 35.476627, 46.978924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509750, 35.193199, 46.729248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100074, -0.631117, 0.769205,
		-0.938969, -0.315627, -0.136806,
		0.329122, -0.708569, -0.624186,
		34.608486, 34.980629, 46.541992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081390, 34.947723, 47.197708>,  <34.378101, 35.476627, 46.978924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081390, 34.947723, 47.197708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349396, 34.773018, 46.957603>,  <34.510201, 34.668194, 46.813541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349396, 34.773018, 46.957603>,  <34.081390, 34.947723, 47.197708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349396, 34.773018, 46.957603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150413, -0.711953, 0.685929,
		-0.726957, -0.549865, -0.411317,
		0.670007, -0.436773, -0.600266,
		34.550400, 34.641987, 46.777527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983921, 34.206741, 47.302166>,  <34.081390, 34.947723, 47.197708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983921, 34.206741, 47.302166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364174, 34.247456, 47.184902>,  <34.592323, 34.271885, 47.114544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364174, 34.247456, 47.184902>,  <33.983921, 34.206741, 47.302166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364174, 34.247456, 47.184902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270951, -0.732809, 0.624161,
		-0.151299, -0.672777, -0.724209,
		0.950628, 0.101790, -0.293162,
		34.649361, 34.277992, 47.096954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259811, 33.625637, 46.947395>,  <33.983921, 34.206741, 47.302166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259811, 33.625637, 46.947395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596104, 33.801792, 47.073402>,  <34.797878, 33.907486, 47.149006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596104, 33.801792, 47.073402>,  <34.259811, 33.625637, 46.947395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596104, 33.801792, 47.073402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301738, -0.864136, 0.402771,
		0.449592, -0.243568, -0.859384,
		0.840727, 0.440391, 0.315015,
		34.848320, 33.933910, 47.167908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664486, 33.112823, 47.052471>,  <34.259811, 33.625637, 46.947395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664486, 33.112823, 47.052471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883953, 33.396416, 47.229698>,  <35.015633, 33.566570, 47.336033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883953, 33.396416, 47.229698>,  <34.664486, 33.112823, 47.052471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883953, 33.396416, 47.229698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331787, -0.671086, 0.662994,
		0.767387, -0.216759, -0.603433,
		0.548666, 0.708984, 0.443065,
		35.048553, 33.609112, 47.362617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299156, 32.802658, 47.129517>,  <34.664486, 33.112823, 47.052471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299156, 32.802658, 47.129517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280666, 33.089741, 47.407440>,  <35.269573, 33.261990, 47.574196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280666, 33.089741, 47.407440>,  <35.299156, 32.802658, 47.129517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280666, 33.089741, 47.407440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307161, -0.651643, 0.693551,
		0.950534, 0.245478, -0.190329,
		-0.046225, 0.717706, 0.694810,
		35.266800, 33.305054, 47.615883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766983, 32.574886, 47.545731>,  <35.299156, 32.802658, 47.129517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766983, 32.574886, 47.545731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583832, 32.842701, 47.779678>,  <35.473942, 33.003391, 47.920048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583832, 32.842701, 47.779678>,  <35.766983, 32.574886, 47.545731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583832, 32.842701, 47.779678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100086, -0.614879, 0.782244,
		0.883365, 0.416708, 0.214527,
		-0.457875, 0.669536, 0.584869,
		35.446468, 33.043560, 47.955139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216160, 32.610943, 48.140724>,  <35.766983, 32.574886, 47.545731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216160, 32.610943, 48.140724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847610, 32.730732, 48.239834>,  <35.626480, 32.802605, 48.299301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847610, 32.730732, 48.239834>,  <36.216160, 32.610943, 48.140724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847610, 32.730732, 48.239834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041164, -0.558701, 0.828347,
		0.386500, 0.773414, 0.502443,
		-0.921370, 0.299474, 0.247774,
		35.571198, 32.820576, 48.314167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285217, 33.066185, 48.681889>,  <36.216160, 32.610943, 48.140724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285217, 33.066185, 48.681889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.918274, 32.907715, 48.697384>,  <35.698109, 32.812634, 48.706680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.918274, 32.907715, 48.697384>,  <36.285217, 33.066185, 48.681889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918274, 32.907715, 48.697384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202423, -0.380496, 0.902357,
		-0.342751, 0.835626, 0.429246,
		-0.917359, -0.396173, 0.038734,
		35.643066, 32.788864, 48.709003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955334, 33.172699, 49.417114>,  <36.285217, 33.066185, 48.681889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955334, 33.172699, 49.417114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.744080, 32.874519, 49.254448>,  <35.617325, 32.695610, 49.156849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.744080, 32.874519, 49.254448>,  <35.955334, 33.172699, 49.417114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744080, 32.874519, 49.254448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037399, -0.498858, 0.865876,
		-0.848334, 0.442094, 0.291345,
		-0.528138, -0.745449, -0.406664,
		35.585640, 32.650887, 49.132450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198044, 33.083576, 49.711349>,  <35.955334, 33.172699, 49.417114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198044, 33.083576, 49.711349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349186, 32.737415, 49.579712>,  <35.439869, 32.529716, 49.500729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349186, 32.737415, 49.579712>,  <35.198044, 33.083576, 49.711349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349186, 32.737415, 49.579712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020999, -0.363364, 0.931410,
		-0.925628, -0.345024, -0.155470,
		0.377851, -0.865405, -0.329095,
		35.462540, 32.477795, 49.480984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640736, 32.602604, 49.794716>,  <35.198044, 33.083576, 49.711349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640736, 32.602604, 49.794716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972637, 32.379524, 49.803467>,  <35.171780, 32.245678, 49.808716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972637, 32.379524, 49.803467>,  <34.640736, 32.602604, 49.794716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972637, 32.379524, 49.803467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362396, -0.508548, 0.781056,
		-0.424467, -0.656014, -0.624078,
		0.829757, -0.557696, 0.021875,
		35.221565, 32.212215, 49.810028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530945, 32.417439, 50.487320>,  <34.640736, 32.602604, 49.794716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530945, 32.417439, 50.487320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799404, 32.135128, 50.396606>,  <34.960480, 31.965740, 50.342178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799404, 32.135128, 50.396606>,  <34.530945, 32.417439, 50.487320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799404, 32.135128, 50.396606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194637, -0.462953, 0.864749,
		-0.715312, -0.536237, -0.448083,
		0.671152, -0.705779, -0.226785,
		35.000751, 31.923395, 50.328571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290596, 31.691793, 50.473721>,  <34.530945, 32.417439, 50.487320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290596, 31.691793, 50.473721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662636, 31.748777, 50.609146>,  <34.885860, 31.782967, 50.690403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662636, 31.748777, 50.609146>,  <34.290596, 31.691793, 50.473721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662636, 31.748777, 50.609146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254768, -0.413777, 0.874003,
		0.264599, -0.899163, -0.348559,
		0.930097, 0.142459, 0.338563,
		34.941666, 31.791515, 50.710716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499718, 31.050190, 50.809551>,  <34.290596, 31.691793, 50.473721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499718, 31.050190, 50.809551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720734, 31.342972, 50.969021>,  <34.853344, 31.518641, 51.064705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720734, 31.342972, 50.969021>,  <34.499718, 31.050190, 50.809551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720734, 31.342972, 50.969021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211498, -0.339542, 0.916504,
		0.806207, -0.590723, -0.032803,
		0.552538, 0.731954, 0.398678,
		34.886494, 31.562557, 51.088623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135773, 30.850565, 51.317280>,  <34.499718, 31.050190, 50.809551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135773, 30.850565, 51.317280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006721, 31.217882, 51.409061>,  <34.929291, 31.438272, 51.464130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006721, 31.217882, 51.409061>,  <35.135773, 30.850565, 51.317280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006721, 31.217882, 51.409061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097577, -0.208853, 0.973067,
		0.941483, 0.336326, -0.022223,
		-0.322626, 0.918295, 0.229450,
		34.909935, 31.493370, 51.477898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646530, 31.430681, 51.317513>,  <35.135773, 30.850565, 51.317280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646530, 31.430681, 51.317513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728931, 31.053936, 51.211338>,  <35.778374, 30.827888, 51.147633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728931, 31.053936, 51.211338>,  <35.646530, 31.430681, 51.317513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728931, 31.053936, 51.211338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575327, 0.102839, -0.811433,
		0.791556, 0.319873, -0.520693,
		0.206008, -0.941863, -0.265434,
		35.790733, 30.771378, 51.131706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111950, 31.270546, 50.756649>,  <35.646530, 31.430681, 51.317513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111950, 31.270546, 50.756649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867577, 30.953953, 50.763737>,  <35.720951, 30.763996, 50.767990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867577, 30.953953, 50.763737>,  <36.111950, 31.270546, 50.756649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867577, 30.953953, 50.763737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252718, 0.173763, -0.951809,
		0.750264, -0.585968, -0.306179,
		-0.610932, -0.791485, 0.017717,
		35.684296, 30.716507, 50.769051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183342, 30.901224, 50.136589>,  <36.111950, 31.270546, 50.756649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183342, 30.901224, 50.136589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830307, 30.837448, 50.313507>,  <35.618488, 30.799183, 50.419659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830307, 30.837448, 50.313507>,  <36.183342, 30.901224, 50.136589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830307, 30.837448, 50.313507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464268, 0.147196, -0.873378,
		0.074143, -0.976173, -0.203934,
		-0.882586, -0.159435, 0.442293,
		35.565533, 30.789616, 50.446194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880630, 30.229216, 50.088467>,  <36.183342, 30.901224, 50.136589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880630, 30.229216, 50.088467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568542, 30.479378, 50.083969>,  <35.381290, 30.629475, 50.081268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568542, 30.479378, 50.083969>,  <35.880630, 30.229216, 50.088467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568542, 30.479378, 50.083969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298873, -0.388533, -0.871618,
		-0.549486, -0.676690, 0.490057,
		-0.780218, 0.625406, -0.011249,
		35.334476, 30.667000, 50.080593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357552, 29.797752, 49.849293>,  <35.880630, 30.229216, 50.088467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357552, 29.797752, 49.849293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230522, 30.171227, 49.783112>,  <35.154305, 30.395311, 49.743401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230522, 30.171227, 49.783112>,  <35.357552, 29.797752, 49.849293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230522, 30.171227, 49.783112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302494, -0.265129, -0.915535,
		-0.898690, -0.240701, 0.366633,
		-0.317575, 0.933686, -0.165458,
		35.135250, 30.451332, 49.733475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664726, 29.763163, 49.585388>,  <35.357552, 29.797752, 49.849293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664726, 29.763163, 49.585388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819309, 30.111551, 49.464027>,  <34.912060, 30.320585, 49.391209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819309, 30.111551, 49.464027>,  <34.664726, 29.763163, 49.585388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819309, 30.111551, 49.464027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278757, -0.203277, -0.938602,
		-0.879171, 0.447310, 0.164231,
		0.386461, 0.870972, -0.303406,
		34.935249, 30.372843, 49.373005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147762, 30.135122, 49.162899>,  <34.664726, 29.763163, 49.585388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147762, 30.135122, 49.162899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504917, 30.283009, 49.060093>,  <34.719212, 30.371740, 48.998409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504917, 30.283009, 49.060093>,  <34.147762, 30.135122, 49.162899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504917, 30.283009, 49.060093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196349, -0.193981, -0.961155,
		-0.405212, 0.908670, -0.100610,
		0.892889, 0.369716, -0.257020,
		34.772785, 30.393923, 48.982986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995907, 30.571665, 48.525928>,  <34.147762, 30.135122, 49.162899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995907, 30.571665, 48.525928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379776, 30.459307, 48.521564>,  <34.610100, 30.391891, 48.518948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379776, 30.459307, 48.521564>,  <33.995907, 30.571665, 48.525928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379776, 30.459307, 48.521564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033403, 0.152470, -0.987743,
		0.279117, 0.947550, 0.155704,
		0.959676, -0.280897, -0.010906,
		34.667679, 30.375038, 48.518291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396198, 31.151350, 48.286125>,  <33.995907, 30.571665, 48.525928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396198, 31.151350, 48.286125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681126, 30.882181, 48.206348>,  <34.852081, 30.720680, 48.158482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681126, 30.882181, 48.206348>,  <34.396198, 31.151350, 48.286125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681126, 30.882181, 48.206348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077351, 0.207160, -0.975244,
		0.697581, 0.710111, 0.095513,
		0.712318, -0.672924, -0.199439,
		34.894821, 30.680304, 48.146515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907387, 31.427229, 47.794846>,  <34.396198, 31.151350, 48.286125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907387, 31.427229, 47.794846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957565, 31.033060, 47.748871>,  <34.987671, 30.796558, 47.721287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957565, 31.033060, 47.748871>,  <34.907387, 31.427229, 47.794846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957565, 31.033060, 47.748871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070073, 0.106763, -0.991812,
		0.989623, 0.132470, -0.055659,
		0.125443, -0.985420, -0.114938,
		34.995197, 30.737434, 47.714390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417934, 31.367186, 47.209869>,  <34.907387, 31.427229, 47.794846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417934, 31.367186, 47.209869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288120, 30.990152, 47.241402>,  <35.210232, 30.763933, 47.260323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288120, 30.990152, 47.241402>,  <35.417934, 31.367186, 47.209869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288120, 30.990152, 47.241402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017446, -0.077364, -0.996850,
		0.945713, -0.324886, 0.008663,
		-0.324533, -0.942583, 0.078832,
		35.190762, 30.707376, 47.265053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854435, 30.930304, 46.890202>,  <35.417934, 31.367186, 47.209869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854435, 30.930304, 46.890202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509846, 30.727451, 46.879795>,  <35.303093, 30.605740, 46.873550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509846, 30.727451, 46.879795>,  <35.854435, 30.930304, 46.890202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509846, 30.727451, 46.879795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006808, 0.062758, -0.998006,
		0.507751, -0.859582, -0.057518,
		-0.861477, -0.507130, -0.026013,
		35.251404, 30.575312, 46.871990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913223, 30.379107, 46.352116>,  <35.854435, 30.930304, 46.890202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913223, 30.379107, 46.352116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532501, 30.473259, 46.430763>,  <35.304070, 30.529751, 46.477951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532501, 30.473259, 46.430763>,  <35.913223, 30.379107, 46.352116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532501, 30.473259, 46.430763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177536, 0.099916, -0.979029,
		-0.250093, -0.966753, -0.053312,
		-0.951806, 0.235384, 0.196621,
		35.246960, 30.543873, 46.489750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534908, 29.933571, 45.907040>,  <35.913223, 30.379107, 46.352116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534908, 29.933571, 45.907040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286922, 30.224314, 46.025246>,  <35.138130, 30.398760, 46.096169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286922, 30.224314, 46.025246>,  <35.534908, 29.933571, 45.907040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286922, 30.224314, 46.025246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359362, 0.071773, -0.930434,
		-0.697501, -0.683030, 0.216708,
		-0.619961, 0.726855, 0.295517,
		35.100933, 30.442369, 46.113899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053661, 29.813368, 45.408436>,  <35.534908, 29.933571, 45.907040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053661, 29.813368, 45.408436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959831, 30.165064, 45.574284>,  <34.903534, 30.376081, 45.673794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959831, 30.165064, 45.574284>,  <35.053661, 29.813368, 45.408436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959831, 30.165064, 45.574284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396403, 0.302931, -0.866659,
		-0.887603, -0.367655, 0.277473,
		-0.234576, 0.879240, 0.414622,
		34.889458, 30.428835, 45.698669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363171, 29.907843, 45.291138>,  <35.053661, 29.813368, 45.408436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363171, 29.907843, 45.291138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533730, 30.267918, 45.326569>,  <34.636066, 30.483963, 45.347828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533730, 30.267918, 45.326569>,  <34.363171, 29.907843, 45.291138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533730, 30.267918, 45.326569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477620, 0.307233, -0.823096,
		-0.768154, 0.308663, 0.560952,
		0.426402, 0.900186, 0.088579,
		34.661652, 30.537973, 45.353142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824638, 30.351606, 45.089027>,  <34.363171, 29.907843, 45.291138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824638, 30.351606, 45.089027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170177, 30.551558, 45.064079>,  <34.377502, 30.671528, 45.049110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170177, 30.551558, 45.064079>,  <33.824638, 30.351606, 45.089027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170177, 30.551558, 45.064079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322000, 0.452708, -0.831487,
		-0.387404, 0.738363, 0.552031,
		0.863848, 0.499876, -0.062371,
		34.429333, 30.701521, 45.045368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639187, 31.061228, 44.783386>,  <33.824638, 30.351606, 45.089027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639187, 31.061228, 44.783386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034416, 31.036348, 44.727055>,  <34.271553, 31.021421, 44.693256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034416, 31.036348, 44.727055>,  <33.639187, 31.061228, 44.783386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034416, 31.036348, 44.727055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085961, 0.535991, -0.839836,
		0.127720, 0.841929, 0.524255,
		0.988078, -0.062199, -0.140830,
		34.330841, 31.017689, 44.684807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777115, 31.678450, 44.509094>,  <33.639187, 31.061228, 44.783386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777115, 31.678450, 44.509094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091557, 31.445082, 44.427456>,  <34.280224, 31.305061, 44.378471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091557, 31.445082, 44.427456>,  <33.777115, 31.678450, 44.509094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091557, 31.445082, 44.427456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019441, 0.306706, -0.951606,
		0.617785, 0.752031, 0.229761,
		0.786106, -0.583421, -0.204099,
		34.327389, 31.270056, 44.366226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228664, 32.050686, 44.190678>,  <33.777115, 31.678450, 44.509094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228664, 32.050686, 44.190678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358063, 31.687014, 44.085804>,  <34.435699, 31.468811, 44.022881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358063, 31.687014, 44.085804>,  <34.228664, 32.050686, 44.190678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358063, 31.687014, 44.085804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127868, 0.232543, -0.964144,
		0.937551, 0.345420, -0.041029,
		0.323494, -0.909180, -0.262189,
		34.455112, 31.414259, 44.007149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576500, 32.150139, 43.509552>,  <34.228664, 32.050686, 44.190678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576500, 32.150139, 43.509552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515278, 31.755072, 43.522739>,  <34.478546, 31.518032, 43.530651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515278, 31.755072, 43.522739>,  <34.576500, 32.150139, 43.509552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515278, 31.755072, 43.522739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147202, -0.010207, -0.989054,
		0.977193, -0.156233, -0.143824,
		-0.153055, -0.987667, 0.032972,
		34.469360, 31.458771, 43.532631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003380, 31.851845, 43.008121>,  <34.576500, 32.150139, 43.509552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003380, 31.851845, 43.008121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701439, 31.597963, 43.074265>,  <34.520275, 31.445635, 43.113953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701439, 31.597963, 43.074265>,  <35.003380, 31.851845, 43.008121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701439, 31.597963, 43.074265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242201, 0.035443, -0.969578,
		0.609533, -0.771943, -0.180480,
		-0.754856, -0.634703, 0.165362,
		34.474983, 31.407553, 43.123875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173725, 31.298216, 42.653816>,  <35.003380, 31.851845, 43.008121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173725, 31.298216, 42.653816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776970, 31.279566, 42.701111>,  <34.538918, 31.268375, 42.729488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776970, 31.279566, 42.701111>,  <35.173725, 31.298216, 42.653816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776970, 31.279566, 42.701111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121125, 0.064824, -0.990518,
		0.038510, -0.996807, -0.069944,
		-0.991890, -0.046617, 0.118242,
		34.479404, 31.265577, 42.736584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924576, 30.782812, 42.041759>,  <35.173725, 31.298216, 42.653816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924576, 30.782812, 42.041759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598778, 30.974342, 42.172798>,  <34.403297, 31.089260, 42.251423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598778, 30.974342, 42.172798>,  <34.924576, 30.782812, 42.041759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598778, 30.974342, 42.172798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306873, 0.123638, -0.943686,
		-0.492363, -0.869161, 0.046235,
		-0.814499, 0.478824, 0.327597,
		34.354427, 31.117989, 42.271076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262764, 30.468550, 41.690933>,  <34.924576, 30.782812, 42.041759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262764, 30.468550, 41.690933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206421, 30.848263, 41.803379>,  <34.172615, 31.076090, 41.870846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206421, 30.848263, 41.803379>,  <34.262764, 30.468550, 41.690933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206421, 30.848263, 41.803379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132508, 0.263315, -0.955566,
		-0.981123, -0.171846, 0.088698,
		-0.140855, 0.949281, 0.281115,
		34.164165, 31.133047, 41.887714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016594, 30.782084, 41.104317>,  <34.262764, 30.468550, 41.690933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016594, 30.782084, 41.104317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038589, 31.110426, 41.331711>,  <34.051788, 31.307430, 41.468147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038589, 31.110426, 41.331711>,  <34.016594, 30.782084, 41.104317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038589, 31.110426, 41.331711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103183, 0.570969, -0.814461,
		-0.993141, -0.013870, 0.116097,
		0.054991, 0.820854, 0.568484,
		34.055088, 31.356682, 41.502254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437428, 31.169790, 40.864712>,  <34.016594, 30.782084, 41.104317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437428, 31.169790, 40.864712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720531, 31.424217, 40.987675>,  <33.890392, 31.576874, 41.061455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720531, 31.424217, 40.987675>,  <33.437428, 31.169790, 40.864712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720531, 31.424217, 40.987675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140314, 0.553040, -0.821254,
		-0.692383, 0.538113, 0.480666,
		0.707755, 0.636067, 0.307411,
		33.932858, 31.615038, 41.079899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188469, 31.910313, 40.749920>,  <33.437428, 31.169790, 40.864712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188469, 31.910313, 40.749920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588303, 31.915705, 40.760155>,  <33.828201, 31.918940, 40.766296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588303, 31.915705, 40.760155>,  <33.188469, 31.910313, 40.749920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588303, 31.915705, 40.760155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008231, 0.715529, -0.698535,
		-0.027723, 0.698453, 0.715119,
		0.999582, 0.013480, 0.025586,
		33.888176, 31.919748, 40.767830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238625, 32.510880, 40.379066>,  <33.188469, 31.910313, 40.749920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238625, 32.510880, 40.379066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619251, 32.391724, 40.409496>,  <33.847626, 32.320232, 40.427753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619251, 32.391724, 40.409496>,  <33.238625, 32.510880, 40.379066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619251, 32.391724, 40.409496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268953, 0.686657, -0.675401,
		0.148957, 0.663148, 0.733516,
		0.951565, -0.297888, 0.076074,
		33.904720, 32.302357, 40.432320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614098, 33.025078, 40.415913>,  <33.238625, 32.510880, 40.379066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614098, 33.025078, 40.415913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887657, 32.767704, 40.278351>,  <34.051792, 32.613281, 40.195812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887657, 32.767704, 40.278351>,  <33.614098, 33.025078, 40.415913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887657, 32.767704, 40.278351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349840, 0.702872, -0.619340,
		0.640225, 0.303257, 0.705796,
		0.683904, -0.643433, -0.343905,
		34.092827, 32.574673, 40.175179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178204, 33.445259, 40.270317>,  <33.614098, 33.025078, 40.415913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178204, 33.445259, 40.270317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215500, 33.097748, 40.075775>,  <34.237877, 32.889240, 39.959049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215500, 33.097748, 40.075775>,  <34.178204, 33.445259, 40.270317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215500, 33.097748, 40.075775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376472, 0.482975, -0.790572,
		0.921724, -0.109388, 0.372100,
		0.093236, -0.868775, -0.486351,
		34.243469, 32.837116, 39.929871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761391, 33.557217, 39.915966>,  <34.178204, 33.445259, 40.270317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761391, 33.557217, 39.915966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579887, 33.246429, 39.741417>,  <34.470985, 33.059956, 39.636688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579887, 33.246429, 39.741417>,  <34.761391, 33.557217, 39.915966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579887, 33.246429, 39.741417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267462, 0.348366, -0.898391,
		0.850042, -0.524361, 0.049738,
		-0.453754, -0.776973, -0.436372,
		34.443760, 33.013336, 39.610504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280960, 33.327255, 39.349056>,  <34.761391, 33.557217, 39.915966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280960, 33.327255, 39.349056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939281, 33.138222, 39.262329>,  <34.734276, 33.024803, 39.210293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939281, 33.138222, 39.262329>,  <35.280960, 33.327255, 39.349056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939281, 33.138222, 39.262329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061716, 0.321895, -0.944762,
		0.516273, -0.820394, -0.245796,
		-0.854198, -0.472585, -0.216817,
		34.683022, 32.996445, 39.197285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377533, 32.935574, 38.772964>,  <35.280960, 33.327255, 39.349056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377533, 32.935574, 38.772964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977833, 32.941944, 38.758892>,  <34.738010, 32.945766, 38.750450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977833, 32.941944, 38.758892>,  <35.377533, 32.935574, 38.772964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977833, 32.941944, 38.758892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038134, 0.550250, -0.834128,
		0.006075, -0.834848, -0.550447,
		-0.999254, 0.015924, -0.035179,
		34.678055, 32.946720, 38.748337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100979, 32.605900, 38.156471>,  <35.377533, 32.935574, 38.772964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100979, 32.605900, 38.156471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793530, 32.835857, 38.268696>,  <34.609058, 32.973831, 38.336029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793530, 32.835857, 38.268696>,  <35.100979, 32.605900, 38.156471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793530, 32.835857, 38.268696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158948, 0.253197, -0.954268,
		-0.619640, -0.778068, -0.103235,
		-0.768624, 0.574893, 0.280563,
		34.562943, 33.008324, 38.352863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531834, 32.418194, 37.748302>,  <35.100979, 32.605900, 38.156471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531834, 32.418194, 37.748302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458431, 32.786339, 37.886436>,  <34.414391, 33.007225, 37.969318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458431, 32.786339, 37.886436>,  <34.531834, 32.418194, 37.748302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458431, 32.786339, 37.886436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056396, 0.340868, -0.938418,
		-0.981399, -0.191685, -0.010648,
		-0.183510, 0.920362, 0.345338,
		34.403378, 33.062447, 37.990036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000229, 32.688469, 37.307671>,  <34.531834, 32.418194, 37.748302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000229, 32.688469, 37.307671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180740, 33.009792, 37.463131>,  <34.289047, 33.202587, 37.556408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180740, 33.009792, 37.463131>,  <34.000229, 32.688469, 37.307671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180740, 33.009792, 37.463131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053780, 0.459208, -0.886700,
		-0.890759, 0.379250, 0.250434,
		0.451282, 0.803304, 0.388647,
		34.316124, 33.250782, 37.579723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619839, 33.334267, 36.910892>,  <34.000229, 32.688469, 37.307671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619839, 33.334267, 36.910892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949051, 33.474068, 37.089989>,  <34.146576, 33.557949, 37.197449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949051, 33.474068, 37.089989>,  <33.619839, 33.334267, 36.910892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949051, 33.474068, 37.089989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199681, 0.559929, -0.804119,
		-0.531744, 0.751218, 0.391050,
		0.823029, 0.349500, 0.447743,
		34.195961, 33.578918, 37.224312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516422, 33.971588, 36.943764>,  <33.619839, 33.334267, 36.910892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516422, 33.971588, 36.943764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911564, 33.911682, 36.960361>,  <34.148647, 33.875736, 36.970322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911564, 33.911682, 36.960361>,  <33.516422, 33.971588, 36.943764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911564, 33.911682, 36.960361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129601, 0.646519, -0.751809,
		0.085768, 0.748053, 0.658073,
		0.987850, -0.149768, 0.041498,
		34.207920, 33.866753, 36.972813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782475, 34.672279, 36.867931>,  <33.516422, 33.971588, 36.943764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782475, 34.672279, 36.867931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084064, 34.418125, 36.801228>,  <34.265018, 34.265633, 36.761208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084064, 34.418125, 36.801228>,  <33.782475, 34.672279, 36.867931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084064, 34.418125, 36.801228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311095, 0.568953, -0.761257,
		0.578568, 0.522092, 0.626642,
		0.753976, -0.635384, -0.166757,
		34.310257, 34.227509, 36.751202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273407, 35.114273, 36.634731>,  <33.782475, 34.672279, 36.867931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273407, 35.114273, 36.634731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427341, 34.764305, 36.517147>,  <34.519703, 34.554325, 36.446598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427341, 34.764305, 36.517147>,  <34.273407, 35.114273, 36.634731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427341, 34.764305, 36.517147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282574, 0.414876, -0.864887,
		0.878665, 0.249777, 0.406890,
		0.384837, -0.874923, -0.293956,
		34.542793, 34.501827, 36.428959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023335, 35.228828, 36.287766>,  <34.273407, 35.114273, 36.634731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023335, 35.228828, 36.287766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875046, 34.876953, 36.168633>,  <34.786072, 34.665829, 36.097153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875046, 34.876953, 36.168633>,  <35.023335, 35.228828, 36.287766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875046, 34.876953, 36.168633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226238, 0.225488, -0.947614,
		0.900767, -0.418683, 0.115426,
		-0.370723, -0.879693, -0.297834,
		34.763828, 34.613045, 36.079281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587746, 34.742317, 35.972309>,  <35.023335, 35.228828, 36.287766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587746, 34.742317, 35.972309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233055, 34.633362, 35.822899>,  <35.020241, 34.567989, 35.733253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233055, 34.633362, 35.822899>,  <35.587746, 34.742317, 35.972309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233055, 34.633362, 35.822899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332291, 0.186187, -0.924617,
		0.321406, -0.944000, -0.074582,
		-0.886725, -0.272394, -0.373524,
		34.967037, 34.551643, 35.710842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698456, 34.355610, 35.394310>,  <35.587746, 34.742317, 35.972309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698456, 34.355610, 35.394310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339340, 34.524139, 35.343002>,  <35.123871, 34.625259, 35.312218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339340, 34.524139, 35.343002>,  <35.698456, 34.355610, 35.394310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339340, 34.524139, 35.343002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218753, 0.173807, -0.960176,
		-0.382253, -0.890098, -0.248209,
		-0.897792, 0.421327, -0.128274,
		35.070004, 34.650539, 35.304520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501225, 34.391006, 35.259804>,  <35.698456, 34.355610, 35.394310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501225, 34.391006, 35.259804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692207, 34.117619, 35.038933>,  <36.806797, 33.953587, 34.906410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692207, 34.117619, 35.038933>,  <36.501225, 34.391006, 35.259804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692207, 34.117619, 35.038933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042356, -0.645613, 0.762489,
		-0.877634, -0.340667, -0.337202,
		0.477457, -0.683469, -0.552182,
		36.835445, 33.912579, 34.873280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096825, 33.736790, 35.275337>,  <36.501225, 34.391006, 35.259804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096825, 33.736790, 35.275337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489708, 33.671272, 35.238583>,  <36.725437, 33.631962, 35.216530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489708, 33.671272, 35.238583>,  <36.096825, 33.736790, 35.275337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489708, 33.671272, 35.238583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045825, -0.683493, 0.728517,
		-0.182134, -0.711342, -0.678837,
		0.982205, -0.163796, -0.091891,
		36.784370, 33.622135, 35.211014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175003, 32.960224, 35.278118>,  <36.096825, 33.736790, 35.275337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175003, 32.960224, 35.278118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522446, 33.127178, 35.384941>,  <36.730911, 33.227352, 35.449036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522446, 33.127178, 35.384941>,  <36.175003, 32.960224, 35.278118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522446, 33.127178, 35.384941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007520, -0.550000, 0.835131,
		0.495453, -0.723388, -0.480870,
		0.868602, 0.417384, 0.267060,
		36.783028, 33.252392, 35.465057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667728, 32.369652, 35.354187>,  <36.175003, 32.960224, 35.278118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667728, 32.369652, 35.354187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803585, 32.682991, 35.562420>,  <36.885101, 32.870995, 35.687359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803585, 32.682991, 35.562420>,  <36.667728, 32.369652, 35.354187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803585, 32.682991, 35.562420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043644, -0.566017, 0.823237,
		0.939541, -0.256887, -0.226433,
		0.339644, 0.783348, 0.520584,
		36.905479, 32.917995, 35.718594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344463, 32.157848, 35.654263>,  <36.667728, 32.369652, 35.354187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344463, 32.157848, 35.654263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.195198, 32.466339, 35.860546>,  <37.105640, 32.651432, 35.984318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.195198, 32.466339, 35.860546>,  <37.344463, 32.157848, 35.654263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195198, 32.466339, 35.860546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164019, -0.492266, 0.854852,
		0.913153, 0.403585, 0.057199,
		-0.373162, 0.771228, 0.515710,
		37.083248, 32.697708, 36.015259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818436, 32.247437, 36.099339>,  <37.344463, 32.157848, 35.654263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818436, 32.247437, 36.099339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484825, 32.416790, 36.240841>,  <37.284660, 32.518402, 36.325741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484825, 32.416790, 36.240841>,  <37.818436, 32.247437, 36.099339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484825, 32.416790, 36.240841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113724, -0.495485, 0.861139,
		0.539876, 0.758444, 0.365099,
		-0.834027, 0.423388, 0.353754,
		37.234615, 32.543808, 36.346966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992104, 32.232063, 36.770924>,  <37.818436, 32.247437, 36.099339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992104, 32.232063, 36.770924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619328, 32.367901, 36.821781>,  <37.395660, 32.449406, 36.852295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619328, 32.367901, 36.821781>,  <37.992104, 32.232063, 36.770924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619328, 32.367901, 36.821781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028295, -0.417651, 0.908167,
		0.361509, 0.842759, 0.398834,
		-0.931939, 0.339596, 0.127139,
		37.339745, 32.469780, 36.859924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940350, 32.709633, 37.419922>,  <37.992104, 32.232063, 36.770924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940350, 32.709633, 37.419922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582409, 32.548168, 37.343712>,  <37.367645, 32.451290, 37.297985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582409, 32.548168, 37.343712>,  <37.940350, 32.709633, 37.419922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582409, 32.548168, 37.343712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077905, -0.279058, 0.957109,
		-0.439514, 0.871313, 0.218268,
		-0.894851, -0.403658, -0.190529,
		37.313953, 32.427071, 37.286552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493774, 32.959324, 37.957516>,  <37.940350, 32.709633, 37.419922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493774, 32.959324, 37.957516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316647, 32.635124, 37.804153>,  <37.210369, 32.440605, 37.712135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316647, 32.635124, 37.804153>,  <37.493774, 32.959324, 37.957516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316647, 32.635124, 37.804153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192460, -0.331730, 0.923533,
		-0.875709, 0.482753, -0.009091,
		-0.442823, -0.810497, -0.383410,
		37.183800, 32.391975, 37.689129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815895, 32.855293, 38.389832>,  <37.493774, 32.959324, 37.957516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815895, 32.855293, 38.389832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908184, 32.514992, 38.200947>,  <36.963558, 32.310810, 38.087616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908184, 32.514992, 38.200947>,  <36.815895, 32.855293, 38.389832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908184, 32.514992, 38.200947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256523, -0.521319, 0.813893,
		-0.938597, -0.066648, -0.338517,
		0.230719, -0.850755, -0.472212,
		36.977402, 32.259766, 38.059284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364883, 32.351116, 38.664444>,  <36.815895, 32.855293, 38.389832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364883, 32.351116, 38.664444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665031, 32.133842, 38.513767>,  <36.845119, 32.003479, 38.423363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665031, 32.133842, 38.513767>,  <36.364883, 32.351116, 38.664444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665031, 32.133842, 38.513767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151007, -0.695655, 0.702325,
		-0.643540, -0.470121, -0.604023,
		0.750369, -0.543186, -0.376690,
		36.890141, 31.970886, 38.400761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071194, 31.737806, 38.685108>,  <36.364883, 32.351116, 38.664444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071194, 31.737806, 38.685108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455635, 31.645470, 38.624458>,  <36.686298, 31.590067, 38.588070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455635, 31.645470, 38.624458>,  <36.071194, 31.737806, 38.685108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455635, 31.645470, 38.624458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075226, -0.747038, 0.660511,
		-0.265741, -0.623415, -0.735347,
		0.961105, -0.230842, -0.151621,
		36.743965, 31.576218, 38.578972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091972, 30.985840, 38.687469>,  <36.071194, 31.737806, 38.685108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091972, 30.985840, 38.687469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451584, 31.128605, 38.788944>,  <36.667351, 31.214264, 38.849831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451584, 31.128605, 38.788944>,  <36.091972, 30.985840, 38.687469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451584, 31.128605, 38.788944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105129, -0.738332, 0.666193,
		0.425082, -0.572256, -0.701304,
		0.899029, 0.356915, 0.253691,
		36.721291, 31.235680, 38.865051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552429, 30.426800, 38.792492>,  <36.091972, 30.985840, 38.687469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552429, 30.426800, 38.792492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741791, 30.719259, 38.988987>,  <36.855408, 30.894735, 39.106884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741791, 30.719259, 38.988987>,  <36.552429, 30.426800, 38.792492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741791, 30.719259, 38.988987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012318, -0.563128, 0.826278,
		0.880761, -0.385109, -0.275591,
		0.473400, 0.731148, 0.491238,
		36.883812, 30.938604, 39.136360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105366, 30.057730, 39.186394>,  <36.552429, 30.426800, 38.792492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105366, 30.057730, 39.186394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061424, 30.410288, 39.370167>,  <37.035061, 30.621822, 39.480431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061424, 30.410288, 39.370167>,  <37.105366, 30.057730, 39.186394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061424, 30.410288, 39.370167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144051, -0.471463, 0.870041,
		0.983454, 0.029397, 0.178758,
		-0.109854, 0.881396, 0.459428,
		37.028469, 30.674707, 39.507996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494698, 30.035517, 39.891678>,  <37.105366, 30.057730, 39.186394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494698, 30.035517, 39.891678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271549, 30.367207, 39.905338>,  <37.137661, 30.566219, 39.913536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271549, 30.367207, 39.905338>,  <37.494698, 30.035517, 39.891678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271549, 30.367207, 39.905338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100416, -0.108293, 0.989035,
		0.823828, 0.548327, 0.143681,
		-0.557874, 0.829223, 0.034154,
		37.104187, 30.615973, 39.915585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736603, 30.620489, 40.398071>,  <37.494698, 30.035517, 39.891678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736603, 30.620489, 40.398071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340477, 30.626667, 40.342884>,  <37.102802, 30.630375, 40.309772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340477, 30.626667, 40.342884>,  <37.736603, 30.620489, 40.398071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340477, 30.626667, 40.342884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138825, -0.113663, 0.983772,
		-0.000486, 0.993399, 0.114707,
		-0.990317, 0.015446, -0.137964,
		37.043381, 30.631300, 40.301495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481491, 31.051620, 40.933102>,  <37.736603, 30.620489, 40.398071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481491, 31.051620, 40.933102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173775, 30.826601, 40.811951>,  <36.989143, 30.691589, 40.739262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173775, 30.826601, 40.811951>,  <37.481491, 31.051620, 40.933102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173775, 30.826601, 40.811951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296736, -0.105227, 0.949144,
		-0.565811, 0.820040, -0.085978,
		-0.769289, -0.562549, -0.302874,
		36.942989, 30.657837, 40.721088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988232, 31.338188, 41.364769>,  <37.481491, 31.051620, 40.933102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988232, 31.338188, 41.364769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846050, 30.988932, 41.231339>,  <36.760742, 30.779377, 41.151279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846050, 30.988932, 41.231339>,  <36.988232, 31.338188, 41.364769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846050, 30.988932, 41.231339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383242, -0.189359, 0.904029,
		-0.852512, 0.449182, -0.267317,
		-0.355455, -0.873143, -0.333577,
		36.739414, 30.726988, 41.131264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259636, 31.369015, 41.590725>,  <36.988232, 31.338188, 41.364769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259636, 31.369015, 41.590725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353653, 30.985558, 41.526527>,  <36.410065, 30.755484, 41.488007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353653, 30.985558, 41.526527>,  <36.259636, 31.369015, 41.590725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353653, 30.985558, 41.526527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336662, -0.235196, 0.911779,
		-0.911819, -0.160274, -0.378020,
		0.235043, -0.958642, -0.160498,
		36.424168, 30.697966, 41.478378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763901, 31.063366, 41.936413>,  <36.259636, 31.369015, 41.590725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763901, 31.063366, 41.936413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045933, 30.780706, 41.912704>,  <36.215153, 30.611111, 41.898479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045933, 30.780706, 41.912704>,  <35.763901, 31.063366, 41.936413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045933, 30.780706, 41.912704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054528, -0.137358, 0.989019,
		-0.707029, -0.694106, -0.135380,
		0.705079, -0.706647, -0.059268,
		36.257458, 30.568712, 41.894924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575848, 30.404301, 42.455486>,  <35.763901, 31.063366, 41.936413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575848, 30.404301, 42.455486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966938, 30.394678, 42.372086>,  <36.201591, 30.388905, 42.322044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966938, 30.394678, 42.372086>,  <35.575848, 30.404301, 42.455486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966938, 30.394678, 42.372086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177156, -0.438098, 0.881298,
		-0.112542, -0.898605, -0.424079,
		0.977727, -0.024055, -0.208497,
		36.260258, 30.387463, 42.309536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902996, 29.643396, 42.654789>,  <35.575848, 30.404301, 42.455486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902996, 29.643396, 42.654789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190331, 29.921667, 42.652790>,  <36.362732, 30.088629, 42.651592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190331, 29.921667, 42.652790>,  <35.902996, 29.643396, 42.654789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190331, 29.921667, 42.652790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248468, -0.249844, 0.935864,
		0.649809, -0.673509, -0.352326,
		0.718340, 0.695674, -0.004995,
		36.405834, 30.130369, 42.651291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523457, 29.340181, 42.992485>,  <35.902996, 29.643396, 42.654789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523457, 29.340181, 42.992485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601254, 29.731936, 43.014305>,  <36.647934, 29.966988, 43.027397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601254, 29.731936, 43.014305>,  <36.523457, 29.340181, 42.992485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601254, 29.731936, 43.014305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241637, -0.101735, 0.965019,
		0.950675, -0.174510, -0.256442,
		0.194495, 0.979386, 0.054549,
		36.659603, 30.025751, 43.030670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174343, 29.277973, 43.454365>,  <36.523457, 29.340181, 42.992485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174343, 29.277973, 43.454365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018044, 29.646093, 43.462051>,  <36.924263, 29.866964, 43.466663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018044, 29.646093, 43.462051>,  <37.174343, 29.277973, 43.454365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018044, 29.646093, 43.462051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155338, 0.045351, 0.986820,
		0.907297, 0.388580, -0.160678,
		-0.390745, 0.920298, 0.019215,
		36.900822, 29.922182, 43.467815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605114, 29.471703, 43.921886>,  <37.174343, 29.277973, 43.454365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605114, 29.471703, 43.921886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317230, 29.749315, 43.929226>,  <37.144501, 29.915884, 43.933628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317230, 29.749315, 43.929226>,  <37.605114, 29.471703, 43.921886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317230, 29.749315, 43.929226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167865, 0.148315, 0.974589,
		0.673676, 0.704501, -0.223247,
		-0.719710, 0.694033, 0.018345,
		37.101318, 29.957525, 43.934731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931862, 29.916559, 44.252975>,  <37.605114, 29.471703, 43.921886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931862, 29.916559, 44.252975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540352, 29.980667, 44.304054>,  <37.305447, 30.019133, 44.334702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540352, 29.980667, 44.304054>,  <37.931862, 29.916559, 44.252975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540352, 29.980667, 44.304054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159872, 0.207391, 0.965106,
		0.128196, 0.965040, -0.228612,
		-0.978778, 0.160272, 0.127697,
		37.246719, 30.028749, 44.342361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025703, 30.351877, 44.681107>,  <37.931862, 29.916559, 44.252975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025703, 30.351877, 44.681107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628525, 30.306810, 44.666294>,  <37.390217, 30.279770, 44.657406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628525, 30.306810, 44.666294>,  <38.025703, 30.351877, 44.681107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628525, 30.306810, 44.666294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091697, 0.531371, 0.842162,
		-0.075208, 0.839614, -0.537952,
		-0.992943, -0.112666, -0.037027,
		37.330643, 30.273010, 44.655186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616585, 31.005329, 44.807358>,  <38.025703, 30.351877, 44.681107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616585, 31.005329, 44.807358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400295, 30.695984, 44.939739>,  <37.270523, 30.510376, 45.019169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400295, 30.695984, 44.939739>,  <37.616585, 31.005329, 44.807358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400295, 30.695984, 44.939739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068979, 0.351336, 0.933705,
		-0.838370, 0.527702, -0.136629,
		-0.540720, -0.773365, 0.330950,
		37.238079, 30.463974, 45.039024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048355, 31.284197, 45.022682>,  <37.616585, 31.005329, 44.807358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048355, 31.284197, 45.022682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077923, 30.943199, 45.229675>,  <37.095665, 30.738600, 45.353870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077923, 30.943199, 45.229675>,  <37.048355, 31.284197, 45.022682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077923, 30.943199, 45.229675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185592, 0.521599, 0.832761,
		-0.979843, 0.034483, 0.196772,
		0.073920, -0.852494, 0.517485,
		37.100098, 30.687450, 45.384922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596798, 31.335627, 45.623138>,  <37.048355, 31.284197, 45.022682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596798, 31.335627, 45.623138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853024, 31.044565, 45.721279>,  <37.006760, 30.869928, 45.780163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853024, 31.044565, 45.721279>,  <36.596798, 31.335627, 45.623138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853024, 31.044565, 45.721279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200932, 0.467200, 0.861017,
		-0.741149, -0.502239, 0.445481,
		0.640565, -0.727654, 0.245349,
		37.045193, 30.826269, 45.794884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483032, 31.252924, 46.288876>,  <36.596798, 31.335627, 45.623138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483032, 31.252924, 46.288876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831657, 31.059927, 46.254051>,  <37.040833, 30.944128, 46.233154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831657, 31.059927, 46.254051>,  <36.483032, 31.252924, 46.288876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831657, 31.059927, 46.254051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304795, 0.394116, 0.867048,
		-0.384030, -0.782224, 0.490557,
		0.871562, -0.482492, -0.087066,
		37.093124, 30.915180, 46.227932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561760, 30.755032, 46.864643>,  <36.483032, 31.252924, 46.288876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561760, 30.755032, 46.864643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936310, 30.815439, 46.737904>,  <37.161041, 30.851683, 46.661858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936310, 30.815439, 46.737904>,  <36.561760, 30.755032, 46.864643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936310, 30.815439, 46.737904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313684, 0.044995, 0.948461,
		0.157491, -0.987507, -0.005239,
		0.936375, 0.151018, -0.316852,
		37.217224, 30.860744, 46.642849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019466, 30.291752, 47.301826>,  <36.561760, 30.755032, 46.864643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019466, 30.291752, 47.301826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258595, 30.582424, 47.166451>,  <37.402073, 30.756828, 47.085224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258595, 30.582424, 47.166451>,  <37.019466, 30.291752, 47.301826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258595, 30.582424, 47.166451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339648, 0.152802, 0.928058,
		0.726117, -0.669764, -0.155468,
		0.597824, 0.726683, -0.338436,
		37.437943, 30.800428, 47.064919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629681, 30.082644, 47.574150>,  <37.019466, 30.291752, 47.301826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629681, 30.082644, 47.574150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648193, 30.471436, 47.481964>,  <37.659302, 30.704710, 47.426651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648193, 30.471436, 47.481964>,  <37.629681, 30.082644, 47.574150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648193, 30.471436, 47.481964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285632, 0.208202, 0.935450,
		0.957221, -0.109118, -0.267994,
		0.046278, 0.971980, -0.230463,
		37.662075, 30.763029, 47.412827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212868, 30.380941, 47.896511>,  <37.629681, 30.082644, 47.574150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212868, 30.380941, 47.896511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.006474, 30.720608, 47.851471>,  <37.882637, 30.924408, 47.824448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.006474, 30.720608, 47.851471>,  <38.212868, 30.380941, 47.896511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006474, 30.720608, 47.851471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250665, 0.275381, 0.928080,
		0.819103, 0.450646, -0.354948,
		-0.515982, 0.849166, -0.112604,
		37.851681, 30.975357, 47.817688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514664, 30.838636, 48.336475>,  <38.212868, 30.380941, 47.896511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514664, 30.838636, 48.336475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.155891, 31.005939, 48.279102>,  <37.940628, 31.106321, 48.244678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.155891, 31.005939, 48.279102>,  <38.514664, 30.838636, 48.336475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155891, 31.005939, 48.279102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017026, 0.291478, 0.956426,
		0.441840, 0.860291, -0.254315,
		-0.896932, 0.418258, -0.143434,
		37.886810, 31.131416, 48.236073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600574, 31.451458, 48.739193>,  <38.514664, 30.838636, 48.336475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600574, 31.451458, 48.739193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210388, 31.375084, 48.695358>,  <37.976276, 31.329260, 48.669056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210388, 31.375084, 48.695358>,  <38.600574, 31.451458, 48.739193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210388, 31.375084, 48.695358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172457, 0.353350, 0.919458,
		-0.136834, 0.915799, -0.377609,
		-0.975467, -0.190934, -0.109585,
		37.917747, 31.317804, 48.662483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169586, 31.937166, 48.483601>,  <38.600574, 31.451458, 48.739193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169586, 31.937166, 48.483601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546032, 31.928507, 48.618561>,  <38.771900, 31.923311, 48.699539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546032, 31.928507, 48.618561>,  <38.169586, 31.937166, 48.483601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546032, 31.928507, 48.618561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328254, 0.297563, -0.896496,
		-0.080993, 0.954457, 0.287145,
		0.941111, -0.021647, 0.337405,
		38.828365, 31.922012, 48.719784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449577, 32.494141, 48.180679>,  <38.169586, 31.937166, 48.483601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449577, 32.494141, 48.180679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.760204, 32.266697, 48.289219>,  <38.946579, 32.130230, 48.354343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.760204, 32.266697, 48.289219>,  <38.449577, 32.494141, 48.180679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760204, 32.266697, 48.289219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425952, 0.156487, -0.891110,
		0.464230, 0.807587, 0.363722,
		0.776566, -0.568608, 0.271347,
		38.993176, 32.096115, 48.370625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056667, 32.957146, 48.193142>,  <38.449577, 32.494141, 48.180679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056667, 32.957146, 48.193142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183754, 32.579365, 48.159542>,  <39.260006, 32.352695, 48.139381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183754, 32.579365, 48.159542>,  <39.056667, 32.957146, 48.193142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183754, 32.579365, 48.159542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529509, 0.250223, -0.810561,
		0.786558, 0.213053, 0.579599,
		0.317721, -0.944456, -0.084001,
		39.279072, 32.296028, 48.134342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682785, 33.141582, 47.983910>,  <39.056667, 32.957146, 48.193142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682785, 33.141582, 47.983910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636303, 32.753395, 47.899353>,  <39.608414, 32.520481, 47.848621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636303, 32.753395, 47.899353>,  <39.682785, 33.141582, 47.983910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636303, 32.753395, 47.899353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245344, 0.178188, -0.952919,
		0.962446, -0.162599, 0.217392,
		-0.116207, -0.970469, -0.211389,
		39.601440, 32.462254, 47.835938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288311, 33.027111, 47.718403>,  <39.682785, 33.141582, 47.983910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288311, 33.027111, 47.718403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039482, 32.735909, 47.603146>,  <39.890182, 32.561188, 47.533993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039482, 32.735909, 47.603146>,  <40.288311, 33.027111, 47.718403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039482, 32.735909, 47.603146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325414, 0.094322, -0.940855,
		0.712129, -0.679048, 0.178229,
		-0.622075, -0.728009, -0.288141,
		39.852859, 32.517506, 47.516705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666294, 32.555805, 47.269852>,  <40.288311, 33.027111, 47.718403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666294, 32.555805, 47.269852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292965, 32.458263, 47.164444>,  <40.068966, 32.399738, 47.101200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292965, 32.458263, 47.164444>,  <40.666294, 32.555805, 47.269852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292965, 32.458263, 47.164444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269636, 0.008563, -0.962924,
		0.237073, -0.969773, 0.057761,
		-0.933324, -0.243858, -0.263516,
		40.012966, 32.385105, 47.085388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723969, 31.993574, 46.855114>,  <40.666294, 32.555805, 47.269852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723969, 31.993574, 46.855114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.356544, 32.114063, 46.752735>,  <40.136089, 32.186356, 46.691307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.356544, 32.114063, 46.752735>,  <40.723969, 31.993574, 46.855114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356544, 32.114063, 46.752735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223833, -0.137321, -0.964905,
		-0.325800, -0.943614, 0.058714,
		-0.918560, 0.301224, -0.255951,
		40.080975, 32.204430, 46.675949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382793, 31.568001, 46.410423>,  <40.723969, 31.993574, 46.855114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382793, 31.568001, 46.410423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.167477, 31.893589, 46.323071>,  <40.038284, 32.088940, 46.270657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.167477, 31.893589, 46.323071>,  <40.382793, 31.568001, 46.410423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167477, 31.893589, 46.323071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138867, -0.169922, -0.975624,
		-0.831236, -0.555502, -0.021565,
		-0.538297, 0.813968, -0.218387,
		40.005989, 32.137779, 46.257553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827148, 31.399006, 45.801449>,  <40.382793, 31.568001, 46.410423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827148, 31.399006, 45.801449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897156, 31.792818, 45.798183>,  <39.939159, 32.029106, 45.796223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897156, 31.792818, 45.798183>,  <39.827148, 31.399006, 45.801449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.897156, 31.792818, 45.798183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087421, 0.007277, -0.996145,
		-0.980677, 0.175056, 0.087342,
		0.175016, 0.984532, -0.008167,
		39.949661, 32.088177, 45.795734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286556, 31.623627, 45.413376>,  <39.827148, 31.399006, 45.801449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286556, 31.623627, 45.413376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573509, 31.902231, 45.407162>,  <39.745682, 32.069393, 45.403435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573509, 31.902231, 45.407162>,  <39.286556, 31.623627, 45.413376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573509, 31.902231, 45.407162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080792, 0.061024, -0.994861,
		-0.691984, 0.714947, 0.100050,
		0.717378, 0.696511, -0.015534,
		39.788723, 32.111183, 45.402500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083786, 32.149338, 45.071735>,  <39.286556, 31.623627, 45.413376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083786, 32.149338, 45.071735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.481144, 32.179733, 45.037331>,  <39.719559, 32.197971, 45.016685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.481144, 32.179733, 45.037331>,  <39.083786, 32.149338, 45.071735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481144, 32.179733, 45.037331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080682, -0.070665, -0.994232,
		-0.081632, 0.994601, -0.064066,
		0.993391, 0.075993, -0.086015,
		39.779160, 32.202530, 45.011528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168877, 32.684429, 44.503666>,  <39.083786, 32.149338, 45.071735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168877, 32.684429, 44.503666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.520649, 32.496819, 44.536213>,  <39.731712, 32.384251, 44.555740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.520649, 32.496819, 44.536213>,  <39.168877, 32.684429, 44.503666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520649, 32.496819, 44.536213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000697, -0.169659, -0.985503,
		0.476032, 0.866735, -0.148876,
		0.879428, -0.469027, 0.081367,
		39.784477, 32.356110, 44.560623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566059, 33.107006, 44.144302>,  <39.168877, 32.684429, 44.503666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566059, 33.107006, 44.144302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.774750, 32.767040, 44.173805>,  <39.899963, 32.563061, 44.191505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.774750, 32.767040, 44.173805>,  <39.566059, 33.107006, 44.144302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774750, 32.767040, 44.173805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053112, -0.053926, -0.997131,
		0.851456, 0.524151, 0.017006,
		0.521730, -0.849916, 0.073754,
		39.931271, 32.512066, 44.195930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169922, 33.164867, 43.722305>,  <39.566059, 33.107006, 44.144302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169922, 33.164867, 43.722305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071869, 32.780190, 43.771374>,  <40.013039, 32.549381, 43.800816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071869, 32.780190, 43.771374>,  <40.169922, 33.164867, 43.722305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071869, 32.780190, 43.771374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061812, -0.141775, -0.987967,
		0.967518, -0.234596, 0.094197,
		-0.245128, -0.961699, 0.122669,
		39.998329, 32.491680, 43.808174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740932, 32.695232, 43.361942>,  <40.169922, 33.164867, 43.722305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.740932, 32.695232, 43.361942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406845, 32.481346, 43.413303>,  <40.206390, 32.353016, 43.444118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406845, 32.481346, 43.413303>,  <40.740932, 32.695232, 43.361942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406845, 32.481346, 43.413303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090463, -0.363908, -0.927032,
		0.542422, -0.762662, 0.352315,
		-0.835222, -0.534714, 0.128399,
		40.156277, 32.320930, 43.451824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851093, 32.105198, 42.962624>,  <40.740932, 32.695232, 43.361942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.851093, 32.105198, 42.962624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.454510, 32.076069, 43.005917>,  <40.216560, 32.058590, 43.031891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.454510, 32.076069, 43.005917>,  <40.851093, 32.105198, 42.962624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454510, 32.076069, 43.005917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081003, -0.306643, -0.948371,
		0.102252, -0.949034, 0.298124,
		-0.991455, -0.072824, 0.108230,
		40.157074, 32.054222, 43.038387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757286, 31.468618, 42.740398>,  <40.851093, 32.105198, 42.962624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.757286, 31.468618, 42.740398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390060, 31.626127, 42.722023>,  <40.169727, 31.720633, 42.710999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390060, 31.626127, 42.722023>,  <40.757286, 31.468618, 42.740398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390060, 31.626127, 42.722023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121467, -0.389688, -0.912902,
		-0.377358, -0.832526, 0.405588,
		-0.918067, 0.393757, -0.045928,
		40.114643, 31.744259, 42.708244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435570, 30.992861, 42.408646>,  <40.757286, 31.468618, 42.740398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.435570, 30.992861, 42.408646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202183, 31.316555, 42.381222>,  <40.062149, 31.510771, 42.364769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202183, 31.316555, 42.381222>,  <40.435570, 30.992861, 42.408646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202183, 31.316555, 42.381222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231300, -0.246502, -0.941136,
		-0.778499, -0.533269, 0.331003,
		-0.583472, 0.809235, -0.068556,
		40.027142, 31.559326, 42.360657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818035, 30.761219, 42.175026>,  <40.435570, 30.992861, 42.408646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818035, 30.761219, 42.175026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845238, 31.147026, 42.072983>,  <39.861561, 31.378510, 42.011757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845238, 31.147026, 42.072983>,  <39.818035, 30.761219, 42.175026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845238, 31.147026, 42.072983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308562, -0.222830, -0.924736,
		-0.948770, 0.141604, 0.282460,
		0.068006, 0.964518, -0.255108,
		39.865639, 31.436382, 41.996449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364109, 30.825008, 41.743584>,  <39.818035, 30.761219, 42.175026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364109, 30.825008, 41.743584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538242, 31.177183, 41.668415>,  <39.642723, 31.388489, 41.623314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538242, 31.177183, 41.668415>,  <39.364109, 30.825008, 41.743584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538242, 31.177183, 41.668415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184547, -0.117031, -0.975831,
		-0.881150, 0.459495, 0.111534,
		0.435336, 0.880436, -0.187921,
		39.668842, 31.441315, 41.612038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856400, 31.343311, 41.379303>,  <39.364109, 30.825008, 41.743584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856400, 31.343311, 41.379303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230022, 31.458349, 41.294617>,  <39.454197, 31.527372, 41.243805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230022, 31.458349, 41.294617>,  <38.856400, 31.343311, 41.379303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230022, 31.458349, 41.294617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284469, 0.240797, -0.927952,
		-0.215893, 0.926988, 0.306730,
		0.934060, 0.287593, -0.211713,
		39.510239, 31.544626, 41.231102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791508, 31.895281, 40.954353>,  <38.856400, 31.343311, 41.379303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791508, 31.895281, 40.954353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178295, 31.809633, 40.899048>,  <39.410370, 31.758245, 40.865864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178295, 31.809633, 40.899048>,  <38.791508, 31.895281, 40.954353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178295, 31.809633, 40.899048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104872, 0.160184, -0.981500,
		0.232306, 0.963584, 0.132438,
		0.966972, -0.214119, -0.138265,
		39.468388, 31.745398, 40.857567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045746, 32.464108, 40.513504>,  <38.791508, 31.895281, 40.954353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045746, 32.464108, 40.513504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.278236, 32.139938, 40.484138>,  <39.417732, 31.945436, 40.466518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.278236, 32.139938, 40.484138>,  <39.045746, 32.464108, 40.513504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278236, 32.139938, 40.484138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071763, 0.038823, -0.996666,
		0.810571, 0.584557, -0.035593,
		0.581226, -0.810423, -0.073419,
		39.452602, 31.896811, 40.462112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491577, 32.638840, 39.904259>,  <39.045746, 32.464108, 40.513504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491577, 32.638840, 39.904259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524437, 32.242599, 39.948021>,  <39.544151, 32.004856, 39.974277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524437, 32.242599, 39.948021>,  <39.491577, 32.638840, 39.904259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524437, 32.242599, 39.948021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085425, -0.116372, -0.989525,
		0.992952, 0.071940, -0.094181,
		0.082147, -0.990597, 0.109406,
		39.549080, 31.945421, 39.980843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099991, 32.406509, 39.523548>,  <39.491577, 32.638840, 39.904259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099991, 32.406509, 39.523548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.884983, 32.072586, 39.571159>,  <39.755978, 31.872232, 39.599724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.884983, 32.072586, 39.571159>,  <40.099991, 32.406509, 39.523548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884983, 32.072586, 39.571159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183035, -0.253290, -0.949917,
		0.823148, -0.488812, 0.288948,
		-0.537518, -0.834810, 0.119026,
		39.723728, 31.822144, 39.606869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476471, 31.825577, 39.202496>,  <40.099991, 32.406509, 39.523548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476471, 31.825577, 39.202496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095642, 31.703932, 39.215611>,  <39.867146, 31.630945, 39.223480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095642, 31.703932, 39.215611>,  <40.476471, 31.825577, 39.202496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095642, 31.703932, 39.215611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033735, -0.210935, -0.976918,
		0.304009, -0.928990, 0.211084,
		-0.952071, -0.304113, 0.032787,
		39.810020, 31.612698, 39.225445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541500, 31.323671, 38.725227>,  <40.476471, 31.825577, 39.202496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541500, 31.323671, 38.725227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.147427, 31.367002, 38.778416>,  <39.910984, 31.393002, 38.810329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.147427, 31.367002, 38.778416>,  <40.541500, 31.323671, 38.725227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147427, 31.367002, 38.778416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157477, -0.264162, -0.951535,
		-0.067950, -0.958375, 0.277307,
		-0.985182, 0.108327, 0.132973,
		39.851871, 31.399500, 38.818306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302574, 30.766405, 38.402298>,  <40.541500, 31.323671, 38.725227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302574, 30.766405, 38.402298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.998581, 31.026146, 38.413441>,  <39.816185, 31.181990, 38.420128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.998581, 31.026146, 38.413441>,  <40.302574, 30.766405, 38.402298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998581, 31.026146, 38.413441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047982, -0.013311, -0.998760,
		-0.648174, -0.760373, 0.041273,
		-0.759979, 0.649350, 0.027856,
		39.770588, 31.220951, 38.421799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801189, 30.458263, 37.950790>,  <40.302574, 30.766405, 38.402298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801189, 30.458263, 37.950790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738483, 30.851933, 37.983845>,  <39.700859, 31.088135, 38.003677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738483, 30.851933, 37.983845>,  <39.801189, 30.458263, 37.950790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738483, 30.851933, 37.983845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017034, 0.086355, -0.996119,
		-0.987490, -0.154745, -0.030301,
		-0.156761, 0.984173, 0.082639,
		39.691456, 31.147184, 38.008636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424168, 30.553183, 37.335381>,  <39.801189, 30.458263, 37.950790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424168, 30.553183, 37.335381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541054, 30.916693, 37.454533>,  <39.611187, 31.134798, 37.526024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541054, 30.916693, 37.454533>,  <39.424168, 30.553183, 37.335381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541054, 30.916693, 37.454533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005335, 0.309926, -0.950746,
		-0.956337, 0.279414, 0.085717,
		0.292217, 0.908776, 0.297885,
		39.628719, 31.189325, 37.543900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004852, 30.964819, 36.964912>,  <39.424168, 30.553183, 37.335381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004852, 30.964819, 36.964912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331070, 31.169930, 37.072208>,  <39.526798, 31.292995, 37.136585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331070, 31.169930, 37.072208>,  <39.004852, 30.964819, 36.964912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331070, 31.169930, 37.072208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064134, 0.380584, -0.922520,
		-0.575136, 0.769555, 0.277495,
		0.815540, 0.512777, 0.268242,
		39.575733, 31.323763, 37.152679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897194, 31.585499, 36.672840>,  <39.004852, 30.964819, 36.964912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897194, 31.585499, 36.672840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287148, 31.614962, 36.756920>,  <39.521118, 31.632639, 36.807369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287148, 31.614962, 36.756920>,  <38.897194, 31.585499, 36.672840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287148, 31.614962, 36.756920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130327, 0.576679, -0.806508,
		-0.180623, 0.813643, 0.552594,
		0.974880, 0.073656, 0.210201,
		39.579613, 31.637058, 36.819981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119148, 32.352448, 36.701225>,  <38.897194, 31.585499, 36.672840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119148, 32.352448, 36.701225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460629, 32.155224, 36.634190>,  <39.665516, 32.036892, 36.593967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460629, 32.155224, 36.634190>,  <39.119148, 32.352448, 36.701225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460629, 32.155224, 36.634190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285565, 0.712353, -0.641097,
		0.435479, 0.499449, 0.748938,
		0.853704, -0.493055, -0.167590,
		39.716740, 32.007309, 36.583912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743053, 32.836216, 36.861969>,  <39.119148, 32.352448, 36.701225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743053, 32.836216, 36.861969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855568, 32.545322, 36.611526>,  <39.923077, 32.370785, 36.461262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855568, 32.545322, 36.611526>,  <39.743053, 32.836216, 36.861969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855568, 32.545322, 36.611526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270347, 0.686072, -0.675439,
		0.920756, 0.020725, 0.389588,
		0.281284, -0.727238, -0.626102,
		39.939953, 32.327152, 36.423695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377254, 33.038059, 36.688744>,  <39.743053, 32.836216, 36.861969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377254, 33.038059, 36.688744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.244919, 32.779762, 36.413479>,  <40.165520, 32.624786, 36.248322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.244919, 32.779762, 36.413479>,  <40.377254, 33.038059, 36.688744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244919, 32.779762, 36.413479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308959, 0.614920, -0.725546,
		0.891679, -0.452651, -0.003930,
		-0.330836, -0.645740, -0.688162,
		40.145668, 32.586040, 36.207031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031780, 32.991951, 36.144329>,  <40.377254, 33.038059, 36.688744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031780, 32.991951, 36.144329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662048, 32.927433, 36.005997>,  <40.440208, 32.888721, 35.922997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662048, 32.927433, 36.005997>,  <41.031780, 32.991951, 36.144329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662048, 32.927433, 36.005997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098891, 0.774071, -0.625327,
		0.368562, -0.612207, -0.699546,
		-0.924328, -0.161293, -0.345835,
		40.384750, 32.879044, 35.902245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085464, 33.260048, 35.486904>,  <41.031780, 32.991951, 36.144329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085464, 33.260048, 35.486904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.691338, 33.193768, 35.503349>,  <40.454861, 33.153999, 35.513218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.691338, 33.193768, 35.503349>,  <41.085464, 33.260048, 35.486904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.691338, 33.193768, 35.503349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132404, 0.589639, -0.796740,
		0.107777, -0.790487, -0.602922,
		-0.985319, -0.165699, 0.041114,
		40.395741, 33.144058, 35.515682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853249, 33.130928, 34.759071>,  <41.085464, 33.260048, 35.486904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853249, 33.130928, 34.759071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.517643, 33.222691, 34.956421>,  <40.316280, 33.277748, 35.074833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.517643, 33.222691, 34.956421>,  <40.853249, 33.130928, 34.759071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.517643, 33.222691, 34.956421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166014, 0.755596, -0.633651,
		-0.518157, -0.613553, -0.595874,
		-0.839019, 0.229408, 0.493376,
		40.265938, 33.291512, 35.104435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325203, 33.184727, 34.239853>,  <40.853249, 33.130928, 34.759071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325203, 33.184727, 34.239853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208645, 33.381207, 34.568195>,  <40.138710, 33.499096, 34.765202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208645, 33.381207, 34.568195>,  <40.325203, 33.184727, 34.239853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208645, 33.381207, 34.568195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171473, 0.817379, -0.549990,
		-0.941108, -0.301022, -0.153955,
		-0.291399, 0.491201, 0.820859,
		40.121223, 33.528568, 34.814453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677204, 33.402977, 34.094692>,  <40.325203, 33.184727, 34.239853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677204, 33.402977, 34.094692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.830673, 33.634808, 34.382271>,  <39.922756, 33.773907, 34.554817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.830673, 33.634808, 34.382271>,  <39.677204, 33.402977, 34.094692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830673, 33.634808, 34.382271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101731, 0.800314, -0.590887,
		-0.917847, 0.153571, 0.366023,
		0.383677, 0.579580, 0.718943,
		39.945778, 33.808681, 34.597954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301647, 33.978249, 34.064991>,  <39.677204, 33.402977, 34.094692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301647, 33.978249, 34.064991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639145, 34.080177, 34.253956>,  <39.841644, 34.141335, 34.367332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639145, 34.080177, 34.253956>,  <39.301647, 33.978249, 34.064991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639145, 34.080177, 34.253956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010802, 0.871884, -0.489594,
		-0.536644, 0.418193, 0.732890,
		0.843740, 0.254821, 0.472408,
		39.892265, 34.156624, 34.395679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322876, 34.780643, 34.306858>,  <39.301647, 33.978249, 34.064991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322876, 34.780643, 34.306858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697338, 34.646729, 34.263908>,  <39.922016, 34.566380, 34.238140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697338, 34.646729, 34.263908>,  <39.322876, 34.780643, 34.306858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697338, 34.646729, 34.263908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209377, 0.776208, -0.594695,
		0.282437, 0.534247, 0.796749,
		0.936157, -0.334785, -0.107371,
		39.978184, 34.546291, 34.231697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858498, 35.382675, 34.455517>,  <39.322876, 34.780643, 34.306858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858498, 35.382675, 34.455517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976986, 35.099571, 34.198975>,  <40.048077, 34.929710, 34.045052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976986, 35.099571, 34.198975>,  <39.858498, 35.382675, 34.455517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976986, 35.099571, 34.198975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298123, 0.706455, -0.641906,
		0.907401, -0.001057, 0.420264,
		0.296219, -0.707757, -0.641354,
		40.065853, 34.887245, 34.006569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579227, 35.394012, 34.307938>,  <39.858498, 35.382675, 34.455517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.579227, 35.394012, 34.307938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.389709, 35.250969, 33.986034>,  <40.275997, 35.165142, 33.792892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.389709, 35.250969, 33.986034>,  <40.579227, 35.394012, 34.307938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.389709, 35.250969, 33.986034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562350, 0.580391, -0.588990,
		0.677703, -0.731615, -0.073881,
		-0.473794, -0.357613, -0.804756,
		40.247570, 35.143684, 33.744606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.926510, 34.811729, 33.840237>,  <40.579227, 35.394012, 34.307938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.926510, 34.811729, 33.840237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692375, 35.064465, 33.636997>,  <40.551895, 35.216106, 33.515053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692375, 35.064465, 33.636997>,  <40.926510, 34.811729, 33.840237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.692375, 35.064465, 33.636997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802837, 0.364095, -0.472110,
		-0.113298, -0.684266, -0.720377,
		-0.585334, 0.631835, -0.508103,
		40.516773, 35.254013, 33.484566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.226955, 34.936172, 33.085857>,  <40.926510, 34.811729, 33.840237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.226955, 34.936172, 33.085857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994663, 35.242054, 33.197552>,  <40.855289, 35.425583, 33.264568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994663, 35.242054, 33.197552>,  <41.226955, 34.936172, 33.085857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994663, 35.242054, 33.197552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684011, 0.644333, -0.342000,
		-0.441452, -0.007609, -0.897253,
		-0.580732, 0.764707, 0.279238,
		40.820442, 35.471466, 33.281322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984917, 35.027405, 33.426014>,  <41.226955, 34.936172, 33.085857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984917, 35.027405, 33.426014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343166, 35.205303, 33.423012>,  <42.558117, 35.312042, 33.421211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343166, 35.205303, 33.423012>,  <41.984917, 35.027405, 33.426014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.343166, 35.205303, 33.423012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444222, 0.895182, 0.036281,
		0.022856, -0.029160, 0.999314,
		0.895625, 0.444746, -0.007507,
		42.611855, 35.338726, 33.420761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.756313, 35.654091, 33.600685>,  <41.984917, 35.027405, 33.426014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.756313, 35.654091, 33.600685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.138298, 35.719791, 33.501839>,  <42.367489, 35.759212, 33.442532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.138298, 35.719791, 33.501839>,  <41.756313, 35.654091, 33.600685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.138298, 35.719791, 33.501839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161253, 0.986378, 0.032486,
		0.249089, 0.008826, 0.968440,
		0.954962, 0.164256, -0.247120,
		42.424786, 35.769070, 33.427704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048428, 36.166317, 33.991192>,  <41.756313, 35.654091, 33.600685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048428, 36.166317, 33.991192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304302, 36.171196, 33.683773>,  <42.457825, 36.174122, 33.499321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304302, 36.171196, 33.683773>,  <42.048428, 36.166317, 33.991192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.304302, 36.171196, 33.683773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176775, 0.975407, -0.131654,
		0.748035, 0.220075, 0.626107,
		0.639683, 0.012198, -0.768542,
		42.496208, 36.174854, 33.453209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.572479, 36.682255, 34.195618>,  <42.048428, 36.166317, 33.991192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.572479, 36.682255, 34.195618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.595238, 36.653435, 33.797306>,  <42.608891, 36.636143, 33.558319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.595238, 36.653435, 33.797306>,  <42.572479, 36.682255, 34.195618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.595238, 36.653435, 33.797306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000785, 0.997389, -0.072214,
		0.998380, 0.004891, 0.056688,
		0.056893, -0.072052, -0.995777,
		42.612305, 36.631821, 33.498573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.885735, 37.275860, 33.990314>,  <42.572479, 36.682255, 34.195618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.885735, 37.275860, 33.990314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.762447, 37.163052, 33.626896>,  <42.688473, 37.095367, 33.408844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.762447, 37.163052, 33.626896>,  <42.885735, 37.275860, 33.990314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.762447, 37.163052, 33.626896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047848, 0.958433, -0.281276,
		0.950111, -0.043223, -0.308903,
		-0.308221, -0.282024, -0.908550,
		42.669979, 37.078445, 33.354332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.367542, 37.647400, 33.440231>,  <42.885735, 37.275860, 33.990314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.367542, 37.647400, 33.440231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.032681, 37.532516, 33.254032>,  <42.831764, 37.463589, 33.142315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.032681, 37.532516, 33.254032>,  <43.367542, 37.647400, 33.440231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.032681, 37.532516, 33.254032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075439, 0.903543, -0.421804,
		0.541740, -0.317998, -0.778072,
		-0.837154, -0.287205, -0.465495,
		42.781536, 37.446354, 33.114384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.477215, 37.808529, 32.750492>,  <43.367542, 37.647400, 33.440231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.477215, 37.808529, 32.750492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.082722, 37.769905, 32.804195>,  <42.846027, 37.746731, 32.836418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.082722, 37.769905, 32.804195>,  <43.477215, 37.808529, 32.750492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.082722, 37.769905, 32.804195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148286, 0.875739, -0.459448,
		-0.073207, -0.473030, -0.878000,
		-0.986231, -0.096560, 0.134254,
		42.786854, 37.740936, 32.844471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.076317, 37.975983, 32.038475>,  <43.477215, 37.808529, 32.750492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.076317, 37.975983, 32.038475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.815594, 38.009441, 32.339977>,  <42.659161, 38.029514, 32.520878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.815594, 38.009441, 32.339977>,  <43.076317, 37.975983, 32.038475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.815594, 38.009441, 32.339977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205297, 0.937329, -0.281545,
		-0.730064, -0.338259, -0.593791,
		-0.651812, 0.083643, 0.753754,
		42.620049, 38.034534, 32.566105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.661102, 38.515400, 31.790661>,  <43.076317, 37.975983, 32.038475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.661102, 38.515400, 31.790661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.570347, 38.486725, 32.179173>,  <42.515892, 38.469521, 32.412281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.570347, 38.486725, 32.179173>,  <42.661102, 38.515400, 31.790661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.570347, 38.486725, 32.179173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107462, 0.993041, 0.048188,
		-0.967973, -0.093442, -0.233015,
		-0.226890, -0.071685, 0.971279,
		42.502281, 38.465218, 32.470554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.005264, 38.956520, 31.820745>,  <42.661102, 38.515400, 31.790661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.005264, 38.956520, 31.820745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.193645, 38.936138, 32.173019>,  <42.306675, 38.923908, 32.384384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.193645, 38.936138, 32.173019>,  <42.005264, 38.956520, 31.820745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.193645, 38.936138, 32.173019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125263, 0.992077, -0.009588,
		-0.873218, 0.114832, 0.473607,
		0.470955, -0.050953, 0.880684,
		42.334930, 38.920853, 32.437225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827927, 39.577934, 32.154964>,  <42.005264, 38.956520, 31.820745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.827927, 39.577934, 32.154964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.118736, 39.463066, 32.404434>,  <42.293221, 39.394146, 32.554115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.118736, 39.463066, 32.404434>,  <41.827927, 39.577934, 32.154964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.118736, 39.463066, 32.404434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192215, 0.957139, 0.216652,
		-0.659158, -0.037632, 0.751062,
		0.727024, -0.287173, 0.623672,
		42.336845, 39.376915, 32.591537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730217, 40.001766, 32.756615>,  <41.827927, 39.577934, 32.154964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730217, 40.001766, 32.756615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.115562, 39.894764, 32.764423>,  <42.346767, 39.830563, 32.769108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.115562, 39.894764, 32.764423>,  <41.730217, 40.001766, 32.756615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.115562, 39.894764, 32.764423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248611, 0.917890, 0.309307,
		-0.100658, -0.293121, 0.950762,
		0.963359, -0.267504, 0.019520,
		42.404572, 39.814514, 32.770279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.936737, 40.205662, 33.327007>,  <41.730217, 40.001766, 32.756615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.936737, 40.205662, 33.327007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275852, 40.173428, 33.117336>,  <42.479321, 40.154087, 32.991535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275852, 40.173428, 33.117336>,  <41.936737, 40.205662, 33.327007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275852, 40.173428, 33.117336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362083, 0.810131, 0.461068,
		0.387496, -0.580683, 0.715998,
		0.847787, -0.080589, -0.524178,
		42.530190, 40.149250, 32.960083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.461960, 40.463177, 33.789955>,  <41.936737, 40.205662, 33.327007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.461960, 40.463177, 33.789955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.609703, 40.495193, 33.419621>,  <42.698349, 40.514404, 33.197422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.609703, 40.495193, 33.419621>,  <42.461960, 40.463177, 33.789955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.609703, 40.495193, 33.419621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422713, 0.872773, 0.244093,
		0.827581, -0.481519, 0.288528,
		0.369355, 0.080042, -0.925835,
		42.720509, 40.519207, 33.141869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.218090, 40.717712, 33.903797>,  <42.461960, 40.463177, 33.789955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.218090, 40.717712, 33.903797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.118546, 40.828747, 33.532635>,  <43.058819, 40.895367, 33.309937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.118546, 40.828747, 33.532635>,  <43.218090, 40.717712, 33.903797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.118546, 40.828747, 33.532635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547691, 0.830494, 0.101558,
		0.798813, -0.482933, -0.358711,
		-0.248862, 0.277589, -0.927907,
		43.043888, 40.912022, 33.254261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.742947, 41.139999, 33.695496>,  <43.218090, 40.717712, 33.903797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.742947, 41.139999, 33.695496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.461834, 41.235703, 33.427509>,  <43.293167, 41.293125, 33.266716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.461834, 41.235703, 33.427509>,  <43.742947, 41.139999, 33.695496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.461834, 41.235703, 33.427509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472224, 0.861243, -0.187791,
		0.532077, -0.448352, -0.718244,
		-0.702779, 0.239253, -0.669970,
		43.250999, 41.307480, 33.226517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.199833, 41.323666, 33.161430>,  <43.742947, 41.139999, 33.695496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.199833, 41.323666, 33.161430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832233, 41.476673, 33.123222>,  <43.611675, 41.568478, 33.100296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832233, 41.476673, 33.123222>,  <44.199833, 41.323666, 33.161430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.832233, 41.476673, 33.123222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391091, 0.853742, -0.343762,
		-0.049947, -0.353273, -0.934186,
		-0.918995, 0.382522, -0.095520,
		43.556534, 41.591431, 33.094566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.243057, 41.614365, 32.523388>,  <44.199833, 41.323666, 33.161430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.243057, 41.614365, 32.523388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.942738, 41.779564, 32.729588>,  <43.762547, 41.878685, 32.853306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.942738, 41.779564, 32.729588>,  <44.243057, 41.614365, 32.523388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.942738, 41.779564, 32.729588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361866, 0.910066, -0.202072,
		-0.552593, 0.034827, -0.832723,
		-0.750795, 0.412998, 0.515499,
		43.717499, 41.903465, 32.884235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.978222, 42.163452, 32.034920>,  <44.243057, 41.614365, 32.523388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.978222, 42.163452, 32.034920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.849586, 42.273811, 32.397236>,  <43.772408, 42.340027, 32.614628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.849586, 42.273811, 32.397236>,  <43.978222, 42.163452, 32.034920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.849586, 42.273811, 32.397236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379424, 0.913997, -0.143689,
		-0.867537, 0.297472, -0.398611,
		-0.321586, 0.275898, 0.905794,
		43.753109, 42.356583, 32.668976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.664246, 42.788647, 31.893778>,  <43.978222, 42.163452, 32.034920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.664246, 42.788647, 31.893778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.745197, 42.782757, 32.285458>,  <43.793766, 42.779221, 32.520466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.745197, 42.782757, 32.285458>,  <43.664246, 42.788647, 31.893778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.745197, 42.782757, 32.285458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410880, 0.908901, -0.071250,
		-0.888944, 0.416752, 0.189990,
		0.202376, -0.014726, 0.979197,
		43.805908, 42.778339, 32.579216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.510265, 43.425152, 32.166050>,  <43.664246, 42.788647, 31.893778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.510265, 43.425152, 32.166050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.749382, 43.281307, 32.452637>,  <43.892853, 43.195000, 32.624588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.749382, 43.281307, 32.452637>,  <43.510265, 43.425152, 32.166050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.749382, 43.281307, 32.452637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345135, 0.922119, 0.174866,
		-0.723549, 0.142743, 0.675352,
		0.597794, -0.359612, 0.716465,
		43.928719, 43.173424, 32.667576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.479034, 43.924873, 32.674969>,  <43.510265, 43.425152, 32.166050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.479034, 43.924873, 32.674969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.806671, 43.711357, 32.759033>,  <44.003254, 43.583248, 32.809471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.806671, 43.711357, 32.759033>,  <43.479034, 43.924873, 32.674969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.806671, 43.711357, 32.759033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491659, 0.841947, 0.222254,
		-0.295578, -0.078719, 0.952070,
		0.819088, -0.533787, 0.210158,
		44.052399, 43.551220, 32.822079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.587048, 44.144810, 33.339329>,  <43.479034, 43.924873, 32.674969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.587048, 44.144810, 33.339329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.924156, 44.001678, 33.178482>,  <44.126423, 43.915798, 33.081974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.924156, 44.001678, 33.178482>,  <43.587048, 44.144810, 33.339329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.924156, 44.001678, 33.178482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515509, 0.751505, 0.411692,
		0.154877, -0.554256, 0.817810,
		0.842771, -0.357827, -0.402115,
		44.176987, 43.894329, 33.057846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.551205, 43.749439, 33.881142>,  <43.587048, 44.144810, 33.339329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.551205, 43.749439, 33.881142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.636070, 43.603630, 34.243824>,  <43.686989, 43.516144, 34.461433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.636070, 43.603630, 34.243824>,  <43.551205, 43.749439, 33.881142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.636070, 43.603630, 34.243824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905396, 0.422484, -0.042008,
		-0.367755, 0.829839, 0.419672,
		0.212165, -0.364521, 0.906703,
		43.699718, 43.494274, 34.515835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.782249, 43.796207, 34.111641>,  <43.551205, 43.749439, 33.881142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.782249, 43.796207, 34.111641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.141369, 43.734745, 34.276730>,  <43.356842, 43.697868, 34.375782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.141369, 43.734745, 34.276730>,  <42.782249, 43.796207, 34.111641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.141369, 43.734745, 34.276730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302328, 0.466402, 0.831305,
		-0.320233, -0.871125, 0.372281,
		0.897802, -0.153660, 0.412722,
		43.410709, 43.688648, 34.400547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.937439, 43.978611, 34.818306>,  <42.782249, 43.796207, 34.111641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.937439, 43.978611, 34.818306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.980923, 44.300491, 35.051765>,  <43.007011, 44.493618, 35.191841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.980923, 44.300491, 35.051765>,  <42.937439, 43.978611, 34.818306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.980923, 44.300491, 35.051765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605137, -0.519374, 0.603374,
		0.788665, 0.287596, -0.543411,
		0.108706, 0.804698, 0.583647,
		43.013535, 44.541901, 35.226860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.138821, 43.299774, 34.890408>,  <42.937439, 43.978611, 34.818306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.138821, 43.299774, 34.890408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.477489, 43.183777, 34.711948>,  <43.680691, 43.114178, 34.604874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.477489, 43.183777, 34.711948>,  <43.138821, 43.299774, 34.890408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.477489, 43.183777, 34.711948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380562, 0.916021, 0.126804,
		0.371908, -0.277148, 0.885931,
		0.846674, -0.289992, -0.446147,
		43.731491, 43.096779, 34.578106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.609051, 43.423100, 35.379150>,  <43.138821, 43.299774, 34.890408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.609051, 43.423100, 35.379150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.825962, 43.124149, 35.532703>,  <42.956108, 42.944778, 35.624836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.825962, 43.124149, 35.532703>,  <42.609051, 43.423100, 35.379150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.825962, 43.124149, 35.532703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643282, 0.663230, 0.382511,
		-0.540480, 0.039515, 0.840429,
		0.542283, -0.747372, 0.383882,
		42.988647, 42.899937, 35.647869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.699535, 43.563076, 36.029381>,  <42.609051, 43.423100, 35.379150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.699535, 43.563076, 36.029381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.980877, 43.316254, 35.888226>,  <43.149681, 43.168159, 35.803532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.980877, 43.316254, 35.888226>,  <42.699535, 43.563076, 36.029381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.980877, 43.316254, 35.888226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710693, 0.620604, 0.331312,
		0.014566, -0.483826, 0.875043,
		0.703352, -0.617061, -0.352891,
		43.191883, 43.131134, 35.782356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.171265, 43.322964, 36.615818>,  <42.699535, 43.563076, 36.029381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.171265, 43.322964, 36.615818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.361645, 43.353703, 36.265373>,  <43.475872, 43.372147, 36.055107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.361645, 43.353703, 36.265373>,  <43.171265, 43.322964, 36.615818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.361645, 43.353703, 36.265373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728577, 0.523506, 0.441720,
		0.492596, -0.848549, 0.193169,
		0.475946, 0.076850, -0.876111,
		43.504429, 43.376759, 36.002541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.704456, 42.949734, 36.519020>,  <43.171265, 43.322964, 36.615818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.704456, 42.949734, 36.519020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.738071, 43.315018, 36.359528>,  <43.758240, 43.534187, 36.263832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.738071, 43.315018, 36.359528>,  <43.704456, 42.949734, 36.519020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.738071, 43.315018, 36.359528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640173, 0.257167, 0.723909,
		0.763621, -0.316090, -0.563001,
		0.084035, 0.913210, -0.398730,
		43.763283, 43.588982, 36.239910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.699753, 42.981289, 37.242657>,  <43.704456, 42.949734, 36.519020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.699753, 42.981289, 37.242657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.319923, 42.858929, 37.270168>,  <43.092026, 42.785511, 37.286674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.319923, 42.858929, 37.270168>,  <43.699753, 42.981289, 37.242657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.319923, 42.858929, 37.270168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294958, -0.945938, -0.134908,
		0.106326, -0.107819, 0.988468,
		-0.949576, -0.305901, 0.068775,
		43.035049, 42.767159, 37.290802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.781944, 42.331665, 37.603828>,  <43.699753, 42.981289, 37.242657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.781944, 42.331665, 37.603828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.453499, 42.339977, 37.375675>,  <43.256432, 42.344963, 37.238785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.453499, 42.339977, 37.375675>,  <43.781944, 42.331665, 37.603828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.453499, 42.339977, 37.375675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204266, -0.922449, -0.327662,
		-0.532954, -0.385559, 0.753196,
		-0.821118, 0.020777, -0.570380,
		43.207165, 42.346210, 37.204559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.609375, 41.670158, 37.551609>,  <43.781944, 42.331665, 37.603828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.609375, 41.670158, 37.551609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.405602, 41.855724, 37.261707>,  <43.283337, 41.967064, 37.087769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.405602, 41.855724, 37.261707>,  <43.609375, 41.670158, 37.551609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.405602, 41.855724, 37.261707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050686, -0.824593, -0.563452,
		-0.859018, -0.323774, 0.396558,
		-0.509430, 0.463916, -0.724751,
		43.252773, 41.994900, 37.044281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.159218, 41.158871, 37.358063>,  <43.609375, 41.670158, 37.551609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.159218, 41.158871, 37.358063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.156479, 41.404922, 37.042706>,  <43.154835, 41.552555, 36.853489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.156479, 41.404922, 37.042706>,  <43.159218, 41.158871, 37.358063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.156479, 41.404922, 37.042706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179269, -0.774886, -0.606147,
		-0.983776, -0.145483, -0.104971,
		-0.006844, 0.615131, -0.788395,
		43.154427, 41.589462, 36.806187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.592186, 40.890625, 36.825272>,  <43.159218, 41.158871, 37.358063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.592186, 40.890625, 36.825272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.863777, 41.107468, 36.627239>,  <43.026733, 41.237576, 36.508419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.863777, 41.107468, 36.627239>,  <42.592186, 40.890625, 36.825272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.863777, 41.107468, 36.627239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015334, -0.684674, -0.728688,
		-0.733998, 0.487172, -0.473192,
		0.678979, 0.542111, -0.495079,
		43.067471, 41.270100, 36.478714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396885, 40.819580, 36.155869>,  <42.592186, 40.890625, 36.825272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.396885, 40.819580, 36.155869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.776520, 40.945450, 36.150066>,  <43.004299, 41.020973, 36.146584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.776520, 40.945450, 36.150066>,  <42.396885, 40.819580, 36.155869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.776520, 40.945450, 36.150066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235113, -0.738268, -0.632205,
		-0.209651, 0.596607, -0.774666,
		0.949088, 0.314676, -0.014509,
		43.061245, 41.039852, 36.145714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.548721, 40.680412, 35.521923>,  <42.396885, 40.819580, 36.155869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.548721, 40.680412, 35.521923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.895550, 40.747974, 35.709393>,  <43.103649, 40.788509, 35.821873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.895550, 40.747974, 35.709393>,  <42.548721, 40.680412, 35.521923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.895550, 40.747974, 35.709393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472077, -0.579087, -0.664682,
		0.159135, 0.797578, -0.581847,
		0.867075, 0.168903, 0.468671,
		43.155674, 40.798645, 35.849995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.079224, 40.816406, 34.972992>,  <42.548721, 40.680412, 35.521923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.079224, 40.816406, 34.972992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.248787, 40.680668, 35.308884>,  <43.350525, 40.599224, 35.510418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.248787, 40.680668, 35.308884>,  <43.079224, 40.816406, 34.972992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.248787, 40.680668, 35.308884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416500, -0.750264, -0.513451,
		0.804257, 0.567403, -0.176704,
		0.423908, -0.339349, 0.839729,
		43.375957, 40.578865, 35.560802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.557938, 40.567669, 34.720470>,  <43.079224, 40.816406, 34.972992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.557938, 40.567669, 34.720470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.597549, 40.380367, 35.071682>,  <43.621319, 40.267986, 35.282410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.597549, 40.380367, 35.071682>,  <43.557938, 40.567669, 34.720470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.597549, 40.380367, 35.071682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315170, -0.822178, -0.474016,
		0.943854, 0.323671, 0.066157,
		0.099032, -0.468252, 0.878028,
		43.627258, 40.239891, 35.335091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.272160, 40.279007, 34.725994>,  <43.557938, 40.567669, 34.720470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.272160, 40.279007, 34.725994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.088173, 40.069511, 35.012806>,  <43.977783, 39.943813, 35.184895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.088173, 40.069511, 35.012806>,  <44.272160, 40.279007, 34.725994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.088173, 40.069511, 35.012806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374451, -0.846617, -0.378188,
		0.805121, 0.094539, 0.585527,
		-0.459964, -0.523738, 0.717030,
		43.950184, 39.912392, 35.227917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.822735, 39.738541, 35.039433>,  <44.272160, 40.279007, 34.725994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.822735, 39.738541, 35.039433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.457870, 39.595543, 35.119591>,  <44.238953, 39.509747, 35.167686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.457870, 39.595543, 35.119591>,  <44.822735, 39.738541, 35.039433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.457870, 39.595543, 35.119591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312500, -0.923068, -0.224251,
		0.265150, -0.141929, 0.953704,
		-0.912162, -0.357492, 0.200399,
		44.184223, 39.488297, 35.179710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.895657, 39.179573, 35.502338>,  <44.822735, 39.738541, 35.039433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.895657, 39.179573, 35.502338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.547619, 39.131416, 35.311157>,  <44.338795, 39.102520, 35.196449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.547619, 39.131416, 35.311157>,  <44.895657, 39.179573, 35.502338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.547619, 39.131416, 35.311157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263588, -0.933052, -0.244819,
		-0.416477, -0.338998, 0.843580,
		-0.870097, -0.120397, -0.477950,
		44.286591, 39.095299, 35.167770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.822849, 38.552540, 35.568520>,  <44.895657, 39.179573, 35.502338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.822849, 38.552540, 35.568520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.544872, 38.632420, 35.292206>,  <44.378086, 38.680347, 35.126419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.544872, 38.632420, 35.292206>,  <44.822849, 38.552540, 35.568520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.544872, 38.632420, 35.292206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104206, -0.922553, -0.371535,
		-0.711479, -0.330177, 0.620307,
		-0.694938, 0.199699, -0.690783,
		44.336391, 38.692329, 35.084972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.325695, 37.947418, 35.534157>,  <44.822849, 38.552540, 35.568520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.325695, 37.947418, 35.534157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.302357, 38.147446, 35.188549>,  <44.288353, 38.267464, 34.981186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.302357, 38.147446, 35.188549>,  <44.325695, 37.947418, 35.534157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.302357, 38.147446, 35.188549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015747, -0.864924, -0.501656,
		-0.998172, -0.042875, 0.042590,
		-0.058346, 0.500068, -0.864018,
		44.284855, 38.297466, 34.929344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.833694, 37.555805, 35.134068>,  <44.325695, 37.947418, 35.534157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.833694, 37.555805, 35.134068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.065723, 37.775398, 34.893360>,  <44.204941, 37.907154, 34.748936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.065723, 37.775398, 34.893360>,  <43.833694, 37.555805, 35.134068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.065723, 37.775398, 34.893360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196341, -0.811217, -0.550798,
		-0.790548, 0.201350, -0.578353,
		0.580073, 0.548986, -0.601772,
		44.239746, 37.940094, 34.712830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.661789, 37.224873, 34.570683>,  <43.833694, 37.555805, 35.134068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.661789, 37.224873, 34.570683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.011875, 37.402103, 34.493042>,  <44.221928, 37.508442, 34.446457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.011875, 37.402103, 34.493042>,  <43.661789, 37.224873, 34.570683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.011875, 37.402103, 34.493042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309573, -0.821372, -0.479075,
		-0.371701, 0.359205, -0.856044,
		0.875216, 0.443081, -0.194104,
		44.274441, 37.535027, 34.434811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.911247, 37.241062, 33.836445>,  <43.661789, 37.224873, 34.570683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.911247, 37.241062, 33.836445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.264694, 37.276749, 34.020294>,  <44.476765, 37.298161, 34.130604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.264694, 37.276749, 34.020294>,  <43.911247, 37.241062, 33.836445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.264694, 37.276749, 34.020294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409698, -0.622523, -0.666793,
		0.226637, 0.777500, -0.586626,
		0.883619, 0.089219, 0.459627,
		44.529781, 37.303513, 34.158184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.298695, 37.149811, 33.303364>,  <43.911247, 37.241062, 33.836445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.298695, 37.149811, 33.303364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.569267, 37.119511, 33.596405>,  <44.731609, 37.101330, 33.772228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.569267, 37.119511, 33.596405>,  <44.298695, 37.149811, 33.303364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.569267, 37.119511, 33.596405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570365, -0.575440, -0.586134,
		0.465966, 0.814329, -0.346042,
		0.676431, -0.075748, 0.732600,
		44.772198, 37.096786, 33.816185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.001896, 37.380058, 33.002769>,  <44.298695, 37.149811, 33.303364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.001896, 37.380058, 33.002769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.047523, 37.136677, 33.316910>,  <45.074902, 36.990650, 33.505394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.047523, 37.136677, 33.316910>,  <45.001896, 37.380058, 33.002769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.047523, 37.136677, 33.316910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647363, -0.554118, -0.523330,
		0.753597, 0.568105, 0.330679,
		0.114071, -0.608450, 0.785351,
		45.081745, 36.954144, 33.552517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.589504, 37.001450, 32.782303>,  <45.001896, 37.380058, 33.002769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.589504, 37.001450, 32.782303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.502106, 36.782829, 33.105671>,  <45.449669, 36.651657, 33.299694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.502106, 36.782829, 33.105671>,  <45.589504, 37.001450, 32.782303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.502106, 36.782829, 33.105671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499373, -0.774370, -0.388559,
		0.838384, 0.318807, 0.442126,
		-0.218494, -0.546547, 0.808423,
		45.436558, 36.618866, 33.348198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.153633, 36.668175, 33.076550>,  <45.589504, 37.001450, 32.782303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.153633, 36.668175, 33.076550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.833256, 36.460419, 33.195690>,  <45.641029, 36.335766, 33.267174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.833256, 36.460419, 33.195690>,  <46.153633, 36.668175, 33.076550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.833256, 36.460419, 33.195690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463768, -0.852822, -0.240031,
		0.378685, -0.054118, 0.923942,
		-0.800948, -0.519390, 0.297853,
		45.592972, 36.304600, 33.285046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.466564, 36.174820, 33.434345>,  <46.153633, 36.668175, 33.076550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.466564, 36.174820, 33.434345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.107510, 36.037949, 33.323227>,  <45.892078, 35.955826, 33.256557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.107510, 36.037949, 33.323227>,  <46.466564, 36.174820, 33.434345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.107510, 36.037949, 33.323227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410199, -0.879144, -0.242575,
		-0.161220, -0.331695, 0.929509,
		-0.897633, -0.342175, -0.277796,
		45.838219, 35.935295, 33.239887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.756252, 35.655392, 33.908318>,  <46.466564, 36.174820, 33.434345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.756252, 35.655392, 33.908318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.146362, 35.593033, 33.845657>,  <47.380428, 35.555618, 33.808060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.146362, 35.593033, 33.845657>,  <46.756252, 35.655392, 33.908318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.146362, 35.593033, 33.845657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053616, -0.520743, 0.852028,
		-0.214407, -0.839358, -0.499508,
		0.975272, -0.155899, -0.156654,
		47.438942, 35.546265, 33.798660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.873142, 34.973576, 34.072788>,  <46.756252, 35.655392, 33.908318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.873142, 34.973576, 34.072788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.205513, 35.187183, 34.135242>,  <47.404938, 35.315350, 34.172714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.205513, 35.187183, 34.135242>,  <46.873142, 34.973576, 34.072788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.205513, 35.187183, 34.135242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095606, -0.413504, 0.905469,
		0.548103, -0.737453, -0.394648,
		0.830929, 0.534021, 0.156138,
		47.454792, 35.347389, 34.182083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.475307, 34.570446, 34.383572>,  <46.873142, 34.973576, 34.072788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.475307, 34.570446, 34.383572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.474682, 34.950825, 34.507313>,  <47.474308, 35.179050, 34.581558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.474682, 34.950825, 34.507313>,  <47.475307, 34.570446, 34.383572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.474682, 34.950825, 34.507313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139375, -0.306123, 0.941734,
		0.990238, 0.044586, -0.132060,
		-0.001561, 0.950947, 0.309348,
		47.474213, 35.236111, 34.600117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.075615, 34.720924, 34.848743>,  <47.475307, 34.570446, 34.383572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.075615, 34.720924, 34.848743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.763325, 34.959133, 34.924450>,  <47.575951, 35.102058, 34.969872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.763325, 34.959133, 34.924450>,  <48.075615, 34.720924, 34.848743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.763325, 34.959133, 34.924450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133853, -0.136471, 0.981560,
		0.610371, 0.791661, 0.026834,
		-0.780725, 0.595524, 0.189264,
		47.529106, 35.137791, 34.981228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.238209, 37.742599, 43.281174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.872368, 37.600758, 43.203445>,  <37.652863, 37.515652, 43.156811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.872368, 37.600758, 43.203445>,  <38.238209, 37.742599, 43.281174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872368, 37.600758, 43.203445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204661, 0.008500, -0.978796,
		0.348736, -0.934978, 0.064799,
		-0.914602, -0.354603, -0.194318,
		37.597988, 37.494377, 43.145149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321056, 37.369312, 42.654610>,  <38.238209, 37.742599, 43.281174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321056, 37.369312, 42.654610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.921547, 37.388542, 42.649807>,  <37.681843, 37.400082, 42.646923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.921547, 37.388542, 42.649807>,  <38.321056, 37.369312, 42.654610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921547, 37.388542, 42.649807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010059, -0.040659, -0.999123,
		-0.048528, -0.998016, 0.040126,
		-0.998772, 0.048082, -0.012012,
		37.621914, 37.402966, 42.646202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193359, 37.014862, 42.101837>,  <38.321056, 37.369312, 42.654610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193359, 37.014862, 42.101837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.854584, 37.212170, 42.181210>,  <37.651318, 37.330555, 42.228832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.854584, 37.212170, 42.181210>,  <38.193359, 37.014862, 42.101837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854584, 37.212170, 42.181210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188534, 0.070336, -0.979545,
		-0.497138, -0.867027, 0.033428,
		-0.846941, 0.493271, 0.198430,
		37.600502, 37.360149, 42.240738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726059, 36.766125, 41.705620>,  <38.193359, 37.014862, 42.101837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726059, 36.766125, 41.705620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.576382, 37.127792, 41.788040>,  <37.486576, 37.344791, 41.837490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.576382, 37.127792, 41.788040>,  <37.726059, 36.766125, 41.705620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576382, 37.127792, 41.788040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235943, 0.122053, -0.964071,
		-0.896832, -0.409367, 0.167661,
		-0.374196, 0.904169, 0.206049,
		37.464123, 37.399044, 41.849854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959625, 36.820145, 41.393620>,  <37.726059, 36.766125, 41.705620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959625, 36.820145, 41.393620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.136467, 37.175446, 41.443508>,  <37.242573, 37.388626, 41.473442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.136467, 37.175446, 41.443508>,  <36.959625, 36.820145, 41.393620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136467, 37.175446, 41.443508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392340, 0.316541, -0.863638,
		-0.806607, 0.332883, 0.488440,
		0.442102, 0.888251, 0.124721,
		37.269096, 37.441921, 41.480927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431507, 37.210056, 41.060329>,  <36.959625, 36.820145, 41.393620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431507, 37.210056, 41.060329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.736893, 37.466282, 41.093304>,  <36.920124, 37.620018, 41.113091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.736893, 37.466282, 41.093304>,  <36.431507, 37.210056, 41.060329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736893, 37.466282, 41.093304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129525, 0.276914, -0.952125,
		-0.632726, 0.716237, 0.294384,
		0.763466, 0.640565, 0.082440,
		36.965931, 37.658451, 41.118034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281898, 37.872070, 40.881493>,  <36.431507, 37.210056, 41.060329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281898, 37.872070, 40.881493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.675140, 37.857216, 40.809792>,  <36.911083, 37.848301, 40.766773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.675140, 37.857216, 40.809792>,  <36.281898, 37.872070, 40.881493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675140, 37.857216, 40.809792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181934, -0.089902, -0.979192,
		0.020251, 0.995258, -0.095140,
		0.983102, -0.037139, -0.179251,
		36.970070, 37.846073, 40.756016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311920, 38.334724, 40.302242>,  <36.281898, 37.872070, 40.881493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311920, 38.334724, 40.302242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.654499, 38.128414, 40.310947>,  <36.860046, 38.004627, 40.316170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.654499, 38.128414, 40.310947>,  <36.311920, 38.334724, 40.302242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654499, 38.128414, 40.310947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073014, 0.079286, -0.994174,
		0.511042, 0.853049, 0.105563,
		0.856449, -0.515773, 0.021766,
		36.911434, 37.973682, 40.317478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864902, 38.713879, 39.837555>,  <36.311920, 38.334724, 40.302242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864902, 38.713879, 39.837555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.987213, 38.334148, 39.866608>,  <37.060600, 38.106308, 39.884041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.987213, 38.334148, 39.866608>,  <36.864902, 38.713879, 39.837555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987213, 38.334148, 39.866608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081600, -0.049877, -0.995416,
		0.948599, 0.310307, 0.062214,
		0.305781, -0.949327, 0.072634,
		37.078949, 38.049351, 39.888397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381824, 38.639942, 39.327122>,  <36.864902, 38.713879, 39.837555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381824, 38.639942, 39.327122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.293205, 38.257435, 39.403503>,  <37.240032, 38.027931, 39.449333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.293205, 38.257435, 39.403503>,  <37.381824, 38.639942, 39.327122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293205, 38.257435, 39.403503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138499, -0.224697, -0.964536,
		0.965264, -0.187244, 0.182224,
		-0.221549, -0.956269, 0.190959,
		37.226742, 37.970554, 39.460793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920181, 38.291748, 39.087036>,  <37.381824, 38.639942, 39.327122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920181, 38.291748, 39.087036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.619602, 38.028500, 39.105816>,  <37.439255, 37.870552, 39.117085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.619602, 38.028500, 39.105816>,  <37.920181, 38.291748, 39.087036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619602, 38.028500, 39.105816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321755, -0.427649, -0.844743,
		0.576021, -0.619673, 0.533109,
		-0.751447, -0.658120, 0.046952,
		37.394169, 37.831062, 39.119900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159760, 37.712719, 38.802055>,  <37.920181, 38.291748, 39.087036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159760, 37.712719, 38.802055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.792027, 37.555393, 38.797432>,  <37.571388, 37.460999, 38.794659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.792027, 37.555393, 38.797432>,  <38.159760, 37.712719, 38.802055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792027, 37.555393, 38.797432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220269, -0.490061, -0.843399,
		0.326056, -0.777909, 0.537164,
		-0.919331, -0.393316, -0.011561,
		37.516228, 37.437397, 38.793964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147442, 36.898373, 38.869423>,  <38.159760, 37.712719, 38.802055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147442, 36.898373, 38.869423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.842281, 37.073170, 38.678837>,  <37.659187, 37.178047, 38.564484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.842281, 37.073170, 38.678837>,  <38.147442, 36.898373, 38.869423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842281, 37.073170, 38.678837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265461, -0.460255, -0.847169,
		-0.589507, -0.772786, 0.235122,
		-0.762897, 0.436997, -0.476468,
		37.613411, 37.204269, 38.535896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861324, 36.372677, 38.502159>,  <38.147442, 36.898373, 38.869423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861324, 36.372677, 38.502159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.728306, 36.707188, 38.327782>,  <37.648495, 36.907894, 38.223156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.728306, 36.707188, 38.327782>,  <37.861324, 36.372677, 38.502159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728306, 36.707188, 38.327782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081843, -0.434919, -0.896742,
		-0.939530, -0.333886, 0.076186,
		-0.332544, 0.836281, -0.435946,
		37.628544, 36.958073, 38.196999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453773, 36.226635, 38.007572>,  <37.861324, 36.372677, 38.502159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453773, 36.226635, 38.007572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.568394, 36.592506, 37.893551>,  <37.637165, 36.812031, 37.825138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.568394, 36.592506, 37.893551>,  <37.453773, 36.226635, 38.007572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568394, 36.592506, 37.893551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036721, -0.307798, -0.950743,
		-0.957362, 0.261965, -0.121787,
		0.286547, 0.914677, -0.285055,
		37.654358, 36.866909, 37.808033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011383, 36.280415, 37.375690>,  <37.453773, 36.226635, 38.007572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011383, 36.280415, 37.375690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.294472, 36.562332, 37.356083>,  <37.464325, 36.731483, 37.344318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.294472, 36.562332, 37.356083>,  <37.011383, 36.280415, 37.375690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294472, 36.562332, 37.356083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146911, -0.214674, -0.965573,
		-0.691049, 0.676156, -0.255471,
		0.707721, 0.704790, -0.049016,
		37.506786, 36.773769, 37.341377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839191, 36.686714, 36.793129>,  <37.011383, 36.280415, 37.375690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839191, 36.686714, 36.793129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.231758, 36.735668, 36.852238>,  <37.467300, 36.765041, 36.887703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.231758, 36.735668, 36.852238>,  <36.839191, 36.686714, 36.793129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231758, 36.735668, 36.852238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146406, 0.020136, -0.989020,
		-0.124019, 0.992278, 0.001843,
		0.981420, 0.122388, 0.147773,
		37.526184, 36.772385, 36.896568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117935, 37.061306, 36.257351>,  <36.839191, 36.686714, 36.793129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117935, 37.061306, 36.257351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.470989, 36.926250, 36.388172>,  <37.682819, 36.845219, 36.466663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.470989, 36.926250, 36.388172>,  <37.117935, 37.061306, 36.257351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470989, 36.926250, 36.388172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309017, -0.107510, -0.944960,
		0.354215, 0.935116, 0.009444,
		0.882632, -0.337638, 0.327049,
		37.735779, 36.824959, 36.486286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630959, 37.447277, 35.866821>,  <37.117935, 37.061306, 36.257351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630959, 37.447277, 35.866821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.809868, 37.117371, 36.005219>,  <37.917213, 36.919426, 36.088257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.809868, 37.117371, 36.005219>,  <37.630959, 37.447277, 35.866821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809868, 37.117371, 36.005219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359014, -0.188747, -0.914048,
		0.819179, 0.533045, 0.211681,
		0.447275, -0.824765, 0.345989,
		37.944050, 36.869942, 36.109016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336662, 37.333664, 35.475426>,  <37.630959, 37.447277, 35.866821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336662, 37.333664, 35.475426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.259998, 36.975735, 35.636703>,  <38.214001, 36.760979, 35.733471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.259998, 36.975735, 35.636703>,  <38.336662, 37.333664, 35.475426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259998, 36.975735, 35.636703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251149, -0.441843, -0.861219,
		0.948783, -0.063801, 0.309418,
		-0.191661, -0.894821, 0.403190,
		38.202499, 36.707287, 35.757660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879055, 37.013275, 35.217480>,  <38.336662, 37.333664, 35.475426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879055, 37.013275, 35.217480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.642467, 36.713440, 35.336334>,  <38.500515, 36.533539, 35.407646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.642467, 36.713440, 35.336334>,  <38.879055, 37.013275, 35.217480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642467, 36.713440, 35.336334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156792, -0.468390, -0.869498,
		0.790938, -0.467691, 0.394566,
		-0.591468, -0.749584, 0.297137,
		38.465027, 36.488564, 35.425476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317757, 36.342125, 35.209152>,  <38.879055, 37.013275, 35.217480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317757, 36.342125, 35.209152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.921993, 36.296082, 35.173771>,  <38.684536, 36.268456, 35.152542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.921993, 36.296082, 35.173771>,  <39.317757, 36.342125, 35.209152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921993, 36.296082, 35.173771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131769, -0.456437, -0.879944,
		0.060921, -0.882278, 0.466770,
		-0.989407, -0.115113, -0.088450,
		38.625172, 36.261547, 35.147236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023624, 36.546707, 35.355705>,  <39.317757, 36.342125, 35.209152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023624, 36.546707, 35.355705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.341633, 36.304573, 35.371273>,  <40.532436, 36.159294, 35.380611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.341633, 36.304573, 35.371273>,  <40.023624, 36.546707, 35.355705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.341633, 36.304573, 35.371273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127528, -0.104079, 0.986359,
		-0.593027, -0.789137, -0.159942,
		0.795019, -0.605334, 0.038916,
		40.580139, 36.122974, 35.382946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851120, 35.955391, 35.830017>,  <40.023624, 36.546707, 35.355705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851120, 35.955391, 35.830017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.249203, 35.946964, 35.791801>,  <40.488052, 35.941910, 35.768871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.249203, 35.946964, 35.791801>,  <39.851120, 35.955391, 35.830017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249203, 35.946964, 35.791801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087539, -0.244329, 0.965733,
		-0.043687, -0.969464, -0.241313,
		0.995203, -0.021066, -0.095540,
		40.547764, 35.940643, 35.763138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077229, 35.382412, 36.274925>,  <39.851120, 35.955391, 35.830017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077229, 35.382412, 36.274925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.376595, 35.644058, 36.231087>,  <40.556213, 35.801044, 36.204784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.376595, 35.644058, 36.231087>,  <40.077229, 35.382412, 36.274925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376595, 35.644058, 36.231087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184813, -0.046987, 0.981650,
		0.636964, -0.754933, -0.156055,
		0.748413, 0.654116, -0.109592,
		40.601120, 35.840294, 36.198208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661484, 35.104557, 36.671444>,  <40.077229, 35.382412, 36.274925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661484, 35.104557, 36.671444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.740772, 35.495045, 36.636341>,  <40.788345, 35.729340, 36.615280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.740772, 35.495045, 36.636341>,  <40.661484, 35.104557, 36.671444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740772, 35.495045, 36.636341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238964, 0.038704, 0.970257,
		0.950582, -0.213294, -0.225609,
		0.198218, 0.976221, -0.087761,
		40.800240, 35.787910, 36.610012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138435, 35.227180, 37.192322>,  <40.661484, 35.104557, 36.671444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.138435, 35.227180, 37.192322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.043110, 35.607159, 37.111519>,  <40.985916, 35.835148, 37.063038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.043110, 35.607159, 37.111519>,  <41.138435, 35.227180, 37.192322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.043110, 35.607159, 37.111519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048779, 0.219443, 0.974405,
		0.969963, 0.222357, -0.098633,
		-0.238311, 0.949948, -0.202006,
		40.971619, 35.892143, 37.050919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598949, 35.593044, 37.598457>,  <41.138435, 35.227180, 37.192322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.598949, 35.593044, 37.598457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.289593, 35.829391, 37.506596>,  <41.103977, 35.971199, 37.451481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.289593, 35.829391, 37.506596>,  <41.598949, 35.593044, 37.598457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289593, 35.829391, 37.506596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080162, 0.268203, 0.960021,
		0.628837, 0.760884, -0.160061,
		-0.773393, 0.590867, -0.229650,
		41.057575, 36.006653, 37.437702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685219, 36.178715, 37.912624>,  <41.598949, 35.593044, 37.598457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.685219, 36.178715, 37.912624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.289257, 36.182972, 37.856091>,  <41.051682, 36.185524, 37.822170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.289257, 36.182972, 37.856091>,  <41.685219, 36.178715, 37.912624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289257, 36.182972, 37.856091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136465, 0.197838, 0.970689,
		0.038288, 0.980177, -0.194388,
		-0.989905, 0.010639, -0.141334,
		40.992287, 36.186165, 37.813690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.484318, 36.778454, 38.266010>,  <41.685219, 36.178715, 37.912624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.484318, 36.778454, 38.266010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.142948, 36.570683, 38.248779>,  <40.938126, 36.446018, 38.238441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.142948, 36.570683, 38.248779>,  <41.484318, 36.778454, 38.266010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.142948, 36.570683, 38.248779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230716, 0.302364, 0.924849,
		-0.467371, 0.799228, -0.377887,
		-0.853425, -0.519432, -0.043079,
		40.886921, 36.414852, 38.235855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041183, 37.170471, 38.630550>,  <41.484318, 36.778454, 38.266010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041183, 37.170471, 38.630550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.843163, 36.825241, 38.590508>,  <40.724350, 36.618103, 38.566483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.843163, 36.825241, 38.590508>,  <41.041183, 37.170471, 38.630550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.843163, 36.825241, 38.590508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542714, 0.217186, 0.811352,
		-0.678518, 0.455990, -0.575922,
		-0.495050, -0.863078, -0.100107,
		40.694649, 36.566319, 38.560474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212414, 37.311508, 38.694717>,  <41.041183, 37.170471, 38.630550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212414, 37.311508, 38.694717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.303196, 36.938911, 38.808430>,  <40.357666, 36.715355, 38.876656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.303196, 36.938911, 38.808430>,  <40.212414, 37.311508, 38.694717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303196, 36.938911, 38.808430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433701, 0.164687, 0.885879,
		-0.872006, -0.324348, -0.366612,
		0.226957, -0.931492, 0.284278,
		40.371284, 36.659466, 38.893715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619030, 37.092831, 39.159485>,  <40.212414, 37.311508, 38.694717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619030, 37.092831, 39.159485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.915791, 36.840626, 39.250732>,  <40.093845, 36.689301, 39.305481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.915791, 36.840626, 39.250732>,  <39.619030, 37.092831, 39.159485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915791, 36.840626, 39.250732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193939, 0.123884, 0.973160,
		-0.641853, -0.766226, -0.030373,
		0.741898, -0.630516, 0.228117,
		40.138359, 36.651470, 39.319168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393383, 36.795631, 39.799030>,  <39.619030, 37.092831, 39.159485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393383, 36.795631, 39.799030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.777191, 36.687778, 39.766460>,  <40.007477, 36.623066, 39.746918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.777191, 36.687778, 39.766460>,  <39.393383, 36.795631, 39.799030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777191, 36.687778, 39.766460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064571, -0.070797, 0.995399,
		-0.274154, -0.960358, -0.050520,
		0.959516, -0.269631, -0.081420,
		40.065044, 36.606888, 39.742035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535191, 36.111141, 40.160995>,  <39.393383, 36.795631, 39.799030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535191, 36.111141, 40.160995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.863083, 36.337910, 40.128399>,  <40.059818, 36.473972, 40.108841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.863083, 36.337910, 40.128399>,  <39.535191, 36.111141, 40.160995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863083, 36.337910, 40.128399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133980, -0.051471, 0.989646,
		0.556860, -0.822161, -0.118149,
		0.819730, 0.566924, -0.081491,
		40.109001, 36.507988, 40.103951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080692, 35.752930, 40.558708>,  <39.535191, 36.111141, 40.160995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080692, 35.752930, 40.558708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.209263, 36.129780, 40.520561>,  <40.286404, 36.355888, 40.497673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.209263, 36.129780, 40.520561>,  <40.080692, 35.752930, 40.558708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209263, 36.129780, 40.520561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271244, 0.004890, 0.962498,
		0.907256, -0.335238, -0.253973,
		0.321424, 0.942121, -0.095367,
		40.305691, 36.412415, 40.491951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748920, 35.762947, 40.888477>,  <40.080692, 35.752930, 40.558708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.748920, 35.762947, 40.888477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.562130, 36.116642, 40.885422>,  <40.450058, 36.328857, 40.883591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.562130, 36.116642, 40.885422>,  <40.748920, 35.762947, 40.888477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562130, 36.116642, 40.885422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032390, 0.025733, 0.999144,
		0.883678, 0.466327, -0.040657,
		-0.466974, 0.884238, -0.007635,
		40.422039, 36.381912, 40.883133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105652, 36.118469, 41.328560>,  <40.748920, 35.762947, 40.888477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105652, 36.118469, 41.328560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.783470, 36.352322, 41.289677>,  <40.590160, 36.492634, 41.266346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.783470, 36.352322, 41.289677>,  <41.105652, 36.118469, 41.328560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783470, 36.352322, 41.289677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008785, 0.175784, 0.984389,
		0.592590, 0.792029, -0.146723,
		-0.805456, 0.584628, -0.097210,
		40.541832, 36.527710, 41.260513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224297, 36.686165, 41.698505>,  <41.105652, 36.118469, 41.328560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.224297, 36.686165, 41.698505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.826443, 36.651096, 41.676529>,  <40.587730, 36.630054, 41.663342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.826443, 36.651096, 41.676529>,  <41.224297, 36.686165, 41.698505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.826443, 36.651096, 41.676529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069824, 0.176919, 0.981745,
		-0.076355, 0.980313, -0.182092,
		-0.994633, -0.087676, -0.054941,
		40.528053, 36.624794, 41.660046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018806, 37.231670, 42.103451>,  <41.224297, 36.686165, 41.698505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.018806, 37.231670, 42.103451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.687099, 37.008312, 42.094414>,  <40.488075, 36.874298, 42.088989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.687099, 37.008312, 42.094414>,  <41.018806, 37.231670, 42.103451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.687099, 37.008312, 42.094414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153197, 0.188256, 0.970098,
		-0.537443, 0.807933, -0.241659,
		-0.829268, -0.558394, -0.022597,
		40.438320, 36.840794, 42.087635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.291561, 37.620392, 42.474709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.235336, 37.224377, 42.471230>,  <40.201603, 36.986767, 42.469143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.235336, 37.224377, 42.471230>,  <40.291561, 37.620392, 42.474709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235336, 37.224377, 42.471230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404024, 0.049338, 0.913417,
		-0.903885, 0.131903, -0.406933,
		-0.140560, -0.990034, -0.008696,
		40.193169, 36.927368, 42.468620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736122, 37.592922, 42.938847>,  <40.291561, 37.620392, 42.474709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736122, 37.592922, 42.938847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.857746, 37.212715, 42.913338>,  <39.930721, 36.984592, 42.898033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.857746, 37.212715, 42.913338>,  <39.736122, 37.592922, 42.938847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857746, 37.212715, 42.913338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305223, -0.160612, 0.938639,
		-0.902433, -0.265940, -0.338955,
		0.304062, -0.950515, -0.063771,
		39.948963, 36.927559, 42.894207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171143, 37.200676, 43.027561>,  <39.736122, 37.592922, 42.938847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171143, 37.200676, 43.027561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.480175, 36.975761, 43.145519>,  <39.665592, 36.840813, 43.216293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.480175, 36.975761, 43.145519>,  <39.171143, 37.200676, 43.027561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480175, 36.975761, 43.145519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376464, -0.031676, 0.925889,
		-0.511272, -0.826337, -0.236152,
		0.772577, -0.562284, 0.294891,
		39.711948, 36.807076, 43.233986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854191, 36.692295, 43.469746>,  <39.171143, 37.200676, 43.027561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854191, 36.692295, 43.469746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.237892, 36.668724, 43.580273>,  <39.468113, 36.654583, 43.646591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.237892, 36.668724, 43.580273>,  <38.854191, 36.692295, 43.469746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237892, 36.668724, 43.580273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274080, 0.043395, 0.960727,
		-0.068603, -0.997319, 0.025476,
		0.959257, -0.058926, 0.276322,
		39.525669, 36.651047, 43.663170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981403, 36.048103, 43.895447>,  <38.854191, 36.692295, 43.469746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981403, 36.048103, 43.895447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.262581, 36.317070, 43.988163>,  <39.431286, 36.478451, 44.043793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.262581, 36.317070, 43.988163>,  <38.981403, 36.048103, 43.895447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262581, 36.317070, 43.988163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242950, -0.079289, 0.966793,
		0.668470, -0.735910, 0.107629,
		0.702940, 0.672421, 0.231791,
		39.473461, 36.518795, 44.057701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263454, 35.690842, 44.373562>,  <38.981403, 36.048103, 43.895447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263454, 35.690842, 44.373562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.417759, 36.055317, 44.431408>,  <39.510342, 36.274002, 44.466118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.417759, 36.055317, 44.431408>,  <39.263454, 35.690842, 44.373562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417759, 36.055317, 44.431408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031888, -0.169826, 0.984958,
		0.922046, -0.375350, -0.094569,
		0.385764, 0.911192, 0.144618,
		39.533489, 36.328674, 44.474792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786327, 35.656563, 44.900467>,  <39.263454, 35.690842, 44.373562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786327, 35.656563, 44.900467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.667156, 36.038380, 44.896542>,  <39.595654, 36.267467, 44.894188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.667156, 36.038380, 44.896542>,  <39.786327, 35.656563, 44.900467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667156, 36.038380, 44.896542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119649, -0.027145, 0.992445,
		0.947060, 0.296850, 0.122297,
		-0.297927, 0.954538, -0.009810,
		39.577778, 36.324741, 44.893600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103355, 35.885582, 45.506710>,  <39.786327, 35.656563, 44.900467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103355, 35.885582, 45.506710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.833508, 36.173717, 45.442204>,  <39.671600, 36.346600, 45.403500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.833508, 36.173717, 45.442204>,  <40.103355, 35.885582, 45.506710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.833508, 36.173717, 45.442204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207730, 0.024377, 0.977883,
		0.708337, 0.693195, 0.133190,
		-0.674617, 0.720338, -0.161265,
		39.631123, 36.389820, 45.393826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232494, 36.462147, 45.950912>,  <40.103355, 35.885582, 45.506710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232494, 36.462147, 45.950912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.845490, 36.488087, 45.853161>,  <39.613289, 36.503651, 45.794510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.845490, 36.488087, 45.853161>,  <40.232494, 36.462147, 45.950912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845490, 36.488087, 45.853161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249180, -0.080795, 0.965081,
		0.042843, 0.994619, 0.094330,
		-0.967509, 0.064852, -0.244378,
		39.555237, 36.507542, 45.779846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068649, 37.101887, 46.277477>,  <40.232494, 36.462147, 45.950912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068649, 37.101887, 46.277477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.738712, 36.878052, 46.245213>,  <39.540752, 36.743752, 46.225853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.738712, 36.878052, 46.245213>,  <40.068649, 37.101887, 46.277477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738712, 36.878052, 46.245213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131572, 0.051239, 0.989982,
		-0.549847, 0.827187, -0.115889,
		-0.824838, -0.559586, -0.080661,
		39.491261, 36.710175, 46.221016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537273, 37.366722, 46.764393>,  <40.068649, 37.101887, 46.277477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537273, 37.366722, 46.764393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.405720, 36.997807, 46.683186>,  <39.326790, 36.776455, 46.634460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.405720, 36.997807, 46.683186>,  <39.537273, 37.366722, 46.764393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405720, 36.997807, 46.683186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255917, -0.119895, 0.959235,
		-0.909035, 0.367430, -0.196598,
		-0.328881, -0.922291, -0.203020,
		39.307056, 36.721119, 46.622280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756321, 37.277332, 47.051289>,  <39.537273, 37.366722, 46.764393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756321, 37.277332, 47.051289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.929070, 36.918274, 47.016121>,  <39.032719, 36.702839, 46.995022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.929070, 36.918274, 47.016121>,  <38.756321, 37.277332, 47.051289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929070, 36.918274, 47.016121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284930, -0.228265, 0.930973,
		-0.855748, -0.377008, -0.354345,
		0.431868, -0.897642, -0.087916,
		39.058632, 36.648983, 46.989746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586380, 36.957779, 47.680569>,  <38.756321, 37.277332, 47.051289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586380, 36.957779, 47.680569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.823605, 36.673653, 47.528927>,  <38.965939, 36.503178, 47.437943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.823605, 36.673653, 47.528927>,  <38.586380, 36.957779, 47.680569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823605, 36.673653, 47.528927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120934, -0.544094, 0.830263,
		-0.796023, -0.446550, -0.408584,
		0.593062, -0.710320, -0.379108,
		39.001522, 36.460556, 47.415195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243942, 36.232334, 47.811348>,  <38.586380, 36.957779, 47.680569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243942, 36.232334, 47.811348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.632790, 36.153507, 47.760509>,  <38.866096, 36.106213, 47.730007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.632790, 36.153507, 47.760509>,  <38.243942, 36.232334, 47.811348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632790, 36.153507, 47.760509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020266, -0.610562, 0.791709,
		-0.233618, -0.767058, -0.597532,
		0.972117, -0.197067, -0.127093,
		38.924423, 36.094387, 47.722382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370152, 35.457325, 47.712452>,  <38.243942, 36.232334, 47.811348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370152, 35.457325, 47.712452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.721241, 35.607021, 47.832146>,  <38.931896, 35.696838, 47.903961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.721241, 35.607021, 47.832146>,  <38.370152, 35.457325, 47.712452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721241, 35.607021, 47.832146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074449, -0.723422, 0.686381,
		0.473342, -0.580177, -0.662829,
		0.877727, 0.374239, 0.299232,
		38.984558, 35.719292, 47.921917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787739, 34.967613, 47.644924>,  <38.370152, 35.457325, 47.712452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787739, 34.967613, 47.644924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.971539, 35.196835, 47.916355>,  <39.081818, 35.334366, 48.079216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.971539, 35.196835, 47.916355>,  <38.787739, 34.967613, 47.644924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971539, 35.196835, 47.916355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093899, -0.728389, 0.678699,
		0.883200, -0.375581, -0.280886,
		0.459500, 0.573053, 0.678580,
		39.109390, 35.368752, 48.119930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321575, 34.661266, 47.856743>,  <38.787739, 34.967613, 47.644924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321575, 34.661266, 47.856743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.265839, 34.908062, 48.166557>,  <39.232395, 35.056137, 48.352448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.265839, 34.908062, 48.166557>,  <39.321575, 34.661266, 47.856743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265839, 34.908062, 48.166557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078341, -0.786587, 0.612489,
		0.987140, 0.024668, 0.157942,
		-0.139344, 0.616986, 0.774540,
		39.224037, 35.093159, 48.398918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939671, 34.496391, 48.347301>,  <39.321575, 34.661266, 47.856743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939671, 34.496391, 48.347301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.643906, 34.672485, 48.551048>,  <39.466446, 34.778141, 48.673298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.643906, 34.672485, 48.551048>,  <39.939671, 34.496391, 48.347301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643906, 34.672485, 48.551048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041741, -0.725150, 0.687325,
		0.671955, 0.529480, 0.517811,
		-0.739415, 0.440237, 0.509369,
		39.422081, 34.804558, 48.703857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141365, 34.416039, 49.046181>,  <39.939671, 34.496391, 48.347301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141365, 34.416039, 49.046181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.749321, 34.492531, 49.067421>,  <39.514095, 34.538425, 49.080166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.749321, 34.492531, 49.067421>,  <40.141365, 34.416039, 49.046181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749321, 34.492531, 49.067421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125090, -0.802960, 0.582758,
		0.154080, 0.564523, 0.810909,
		-0.980108, 0.191228, 0.053104,
		39.455288, 34.549900, 49.083351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993660, 34.189644, 49.713848>,  <40.141365, 34.416039, 49.046181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993660, 34.189644, 49.713848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.620003, 34.203423, 49.571758>,  <39.395809, 34.211689, 49.486504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.620003, 34.203423, 49.571758>,  <39.993660, 34.189644, 49.713848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620003, 34.203423, 49.571758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275047, -0.703747, 0.655049,
		-0.227425, 0.709615, 0.666876,
		-0.934145, 0.034448, -0.355227,
		39.339760, 34.213757, 49.465191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662006, 33.982857, 50.290989>,  <39.993660, 34.189644, 49.713848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.662006, 33.982857, 50.290989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.386955, 33.924595, 50.006466>,  <39.221924, 33.889637, 49.835751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.386955, 33.924595, 50.006466>,  <39.662006, 33.982857, 50.290989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386955, 33.924595, 50.006466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418341, -0.721230, 0.552104,
		-0.593434, 0.677208, 0.435000,
		-0.687624, -0.145659, -0.711306,
		39.180668, 33.880898, 49.793076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988361, 33.958168, 50.691574>,  <39.662006, 33.982857, 50.290989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988361, 33.958168, 50.691574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.977203, 33.754681, 50.347382>,  <38.970509, 33.632587, 50.140865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.977203, 33.754681, 50.347382>,  <38.988361, 33.958168, 50.691574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977203, 33.754681, 50.347382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422966, -0.773952, 0.471273,
		-0.905716, 0.377100, -0.193581,
		-0.027894, -0.508718, -0.860481,
		38.968834, 33.602066, 50.089237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284248, 33.635117, 50.640530>,  <38.988361, 33.958168, 50.691574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284248, 33.635117, 50.640530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.564575, 33.429993, 50.442184>,  <38.732773, 33.306919, 50.323177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.564575, 33.429993, 50.442184>,  <38.284248, 33.635117, 50.640530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564575, 33.429993, 50.442184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337568, -0.850780, 0.402768,
		-0.628410, -0.114882, -0.769352,
		0.700820, -0.512812, -0.495858,
		38.774822, 33.276150, 50.293427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796364, 34.227646, 51.030216>,  <38.284248, 33.635117, 50.640530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796364, 34.227646, 51.030216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.583168, 33.960121, 50.822903>,  <37.455250, 33.799606, 50.698517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.583168, 33.960121, 50.822903>,  <37.796364, 34.227646, 51.030216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583168, 33.960121, 50.822903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205078, 0.696381, -0.687748,
		0.820895, -0.260272, -0.508320,
		-0.532986, -0.668814, -0.518280,
		37.423271, 33.759476, 50.667419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015278, 34.209179, 50.308743>,  <37.796364, 34.227646, 51.030216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015278, 34.209179, 50.308743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.629486, 34.104347, 50.321918>,  <37.398010, 34.041447, 50.329823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.629486, 34.104347, 50.321918>,  <38.015278, 34.209179, 50.308743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629486, 34.104347, 50.321918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161731, 0.487345, -0.858101,
		0.208838, -0.832952, -0.512423,
		-0.964484, -0.262079, 0.032938,
		37.340141, 34.025723, 50.331799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850266, 33.859451, 49.681332>,  <38.015278, 34.209179, 50.308743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850266, 33.859451, 49.681332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.511600, 34.001503, 49.839844>,  <37.308399, 34.086735, 49.934952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.511600, 34.001503, 49.839844>,  <37.850266, 33.859451, 49.681332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511600, 34.001503, 49.839844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322248, 0.250442, -0.912927,
		-0.423456, -0.900644, -0.097600,
		-0.846665, 0.355133, 0.396282,
		37.257603, 34.108044, 49.958729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383457, 33.584221, 49.255768>,  <37.850266, 33.859451, 49.681332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383457, 33.584221, 49.255768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.192806, 33.889210, 49.430798>,  <37.078415, 34.072201, 49.535816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.192806, 33.889210, 49.430798>,  <37.383457, 33.584221, 49.255768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192806, 33.889210, 49.430798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418859, 0.240659, -0.875580,
		-0.772909, -0.600604, 0.204663,
		-0.476623, 0.762468, 0.437576,
		37.049820, 34.117950, 49.562069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568604, 33.605656, 49.050087>,  <37.383457, 33.584221, 49.255768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568604, 33.605656, 49.050087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.691441, 33.974697, 49.143467>,  <36.765141, 34.196121, 49.199493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.691441, 33.974697, 49.143467>,  <36.568604, 33.605656, 49.050087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691441, 33.974697, 49.143467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519111, 0.367983, -0.771435,
		-0.797635, 0.115713, 0.591937,
		0.307088, 0.922605, 0.233448,
		36.783566, 34.251480, 49.213501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939991, 34.129631, 48.869339>,  <36.568604, 33.605656, 49.050087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939991, 34.129631, 48.869339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.284611, 34.331772, 48.888756>,  <36.491383, 34.453056, 48.900406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.284611, 34.331772, 48.888756>,  <35.939991, 34.129631, 48.869339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284611, 34.331772, 48.888756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239681, 0.489168, -0.838610,
		-0.447540, 0.710867, 0.542565,
		0.861546, 0.505354, 0.048542,
		36.543076, 34.483379, 48.903316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708473, 34.834595, 48.725662>,  <35.939991, 34.129631, 48.869339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708473, 34.834595, 48.725662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.099529, 34.815060, 48.643848>,  <36.334164, 34.803337, 48.594761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.099529, 34.815060, 48.643848>,  <35.708473, 34.834595, 48.725662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099529, 34.815060, 48.643848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118083, 0.677318, -0.726152,
		0.174000, 0.734068, 0.656406,
		0.977640, -0.048840, -0.204534,
		36.392822, 34.800407, 48.582489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834343, 35.576141, 48.527840>,  <35.708473, 34.834595, 48.725662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834343, 35.576141, 48.527840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.143295, 35.352924, 48.406506>,  <36.328667, 35.218994, 48.333706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.143295, 35.352924, 48.406506>,  <35.834343, 35.576141, 48.527840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143295, 35.352924, 48.406506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123063, 0.600014, -0.790468,
		0.623118, 0.573216, 0.532116,
		0.772385, -0.558039, -0.303338,
		36.375011, 35.185513, 48.315506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371490, 36.030373, 48.479836>,  <35.834343, 35.576141, 48.527840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371490, 36.030373, 48.479836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.488762, 35.718605, 48.258369>,  <36.559124, 35.531544, 48.125488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.488762, 35.718605, 48.258369>,  <36.371490, 36.030373, 48.479836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488762, 35.718605, 48.258369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181925, 0.614017, -0.768041,
		0.938589, 0.124448, 0.321814,
		0.293181, -0.779420, -0.553669,
		36.576717, 35.484779, 48.092270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940556, 36.166271, 48.127037>,  <36.371490, 36.030373, 48.479836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940556, 36.166271, 48.127037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.855267, 35.851677, 47.895180>,  <36.804092, 35.662922, 47.756065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.855267, 35.851677, 47.895180>,  <36.940556, 36.166271, 48.127037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855267, 35.851677, 47.895180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419805, 0.461971, -0.781247,
		0.882214, -0.409914, 0.231667,
		-0.213221, -0.786481, -0.579641,
		36.791302, 35.615734, 47.721287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518742, 36.049881, 47.691193>,  <36.940556, 36.166271, 48.127037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518742, 36.049881, 47.691193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.200714, 35.901638, 47.499146>,  <37.009895, 35.812691, 47.383919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.200714, 35.901638, 47.499146>,  <37.518742, 36.049881, 47.691193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200714, 35.901638, 47.499146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358835, 0.350759, -0.864989,
		0.488980, -0.860008, -0.145889,
		-0.795069, -0.370612, -0.480116,
		36.962193, 35.790455, 47.355110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777531, 35.796429, 46.960972>,  <37.518742, 36.049881, 47.691193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777531, 35.796429, 46.960972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.381245, 35.802303, 46.906895>,  <37.143475, 35.805828, 46.874451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.381245, 35.802303, 46.906895>,  <37.777531, 35.796429, 46.960972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381245, 35.802303, 46.906895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132945, 0.313654, -0.940185,
		0.028591, -0.949424, -0.312693,
		-0.990711, 0.014690, -0.135189,
		37.084030, 35.806709, 46.866337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608368, 35.480625, 46.315247>,  <37.777531, 35.796429, 46.960972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608368, 35.480625, 46.315247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.280926, 35.701717, 46.377689>,  <37.084461, 35.834373, 46.415154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.280926, 35.701717, 46.377689>,  <37.608368, 35.480625, 46.315247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280926, 35.701717, 46.377689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028542, 0.310607, -0.950110,
		-0.573646, -0.773310, -0.270041,
		-0.818606, 0.552734, 0.156106,
		37.035343, 35.867538, 46.424522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418568, 35.513824, 45.674332>,  <37.608368, 35.480625, 46.315247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418568, 35.513824, 45.674332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.210209, 35.807919, 45.847809>,  <37.085194, 35.984375, 45.951897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.210209, 35.807919, 45.847809>,  <37.418568, 35.513824, 45.674332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210209, 35.807919, 45.847809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107276, 0.447656, -0.887748,
		-0.846853, -0.508948, -0.154308,
		-0.520894, 0.735239, 0.433697,
		37.053940, 36.028492, 45.977917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948200, 35.637493, 45.222439>,  <37.418568, 35.513824, 45.674332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948200, 35.637493, 45.222439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.921955, 35.968288, 45.445789>,  <36.906208, 36.166767, 45.579800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.921955, 35.968288, 45.445789>,  <36.948200, 35.637493, 45.222439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921955, 35.968288, 45.445789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156657, 0.561181, -0.812732,
		-0.985471, 0.034148, -0.166374,
		-0.065613, 0.826988, 0.558378,
		36.902271, 36.216385, 45.613304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419365, 36.039745, 44.904720>,  <36.948200, 35.637493, 45.222439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419365, 36.039745, 44.904720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.643047, 36.310482, 45.096210>,  <36.777256, 36.472923, 45.211105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.643047, 36.310482, 45.096210>,  <36.419365, 36.039745, 44.904720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643047, 36.310482, 45.096210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253763, 0.409989, -0.876078,
		-0.789237, 0.611390, 0.057511,
		0.559204, 0.676839, 0.478727,
		36.810810, 36.513535, 45.239830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290245, 36.602795, 44.629402>,  <36.419365, 36.039745, 44.904720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290245, 36.602795, 44.629402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.632397, 36.716610, 44.802544>,  <36.837688, 36.784897, 44.906429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.632397, 36.716610, 44.802544>,  <36.290245, 36.602795, 44.629402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632397, 36.716610, 44.802544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222288, 0.553143, -0.802883,
		-0.467877, 0.782990, 0.409900,
		0.855383, 0.284535, 0.432852,
		36.889011, 36.801971, 44.932400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289341, 37.325233, 44.681728>,  <36.290245, 36.602795, 44.629402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289341, 37.325233, 44.681728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.661747, 37.181679, 44.655159>,  <36.885189, 37.095547, 44.639217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.661747, 37.181679, 44.655159>,  <36.289341, 37.325233, 44.681728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661747, 37.181679, 44.655159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175022, 0.598704, -0.781614,
		0.320278, 0.716069, 0.620216,
		0.931015, -0.358886, -0.066424,
		36.941051, 37.074013, 44.635231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510307, 37.822468, 44.370171>,  <36.289341, 37.325233, 44.681728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510307, 37.822468, 44.370171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.801907, 37.548740, 44.363754>,  <36.976868, 37.384502, 44.359905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.801907, 37.548740, 44.363754>,  <36.510307, 37.822468, 44.370171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801907, 37.548740, 44.363754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279181, 0.318636, -0.905831,
		0.624991, 0.655876, 0.423336,
		0.729003, -0.684323, -0.016037,
		37.020607, 37.343445, 44.358944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054214, 38.120327, 44.260540>,  <36.510307, 37.822468, 44.370171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054214, 38.120327, 44.260540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.150604, 37.751301, 44.140003>,  <37.208439, 37.529884, 44.067680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.150604, 37.751301, 44.140003>,  <37.054214, 38.120327, 44.260540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150604, 37.751301, 44.140003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338318, 0.370865, -0.864870,
		0.909654, 0.106465, 0.401490,
		0.240977, -0.922564, -0.301340,
		37.222897, 37.474533, 44.049603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723007, 38.130474, 43.792377>,  <37.054214, 38.120327, 44.260540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723007, 38.130474, 43.792377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.525055, 37.802910, 43.676113>,  <37.406284, 37.606373, 43.606354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.525055, 37.802910, 43.676113>,  <37.723007, 38.130474, 43.792377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525055, 37.802910, 43.676113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300185, 0.152787, -0.941565,
		0.815467, -0.553210, 0.170215,
		-0.494877, -0.818911, -0.290658,
		37.376591, 37.557236, 43.588917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.037643, 42.774597, 33.247669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.742157, 43.014172, 33.124004>,  <44.564865, 43.157917, 33.049805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.742157, 43.014172, 33.124004>,  <45.037643, 42.774597, 33.247669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.742157, 43.014172, 33.124004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626826, -0.779074, -0.011535,
		-0.247771, 0.185271, 0.950939,
		-0.738714, 0.598931, -0.309164,
		44.520542, 43.193851, 33.031254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.553020, 42.734043, 33.724182>,  <45.037643, 42.774597, 33.247669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.553020, 42.734043, 33.724182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.362099, 42.866798, 33.398720>,  <44.247547, 42.946453, 33.203442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.362099, 42.866798, 33.398720>,  <44.553020, 42.734043, 33.724182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.362099, 42.866798, 33.398720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661516, -0.745203, 0.084085,
		-0.578429, 0.578378, 0.575238,
		-0.477302, 0.331892, -0.813653,
		44.218906, 42.966366, 33.154625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.846645, 42.837688, 33.843594>,  <44.553020, 42.734043, 33.724182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.846645, 42.837688, 33.843594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.861305, 42.780697, 33.447945>,  <43.870102, 42.746502, 33.210556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.861305, 42.780697, 33.447945>,  <43.846645, 42.837688, 33.843594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.861305, 42.780697, 33.447945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781757, -0.620648, 0.060437,
		-0.622505, 0.771035, -0.134134,
		0.036651, -0.142482, -0.989119,
		43.872299, 42.737953, 33.151211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.085575, 42.848454, 33.688396>,  <43.846645, 42.837688, 33.843594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.085575, 42.848454, 33.688396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.296871, 42.690304, 33.387825>,  <43.423649, 42.595413, 33.207481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.296871, 42.690304, 33.387825>,  <43.085575, 42.848454, 33.688396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.296871, 42.690304, 33.387825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669607, -0.738137, -0.082336,
		-0.522101, 0.546653, -0.654661,
		0.528239, -0.395378, -0.751425,
		43.455341, 42.571690, 33.162395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.685619, 42.432655, 33.410976>,  <43.085575, 42.848454, 33.688396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.685619, 42.432655, 33.410976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.018738, 42.266846, 33.264217>,  <43.218609, 42.167358, 33.176163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.018738, 42.266846, 33.264217>,  <42.685619, 42.432655, 33.410976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.018738, 42.266846, 33.264217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509654, -0.832864, -0.215849,
		-0.216104, 0.366752, -0.904871,
		0.832798, -0.414526, -0.366901,
		43.268578, 42.142487, 33.154148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.328598, 42.113171, 32.965458>,  <42.685619, 42.432655, 33.410976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.328598, 42.113171, 32.965458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.705566, 41.980923, 32.985592>,  <42.931747, 41.901573, 32.997673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.705566, 41.980923, 32.985592>,  <42.328598, 42.113171, 32.965458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.705566, 41.980923, 32.985592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330094, -0.943765, -0.018606,
		0.053654, 0.000920, -0.998559,
		0.942422, -0.330617, 0.050333,
		42.988293, 41.881737, 33.000690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.296375, 41.625343, 32.386909>,  <42.328598, 42.113171, 32.965458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.296375, 41.625343, 32.386909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.615322, 41.525623, 32.606747>,  <42.806690, 41.465790, 32.738651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.615322, 41.525623, 32.606747>,  <42.296375, 41.625343, 32.386909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.615322, 41.525623, 32.606747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127743, -0.959774, -0.250031,
		0.589823, 0.129158, -0.797137,
		0.797365, -0.249302, 0.549598,
		42.854530, 41.450832, 32.771626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.608337, 41.035831, 32.009327>,  <42.296375, 41.625343, 32.386909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.608337, 41.035831, 32.009327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.756050, 41.004150, 32.379704>,  <42.844677, 40.985142, 32.601929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.756050, 41.004150, 32.379704>,  <42.608337, 41.035831, 32.009327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.756050, 41.004150, 32.379704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027791, -0.996857, -0.074186,
		0.928903, 0.001662, -0.370320,
		0.369279, -0.079203, 0.925937,
		42.866833, 40.980389, 32.657486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.240536, 40.551056, 31.935919>,  <42.608337, 41.035831, 32.009327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.240536, 40.551056, 31.935919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.073689, 40.554863, 32.299438>,  <42.973579, 40.557148, 32.517551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.073689, 40.554863, 32.299438>,  <43.240536, 40.551056, 31.935919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.073689, 40.554863, 32.299438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145319, -0.987778, -0.056358,
		0.897158, -0.155575, 0.413405,
		-0.417121, 0.009514, 0.908801,
		42.948551, 40.557716, 32.572079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.644497, 40.068905, 32.266304>,  <43.240536, 40.551056, 31.935919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.644497, 40.068905, 32.266304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.304157, 40.106995, 32.472984>,  <43.099953, 40.129848, 32.596992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.304157, 40.106995, 32.472984>,  <43.644497, 40.068905, 32.266304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.304157, 40.106995, 32.472984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143510, -0.988163, -0.054210,
		0.505426, -0.120277, 0.854446,
		-0.850852, 0.095223, 0.516704,
		43.048901, 40.135563, 32.627995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.642483, 39.382793, 32.453030>,  <43.644497, 40.068905, 32.266304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.642483, 39.382793, 32.453030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.287407, 39.529285, 32.564655>,  <43.074360, 39.617180, 32.631630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.287407, 39.529285, 32.564655>,  <43.642483, 39.382793, 32.453030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.287407, 39.529285, 32.564655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346434, -0.930479, 0.119130,
		0.303289, 0.009075, 0.952855,
		-0.887693, 0.366233, 0.279060,
		43.021099, 39.639156, 32.648373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.429623, 39.084801, 33.129143>,  <43.642483, 39.382793, 32.453030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.429623, 39.084801, 33.129143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.070328, 39.172272, 32.976646>,  <42.854752, 39.224754, 32.885147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.070328, 39.172272, 32.976646>,  <43.429623, 39.084801, 33.129143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.070328, 39.172272, 32.976646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319631, -0.920409, 0.225131,
		-0.301668, 0.324079, 0.896643,
		-0.898239, 0.218680, -0.381244,
		42.800858, 39.237877, 32.862274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.887794, 38.877419, 33.589436>,  <43.429623, 39.084801, 33.129143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.887794, 38.877419, 33.589436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.690884, 38.894619, 33.241684>,  <42.572735, 38.904938, 33.033035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.690884, 38.894619, 33.241684>,  <42.887794, 38.877419, 33.589436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.690884, 38.894619, 33.241684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281028, -0.953144, 0.111984,
		-0.823823, 0.299446, 0.481298,
		-0.492279, 0.043003, -0.869375,
		42.543201, 38.907520, 32.980873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.230431, 38.585846, 33.753021>,  <42.887794, 38.877419, 33.589436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.230431, 38.585846, 33.753021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.298695, 38.549149, 33.360600>,  <42.339653, 38.527130, 33.125149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.298695, 38.549149, 33.360600>,  <42.230431, 38.585846, 33.753021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.298695, 38.549149, 33.360600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249177, -0.967311, 0.047116,
		-0.953303, 0.236414, -0.187938,
		0.170656, -0.091746, -0.981050,
		42.349892, 38.521626, 33.066284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675076, 38.105194, 33.414310>,  <42.230431, 38.585846, 33.753021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.675076, 38.105194, 33.414310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.967960, 38.080357, 33.143013>,  <42.143692, 38.065456, 32.980236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.967960, 38.080357, 33.143013>,  <41.675076, 38.105194, 33.414310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.967960, 38.080357, 33.143013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074244, -0.982624, 0.170109,
		-0.677017, -0.174912, -0.714880,
		0.732213, -0.062091, -0.678240,
		42.187626, 38.061729, 32.939541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.500507, 37.617508, 32.969265>,  <41.675076, 38.105194, 33.414310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.500507, 37.617508, 32.969265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.898090, 37.647186, 32.936909>,  <42.136639, 37.664993, 32.917496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.898090, 37.647186, 32.936909>,  <41.500507, 37.617508, 32.969265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.898090, 37.647186, 32.936909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082839, -0.990554, 0.109275,
		-0.072022, -0.115316, -0.990714,
		0.993957, 0.074200, -0.080894,
		42.196278, 37.669445, 32.912640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.656521, 37.056622, 32.577072>,  <41.500507, 37.617508, 32.969265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.656521, 37.056622, 32.577072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.998657, 37.181503, 32.742439>,  <42.203941, 37.256432, 32.841660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.998657, 37.181503, 32.742439>,  <41.656521, 37.056622, 32.577072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.998657, 37.181503, 32.742439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358134, -0.932960, -0.036410,
		0.374338, 0.179203, -0.909811,
		0.855343, 0.312205, 0.413421,
		42.255260, 37.275166, 32.866467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.195255, 36.781624, 32.193111>,  <41.656521, 37.056622, 32.577072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.195255, 36.781624, 32.193111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.358223, 36.868526, 32.547920>,  <42.456001, 36.920666, 32.760807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.358223, 36.868526, 32.547920>,  <42.195255, 36.781624, 32.193111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.358223, 36.868526, 32.547920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345882, -0.935641, 0.070293,
		0.845208, 0.278167, -0.456340,
		0.407417, 0.217252, 0.887025,
		42.480450, 36.933701, 32.814026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.778320, 36.331303, 32.203548>,  <42.195255, 36.781624, 32.193111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.778320, 36.331303, 32.203548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.752258, 36.437698, 32.588257>,  <42.736622, 36.501534, 32.819084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.752258, 36.437698, 32.588257>,  <42.778320, 36.331303, 32.203548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.752258, 36.437698, 32.588257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295158, -0.915557, 0.273199,
		0.953225, 0.301674, -0.018858,
		-0.065152, 0.265986, 0.961773,
		42.732712, 36.517494, 32.876789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.380726, 36.134056, 32.490864>,  <42.778320, 36.331303, 32.203548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.380726, 36.134056, 32.490864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.111641, 36.161423, 32.785557>,  <42.950191, 36.177841, 32.962372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.111641, 36.161423, 32.785557>,  <43.380726, 36.134056, 32.490864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.111641, 36.161423, 32.785557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334541, -0.859999, 0.385336,
		0.659954, 0.505688, 0.555645,
		-0.672714, 0.068418, 0.736733,
		42.909828, 36.181950, 33.006577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.667233, 35.946373, 33.131912>,  <43.380726, 36.134056, 32.490864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.667233, 35.946373, 33.131912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.283745, 35.890621, 33.231049>,  <43.053650, 35.857170, 33.290531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.283745, 35.890621, 33.231049>,  <43.667233, 35.946373, 33.131912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.283745, 35.890621, 33.231049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250713, -0.825553, 0.505574,
		0.134136, 0.546841, 0.826421,
		-0.958723, -0.139379, 0.247837,
		42.996128, 35.848808, 33.305401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.425537, 35.687393, 33.139202>,  <43.667233, 35.946373, 33.131912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.425537, 35.687393, 33.139202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.820858, 35.704960, 33.197617>,  <45.058052, 35.715500, 33.232666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.820858, 35.704960, 33.197617>,  <44.425537, 35.687393, 33.139202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.820858, 35.704960, 33.197617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124589, 0.784757, 0.607152,
		-0.087937, -0.618245, 0.781051,
		0.988304, 0.043919, 0.146035,
		45.117348, 35.718136, 33.241428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.570839, 35.678310, 33.788948>,  <44.425537, 35.687393, 33.139202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.570839, 35.678310, 33.788948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.890465, 35.846291, 33.616837>,  <45.082241, 35.947079, 33.513569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.890465, 35.846291, 33.616837>,  <44.570839, 35.678310, 33.788948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.890465, 35.846291, 33.616837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052501, 0.761645, 0.645864,
		0.598951, -0.493495, 0.630650,
		0.799062, 0.419951, -0.430279,
		45.130184, 35.972275, 33.487751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.037975, 35.886898, 34.325493>,  <44.570839, 35.678310, 33.788948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.037975, 35.886898, 34.325493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.155128, 36.115597, 34.018944>,  <45.225418, 36.252815, 33.835014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.155128, 36.115597, 34.018944>,  <45.037975, 35.886898, 34.325493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.155128, 36.115597, 34.018944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220487, 0.820302, 0.527721,
		0.930380, 0.014416, 0.366313,
		0.292880, 0.571749, -0.766372,
		45.242992, 36.287121, 33.789032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.425694, 36.355419, 34.689148>,  <45.037975, 35.886898, 34.325493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.425694, 36.355419, 34.689148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.327942, 36.519539, 34.337708>,  <45.269291, 36.618011, 34.126842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.327942, 36.519539, 34.337708>,  <45.425694, 36.355419, 34.689148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.327942, 36.519539, 34.337708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310770, 0.825136, 0.471776,
		0.918533, 0.388331, -0.074132,
		-0.244374, 0.410304, -0.878597,
		45.254631, 36.642632, 34.074127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.618732, 37.015572, 34.834209>,  <45.425694, 36.355419, 34.689148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.618732, 37.015572, 34.834209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.364143, 37.029301, 34.525997>,  <45.211391, 37.037537, 34.341068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.364143, 37.029301, 34.525997>,  <45.618732, 37.015572, 34.834209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.364143, 37.029301, 34.525997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310327, 0.903188, 0.296561,
		0.706116, 0.427871, -0.564204,
		-0.636473, 0.034319, -0.770535,
		45.173203, 37.039597, 34.294838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.671051, 37.685738, 34.695854>,  <45.618732, 37.015572, 34.834209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.671051, 37.685738, 34.695854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.329895, 37.562664, 34.527138>,  <45.125202, 37.488819, 34.425907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.329895, 37.562664, 34.527138>,  <45.671051, 37.685738, 34.695854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.329895, 37.562664, 34.527138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437129, 0.862592, 0.254663,
		0.285475, 0.401576, -0.870196,
		-0.852891, -0.307687, -0.421789,
		45.074028, 37.470356, 34.400600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.363373, 38.292961, 34.234341>,  <45.671051, 37.685738, 34.695854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.363373, 38.292961, 34.234341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.055439, 38.053757, 34.323547>,  <44.870678, 37.910236, 34.377071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.055439, 38.053757, 34.323547>,  <45.363373, 38.292961, 34.234341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.055439, 38.053757, 34.323547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601529, 0.796620, 0.059661,
		-0.213337, -0.088221, -0.972987,
		-0.769838, -0.598008, 0.223016,
		44.824486, 37.874355, 34.390453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.842976, 38.631779, 33.870903>,  <45.363373, 38.292961, 34.234341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.842976, 38.631779, 33.870903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.666553, 38.408577, 34.152073>,  <44.560699, 38.274654, 34.320774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.666553, 38.408577, 34.152073>,  <44.842976, 38.631779, 33.870903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.666553, 38.408577, 34.152073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555101, 0.785046, 0.274892,
		-0.705218, -0.268951, -0.655998,
		-0.441056, -0.558004, 0.702924,
		44.534237, 38.241177, 34.362949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.152744, 38.879383, 33.816387>,  <44.842976, 38.631779, 33.870903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.152744, 38.879383, 33.816387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.191402, 38.700905, 34.172268>,  <44.214596, 38.593819, 34.385796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.191402, 38.700905, 34.172268>,  <44.152744, 38.879383, 33.816387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.191402, 38.700905, 34.172268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373848, 0.812159, 0.447923,
		-0.922441, -0.375903, -0.088319,
		0.096646, -0.446200, 0.889700,
		44.220398, 38.567043, 34.439178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.478558, 38.839104, 34.078850>,  <44.152744, 38.879383, 33.816387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.478558, 38.839104, 34.078850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.739384, 38.807373, 34.380451>,  <43.895878, 38.788334, 34.561413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.739384, 38.807373, 34.380451>,  <43.478558, 38.839104, 34.078850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.739384, 38.807373, 34.380451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383034, 0.823788, 0.417921,
		-0.654293, -0.561320, 0.506774,
		0.652062, -0.079331, 0.754004,
		43.935001, 38.783573, 34.606651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.097687, 38.918476, 34.714153>,  <43.478558, 38.839104, 34.078850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.097687, 38.918476, 34.714153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.475433, 38.975880, 34.832527>,  <43.702080, 39.010323, 34.903553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.475433, 38.975880, 34.832527>,  <43.097687, 38.918476, 34.714153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.475433, 38.975880, 34.832527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266275, 0.861754, 0.431831,
		-0.193051, -0.486607, 0.852024,
		0.944367, 0.143508, 0.295933,
		43.758743, 39.018932, 34.921307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.919838, 39.185276, 35.392357>,  <43.097687, 38.918476, 34.714153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.919838, 39.185276, 35.392357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.310608, 39.248154, 35.334518>,  <43.545071, 39.285881, 35.299816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.310608, 39.248154, 35.334518>,  <42.919838, 39.185276, 35.392357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.310608, 39.248154, 35.334518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045169, 0.813747, 0.579461,
		0.208756, -0.559558, 0.802070,
		0.976924, 0.157195, -0.144600,
		43.603683, 39.295311, 35.291138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.225159, 39.182571, 36.026825>,  <42.919838, 39.185276, 35.392357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.225159, 39.182571, 36.026825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.439953, 39.403465, 35.771736>,  <43.568829, 39.535999, 35.618683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.439953, 39.403465, 35.771736>,  <43.225159, 39.182571, 36.026825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.439953, 39.403465, 35.771736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121986, 0.798844, 0.589039,
		0.834723, -0.238515, 0.496335,
		0.536989, 0.552230, -0.637718,
		43.601048, 39.569134, 35.580421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.734138, 39.533974, 36.398144>,  <43.225159, 39.182571, 36.026825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.734138, 39.533974, 36.398144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.678783, 39.751598, 36.067123>,  <43.645569, 39.882175, 35.868511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.678783, 39.751598, 36.067123>,  <43.734138, 39.533974, 36.398144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.678783, 39.751598, 36.067123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137253, 0.816994, 0.560074,
		0.980821, 0.191091, -0.038387,
		-0.138387, 0.544063, -0.827553,
		43.637268, 39.914818, 35.818859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.140038, 40.151028, 36.527184>,  <43.734138, 39.533974, 36.398144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.140038, 40.151028, 36.527184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.893452, 40.279491, 36.239620>,  <43.745502, 40.356571, 36.067081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.893452, 40.279491, 36.239620>,  <44.140038, 40.151028, 36.527184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.893452, 40.279491, 36.239620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011026, 0.909425, 0.415722,
		0.787307, 0.264204, -0.557085,
		-0.616462, 0.321159, -0.718910,
		43.708511, 40.375839, 36.023949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.342247, 40.880623, 36.418083>,  <44.140038, 40.151028, 36.527184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.342247, 40.880623, 36.418083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.982456, 40.864601, 36.244030>,  <43.766582, 40.854988, 36.139599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.982456, 40.864601, 36.244030>,  <44.342247, 40.880623, 36.418083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.982456, 40.864601, 36.244030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200223, 0.922884, 0.328931,
		0.388404, 0.382989, -0.838130,
		-0.899474, -0.040055, -0.435135,
		43.712612, 40.852585, 36.113491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.290886, 41.509354, 36.153584>,  <44.342247, 40.880623, 36.418083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.290886, 41.509354, 36.153584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.920868, 41.357430, 36.155933>,  <43.698856, 41.266273, 36.157345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.920868, 41.357430, 36.155933>,  <44.290886, 41.509354, 36.153584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.920868, 41.357430, 36.155933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345746, 0.848279, 0.401102,
		-0.157331, 0.369005, -0.916014,
		-0.925044, -0.379814, 0.005878,
		43.643356, 41.243484, 36.157696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.918793, 41.968590, 35.748581>,  <44.290886, 41.509354, 36.153584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.918793, 41.968590, 35.748581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.659042, 41.760735, 35.970676>,  <43.503193, 41.636021, 36.103935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.659042, 41.760735, 35.970676>,  <43.918793, 41.968590, 35.748581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.659042, 41.760735, 35.970676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331766, 0.850560, 0.408019,
		-0.684287, 0.080747, -0.724729,
		-0.649372, -0.519642, 0.555238,
		43.464230, 41.604843, 36.137249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.202312, 42.246811, 35.738201>,  <43.918793, 41.968590, 35.748581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.202312, 42.246811, 35.738201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.229897, 42.065445, 36.093651>,  <43.246445, 41.956627, 36.306923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.229897, 42.065445, 36.093651>,  <43.202312, 42.246811, 35.738201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.229897, 42.065445, 36.093651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346818, 0.824294, 0.447501,
		-0.935394, -0.339051, -0.100410,
		0.068958, -0.453413, 0.888629,
		43.250584, 41.929420, 36.360241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.621502, 42.431087, 36.021065>,  <43.202312, 42.246811, 35.738201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.621502, 42.431087, 36.021065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.816483, 42.307301, 36.347652>,  <42.933472, 42.233028, 36.543606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.816483, 42.307301, 36.347652>,  <42.621502, 42.431087, 36.021065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.816483, 42.307301, 36.347652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536164, 0.631938, 0.559627,
		-0.689143, -0.710553, 0.142116,
		0.487453, -0.309465, 0.816468,
		42.962719, 42.214462, 36.592594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.077007, 42.219952, 36.535522>,  <42.621502, 42.431087, 36.021065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.077007, 42.219952, 36.535522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.419350, 42.305046, 36.724098>,  <42.624756, 42.356102, 36.837246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.419350, 42.305046, 36.724098>,  <42.077007, 42.219952, 36.535522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.419350, 42.305046, 36.724098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483769, 0.651717, 0.584150,
		-0.182979, -0.728017, 0.660689,
		0.855854, 0.212734, 0.471443,
		42.676105, 42.368866, 36.865532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.324764, 36.387932, 39.784611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927380, 36.423462, 39.755901>,  <40.688950, 36.444778, 39.738674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927380, 36.423462, 39.755901>,  <41.324764, 36.387932, 39.784611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.927380, 36.423462, 39.755901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033242, -0.376354, -0.925879,
		-0.109252, -0.922208, 0.370940,
		-0.993458, 0.088824, -0.071774,
		40.629341, 36.450108, 39.734371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963917, 35.682400, 39.612694>,  <41.324764, 36.387932, 39.784611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963917, 35.682400, 39.612694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701694, 35.961967, 39.498318>,  <40.544361, 36.129707, 39.429691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701694, 35.961967, 39.498318>,  <40.963917, 35.682400, 39.612694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701694, 35.961967, 39.498318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083132, -0.309557, -0.947240,
		-0.750561, -0.644735, 0.144827,
		-0.655551, 0.698922, -0.285940,
		40.505028, 36.171642, 39.412537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625656, 35.341110, 39.157314>,  <40.963917, 35.682400, 39.612694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625656, 35.341110, 39.157314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544270, 35.724499, 39.077377>,  <40.495438, 35.954533, 39.029415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544270, 35.724499, 39.077377>,  <40.625656, 35.341110, 39.157314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544270, 35.724499, 39.077377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009998, -0.206138, -0.978472,
		-0.979031, -0.197086, 0.051525,
		-0.203465, 0.958470, -0.199845,
		40.483231, 36.012039, 39.017426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128696, 35.323540, 38.610371>,  <40.625656, 35.341110, 39.157314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128696, 35.323540, 38.610371> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273640, 35.694729, 38.575581>,  <40.360607, 35.917442, 38.554707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273640, 35.694729, 38.575581>,  <40.128696, 35.323540, 38.610371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273640, 35.694729, 38.575581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003240, -0.092062, -0.995748,
		-0.932033, 0.361100, -0.030353,
		0.362359, 0.927972, -0.086975,
		40.382347, 35.973122, 38.549488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821537, 35.691578, 38.012844>,  <40.128696, 35.323540, 38.610371>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821537, 35.691578, 38.012844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154972, 35.900745, 38.084061>,  <40.355034, 36.026245, 38.126793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154972, 35.900745, 38.084061>,  <39.821537, 35.691578, 38.012844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154972, 35.900745, 38.084061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151730, 0.093172, -0.984021,
		-0.531147, 0.847278, -0.001675,
		0.833583, 0.522914, 0.178045,
		40.405048, 36.057621, 38.137474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737572, 36.141975, 37.575977>,  <39.821537, 35.691578, 38.012844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737572, 36.141975, 37.575977> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128777, 36.182575, 37.648857>,  <40.363499, 36.206936, 37.692585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128777, 36.182575, 37.648857>,  <39.737572, 36.141975, 37.575977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128777, 36.182575, 37.648857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167943, 0.134711, -0.976549,
		-0.123664, 0.985673, 0.114702,
		0.978009, 0.101501, 0.182196,
		40.422180, 36.213024, 37.703514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934704, 36.699020, 37.081078>,  <39.737572, 36.141975, 37.575977>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934704, 36.699020, 37.081078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267307, 36.504986, 37.189365>,  <40.466869, 36.388565, 37.254337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267307, 36.504986, 37.189365>,  <39.934704, 36.699020, 37.081078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267307, 36.504986, 37.189365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276010, -0.062163, -0.959142,
		0.482096, 0.872254, 0.082200,
		0.831506, -0.485087, 0.270719,
		40.516758, 36.359459, 37.270580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432278, 37.098732, 36.832188>,  <39.934704, 36.699020, 37.081078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432278, 37.098732, 36.832188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595711, 36.737942, 36.888050>,  <40.693771, 36.521469, 36.921566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595711, 36.737942, 36.888050>,  <40.432278, 37.098732, 36.832188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595711, 36.737942, 36.888050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333234, 0.004971, -0.942831,
		0.849715, 0.431762, 0.302600,
		0.408583, -0.901974, 0.139654,
		40.718285, 36.467350, 36.929947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184544, 37.058384, 36.464233>,  <40.432278, 37.098732, 36.832188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184544, 37.058384, 36.464233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.049904, 36.684921, 36.513218>,  <40.969120, 36.460846, 36.542606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.049904, 36.684921, 36.513218>,  <41.184544, 37.058384, 36.464233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.049904, 36.684921, 36.513218> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228556, -0.207162, -0.951234,
		0.913491, -0.292192, 0.283121,
		-0.336595, -0.933653, 0.122459,
		40.948925, 36.404827, 36.549957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.573425, 36.727631, 35.985474>,  <41.184544, 37.058384, 36.464233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.573425, 36.727631, 35.985474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286423, 36.458710, 36.058346>,  <41.114220, 36.297356, 36.102070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286423, 36.458710, 36.058346>,  <41.573425, 36.727631, 35.985474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286423, 36.458710, 36.058346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103145, -0.361217, -0.926760,
		0.688871, -0.646166, 0.328520,
		-0.717508, -0.672303, 0.182183,
		41.071171, 36.257019, 36.112999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.817356, 36.011776, 35.803082>,  <41.573425, 36.727631, 35.985474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.817356, 36.011776, 35.803082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.417969, 36.017784, 35.781754>,  <41.178337, 36.021389, 35.768955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.417969, 36.017784, 35.781754>,  <41.817356, 36.011776, 35.803082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.417969, 36.017784, 35.781754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050179, -0.162654, -0.985406,
		-0.023469, -0.986569, 0.161651,
		-0.998464, 0.015015, -0.053322,
		41.118431, 36.022289, 35.765759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655838, 35.421246, 35.492611>,  <41.817356, 36.011776, 35.803082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.655838, 35.421246, 35.492611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349030, 35.671581, 35.436035>,  <41.164944, 35.821785, 35.402092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349030, 35.671581, 35.436035>,  <41.655838, 35.421246, 35.492611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349030, 35.671581, 35.436035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026230, -0.189665, -0.981498,
		-0.641088, -0.756538, 0.129060,
		-0.767019, 0.625842, -0.141436,
		41.118923, 35.859333, 35.393604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.076118, 35.127655, 35.124302>,  <41.655838, 35.421246, 35.492611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.076118, 35.127655, 35.124302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112736, 35.521664, 35.065853>,  <41.134705, 35.758068, 35.030785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112736, 35.521664, 35.065853>,  <41.076118, 35.127655, 35.124302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.112736, 35.521664, 35.065853> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194530, -0.126224, -0.972741,
		-0.976615, 0.117475, 0.180061,
		0.091544, 0.985021, -0.146125,
		41.140198, 35.817169, 35.022015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875690, 34.478027, 35.145130>,  <41.076118, 35.127655, 35.124302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875690, 34.478027, 35.145130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518848, 34.466721, 34.964752>,  <40.304745, 34.459934, 34.856525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518848, 34.466721, 34.964752>,  <40.875690, 34.478027, 35.145130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518848, 34.466721, 34.964752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269004, -0.768646, 0.580361,
		-0.363023, 0.639049, 0.678108,
		-0.892105, -0.028271, -0.450944,
		40.251217, 34.458241, 34.829468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299587, 34.533901, 35.585487>,  <40.875690, 34.478027, 35.145130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.299587, 34.533901, 35.585487> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200871, 34.303421, 35.273823>,  <40.141640, 34.165134, 35.086823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200871, 34.303421, 35.273823>,  <40.299587, 34.533901, 35.585487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.200871, 34.303421, 35.273823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237868, -0.743413, 0.625105,
		-0.939422, 0.339607, 0.046409,
		-0.246791, -0.576198, -0.779160,
		40.126835, 34.130562, 35.040073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608921, 34.242725, 35.703903>,  <40.299587, 34.533901, 35.585487>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608921, 34.242725, 35.703903> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774696, 34.004070, 35.429016>,  <39.874161, 33.860878, 35.264084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774696, 34.004070, 35.429016>,  <39.608921, 34.242725, 35.703903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774696, 34.004070, 35.429016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236624, -0.799791, 0.551673,
		-0.878778, -0.066023, -0.472642,
		0.414438, -0.596637, -0.687216,
		39.899029, 33.825081, 35.222851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201645, 33.658882, 35.734501>,  <39.608921, 34.242725, 35.703903>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201645, 33.658882, 35.734501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542271, 33.542522, 35.560047>,  <39.746647, 33.472706, 35.455376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542271, 33.542522, 35.560047>,  <39.201645, 33.658882, 35.734501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542271, 33.542522, 35.560047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034021, -0.860836, 0.507744,
		-0.523145, -0.417539, -0.742954,
		0.851564, -0.290900, -0.436137,
		39.797741, 33.455254, 35.429207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114445, 32.959541, 35.386028>,  <39.201645, 33.658882, 35.734501>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114445, 32.959541, 35.386028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502975, 33.020699, 35.458855>,  <39.736095, 33.057392, 35.502552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502975, 33.020699, 35.458855>,  <39.114445, 32.959541, 35.386028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502975, 33.020699, 35.458855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059022, -0.896887, 0.438303,
		0.230310, -0.414989, -0.880194,
		0.971326, 0.152896, 0.182069,
		39.794373, 33.066566, 35.513474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406769, 32.354851, 35.305702>,  <39.114445, 32.959541, 35.386028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406769, 32.354851, 35.305702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700634, 32.535923, 35.507832>,  <39.876953, 32.644566, 35.629108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700634, 32.535923, 35.507832>,  <39.406769, 32.354851, 35.305702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700634, 32.535923, 35.507832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120371, -0.819998, 0.559566,
		0.667669, -0.350265, -0.656911,
		0.734662, 0.452678, 0.505326,
		39.921032, 32.671726, 35.659428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843224, 31.820284, 35.260429>,  <39.406769, 32.354851, 35.305702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843224, 31.820284, 35.260429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995304, 32.042130, 35.556496>,  <40.086552, 32.175236, 35.734135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995304, 32.042130, 35.556496>,  <39.843224, 31.820284, 35.260429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995304, 32.042130, 35.556496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198889, -0.830569, 0.520191,
		0.903266, -0.050567, -0.426091,
		0.380203, 0.554615, 0.740167,
		40.109364, 32.208515, 35.778545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329323, 31.357397, 35.594505>,  <39.843224, 31.820284, 35.260429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329323, 31.357397, 35.594505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226597, 31.644224, 35.853691>,  <40.164963, 31.816320, 36.009201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226597, 31.644224, 35.853691>,  <40.329323, 31.357397, 35.594505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226597, 31.644224, 35.853691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046157, -0.660585, 0.749331,
		0.965358, 0.222346, 0.136549,
		-0.256813, 0.717070, 0.647964,
		40.149551, 31.859344, 36.048080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.754250, 31.302336, 36.295803>,  <40.329323, 31.357397, 35.594505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.754250, 31.302336, 36.295803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431915, 31.522110, 36.384121>,  <40.238514, 31.653975, 36.437111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431915, 31.522110, 36.384121>,  <40.754250, 31.302336, 36.295803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431915, 31.522110, 36.384121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013771, -0.355387, 0.934618,
		0.591982, 0.756187, 0.278817,
		-0.805833, 0.549437, 0.220797,
		40.190166, 31.686941, 36.450359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.874893, 31.499802, 36.974762>,  <40.754250, 31.302336, 36.295803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.874893, 31.499802, 36.974762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481487, 31.553606, 36.926418>,  <40.245445, 31.585888, 36.897411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481487, 31.553606, 36.926418>,  <40.874893, 31.499802, 36.974762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481487, 31.553606, 36.926418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164714, -0.390560, 0.905722,
		0.074625, 0.910698, 0.406277,
		-0.983514, 0.134509, -0.120860,
		40.186432, 31.593958, 36.890160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656666, 31.963535, 37.462093>,  <40.874893, 31.499802, 36.974762>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656666, 31.963535, 37.462093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318245, 31.773012, 37.366325>,  <40.115192, 31.658699, 37.308865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318245, 31.773012, 37.366325>,  <40.656666, 31.963535, 37.462093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318245, 31.773012, 37.366325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221149, -0.095053, 0.970597,
		-0.485060, 0.874126, -0.024915,
		-0.846055, -0.476308, -0.239418,
		40.064426, 31.630119, 37.294498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079891, 32.380276, 37.775387>,  <40.656666, 31.963535, 37.462093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079891, 32.380276, 37.775387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937962, 32.011482, 37.713367>,  <39.852806, 31.790205, 37.676155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937962, 32.011482, 37.713367>,  <40.079891, 32.380276, 37.775387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937962, 32.011482, 37.713367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237181, -0.071651, 0.968820,
		-0.904349, 0.380534, -0.193254,
		-0.354822, -0.921987, -0.155053,
		39.831516, 31.734886, 37.666851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495613, 32.408516, 38.205143>,  <40.079891, 32.380276, 37.775387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495613, 32.408516, 38.205143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557274, 32.019539, 38.135189>,  <39.594273, 31.786152, 38.093216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557274, 32.019539, 38.135189>,  <39.495613, 32.408516, 38.205143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557274, 32.019539, 38.135189> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189557, -0.202819, 0.960694,
		-0.969693, -0.114946, -0.215600,
		0.154155, -0.972446, -0.174884,
		39.603519, 31.727804, 38.082726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939457, 32.168503, 38.430794>,  <39.495613, 32.408516, 38.205143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939457, 32.168503, 38.430794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186958, 31.854322, 38.424900>,  <39.335461, 31.665815, 38.421364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186958, 31.854322, 38.424900>,  <38.939457, 32.168503, 38.430794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186958, 31.854322, 38.424900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166528, -0.149469, 0.974642,
		-0.767733, -0.600609, -0.223283,
		0.618753, -0.785448, -0.014734,
		39.372585, 31.618689, 38.420479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614113, 31.617857, 38.826164>,  <38.939457, 32.168503, 38.430794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614113, 31.617857, 38.826164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002853, 31.523647, 38.823952>,  <39.236099, 31.467121, 38.822624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002853, 31.523647, 38.823952>,  <38.614113, 31.617857, 38.826164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002853, 31.523647, 38.823952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030294, -0.148205, 0.988493,
		-0.233637, -0.960501, -0.151168,
		0.971852, -0.235528, -0.005528,
		39.294411, 31.452990, 38.822292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032845, 31.286667, 38.573025>,  <38.614113, 31.617857, 38.826164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032845, 31.286667, 38.573025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643528, 31.378387, 38.577553>,  <37.409939, 31.433420, 38.580269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643528, 31.378387, 38.577553>,  <38.032845, 31.286667, 38.573025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643528, 31.378387, 38.577553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116551, 0.535993, -0.836139,
		-0.197794, -0.812486, -0.548401,
		-0.973290, 0.229300, 0.011320,
		37.351540, 31.447178, 38.580948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709438, 31.108429, 37.922318>,  <38.032845, 31.286667, 38.573025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709438, 31.108429, 37.922318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468861, 31.378899, 38.092518>,  <37.324512, 31.541180, 38.194637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468861, 31.378899, 38.092518>,  <37.709438, 31.108429, 37.922318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468861, 31.378899, 38.092518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074184, 0.483027, -0.872457,
		-0.795461, -0.556302, -0.240354,
		-0.601448, 0.676175, 0.425498,
		37.288425, 31.581751, 38.220169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222172, 31.149742, 37.464005>,  <37.709438, 31.108429, 37.922318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222172, 31.149742, 37.464005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157116, 31.496737, 37.652054>,  <37.118084, 31.704933, 37.764885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157116, 31.496737, 37.652054>,  <37.222172, 31.149742, 37.464005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157116, 31.496737, 37.652054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276576, 0.417283, -0.865668,
		-0.947129, -0.270818, 0.172059,
		-0.162641, 0.867487, 0.470122,
		37.108322, 31.756983, 37.793091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561913, 31.344387, 37.325161>,  <37.222172, 31.149742, 37.464005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561913, 31.344387, 37.325161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766724, 31.675787, 37.415863>,  <36.889610, 31.874626, 37.470284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766724, 31.675787, 37.415863>,  <36.561913, 31.344387, 37.325161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766724, 31.675787, 37.415863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234112, 0.388591, -0.891173,
		-0.826451, 0.403217, 0.392930,
		0.512025, 0.828500, 0.226754,
		36.920330, 31.924337, 37.483891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117325, 31.960928, 37.052425>,  <36.561913, 31.344387, 37.325161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117325, 31.960928, 37.052425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492664, 32.086994, 37.109238>,  <36.717869, 32.162632, 37.143326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492664, 32.086994, 37.109238>,  <36.117325, 31.960928, 37.052425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492664, 32.086994, 37.109238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066427, 0.567595, -0.820624,
		-0.339249, 0.760597, 0.553537,
		0.938348, 0.315165, 0.142032,
		36.774170, 32.181545, 37.151848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022781, 32.698509, 36.904572>,  <36.117325, 31.960928, 37.052425>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022781, 32.698509, 36.904572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417088, 32.634937, 36.882656>,  <36.653671, 32.596794, 36.869507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417088, 32.634937, 36.882656>,  <36.022781, 32.698509, 36.904572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417088, 32.634937, 36.882656> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059298, 0.633697, -0.771305,
		0.157302, 0.757079, 0.634103,
		0.985769, -0.158929, -0.054788,
		36.712818, 32.587257, 36.866219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274529, 33.367371, 36.816517>,  <36.022781, 32.698509, 36.904572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274529, 33.367371, 36.816517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543346, 33.109459, 36.670856>,  <36.704636, 32.954712, 36.583458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543346, 33.109459, 36.670856>,  <36.274529, 33.367371, 36.816517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543346, 33.109459, 36.670856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132879, 0.588785, -0.797292,
		0.728489, 0.487429, 0.481369,
		0.672046, -0.644783, -0.364155,
		36.744961, 32.916023, 36.561611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849415, 33.738571, 36.687397>,  <36.274529, 33.367371, 36.816517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849415, 33.738571, 36.687397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892090, 33.411114, 36.461674>,  <36.917694, 33.214642, 36.326241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892090, 33.411114, 36.461674>,  <36.849415, 33.738571, 36.687397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892090, 33.411114, 36.461674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216249, 0.573068, -0.790462,
		0.970492, -0.037699, 0.238170,
		0.106688, -0.818640, -0.564310,
		36.924095, 33.165520, 36.292381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455688, 33.881176, 36.346947>,  <36.849415, 33.738571, 36.687397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455688, 33.881176, 36.346947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290077, 33.580544, 36.141537>,  <37.190708, 33.400166, 36.018291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290077, 33.580544, 36.141537>,  <37.455688, 33.881176, 36.346947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290077, 33.580544, 36.141537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237959, 0.455162, -0.858023,
		0.878609, -0.477446, -0.009606,
		-0.414032, -0.751580, -0.513522,
		37.165867, 33.355068, 35.987480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954517, 33.747612, 35.760632>,  <37.455688, 33.881176, 36.346947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954517, 33.747612, 35.760632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592640, 33.600979, 35.673775>,  <37.375515, 33.513000, 35.621662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592640, 33.600979, 35.673775>,  <37.954517, 33.747612, 35.760632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592640, 33.600979, 35.673775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020422, 0.471742, -0.881500,
		0.425571, -0.801922, -0.419297,
		-0.904695, -0.366578, -0.217136,
		37.321232, 33.491005, 35.608635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059425, 33.529278, 35.043732>,  <37.954517, 33.747612, 35.760632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059425, 33.529278, 35.043732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662529, 33.544857, 35.090950>,  <37.424389, 33.554203, 35.119282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662529, 33.544857, 35.090950>,  <38.059425, 33.529278, 35.043732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662529, 33.544857, 35.090950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100280, 0.310322, -0.945328,
		-0.073451, -0.949833, -0.304009,
		-0.992244, 0.038950, 0.118043,
		37.364857, 33.556541, 35.126362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731312, 33.149101, 34.496323>,  <38.059425, 33.529278, 35.043732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731312, 33.149101, 34.496323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490517, 33.444584, 34.617592>,  <37.346039, 33.621876, 34.690353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490517, 33.444584, 34.617592>,  <37.731312, 33.149101, 34.496323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490517, 33.444584, 34.617592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038203, 0.405887, -0.913124,
		-0.797589, -0.538110, -0.272561,
		-0.601990, 0.738711, 0.303174,
		37.309921, 33.666199, 34.708546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.212257, 29.687132, 41.769077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.908447, 29.945938, 41.795910>,  <36.726162, 30.101221, 41.812012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.908447, 29.945938, 41.795910>,  <37.212257, 29.687132, 41.769077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908447, 29.945938, 41.795910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061042, 0.173568, -0.982928,
		-0.647613, -0.742460, -0.171324,
		-0.759521, 0.647015, 0.067084,
		36.680592, 30.140043, 41.816036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821365, 29.515976, 41.204903>,  <37.212257, 29.687132, 41.769077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821365, 29.515976, 41.204903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.691063, 29.880867, 41.304283>,  <36.612881, 30.099802, 41.363911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.691063, 29.880867, 41.304283>,  <36.821365, 29.515976, 41.204903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691063, 29.880867, 41.304283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089000, 0.291202, -0.952513,
		-0.941257, -0.288172, -0.176049,
		-0.325753, 0.912227, 0.248448,
		36.593338, 30.154535, 41.378819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132713, 29.635883, 40.927002>,  <36.821365, 29.515976, 41.204903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132713, 29.635883, 40.927002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.316273, 29.987652, 40.977654>,  <36.426407, 30.198713, 41.008045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.316273, 29.987652, 40.977654>,  <36.132713, 29.635883, 40.927002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316273, 29.987652, 40.977654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033938, 0.159767, -0.986571,
		-0.887841, 0.448438, 0.103162,
		0.458898, 0.879419, 0.126628,
		36.453941, 30.251478, 41.015640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895325, 30.045580, 40.388905>,  <36.132713, 29.635883, 40.927002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895325, 30.045580, 40.388905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.224609, 30.242283, 40.502388>,  <36.422180, 30.360306, 40.570480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.224609, 30.242283, 40.502388>,  <35.895325, 30.045580, 40.388905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224609, 30.242283, 40.502388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058094, 0.424141, -0.903731,
		-0.564752, 0.760446, 0.320590,
		0.823214, 0.491759, 0.283712,
		36.471573, 30.389811, 40.587502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781834, 30.841114, 40.185131>,  <35.895325, 30.045580, 40.388905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781834, 30.841114, 40.185131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.172997, 30.762825, 40.214481>,  <36.407696, 30.715851, 40.232090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.172997, 30.762825, 40.214481>,  <35.781834, 30.841114, 40.185131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172997, 30.762825, 40.214481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130446, 0.297179, -0.945869,
		0.163323, 0.934547, 0.316146,
		0.977911, -0.195722, 0.073372,
		36.466370, 30.704109, 40.236492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147160, 31.523203, 40.039593>,  <35.781834, 30.841114, 40.185131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147160, 31.523203, 40.039593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.430183, 31.242529, 40.006123>,  <36.599998, 31.074123, 39.986042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.430183, 31.242529, 40.006123>,  <36.147160, 31.523203, 40.039593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430183, 31.242529, 40.006123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424218, 0.516468, -0.743841,
		0.565159, 0.490812, 0.663098,
		0.707555, -0.701687, -0.083675,
		36.642448, 31.032022, 39.981022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739594, 31.852354, 40.053310>,  <36.147160, 31.523203, 40.039593>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739594, 31.852354, 40.053310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.824520, 31.495729, 39.893291>,  <36.875477, 31.281755, 39.797279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.824520, 31.495729, 39.893291>,  <36.739594, 31.852354, 40.053310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824520, 31.495729, 39.893291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353817, 0.451747, -0.818986,
		0.910897, 0.032343, 0.411364,
		0.212321, -0.891560, -0.400052,
		36.888218, 31.228262, 39.773277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396717, 31.905979, 39.797482>,  <36.739594, 31.852354, 40.053310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396717, 31.905979, 39.797482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.226734, 31.613537, 39.583981>,  <37.124744, 31.438072, 39.455879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.226734, 31.613537, 39.583981>,  <37.396717, 31.905979, 39.797482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226734, 31.613537, 39.583981> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149936, 0.524649, -0.838011,
		0.892708, -0.436150, -0.113336,
		-0.424961, -0.731106, -0.533753,
		37.099247, 31.394205, 39.423855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972393, 31.610315, 39.306774>,  <37.396717, 31.905979, 39.797482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972393, 31.610315, 39.306774> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.617218, 31.519962, 39.146503>,  <37.404114, 31.465752, 39.050339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.617218, 31.519962, 39.146503>,  <37.972393, 31.610315, 39.306774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617218, 31.519962, 39.146503> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310022, 0.349597, -0.884120,
		0.339773, -0.909265, -0.240397,
		-0.887942, -0.225871, -0.400676,
		37.350838, 31.452198, 39.026299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572113, 31.145870, 39.354572>,  <37.972393, 31.610315, 39.306774>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572113, 31.145870, 39.354572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.946846, 31.278221, 39.309208>,  <39.171684, 31.357632, 39.281990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.946846, 31.278221, 39.309208>,  <38.572113, 31.145870, 39.354572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946846, 31.278221, 39.309208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136403, -0.047029, 0.989537,
		0.322084, -0.942500, -0.089191,
		0.936833, 0.330879, -0.113413,
		39.227898, 31.377485, 39.275185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970856, 30.829592, 39.824711>,  <38.572113, 31.145870, 39.354572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970856, 30.829592, 39.824711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.205421, 31.142271, 39.739799>,  <39.346161, 31.329878, 39.688854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.205421, 31.142271, 39.739799>,  <38.970856, 30.829592, 39.824711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205421, 31.142271, 39.739799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280480, 0.049896, 0.958562,
		0.759899, -0.621657, -0.189991,
		0.586417, 0.781699, -0.212278,
		39.381348, 31.376781, 39.676117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673058, 30.651911, 40.137756>,  <38.970856, 30.829592, 39.824711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673058, 30.651911, 40.137756> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.626617, 31.046398, 40.090607>,  <39.598755, 31.283091, 40.062317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.626617, 31.046398, 40.090607>,  <39.673058, 30.651911, 40.137756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626617, 31.046398, 40.090607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361819, 0.152517, 0.919688,
		0.924991, 0.064127, -0.374540,
		-0.116100, 0.986218, -0.117874,
		39.591789, 31.342264, 40.055244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348347, 30.990686, 40.229683>,  <39.673058, 30.651911, 40.137756>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348347, 30.990686, 40.229683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.061813, 31.256397, 40.315105>,  <39.889893, 31.415823, 40.366360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.061813, 31.256397, 40.315105>,  <40.348347, 30.990686, 40.229683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061813, 31.256397, 40.315105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328789, 0.051391, 0.943004,
		0.615439, 0.745719, -0.255220,
		-0.716332, 0.664275, 0.213556,
		39.846912, 31.455679, 40.379173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738964, 31.424925, 40.665680>,  <40.348347, 30.990686, 40.229683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738964, 31.424925, 40.665680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.350765, 31.515999, 40.697399>,  <40.117844, 31.570642, 40.716431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.350765, 31.515999, 40.697399>,  <40.738964, 31.424925, 40.665680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350765, 31.515999, 40.697399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113169, 0.139785, 0.983693,
		0.212888, 0.963649, -0.161428,
		-0.970501, 0.227685, 0.079297,
		40.059616, 31.584305, 40.721188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641411, 32.022331, 40.914520>,  <40.738964, 31.424925, 40.665680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.641411, 32.022331, 40.914520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.298725, 31.841518, 41.013885>,  <40.093113, 31.733030, 41.073505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.298725, 31.841518, 41.013885>,  <40.641411, 32.022331, 40.914520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298725, 31.841518, 41.013885> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157351, 0.229614, 0.960478,
		-0.491208, 0.861942, -0.125585,
		-0.856712, -0.452033, 0.248415,
		40.041710, 31.705908, 41.088409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460690, 32.449978, 41.444355>,  <40.641411, 32.022331, 40.914520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460690, 32.449978, 41.444355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.213474, 32.136326, 41.466869>,  <40.065144, 31.948135, 41.480377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.213474, 32.136326, 41.466869>,  <40.460690, 32.449978, 41.444355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213474, 32.136326, 41.466869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118760, 0.163899, 0.979303,
		-0.777126, 0.598562, -0.194419,
		-0.618038, -0.784131, 0.056285,
		40.028065, 31.901087, 41.483753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834736, 32.724781, 41.745457>,  <40.460690, 32.449978, 41.444355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834736, 32.724781, 41.745457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.863064, 32.333546, 41.823757>,  <39.880062, 32.098804, 41.870739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.863064, 32.333546, 41.823757>,  <39.834736, 32.724781, 41.745457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863064, 32.333546, 41.823757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022014, 0.194663, 0.980623,
		-0.997246, -0.073760, -0.007745,
		0.070823, -0.978093, 0.195750,
		39.884312, 32.040119, 41.882481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248585, 32.579800, 42.110363>,  <39.834736, 32.724781, 41.745457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248585, 32.579800, 42.110363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.515060, 32.294086, 42.196148>,  <39.674946, 32.122658, 42.247620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.515060, 32.294086, 42.196148>,  <39.248585, 32.579800, 42.110363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515060, 32.294086, 42.196148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120166, 0.180998, 0.976115,
		-0.736037, -0.676050, 0.034746,
		0.666191, -0.714281, 0.214460,
		39.714916, 32.079803, 42.260487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925732, 32.209785, 42.678928>,  <39.248585, 32.579800, 42.110363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925732, 32.209785, 42.678928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.298214, 32.064640, 42.692726>,  <39.521702, 31.977552, 42.701004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.298214, 32.064640, 42.692726>,  <38.925732, 32.209785, 42.678928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298214, 32.064640, 42.692726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010896, 0.122305, 0.992433,
		-0.364342, -0.923779, 0.117845,
		0.931201, -0.362869, 0.034495,
		39.577576, 31.955780, 42.703075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924351, 31.699207, 43.233860>,  <38.925732, 32.209785, 42.678928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924351, 31.699207, 43.233860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.300209, 31.824732, 43.179329>,  <39.525726, 31.900045, 43.146610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.300209, 31.824732, 43.179329>,  <38.924351, 31.699207, 43.233860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300209, 31.824732, 43.179329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167310, -0.073876, 0.983132,
		0.298445, -0.946607, -0.121921,
		0.939648, 0.313809, -0.136329,
		39.582104, 31.918875, 43.138432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188301, 31.498190, 43.759975>,  <38.924351, 31.699207, 43.233860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188301, 31.498190, 43.759975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.481365, 31.728218, 43.614372>,  <39.657204, 31.866236, 43.527012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.481365, 31.728218, 43.614372>,  <39.188301, 31.498190, 43.759975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481365, 31.728218, 43.614372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328372, 0.169779, 0.929165,
		0.596137, -0.800292, -0.064447,
		0.732661, 0.575072, -0.364005,
		39.701164, 31.900740, 43.505169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833218, 31.146456, 44.014832>,  <39.188301, 31.498190, 43.759975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833218, 31.146456, 44.014832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.914322, 31.529503, 43.932999>,  <39.962986, 31.759331, 43.883900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.914322, 31.529503, 43.932999>,  <39.833218, 31.146456, 44.014832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914322, 31.529503, 43.932999> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359773, 0.121455, 0.925101,
		0.910741, -0.261181, -0.319899,
		0.202765, 0.957618, -0.204580,
		39.975151, 31.816788, 43.871624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615227, 31.373402, 44.340733>,  <39.833218, 31.146456, 44.014832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615227, 31.373402, 44.340733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.383694, 31.695959, 44.292259>,  <40.244774, 31.889494, 44.263176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.383694, 31.695959, 44.292259>,  <40.615227, 31.373402, 44.340733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383694, 31.695959, 44.292259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235423, 0.307534, 0.921954,
		0.780724, 0.505128, -0.367854,
		-0.578832, 0.806392, -0.121181,
		40.210045, 31.937878, 44.255905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.803909, 36.429058, 44.932667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.044205, 36.140743, 44.794346>,  <34.188381, 35.967754, 44.711353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.044205, 36.140743, 44.794346>,  <33.803909, 36.429058, 44.932667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044205, 36.140743, 44.794346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206903, 0.557993, -0.803638,
		0.772207, 0.411230, 0.484342,
		0.600739, -0.720787, -0.345801,
		34.224426, 35.924507, 44.690605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275917, 36.743183, 44.379341>,  <33.803909, 36.429058, 44.932667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275917, 36.743183, 44.379341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.345741, 36.355034, 44.312531>,  <34.387638, 36.122143, 44.272446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.345741, 36.355034, 44.312531>,  <34.275917, 36.743183, 44.379341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345741, 36.355034, 44.312531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321760, 0.216534, -0.921728,
		0.930590, 0.107160, 0.350027,
		0.174565, -0.970376, -0.167024,
		34.398109, 36.063919, 44.262424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864304, 36.793251, 43.963161>,  <34.275917, 36.743183, 44.379341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864304, 36.793251, 43.963161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.722290, 36.422352, 43.915550>,  <34.637081, 36.199814, 43.886982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.722290, 36.422352, 43.915550>,  <34.864304, 36.793251, 43.963161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722290, 36.422352, 43.915550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331567, -0.005846, -0.943414,
		0.874078, -0.374413, 0.309519,
		-0.355035, -0.927244, -0.119033,
		34.615780, 36.144180, 43.879841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414944, 36.384197, 43.655846>,  <34.864304, 36.793251, 43.963161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414944, 36.384197, 43.655846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.076340, 36.198044, 43.552429>,  <34.873177, 36.086353, 43.490379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.076340, 36.198044, 43.552429>,  <35.414944, 36.384197, 43.655846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076340, 36.198044, 43.552429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303098, -0.022043, -0.952704,
		0.437672, -0.884836, 0.159715,
		-0.846508, -0.465381, -0.258545,
		34.822388, 36.058430, 43.474865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611038, 35.749554, 43.222515>,  <35.414944, 36.384197, 43.655846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611038, 35.749554, 43.222515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.228977, 35.831356, 43.136856>,  <34.999741, 35.880440, 43.085461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.228977, 35.831356, 43.136856>,  <35.611038, 35.749554, 43.222515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228977, 35.831356, 43.136856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242364, 0.124434, -0.962173,
		-0.170126, -0.970924, -0.168419,
		-0.955153, 0.204509, -0.214148,
		34.942432, 35.892708, 43.072613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327171, 35.166191, 42.836697>,  <35.611038, 35.749554, 43.222515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327171, 35.166191, 42.836697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.064674, 35.454220, 42.746506>,  <34.907177, 35.627037, 42.692390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.064674, 35.454220, 42.746506>,  <35.327171, 35.166191, 42.836697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064674, 35.454220, 42.746506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322243, -0.002744, -0.946653,
		-0.682279, -0.693892, -0.230238,
		-0.656243, 0.720074, -0.225474,
		34.867802, 35.670242, 42.678864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229069, 35.002712, 42.121990>,  <35.327171, 35.166191, 42.836697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229069, 35.002712, 42.121990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.054249, 35.358902, 42.172653>,  <34.949356, 35.572617, 42.203053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.054249, 35.358902, 42.172653>,  <35.229069, 35.002712, 42.121990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054249, 35.358902, 42.172653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179342, 0.224268, -0.957883,
		-0.881376, -0.395928, -0.257716,
		-0.437050, 0.890474, 0.126658,
		34.923134, 35.626045, 42.210651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554558, 35.066662, 41.760269>,  <35.229069, 35.002712, 42.121990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554558, 35.066662, 41.760269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.725376, 35.426109, 41.800480>,  <34.827869, 35.641777, 41.824604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.725376, 35.426109, 41.800480>,  <34.554558, 35.066662, 41.760269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725376, 35.426109, 41.800480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068409, 0.078745, -0.994545,
		-0.901637, 0.431597, -0.027846,
		0.427050, 0.898623, 0.100524,
		34.853493, 35.695698, 41.830639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196136, 35.524506, 41.216179>,  <34.554558, 35.066662, 41.760269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196136, 35.524506, 41.216179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.535202, 35.703770, 41.329746>,  <34.738644, 35.811329, 41.397888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.535202, 35.703770, 41.329746>,  <34.196136, 35.524506, 41.216179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535202, 35.703770, 41.329746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155304, 0.302105, -0.940539,
		-0.507287, 0.841358, 0.186483,
		0.847667, 0.448162, 0.283921,
		34.789501, 35.838219, 41.414921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173195, 36.174194, 40.987244>,  <34.196136, 35.524506, 41.216179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173195, 36.174194, 40.987244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.562485, 36.114414, 41.057110>,  <34.796059, 36.078548, 41.099030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.562485, 36.114414, 41.057110>,  <34.173195, 36.174194, 40.987244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562485, 36.114414, 41.057110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225117, 0.465793, -0.855780,
		0.046536, 0.872182, 0.486962,
		0.973220, -0.149448, 0.174666,
		34.854450, 36.069580, 41.109509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527660, 36.886818, 40.831272>,  <34.173195, 36.174194, 40.987244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527660, 36.886818, 40.831272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.798393, 36.593845, 40.801750>,  <34.960831, 36.418060, 40.784039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.798393, 36.593845, 40.801750>,  <34.527660, 36.886818, 40.831272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798393, 36.593845, 40.801750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255399, 0.327669, -0.909618,
		0.690416, 0.596805, 0.408838,
		0.676828, -0.732432, -0.073804,
		35.001442, 36.374115, 40.779610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006523, 37.235825, 40.521400>,  <34.527660, 36.886818, 40.831272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006523, 37.235825, 40.521400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.078392, 36.847855, 40.455723>,  <35.121513, 36.615070, 40.416317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.078392, 36.847855, 40.455723>,  <35.006523, 37.235825, 40.521400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078392, 36.847855, 40.455723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367848, 0.221042, -0.903232,
		0.912362, 0.101892, 0.396501,
		0.179676, -0.969927, -0.164190,
		35.132294, 36.556877, 40.406467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785950, 37.076099, 40.342110>,  <35.006523, 37.235825, 40.521400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785950, 37.076099, 40.342110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.566082, 36.774803, 40.197613>,  <35.434162, 36.594025, 40.110912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.566082, 36.774803, 40.197613>,  <35.785950, 37.076099, 40.342110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566082, 36.774803, 40.197613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219390, 0.287093, -0.932441,
		0.806062, -0.591784, 0.007448,
		-0.549666, -0.753239, -0.361246,
		35.401184, 36.548832, 40.089237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223083, 36.763992, 39.799026>,  <35.785950, 37.076099, 40.342110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223083, 36.763992, 39.799026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.857315, 36.615124, 39.735371>,  <35.637856, 36.525803, 39.697178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.857315, 36.615124, 39.735371>,  <36.223083, 36.763992, 39.799026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857315, 36.615124, 39.735371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121636, 0.122333, -0.985007,
		0.386057, -0.920068, -0.066594,
		-0.914420, -0.372169, -0.159141,
		35.582989, 36.503471, 39.687630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929249, 36.770500, 39.652035>,  <36.223083, 36.763992, 39.799026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929249, 36.770500, 39.652035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.994049, 37.160072, 39.588509>,  <37.032928, 37.393814, 39.550392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.994049, 37.160072, 39.588509>,  <36.929249, 36.770500, 39.652035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994049, 37.160072, 39.588509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004530, 0.161670, 0.986835,
		0.986781, -0.159147, 0.030603,
		0.161999, 0.973928, -0.158812,
		37.042648, 37.452251, 39.540867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479462, 36.802959, 40.079582>,  <36.929249, 36.770500, 39.652035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479462, 36.802959, 40.079582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.357628, 37.178402, 40.014786>,  <37.284527, 37.403667, 39.975910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.357628, 37.178402, 40.014786>,  <37.479462, 36.802959, 40.079582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357628, 37.178402, 40.014786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270523, 0.248312, 0.930139,
		0.913260, 0.239487, -0.329548,
		-0.304587, 0.938609, -0.161987,
		37.266251, 37.459984, 39.966190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049007, 37.281891, 40.375961>,  <37.479462, 36.802959, 40.079582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049007, 37.281891, 40.375961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.709724, 37.491631, 40.346020>,  <37.506153, 37.617474, 40.328053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.709724, 37.491631, 40.346020>,  <38.049007, 37.281891, 40.375961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709724, 37.491631, 40.346020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050690, 0.221043, 0.973946,
		0.527231, 0.822314, -0.214070,
		-0.848208, 0.524346, -0.074858,
		37.455261, 37.648933, 40.323563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226406, 37.959881, 40.489349>,  <38.049007, 37.281891, 40.375961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226406, 37.959881, 40.489349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.842369, 37.890209, 40.576889>,  <37.611946, 37.848408, 40.629414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.842369, 37.890209, 40.576889>,  <38.226406, 37.959881, 40.489349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842369, 37.890209, 40.576889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175943, 0.232156, 0.956633,
		-0.217429, 0.956957, -0.192245,
		-0.960088, -0.174175, 0.218847,
		37.554344, 37.837955, 40.642544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099873, 38.379013, 41.135662>,  <38.226406, 37.959881, 40.489349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099873, 38.379013, 41.135662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.777477, 38.142406, 41.126736>,  <37.584042, 38.000443, 41.121380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.777477, 38.142406, 41.126736>,  <38.099873, 38.379013, 41.135662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777477, 38.142406, 41.126736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011550, -0.021982, 0.999692,
		-0.591824, 0.805994, 0.010885,
		-0.805984, -0.591516, -0.022319,
		37.535683, 37.964951, 41.120041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642265, 38.639484, 41.701565>,  <38.099873, 38.379013, 41.135662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642265, 38.639484, 41.701565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.521599, 38.263321, 41.638794>,  <37.449200, 38.037621, 41.601131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.521599, 38.263321, 41.638794>,  <37.642265, 38.639484, 41.701565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521599, 38.263321, 41.638794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017919, -0.158974, 0.987120,
		-0.953246, 0.300589, 0.031106,
		-0.301663, -0.940411, -0.156928,
		37.431099, 37.981197, 41.591717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246861, 38.404827, 42.381493>,  <37.642265, 38.639484, 41.701565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246861, 38.404827, 42.381493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.212345, 38.066223, 42.171356>,  <37.191635, 37.863060, 42.045277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.212345, 38.066223, 42.171356>,  <37.246861, 38.404827, 42.381493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212345, 38.066223, 42.171356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172039, -0.506721, 0.844770,
		-0.981304, 0.163272, -0.101908,
		-0.086288, -0.846508, -0.525337,
		37.186459, 37.812271, 42.013756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634010, 38.160198, 42.504551>,  <37.246861, 38.404827, 42.381493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634010, 38.160198, 42.504551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.910183, 37.884666, 42.416172>,  <37.075886, 37.719349, 42.363144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.910183, 37.884666, 42.416172>,  <36.634010, 38.160198, 42.504551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910183, 37.884666, 42.416172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182435, -0.461360, 0.868254,
		-0.700018, -0.559160, -0.444203,
		0.690430, -0.688831, -0.220950,
		37.117313, 37.678017, 42.349888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350548, 37.575603, 42.770508>,  <36.634010, 38.160198, 42.504551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350548, 37.575603, 42.770508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.730953, 37.472328, 42.702492>,  <36.959198, 37.410362, 42.661682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.730953, 37.472328, 42.702492>,  <36.350548, 37.575603, 42.770508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730953, 37.472328, 42.702492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023974, -0.486776, 0.873198,
		-0.308218, -0.834500, -0.456741,
		0.951014, -0.258185, -0.170039,
		37.016258, 37.394871, 42.651482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515129, 36.833447, 42.895561>,  <36.350548, 37.575603, 42.770508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515129, 36.833447, 42.895561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.831421, 37.059807, 42.988945>,  <37.021198, 37.195621, 43.044975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.831421, 37.059807, 42.988945>,  <36.515129, 36.833447, 42.895561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831421, 37.059807, 42.988945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012923, -0.396714, 0.917851,
		0.612026, -0.722757, -0.321008,
		0.790732, 0.565897, 0.233459,
		37.068642, 37.229576, 43.058983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916794, 36.400570, 43.293053>,  <36.515129, 36.833447, 42.895561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916794, 36.400570, 43.293053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.113010, 36.734287, 43.393707>,  <37.230740, 36.934517, 43.454102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.113010, 36.734287, 43.393707>,  <36.916794, 36.400570, 43.293053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113010, 36.734287, 43.393707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002709, -0.290224, 0.956955,
		0.871412, -0.468746, -0.144628,
		0.490544, 0.834294, 0.251635,
		37.260174, 36.984577, 43.469196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512527, 36.280823, 43.774754>,  <36.916794, 36.400570, 43.293053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512527, 36.280823, 43.774754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.406921, 36.661678, 43.836380>,  <37.343559, 36.890190, 43.873356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.406921, 36.661678, 43.836380>,  <37.512527, 36.280823, 43.774754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406921, 36.661678, 43.836380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147904, -0.197813, 0.969017,
		0.953112, 0.233045, 0.193049,
		-0.264012, 0.952134, 0.154070,
		37.327717, 36.947319, 43.882603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974995, 36.422104, 44.293648>,  <37.512527, 36.280823, 43.774754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974995, 36.422104, 44.293648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.691486, 36.704258, 44.297131>,  <37.521381, 36.873550, 44.299221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.691486, 36.704258, 44.297131>,  <37.974995, 36.422104, 44.293648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691486, 36.704258, 44.297131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015329, -0.027744, 0.999498,
		0.705273, 0.708280, 0.030477,
		-0.708770, 0.705386, 0.008710,
		37.478855, 36.915874, 44.299744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188904, 36.836983, 44.876884>,  <37.974995, 36.422104, 44.293648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188904, 36.836983, 44.876884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.798187, 36.901863, 44.820927>,  <37.563759, 36.940792, 44.787354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.798187, 36.901863, 44.820927>,  <38.188904, 36.836983, 44.876884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798187, 36.901863, 44.820927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144882, -0.019306, 0.989261,
		0.157761, 0.986568, 0.042358,
		-0.976791, 0.162204, -0.139891,
		37.505150, 36.950523, 44.778961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656837, 37.199482, 45.219341>,  <38.188904, 36.836983, 44.876884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656837, 37.199482, 45.219341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.959633, 36.942623, 45.267696>,  <39.141312, 36.788509, 45.296707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.959633, 36.942623, 45.267696>,  <38.656837, 37.199482, 45.219341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959633, 36.942623, 45.267696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271452, 0.140765, -0.952102,
		0.594370, 0.753549, 0.280869,
		0.756993, -0.642144, 0.120886,
		39.186729, 36.749981, 45.303963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251385, 37.573944, 44.918812>,  <38.656837, 37.199482, 45.219341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251385, 37.573944, 44.918812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.344727, 37.185200, 44.905930>,  <39.400734, 36.951954, 44.898201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.344727, 37.185200, 44.905930>,  <39.251385, 37.573944, 44.918812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344727, 37.185200, 44.905930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337713, 0.112057, -0.934555,
		0.911863, 0.207210, 0.354358,
		0.233358, -0.971858, -0.032203,
		39.414734, 36.893642, 44.896267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849144, 37.613533, 44.641361>,  <39.251385, 37.573944, 44.918812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.849144, 37.613533, 44.641361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.731167, 37.233303, 44.602539>,  <39.660381, 37.005165, 44.579247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.731167, 37.233303, 44.602539>,  <39.849144, 37.613533, 44.641361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731167, 37.233303, 44.602539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305611, 0.002389, -0.952153,
		0.905324, -0.310489, 0.289802,
		-0.294941, -0.950574, -0.097052,
		39.642685, 36.948132, 44.573425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453793, 37.334324, 44.323776>,  <39.849144, 37.613533, 44.641361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.453793, 37.334324, 44.323776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.154816, 37.081738, 44.241241>,  <39.975430, 36.930187, 44.191719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.154816, 37.081738, 44.241241>,  <40.453793, 37.334324, 44.323776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154816, 37.081738, 44.241241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294010, -0.035908, -0.955128,
		0.595722, -0.774572, 0.212497,
		-0.747445, -0.631466, -0.206341,
		39.930584, 36.892296, 44.179340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777622, 36.736214, 43.987545>,  <40.453793, 37.334324, 44.323776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777622, 36.736214, 43.987545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.389835, 36.725929, 43.890003>,  <40.157162, 36.719761, 43.831478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.389835, 36.725929, 43.890003>,  <40.777622, 36.736214, 43.987545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.389835, 36.725929, 43.890003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244557, -0.173814, -0.953929,
		-0.017862, -0.984443, 0.174794,
		-0.969471, -0.025708, -0.243857,
		40.098995, 36.718216, 43.816845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776917, 36.152443, 43.534164>,  <40.777622, 36.736214, 43.987545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776917, 36.152443, 43.534164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.431110, 36.342331, 43.468124>,  <40.223625, 36.456264, 43.428501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.431110, 36.342331, 43.468124>,  <40.776917, 36.152443, 43.534164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431110, 36.342331, 43.468124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053349, -0.239966, -0.969314,
		-0.499771, -0.846793, 0.182128,
		-0.864513, 0.474718, -0.165103,
		40.171757, 36.484745, 43.418594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422428, 35.735718, 42.949780>,  <40.776917, 36.152443, 43.534164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422428, 35.735718, 42.949780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.267235, 36.104053, 42.934116>,  <40.174118, 36.325054, 42.924717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.267235, 36.104053, 42.934116>,  <40.422428, 35.735718, 42.949780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267235, 36.104053, 42.934116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056223, -0.018761, -0.998242,
		-0.919951, -0.389500, -0.044493,
		-0.387981, 0.920835, -0.039158,
		40.150841, 36.380302, 42.922367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978466, 35.678757, 42.484756>,  <40.422428, 35.735718, 42.949780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978466, 35.678757, 42.484756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.075111, 36.066643, 42.499065>,  <40.133099, 36.299374, 42.507652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.075111, 36.066643, 42.499065>,  <39.978466, 35.678757, 42.484756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075111, 36.066643, 42.499065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121912, 0.066907, -0.990283,
		-0.962685, 0.234901, 0.134385,
		0.241610, 0.969714, 0.035773,
		40.147594, 36.357555, 42.509796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363102, 36.168194, 42.185863>,  <39.978466, 35.678757, 42.484756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363102, 36.168194, 42.185863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.722572, 36.337990, 42.141705>,  <39.938255, 36.439869, 42.115208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.722572, 36.337990, 42.141705>,  <39.363102, 36.168194, 42.185863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722572, 36.337990, 42.141705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039989, -0.171359, -0.984397,
		-0.436786, 0.889069, -0.137021,
		0.898676, 0.424491, -0.110400,
		39.992176, 36.465336, 42.108585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234386, 36.510609, 41.603748>,  <39.363102, 36.168194, 42.185863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234386, 36.510609, 41.603748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.632786, 36.538761, 41.625778>,  <39.871826, 36.555653, 41.638996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.632786, 36.538761, 41.625778>,  <39.234386, 36.510609, 41.603748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632786, 36.538761, 41.625778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053674, 0.021580, -0.998325,
		-0.071448, 0.997287, 0.017716,
		0.995999, 0.070377, 0.055071,
		39.931587, 36.559875, 41.642300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440918, 37.203587, 41.192635>,  <39.234386, 36.510609, 41.603748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440918, 37.203587, 41.192635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.763615, 36.971478, 41.237251>,  <39.957233, 36.832211, 41.264023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.763615, 36.971478, 41.237251>,  <39.440918, 37.203587, 41.192635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763615, 36.971478, 41.237251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247357, 0.160204, -0.955588,
		0.536636, 0.798507, 0.272779,
		0.806744, -0.580277, 0.111546,
		40.005638, 36.797394, 41.270714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868744, 37.573757, 40.811783>,  <39.440918, 37.203587, 41.192635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868744, 37.573757, 40.811783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.029560, 37.208542, 40.839264>,  <40.126049, 36.989414, 40.855755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.029560, 37.208542, 40.839264>,  <39.868744, 37.573757, 40.811783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029560, 37.208542, 40.839264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299063, 0.060023, -0.952344,
		0.865403, 0.403431, 0.297188,
		0.402043, -0.913039, 0.068707,
		40.150173, 36.934631, 40.859875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512222, 37.690281, 40.506859>,  <39.868744, 37.573757, 40.811783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512222, 37.690281, 40.506859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.411423, 37.303974, 40.482239>,  <40.350945, 37.072189, 40.467468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.411423, 37.303974, 40.482239>,  <40.512222, 37.690281, 40.506859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411423, 37.303974, 40.482239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274292, -0.010292, -0.961591,
		0.928041, -0.259203, 0.267496,
		-0.252000, -0.965768, -0.061546,
		40.335823, 37.014244, 40.463776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019405, 37.384602, 40.185307>,  <40.512222, 37.690281, 40.506859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019405, 37.384602, 40.185307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.718567, 37.126629, 40.131027>,  <40.538063, 36.971844, 40.098461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.718567, 37.126629, 40.131027>,  <41.019405, 37.384602, 40.185307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718567, 37.126629, 40.131027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270003, -0.113693, -0.956124,
		0.601209, -0.755734, 0.259642,
		-0.752094, -0.644934, -0.135697,
		40.492939, 36.933147, 40.090317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.269499, 39.135784, 27.066051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.272430, 38.741196, 27.000534>,  <25.274189, 38.504444, 26.961224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.272430, 38.741196, 27.000534>,  <25.269499, 39.135784, 27.066051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.272430, 38.741196, 27.000534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076817, -0.162759, 0.983671,
		-0.997018, -0.019790, 0.074584,
		0.007328, -0.986467, -0.163794,
		25.274630, 38.445255, 26.951395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.752775, 38.783195, 27.448265>,  <25.269499, 39.135784, 27.066051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.752775, 38.783195, 27.448265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.036770, 38.506119, 27.397511>,  <25.207167, 38.339874, 27.367058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.036770, 38.506119, 27.397511>,  <24.752775, 38.783195, 27.448265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.036770, 38.506119, 27.397511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078791, -0.257188, 0.963144,
		-0.699793, -0.673822, -0.237178,
		0.709987, -0.692689, -0.126887,
		25.249765, 38.298313, 27.359444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.491179, 38.133488, 27.767534>,  <24.752775, 38.783195, 27.448265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.491179, 38.133488, 27.767534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.888336, 38.100048, 27.733656>,  <25.126631, 38.079987, 27.713329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.888336, 38.100048, 27.733656>,  <24.491179, 38.133488, 27.767534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.888336, 38.100048, 27.733656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042994, -0.411646, 0.910329,
		-0.110963, -0.907502, -0.405127,
		0.992894, -0.083595, -0.084695,
		25.186205, 38.074970, 27.708248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.532597, 37.513668, 27.973442>,  <24.491179, 38.133488, 27.767534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.532597, 37.513668, 27.973442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.892891, 37.686550, 27.990734>,  <25.109068, 37.790279, 28.001108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.892891, 37.686550, 27.990734>,  <24.532597, 37.513668, 27.973442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.892891, 37.686550, 27.990734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096143, -0.295434, 0.950513,
		0.423593, -0.852006, -0.307662,
		0.900736, 0.432210, 0.043229,
		25.163113, 37.816212, 28.003702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.900888, 37.019444, 28.353804>,  <24.532597, 37.513668, 27.973442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.900888, 37.019444, 28.353804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.140110, 37.340008, 28.357334>,  <25.283642, 37.532345, 28.359451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.140110, 37.340008, 28.357334>,  <24.900888, 37.019444, 28.353804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.140110, 37.340008, 28.357334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210291, -0.167536, 0.963177,
		0.773376, -0.574175, -0.268724,
		0.598053, 0.801408, 0.008825,
		25.319527, 37.580429, 28.359982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.521263, 36.814255, 28.542921>,  <24.900888, 37.019444, 28.353804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.521263, 36.814255, 28.542921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.492447, 37.203114, 28.632132>,  <25.475157, 37.436428, 28.685658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.492447, 37.203114, 28.632132>,  <25.521263, 36.814255, 28.542921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.492447, 37.203114, 28.632132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223224, -0.202219, 0.953561,
		0.972101, 0.118481, -0.202438,
		-0.072043, 0.972147, 0.223025,
		25.470835, 37.494759, 28.699039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.091286, 36.996746, 29.004436>,  <25.521263, 36.814255, 28.542921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.091286, 36.996746, 29.004436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.840864, 37.298824, 29.082146>,  <25.690611, 37.480072, 29.128771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.840864, 37.298824, 29.082146>,  <26.091286, 36.996746, 29.004436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.840864, 37.298824, 29.082146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181583, -0.101098, 0.978165,
		0.758344, 0.647659, -0.073837,
		-0.626053, 0.755193, 0.194271,
		25.653048, 37.525383, 29.140427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.507368, 37.502174, 29.474552>,  <26.091286, 36.996746, 29.004436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.507368, 37.502174, 29.474552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.120094, 37.576473, 29.541628>,  <25.887730, 37.621052, 29.581873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.120094, 37.576473, 29.541628>,  <26.507368, 37.502174, 29.474552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.120094, 37.576473, 29.541628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146606, -0.122030, 0.981639,
		0.202796, 0.974991, 0.090917,
		-0.968184, 0.185743, 0.167687,
		25.829639, 37.632195, 29.591934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.418968, 38.064529, 30.046448>,  <26.507368, 37.502174, 29.474552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.418968, 38.064529, 30.046448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.055264, 37.899445, 30.024883>,  <25.837040, 37.800392, 30.011944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.055264, 37.899445, 30.024883>,  <26.418968, 38.064529, 30.046448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.055264, 37.899445, 30.024883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051838, -0.016232, 0.998524,
		-0.412983, 0.910715, -0.006635,
		-0.909263, -0.412717, -0.053913,
		25.782484, 37.775631, 30.008709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.219246, 38.239002, 30.599386>,  <26.418968, 38.064529, 30.046448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.219246, 38.239002, 30.599386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.921556, 37.985878, 30.513889>,  <25.742943, 37.834003, 30.462591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.921556, 37.985878, 30.513889>,  <26.219246, 38.239002, 30.599386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.921556, 37.985878, 30.513889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139965, -0.165148, 0.976287,
		-0.653102, 0.756491, 0.034336,
		-0.744222, -0.632809, -0.213741,
		25.698290, 37.796036, 30.449766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.655973, 38.427540, 30.903244>,  <26.219246, 38.239002, 30.599386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.655973, 38.427540, 30.903244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.606747, 38.034176, 30.849932>,  <25.577209, 37.798157, 30.817944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.606747, 38.034176, 30.849932>,  <25.655973, 38.427540, 30.903244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.606747, 38.034176, 30.849932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008816, -0.135382, 0.990754,
		-0.992359, 0.120756, 0.025331,
		-0.123069, -0.983407, -0.133283,
		25.569826, 37.739155, 30.809946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.074179, 38.177231, 31.396723>,  <25.655973, 38.427540, 30.903244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.074179, 38.177231, 31.396723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.306353, 37.866310, 31.299643>,  <25.445658, 37.679760, 31.241394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.306353, 37.866310, 31.299643>,  <25.074179, 38.177231, 31.396723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.306353, 37.866310, 31.299643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107156, -0.222542, 0.969016,
		-0.807225, -0.588458, -0.045879,
		0.580435, -0.777298, -0.242698,
		25.480484, 37.633121, 31.226833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.969328, 37.707741, 31.999760>,  <25.074179, 38.177231, 31.396723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.969328, 37.707741, 31.999760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.272764, 37.515045, 31.824276>,  <25.454826, 37.399429, 31.718987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.272764, 37.515045, 31.824276>,  <24.969328, 37.707741, 31.999760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.272764, 37.515045, 31.824276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366330, -0.241478, 0.898605,
		-0.538833, -0.842386, -0.006707,
		0.758592, -0.481741, -0.438707,
		25.500341, 37.370522, 31.692663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.045685, 36.964397, 32.315720>,  <24.969328, 37.707741, 31.999760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.045685, 36.964397, 32.315720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.397127, 37.077732, 32.161953>,  <25.607992, 37.145733, 32.069695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.397127, 37.077732, 32.161953>,  <25.045685, 36.964397, 32.315720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.397127, 37.077732, 32.161953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439814, -0.166487, 0.882522,
		0.186048, -0.944460, -0.270890,
		0.878607, 0.283333, -0.384412,
		25.660709, 37.162731, 32.046631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.514183, 36.429462, 32.511204>,  <25.045685, 36.964397, 32.315720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.514183, 36.429462, 32.511204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.783195, 36.706535, 32.406975>,  <25.944603, 36.872780, 32.344437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.783195, 36.706535, 32.406975>,  <25.514183, 36.429462, 32.511204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.783195, 36.706535, 32.406975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482554, -0.143483, 0.864034,
		0.561112, -0.706828, -0.430753,
		0.672529, 0.692681, -0.260572,
		25.984955, 36.914341, 32.328804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.149290, 36.147018, 32.709259>,  <25.514183, 36.429462, 32.511204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.149290, 36.147018, 32.709259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.225243, 36.538681, 32.680405>,  <26.270815, 36.773678, 32.663090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.225243, 36.538681, 32.680405>,  <26.149290, 36.147018, 32.709259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.225243, 36.538681, 32.680405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584907, -0.053802, 0.809314,
		0.788561, -0.195868, -0.582930,
		0.189882, 0.979153, -0.072139,
		26.282207, 36.832428, 32.658764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.890265, 36.212811, 32.748276>,  <26.149290, 36.147018, 32.709259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.890265, 36.212811, 32.748276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.694658, 36.549271, 32.840645>,  <26.577293, 36.751148, 32.896069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.694658, 36.549271, 32.840645>,  <26.890265, 36.212811, 32.748276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.694658, 36.549271, 32.840645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399682, -0.019238, 0.916452,
		0.775317, 0.540459, -0.326785,
		-0.489018, 0.841150, 0.230927,
		26.547953, 36.801617, 32.909924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.358669, 36.680367, 32.915394>,  <26.890265, 36.212811, 32.748276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.358669, 36.680367, 32.915394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.028193, 36.799065, 33.106956>,  <26.829906, 36.870285, 33.221893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.028193, 36.799065, 33.106956>,  <27.358669, 36.680367, 32.915394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.028193, 36.799065, 33.106956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479305, -0.076546, 0.874304,
		0.296103, 0.951884, -0.078989,
		-0.826190, 0.296744, 0.478908,
		26.780336, 36.888088, 33.250629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.600760, 37.182629, 33.294357>,  <27.358669, 36.680367, 32.915394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.600760, 37.182629, 33.294357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.266975, 37.102013, 33.499516>,  <27.066706, 37.053642, 33.622608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.266975, 37.102013, 33.499516>,  <27.600760, 37.182629, 33.294357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.266975, 37.102013, 33.499516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503277, 0.100407, 0.858272,
		-0.224473, 0.974321, 0.017644,
		-0.834460, -0.201538, 0.512892,
		27.016638, 37.041550, 33.653381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.558117, 37.690441, 33.794880>,  <27.600760, 37.182629, 33.294357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.558117, 37.690441, 33.794880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.314432, 37.399441, 33.921124>,  <27.168221, 37.224842, 33.996868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.314432, 37.399441, 33.921124>,  <27.558117, 37.690441, 33.794880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.314432, 37.399441, 33.921124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521024, -0.067170, 0.850895,
		-0.597824, 0.682815, 0.419964,
		-0.609213, -0.727497, 0.315607,
		27.131668, 37.181190, 34.015804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.245520, 37.532360, 33.871078>,  <27.558117, 37.690441, 33.794880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.245520, 37.532360, 33.871078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.641672, 37.478825, 33.885117>,  <28.879364, 37.446705, 33.893539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.641672, 37.478825, 33.885117>,  <28.245520, 37.532360, 33.871078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.641672, 37.478825, 33.885117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124611, 0.752568, -0.646617,
		0.060128, 0.644771, 0.762007,
		0.990382, -0.133835, 0.035095,
		28.938787, 37.438675, 33.895645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.569254, 38.181183, 34.048416>,  <28.245520, 37.532360, 33.871078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.569254, 38.181183, 34.048416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.820599, 37.946548, 33.844032>,  <28.971405, 37.805767, 33.721401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.820599, 37.946548, 33.844032>,  <28.569254, 38.181183, 34.048416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.820599, 37.946548, 33.844032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167322, 0.743364, -0.647622,
		0.759714, 0.321446, 0.565250,
		0.628362, -0.586586, -0.510959,
		29.009108, 37.770573, 33.690746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.085419, 38.601635, 33.922958>,  <28.569254, 38.181183, 34.048416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.085419, 38.601635, 33.922958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.158281, 38.313637, 33.655102>,  <29.202000, 38.140839, 33.494389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.158281, 38.313637, 33.655102>,  <29.085419, 38.601635, 33.922958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.158281, 38.313637, 33.655102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220517, 0.693604, -0.685774,
		0.958223, -0.022750, 0.285116,
		0.182156, -0.719997, -0.669644,
		29.212929, 38.097637, 33.454208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.629000, 38.864944, 33.464493>,  <29.085419, 38.601635, 33.922958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.629000, 38.864944, 33.464493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.488174, 38.554039, 33.255913>,  <29.403679, 38.367496, 33.130764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.488174, 38.554039, 33.255913>,  <29.629000, 38.864944, 33.464493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.488174, 38.554039, 33.255913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193314, 0.484719, -0.853040,
		0.915796, -0.401125, -0.020394,
		-0.352061, -0.777268, -0.521447,
		29.382555, 38.320858, 33.099480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.025381, 38.888691, 32.811028>,  <29.629000, 38.864944, 33.464493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.025381, 38.888691, 32.811028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.696886, 38.670883, 32.742821>,  <29.499790, 38.540199, 32.701897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.696886, 38.670883, 32.742821>,  <30.025381, 38.888691, 32.811028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.696886, 38.670883, 32.742821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000909, 0.300087, -0.953911,
		0.570589, -0.783230, -0.246937,
		-0.821235, -0.544516, -0.170514,
		29.450516, 38.507530, 32.691666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.088818, 38.590611, 32.172863>,  <30.025381, 38.888691, 32.811028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.088818, 38.590611, 32.172863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.695887, 38.544689, 32.231998>,  <29.460129, 38.517136, 32.267479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.695887, 38.544689, 32.231998>,  <30.088818, 38.590611, 32.172863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695887, 38.544689, 32.231998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177507, 0.320797, -0.930366,
		0.059379, -0.940165, -0.335505,
		-0.982327, -0.114799, 0.147837,
		29.401188, 38.510250, 32.276348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.864685, 38.266598, 31.619047>,  <30.088818, 38.590611, 32.172863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.864685, 38.266598, 31.619047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.541674, 38.455921, 31.759830>,  <29.347866, 38.569515, 31.844301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.541674, 38.455921, 31.759830>,  <29.864685, 38.266598, 31.619047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.541674, 38.455921, 31.759830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182879, 0.366391, -0.912312,
		-0.560759, -0.801085, -0.209314,
		-0.807530, 0.473308, 0.351958,
		29.299414, 38.597912, 31.865417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.318909, 38.019081, 31.131733>,  <29.864685, 38.266598, 31.619047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.318909, 38.019081, 31.131733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.188396, 38.343807, 31.325434>,  <29.110088, 38.538643, 31.441654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.188396, 38.343807, 31.325434>,  <29.318909, 38.019081, 31.131733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.188396, 38.343807, 31.325434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407137, 0.341644, -0.847065,
		-0.853101, -0.473537, 0.219047,
		-0.326281, 0.811814, 0.484251,
		29.090511, 38.587353, 31.470709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.546799, 38.118702, 30.903490>,  <29.318909, 38.019081, 31.131733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.546799, 38.118702, 30.903490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.685648, 38.475166, 31.020342>,  <28.768957, 38.689045, 31.090452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.685648, 38.475166, 31.020342>,  <28.546799, 38.118702, 30.903490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.685648, 38.475166, 31.020342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448062, 0.431240, -0.783117,
		-0.823861, 0.140945, 0.548988,
		0.347122, 0.891160, 0.292130,
		28.789785, 38.742516, 31.107981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.000977, 38.583027, 30.839176>,  <28.546799, 38.118702, 30.903490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.000977, 38.583027, 30.839176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.286211, 38.861454, 30.872641>,  <28.457352, 39.028511, 30.892719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.286211, 38.861454, 30.872641>,  <28.000977, 38.583027, 30.839176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.286211, 38.861454, 30.872641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458862, 0.553605, -0.694958,
		-0.530052, 0.457176, 0.714167,
		0.713085, 0.696068, 0.083659,
		28.500137, 39.070274, 30.897738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.611937, 39.139442, 30.745539>,  <28.000977, 38.583027, 30.839176>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.611937, 39.139442, 30.745539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.993568, 39.239094, 30.679007>,  <28.222548, 39.298885, 30.639088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.993568, 39.239094, 30.679007>,  <27.611937, 39.139442, 30.745539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.993568, 39.239094, 30.679007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254260, 0.379950, -0.889376,
		-0.158371, 0.890827, 0.425846,
		0.954081, 0.249127, -0.166329,
		28.279793, 39.313831, 30.629108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.721914, 39.785156, 30.439049>,  <27.611937, 39.139442, 30.745539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.721914, 39.785156, 30.439049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.080420, 39.638584, 30.339098>,  <28.295523, 39.550640, 30.279127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.080420, 39.638584, 30.339098>,  <27.721914, 39.785156, 30.439049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.080420, 39.638584, 30.339098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040513, 0.493399, -0.868859,
		0.441667, 0.788850, 0.427371,
		0.896264, -0.366432, -0.249876,
		28.349298, 39.528656, 30.264135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089495, 40.323505, 30.256237>,  <27.721914, 39.785156, 30.439049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089495, 40.323505, 30.256237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.230200, 39.995720, 30.075243>,  <28.314623, 39.799049, 29.966646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.230200, 39.995720, 30.075243>,  <28.089495, 40.323505, 30.256237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230200, 39.995720, 30.075243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026893, 0.474334, -0.879934,
		0.935702, 0.321699, 0.144816,
		0.351765, -0.819462, -0.452487,
		28.335730, 39.749882, 29.939497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.300310, 40.573879, 29.608929>,  <28.089495, 40.323505, 30.256237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.300310, 40.573879, 29.608929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.345856, 40.180458, 29.552837>,  <28.373182, 39.944405, 29.519182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.345856, 40.180458, 29.552837>,  <28.300310, 40.573879, 29.608929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.345856, 40.180458, 29.552837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004345, 0.140652, -0.990050,
		0.993487, 0.113338, 0.011741,
		0.113862, -0.983551, -0.140228,
		28.380014, 39.885391, 29.510769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.897329, 40.520325, 29.262774>,  <28.300310, 40.573879, 29.608929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.897329, 40.520325, 29.262774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.642109, 40.219604, 29.196215>,  <28.488977, 40.039173, 29.156279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.642109, 40.219604, 29.196215>,  <28.897329, 40.520325, 29.262774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.642109, 40.219604, 29.196215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082817, 0.281854, -0.955876,
		0.765527, -0.596118, -0.242099,
		-0.638051, -0.751799, -0.166398,
		28.450693, 39.994064, 29.146296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.105032, 40.192848, 28.647804>,  <28.897329, 40.520325, 29.262774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.105032, 40.192848, 28.647804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.728916, 40.059277, 28.674191>,  <28.503246, 39.979134, 28.690023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.728916, 40.059277, 28.674191>,  <29.105032, 40.192848, 28.647804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.728916, 40.059277, 28.674191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104269, 0.098094, -0.989700,
		0.324015, -0.937481, -0.127055,
		-0.940289, -0.333925, 0.065967,
		28.446829, 39.959099, 28.693981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.079134, 39.798233, 28.101208>,  <29.105032, 40.192848, 28.647804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.079134, 39.798233, 28.101208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.689587, 39.840233, 28.181761>,  <28.455858, 39.865433, 28.230093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.689587, 39.840233, 28.181761>,  <29.079134, 39.798233, 28.101208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.689587, 39.840233, 28.181761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210023, -0.078892, -0.974508,
		-0.086477, -0.991333, 0.098891,
		-0.973865, 0.105042, 0.201380,
		28.397427, 39.871735, 28.242176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.731932, 39.278168, 27.726093>,  <29.079134, 39.798233, 28.101208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.731932, 39.278168, 27.726093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.466843, 39.566299, 27.807999>,  <28.307789, 39.739178, 27.857141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.466843, 39.566299, 27.807999>,  <28.731932, 39.278168, 27.726093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.466843, 39.566299, 27.807999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251181, 0.043773, -0.966950,
		-0.705484, -0.692252, 0.151923,
		-0.662723, 0.720328, 0.204761,
		28.268026, 39.782398, 27.869427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.292065, 39.137093, 27.272858>,  <28.731932, 39.278168, 27.726093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.292065, 39.137093, 27.272858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.173414, 39.504044, 27.379009>,  <28.102224, 39.724216, 27.442701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.173414, 39.504044, 27.379009>,  <28.292065, 39.137093, 27.272858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.173414, 39.504044, 27.379009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458151, 0.107122, -0.882396,
		-0.837921, -0.383325, 0.388523,
		-0.296625, 0.917380, 0.265380,
		28.084427, 39.779259, 27.458624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.530478, 39.214390, 27.164673>,  <28.292065, 39.137093, 27.272858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.530478, 39.214390, 27.164673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.728451, 39.561382, 27.144606>,  <27.847235, 39.769577, 27.132565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.728451, 39.561382, 27.144606>,  <27.530478, 39.214390, 27.164673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.728451, 39.561382, 27.144606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325850, 0.131769, -0.936194,
		-0.805519, 0.479702, 0.347886,
		0.494934, 0.867481, -0.050169,
		27.876930, 39.821625, 27.129555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.091558, 39.581097, 26.685478>,  <27.530478, 39.214390, 27.164673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.091558, 39.581097, 26.685478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.405499, 39.825344, 26.727724>,  <27.593863, 39.971893, 26.753073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.405499, 39.825344, 26.727724>,  <27.091558, 39.581097, 26.685478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.405499, 39.825344, 26.727724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012232, 0.155137, -0.987817,
		-0.619567, 0.776578, 0.114290,
		0.784848, 0.610621, 0.105617,
		27.640953, 40.008530, 26.759409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.896585, 40.245377, 26.432411>,  <27.091558, 39.581097, 26.685478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.896585, 40.245377, 26.432411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.295887, 40.243031, 26.408907>,  <27.535469, 40.241623, 26.394804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.295887, 40.243031, 26.408907>,  <26.896585, 40.245377, 26.432411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.295887, 40.243031, 26.408907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051771, 0.391856, -0.918569,
		0.028410, 0.920008, 0.390869,
		0.998255, -0.005861, -0.058762,
		27.595364, 40.241272, 26.391279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.975471, 31.864433, 44.706135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.612579, 32.025139, 44.656315>,  <40.394844, 32.121563, 44.626423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.612579, 32.025139, 44.656315>,  <40.975471, 31.864433, 44.706135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.612579, 32.025139, 44.656315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084589, 0.464327, 0.881615,
		0.412033, 0.789295, -0.455238,
		-0.907234, 0.401763, -0.124552,
		40.340408, 32.145668, 44.618950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063580, 32.553555, 44.930687>,  <40.975471, 31.864433, 44.706135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063580, 32.553555, 44.930687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.678719, 32.448799, 44.960838>,  <40.447803, 32.385948, 44.978928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.678719, 32.448799, 44.960838>,  <41.063580, 32.553555, 44.930687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678719, 32.448799, 44.960838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016996, 0.333720, 0.942519,
		-0.271985, 0.905565, -0.325540,
		-0.962151, -0.261884, 0.075376,
		40.390072, 32.370235, 44.983452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693775, 33.052345, 45.439491>,  <41.063580, 32.553555, 44.930687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693775, 33.052345, 45.439491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.412697, 32.770699, 45.398621>,  <40.244049, 32.601711, 45.374100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.412697, 32.770699, 45.398621>,  <40.693775, 33.052345, 45.439491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412697, 32.770699, 45.398621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246034, 0.105723, 0.963478,
		-0.667597, 0.702171, -0.247527,
		-0.702696, -0.704115, -0.102177,
		40.201889, 32.559464, 45.367966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005127, 33.356941, 45.713669>,  <40.693775, 33.052345, 45.439491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005127, 33.356941, 45.713669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.021439, 32.958714, 45.747540>,  <40.031227, 32.719776, 45.767860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.021439, 32.958714, 45.747540>,  <40.005127, 33.356941, 45.713669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021439, 32.958714, 45.747540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429872, 0.059018, 0.900959,
		-0.901968, -0.073141, -0.425563,
		0.040781, -0.995574, 0.084674,
		40.033672, 32.660042, 45.772942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334934, 33.245960, 45.974918>,  <40.005127, 33.356941, 45.713669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334934, 33.245960, 45.974918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.565601, 32.934715, 46.074509>,  <39.704002, 32.747967, 46.134262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.565601, 32.934715, 46.074509>,  <39.334934, 33.245960, 45.974918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565601, 32.934715, 46.074509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397907, -0.001339, 0.917425,
		-0.713528, -0.628120, -0.310390,
		0.576669, -0.778115, 0.248978,
		39.738602, 32.701283, 46.149200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961506, 32.722610, 46.232761>,  <39.334934, 33.245960, 45.974918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961506, 32.722610, 46.232761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.311714, 32.591629, 46.374878>,  <39.521839, 32.513039, 46.460148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.311714, 32.591629, 46.374878>,  <38.961506, 32.722610, 46.232761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311714, 32.591629, 46.374878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390133, -0.045274, 0.919645,
		-0.285059, -0.943781, -0.167390,
		0.875522, -0.327457, 0.355294,
		39.574371, 32.493393, 46.481464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773308, 32.245415, 46.713226>,  <38.961506, 32.722610, 46.232761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773308, 32.245415, 46.713226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.150307, 32.311646, 46.829350>,  <39.376507, 32.351383, 46.899025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.150307, 32.311646, 46.829350>,  <38.773308, 32.245415, 46.713226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150307, 32.311646, 46.829350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248762, -0.232529, 0.940238,
		0.223185, -0.958392, -0.177970,
		0.942500, 0.165574, 0.290308,
		39.433056, 32.361317, 46.916443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990185, 31.609585, 47.023010>,  <38.773308, 32.245415, 46.713226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990185, 31.609585, 47.023010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.268761, 31.863354, 47.157166>,  <39.435905, 32.015614, 47.237659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.268761, 31.863354, 47.157166>,  <38.990185, 31.609585, 47.023010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268761, 31.863354, 47.157166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131129, -0.346993, 0.928656,
		0.705536, -0.690729, -0.158468,
		0.696437, 0.634420, 0.335391,
		39.477692, 32.053680, 47.257782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291912, 31.239388, 47.480347>,  <38.990185, 31.609585, 47.023010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291912, 31.239388, 47.480347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.419468, 31.600565, 47.595589>,  <39.496002, 31.817272, 47.664734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.419468, 31.600565, 47.595589>,  <39.291912, 31.239388, 47.480347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419468, 31.600565, 47.595589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140393, -0.255617, 0.956530,
		0.937336, -0.345475, 0.045253,
		0.318890, 0.902943, 0.288102,
		39.515137, 31.871449, 47.682018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862904, 31.154133, 48.036495>,  <39.291912, 31.239388, 47.480347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862904, 31.154133, 48.036495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.667088, 31.501722, 48.065418>,  <39.549599, 31.710276, 48.082771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.667088, 31.501722, 48.065418>,  <39.862904, 31.154133, 48.036495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667088, 31.501722, 48.065418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125214, -0.152123, 0.980398,
		0.862941, 0.470894, 0.183279,
		-0.489545, 0.868975, 0.072311,
		39.520226, 31.762415, 48.087112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976093, 31.306110, 48.808647>,  <39.862904, 31.154133, 48.036495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976093, 31.306110, 48.808647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.691746, 31.546656, 48.662754>,  <39.521137, 31.690983, 48.575218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.691746, 31.546656, 48.662754>,  <39.976093, 31.306110, 48.808647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691746, 31.546656, 48.662754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377596, 0.111184, 0.919271,
		0.593367, 0.791203, 0.148034,
		-0.710871, 0.601362, -0.364728,
		39.478485, 31.727064, 48.553337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072037, 31.912245, 49.156006>,  <39.976093, 31.306110, 48.808647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072037, 31.912245, 49.156006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.691746, 31.913946, 49.032009>,  <39.463570, 31.914967, 48.957611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.691746, 31.913946, 49.032009>,  <40.072037, 31.912245, 49.156006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691746, 31.913946, 49.032009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309336, 0.053261, 0.949460,
		0.020551, 0.998572, -0.049320,
		-0.950731, 0.004255, -0.309989,
		39.406525, 31.915222, 48.939014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751209, 32.542011, 49.500271>,  <40.072037, 31.912245, 49.156006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751209, 32.542011, 49.500271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.452408, 32.286190, 49.427658>,  <39.273129, 32.132698, 49.384090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.452408, 32.286190, 49.427658>,  <39.751209, 32.542011, 49.500271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452408, 32.286190, 49.427658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336279, 0.127936, 0.933032,
		-0.573502, 0.758023, -0.310638,
		-0.747002, -0.639557, -0.181535,
		39.228306, 32.094322, 49.373196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060265, 32.630295, 49.539021>,  <39.751209, 32.542011, 49.500271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060265, 32.630295, 49.539021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.813805, 32.889496, 49.718109>,  <38.665928, 33.045017, 49.825562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.813805, 32.889496, 49.718109>,  <39.060265, 32.630295, 49.539021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813805, 32.889496, 49.718109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295617, 0.717140, -0.631126,
		-0.730051, -0.256512, -0.633424,
		-0.616146, 0.648006, 0.447720,
		38.628960, 33.083897, 49.852425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664673, 32.944126, 49.020088>,  <39.060265, 32.630295, 49.539021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664673, 32.944126, 49.020088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.701118, 33.188808, 49.334415>,  <38.722984, 33.335617, 49.523014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.701118, 33.188808, 49.334415>,  <38.664673, 32.944126, 49.020088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701118, 33.188808, 49.334415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175617, 0.766866, -0.617313,
		-0.980233, 0.194248, -0.037555,
		0.091112, 0.611706, 0.785821,
		38.728451, 33.372322, 49.570160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233959, 33.561443, 49.022507>,  <38.664673, 32.944126, 49.020088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233959, 33.561443, 49.022507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.538803, 33.690132, 49.247246>,  <38.721710, 33.767345, 49.382092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.538803, 33.690132, 49.247246>,  <38.233959, 33.561443, 49.022507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538803, 33.690132, 49.247246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074934, 0.818137, -0.570120,
		-0.643093, 0.476597, 0.599404,
		0.762113, 0.321724, 0.561852,
		38.767437, 33.786648, 49.415802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132053, 34.255646, 49.062191>,  <38.233959, 33.561443, 49.022507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132053, 34.255646, 49.062191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.506481, 34.259644, 49.202862>,  <38.731136, 34.262043, 49.287266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.506481, 34.259644, 49.202862>,  <38.132053, 34.255646, 49.062191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506481, 34.259644, 49.202862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130875, 0.917968, -0.374441,
		-0.326571, 0.396528, 0.857973,
		0.936068, 0.009994, 0.351677,
		38.787300, 34.262642, 49.308365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215839, 34.889256, 49.228374>,  <38.132053, 34.255646, 49.062191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215839, 34.889256, 49.228374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.593468, 34.773113, 49.165874>,  <38.820045, 34.703426, 49.128372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.593468, 34.773113, 49.165874>,  <38.215839, 34.889256, 49.228374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593468, 34.773113, 49.165874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242580, 0.932576, -0.267314,
		0.223336, 0.214460, 0.950857,
		0.944074, -0.290359, -0.156254,
		38.876690, 34.686005, 49.118999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568012, 35.491566, 49.373547>,  <38.215839, 34.889256, 49.228374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568012, 35.491566, 49.373547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.831367, 35.266209, 49.173901>,  <38.989380, 35.130993, 49.054115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.831367, 35.266209, 49.173901>,  <38.568012, 35.491566, 49.373547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831367, 35.266209, 49.173901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443507, 0.826157, -0.347515,
		0.608132, 0.007441, 0.793802,
		0.658390, -0.563391, -0.499112,
		39.028885, 35.097191, 49.024166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174328, 35.880951, 49.427715>,  <38.568012, 35.491566, 49.373547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.174328, 35.880951, 49.427715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.201382, 35.640301, 49.109352>,  <39.217613, 35.495911, 48.918335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.201382, 35.640301, 49.109352>,  <39.174328, 35.880951, 49.427715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201382, 35.640301, 49.109352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207013, 0.788841, -0.578684,
		0.975997, -0.125623, 0.177900,
		0.067639, -0.601621, -0.795913,
		39.221672, 35.459816, 48.870579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824444, 36.016659, 48.997997>,  <39.174328, 35.880951, 49.427715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824444, 36.016659, 48.997997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.599236, 35.831558, 48.724106>,  <39.464111, 35.720497, 48.559769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.599236, 35.831558, 48.724106>,  <39.824444, 36.016659, 48.997997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.599236, 35.831558, 48.724106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268306, 0.681305, -0.681055,
		0.781674, -0.567169, -0.259432,
		-0.563026, -0.462756, -0.684733,
		39.430328, 35.692730, 48.518684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152832, 36.033203, 48.351406>,  <39.824444, 36.016659, 48.997997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152832, 36.033203, 48.351406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.801247, 35.919365, 48.198341>,  <39.590294, 35.851063, 48.106503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.801247, 35.919365, 48.198341>,  <40.152832, 36.033203, 48.351406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801247, 35.919365, 48.198341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251466, 0.405200, -0.878964,
		0.405200, -0.868804, -0.284591,
		0.878964, 0.284591, 0.382662,
		39.537556, 35.833988, 48.083542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238262, 35.977428, 47.611961>,  <40.152832, 36.033203, 48.351406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238262, 35.977428, 47.611961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.840862, 36.006351, 47.647133>,  <39.602421, 36.023705, 47.668236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.840862, 36.006351, 47.647133>,  <40.238262, 35.977428, 47.611961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840862, 36.006351, 47.647133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050654, 0.410920, -0.910263,
		-0.101947, -0.908800, -0.404586,
		-0.993499, 0.072304, 0.087926,
		39.542812, 36.028042, 47.673512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879311, 35.534069, 47.109058>,  <40.238262, 35.977428, 47.611961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879311, 35.534069, 47.109058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.613632, 35.817005, 47.205818>,  <39.454227, 35.986767, 47.263874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.613632, 35.817005, 47.205818>,  <39.879311, 35.534069, 47.109058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613632, 35.817005, 47.205818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256051, 0.088756, -0.962580,
		-0.702344, -0.701276, 0.122165,
		-0.664191, 0.707343, 0.241899,
		39.414375, 36.029209, 47.278389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370411, 35.366364, 46.713127>,  <39.879311, 35.534069, 47.109058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370411, 35.366364, 46.713127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.306400, 35.753685, 46.789841>,  <39.267994, 35.986076, 46.835869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.306400, 35.753685, 46.789841>,  <39.370411, 35.366364, 46.713127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306400, 35.753685, 46.789841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232731, 0.151801, -0.960621,
		-0.959285, -0.198360, 0.201062,
		-0.160027, 0.968303, 0.191785,
		39.258392, 36.044174, 46.847378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940594, 35.455276, 46.273178>,  <39.370411, 35.366364, 46.713127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940594, 35.455276, 46.273178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.037415, 35.831005, 46.370407>,  <39.095505, 36.056442, 46.428745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.037415, 35.831005, 46.370407>,  <38.940594, 35.455276, 46.273178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037415, 35.831005, 46.370407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144355, 0.282593, -0.948316,
		-0.959466, 0.194450, 0.203997,
		0.242048, 0.939325, 0.243068,
		39.110027, 36.112801, 46.443329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460659, 35.965927, 45.892967>,  <38.940594, 35.455276, 46.273178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460659, 35.965927, 45.892967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.777866, 36.183880, 46.001942>,  <38.968189, 36.314651, 46.067326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.777866, 36.183880, 46.001942>,  <38.460659, 35.965927, 45.892967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777866, 36.183880, 46.001942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070987, 0.361502, -0.929665,
		-0.605046, 0.756582, 0.247998,
		0.793019, 0.544886, 0.272433,
		39.015774, 36.347347, 46.083672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272560, 36.654385, 45.648911>,  <38.460659, 35.965927, 45.892967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272560, 36.654385, 45.648911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.668728, 36.610867, 45.682919>,  <38.906429, 36.584755, 45.703323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.668728, 36.610867, 45.682919>,  <38.272560, 36.654385, 45.648911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668728, 36.610867, 45.682919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119026, 0.360604, -0.925093,
		0.069989, 0.926352, 0.370100,
		0.990421, -0.108798, 0.085022,
		38.965855, 36.578228, 45.708424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924419, 37.235062, 45.439930>,  <38.272560, 36.654385, 45.648911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924419, 37.235062, 45.439930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.593147, 37.068344, 45.290051>,  <37.394382, 36.968315, 45.200123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.593147, 37.068344, 45.290051>,  <37.924419, 37.235062, 45.439930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593147, 37.068344, 45.290051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361775, -0.113070, 0.925383,
		-0.428058, 0.901943, -0.057142,
		-0.828182, -0.416791, -0.374701,
		37.344692, 36.943306, 45.177639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415039, 37.455456, 45.868565>,  <37.924419, 37.235062, 45.439930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415039, 37.455456, 45.868565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.266697, 37.132858, 45.684372>,  <37.177692, 36.939301, 45.573856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.266697, 37.132858, 45.684372>,  <37.415039, 37.455456, 45.868565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266697, 37.132858, 45.684372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358327, -0.333182, 0.872119,
		-0.856779, 0.488430, -0.165426,
		-0.370852, -0.806490, -0.460481,
		37.155441, 36.890911, 45.546227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931400, 37.357651, 46.267303>,  <37.415039, 37.455456, 45.868565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931400, 37.357651, 46.267303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.936684, 37.005466, 46.077728>,  <36.939854, 36.794155, 45.963982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.936684, 37.005466, 46.077728>,  <36.931400, 37.357651, 46.267303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936684, 37.005466, 46.077728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465051, -0.425008, 0.776592,
		-0.885185, 0.210149, -0.415072,
		0.013209, -0.880457, -0.473941,
		36.940647, 36.741329, 45.935547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387733, 36.987743, 46.578159>,  <36.931400, 37.357651, 46.267303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387733, 36.987743, 46.578159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.558895, 36.691288, 46.371235>,  <36.661591, 36.513416, 46.247078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.558895, 36.691288, 46.371235>,  <36.387733, 36.987743, 46.578159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558895, 36.691288, 46.371235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237728, -0.644498, 0.726711,
		-0.872002, -0.187979, -0.451970,
		0.427899, -0.741138, -0.517316,
		36.687263, 36.468945, 46.216042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872192, 36.364048, 46.528652>,  <36.387733, 36.987743, 46.578159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872192, 36.364048, 46.528652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.253185, 36.242420, 46.521603>,  <36.481781, 36.169445, 46.517372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.253185, 36.242420, 46.521603>,  <35.872192, 36.364048, 46.528652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253185, 36.242420, 46.521603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149504, -0.517157, 0.842732,
		-0.265363, -0.800057, -0.538045,
		0.952487, -0.304069, -0.017622,
		36.538933, 36.151199, 46.516315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786621, 35.739376, 46.678848>,  <35.872192, 36.364048, 46.528652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786621, 35.739376, 46.678848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.178143, 35.798069, 46.736012>,  <36.413055, 35.833286, 46.770309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.178143, 35.798069, 46.736012>,  <35.786621, 35.739376, 46.678848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178143, 35.798069, 46.736012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054601, -0.485531, 0.872513,
		0.197412, -0.861817, -0.467225,
		0.978799, 0.146734, 0.142905,
		36.471783, 35.842091, 46.778885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138821, 35.103611, 46.684700>,  <35.786621, 35.739376, 46.678848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138821, 35.103611, 46.684700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.376671, 35.341389, 46.901237>,  <36.519382, 35.484055, 47.031162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.376671, 35.341389, 46.901237>,  <36.138821, 35.103611, 46.684700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376671, 35.341389, 46.901237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042406, -0.695567, 0.717208,
		0.802882, -0.403516, -0.438812,
		0.594628, 0.594442, 0.541347,
		36.555058, 35.519722, 47.063641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852489, 34.394493, 46.636459>,  <36.138821, 35.103611, 46.684700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852489, 34.394493, 46.636459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.474987, 34.316437, 46.743229>,  <35.248486, 34.269604, 46.807289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.474987, 34.316437, 46.743229>,  <35.852489, 34.394493, 46.636459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474987, 34.316437, 46.743229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329143, 0.477453, -0.814680,
		0.031534, -0.856713, -0.514828,
		-0.943753, -0.195142, 0.266926,
		35.191860, 34.257893, 46.823307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548225, 34.123119, 46.115349>,  <35.852489, 34.394493, 46.636459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548225, 34.123119, 46.115349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.236641, 34.275898, 46.314281>,  <35.049690, 34.367565, 46.433640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.236641, 34.275898, 46.314281>,  <35.548225, 34.123119, 46.115349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236641, 34.275898, 46.314281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305682, 0.461193, -0.832982,
		-0.547523, -0.800883, -0.242495,
		-0.778959, 0.381951, 0.497330,
		35.002953, 34.390484, 46.463482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916229, 34.019623, 45.690674>,  <35.548225, 34.123119, 46.115349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916229, 34.019623, 45.690674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.827221, 34.329262, 45.927742>,  <34.773815, 34.515045, 46.069984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.827221, 34.329262, 45.927742>,  <34.916229, 34.019623, 45.690674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827221, 34.329262, 45.927742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367344, 0.496539, -0.786452,
		-0.903075, -0.392715, 0.173871,
		-0.222518, 0.774096, 0.592674,
		34.760464, 34.561489, 46.105545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376060, 34.311840, 45.415085>,  <34.916229, 34.019623, 45.690674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376060, 34.311840, 45.415085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.464161, 34.600990, 45.677059>,  <34.517021, 34.774479, 45.834244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.464161, 34.600990, 45.677059>,  <34.376060, 34.311840, 45.415085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464161, 34.600990, 45.677059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268356, 0.690419, -0.671794,
		-0.937802, -0.027789, 0.346056,
		0.220256, 0.722876, 0.654933,
		34.530239, 34.817852, 45.873539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843983, 34.608524, 45.639267>,  <34.376060, 34.311840, 45.415085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843983, 34.608524, 45.639267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.147305, 34.868496, 45.659512>,  <34.329296, 35.024479, 45.671658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.147305, 34.868496, 45.659512>,  <33.843983, 34.608524, 45.639267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147305, 34.868496, 45.659512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433238, 0.560444, -0.705838,
		-0.487111, 0.513314, 0.706563,
		0.758306, 0.649932, 0.050611,
		34.374798, 35.063477, 45.674694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625690, 35.015869, 45.228180>,  <33.843983, 34.608524, 45.639267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625690, 35.015869, 45.228180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.949505, 35.225796, 45.333424>,  <34.143795, 35.351749, 45.396568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.949505, 35.225796, 45.333424>,  <33.625690, 35.015869, 45.228180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949505, 35.225796, 45.333424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077134, 0.539367, -0.838531,
		-0.581983, 0.658525, 0.477117,
		0.809534, 0.524813, 0.263107,
		34.192364, 35.383240, 45.412357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522041, 35.808842, 45.243137>,  <33.625690, 35.015869, 45.228180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522041, 35.808842, 45.243137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.905155, 35.728039, 45.161324>,  <34.135025, 35.679558, 45.112236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.905155, 35.728039, 45.161324>,  <33.522041, 35.808842, 45.243137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905155, 35.728039, 45.161324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116218, 0.378666, -0.918208,
		0.262939, 0.903219, 0.339204,
		0.957787, -0.202011, -0.204537,
		34.192490, 35.667435, 45.099964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.662678, 31.137653, 48.457489> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.048203, 31.232395, 48.506413>,  <37.279518, 31.289240, 48.535767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.048203, 31.232395, 48.506413>,  <36.662678, 31.137653, 48.457489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048203, 31.232395, 48.506413> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091935, 0.135337, -0.986525,
		-0.250216, 0.962073, 0.108665,
		0.963815, 0.236854, 0.122311,
		37.337349, 31.303452, 48.543106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754852, 31.721777, 48.055569>,  <36.662678, 31.137653, 48.457489>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754852, 31.721777, 48.055569> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.116299, 31.556513, 48.100784>,  <37.333168, 31.457354, 48.127914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.116299, 31.556513, 48.100784>,  <36.754852, 31.721777, 48.055569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116299, 31.556513, 48.100784> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149674, 0.057294, -0.987074,
		0.401343, 0.908854, 0.113611,
		0.903616, -0.413160, 0.113037,
		37.387383, 31.432566, 48.134697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229084, 32.121979, 47.658501>,  <36.754852, 31.721777, 48.055569>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229084, 32.121979, 47.658501> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.417263, 31.771568, 47.700943>,  <37.530170, 31.561321, 47.726410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.417263, 31.771568, 47.700943>,  <37.229084, 32.121979, 47.658501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417263, 31.771568, 47.700943> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024093, -0.107451, -0.993918,
		0.882101, 0.470139, -0.029444,
		0.470444, -0.876027, 0.106110,
		37.558395, 31.508760, 47.732777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767178, 32.058998, 47.152695>,  <37.229084, 32.121979, 47.658501>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767178, 32.058998, 47.152695> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.726513, 31.669407, 47.233719>,  <37.702114, 31.435652, 47.282333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.726513, 31.669407, 47.233719>,  <37.767178, 32.058998, 47.152695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726513, 31.669407, 47.233719> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037398, -0.199734, -0.979136,
		0.994116, -0.107118, -0.016119,
		-0.101663, -0.973978, 0.202564,
		37.696014, 31.377214, 47.294487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147869, 31.757521, 46.621326>,  <37.767178, 32.058998, 47.152695>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147869, 31.757521, 46.621326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.945122, 31.436434, 46.747009>,  <37.823475, 31.243782, 46.822418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.945122, 31.436434, 46.747009>,  <38.147869, 31.757521, 46.621326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945122, 31.436434, 46.747009> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066913, -0.326766, -0.942734,
		0.859423, -0.498866, 0.111915,
		-0.506868, -0.802718, 0.314211,
		37.793060, 31.195618, 46.841274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448528, 31.065313, 46.346661>,  <38.147869, 31.757521, 46.621326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448528, 31.065313, 46.346661> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.059917, 31.018026, 46.428787>,  <37.826752, 30.989655, 46.478062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.059917, 31.018026, 46.428787>,  <38.448528, 31.065313, 46.346661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059917, 31.018026, 46.428787> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110245, -0.541500, -0.833441,
		0.209705, -0.832348, 0.513050,
		-0.971530, -0.118216, 0.205317,
		37.768459, 30.982561, 46.490383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249683, 30.330803, 46.084621>,  <38.448528, 31.065313, 46.346661>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249683, 30.330803, 46.084621> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.880798, 30.470043, 46.151974>,  <37.659466, 30.553587, 46.192383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.880798, 30.470043, 46.151974>,  <38.249683, 30.330803, 46.084621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880798, 30.470043, 46.151974> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346637, -0.551234, -0.758936,
		-0.171368, -0.758267, 0.629019,
		-0.922213, 0.348098, 0.168379,
		37.604134, 30.574472, 46.202488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787941, 29.784863, 46.067738>,  <38.249683, 30.330803, 46.084621>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787941, 29.784863, 46.067738> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.559807, 30.105673, 45.996777>,  <37.422924, 30.298159, 45.954201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.559807, 30.105673, 45.996777>,  <37.787941, 29.784863, 46.067738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559807, 30.105673, 45.996777> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514970, -0.517386, -0.683460,
		-0.639939, -0.298443, 0.708103,
		-0.570337, 0.802024, -0.177406,
		37.388706, 30.346279, 45.943554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103050, 29.524441, 45.976624>,  <37.787941, 29.784863, 46.067738>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103050, 29.524441, 45.976624> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.111828, 29.878002, 45.789764>,  <37.117092, 30.090139, 45.677647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.111828, 29.878002, 45.789764>,  <37.103050, 29.524441, 45.976624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111828, 29.878002, 45.789764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336064, -0.433553, -0.836118,
		-0.941584, 0.175338, 0.287536,
		0.021942, 0.883905, -0.467151,
		37.118412, 30.143173, 45.649620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376659, 29.706356, 45.582878>,  <37.103050, 29.524441, 45.976624>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376659, 29.706356, 45.582878> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.640114, 29.944553, 45.398884>,  <36.798187, 30.087471, 45.288486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.640114, 29.944553, 45.398884>,  <36.376659, 29.706356, 45.582878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640114, 29.944553, 45.398884> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405837, -0.233642, -0.883577,
		-0.633634, 0.768636, 0.087787,
		0.658638, 0.595491, -0.459985,
		36.837704, 30.123201, 45.260887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050541, 29.905422, 45.037701>,  <36.376659, 29.706356, 45.582878>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050541, 29.905422, 45.037701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.418118, 30.005415, 44.915684>,  <36.638664, 30.065411, 44.842472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.418118, 30.005415, 44.915684>,  <36.050541, 29.905422, 45.037701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418118, 30.005415, 44.915684> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257299, -0.206192, -0.944078,
		-0.298900, 0.946041, -0.125158,
		0.918943, 0.249982, -0.305046,
		36.693802, 30.080410, 44.824169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963024, 30.260197, 44.451378>,  <36.050541, 29.905422, 45.037701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963024, 30.260197, 44.451378> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.356747, 30.196455, 44.421043>,  <36.592979, 30.158211, 44.402843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.356747, 30.196455, 44.421043>,  <35.963024, 30.260197, 44.451378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356747, 30.196455, 44.421043> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093872, -0.108861, -0.989615,
		0.149443, 0.981201, -0.122111,
		0.984304, -0.159353, -0.075839,
		36.652039, 30.148649, 44.398293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617546, 30.946316, 44.570763>,  <35.963024, 30.260197, 44.451378>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617546, 30.946316, 44.570763> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.221729, 30.991392, 44.606785>,  <34.984238, 31.018438, 44.628399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.221729, 30.991392, 44.606785>,  <35.617546, 30.946316, 44.570763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221729, 30.991392, 44.606785> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086966, -0.032033, 0.995696,
		0.115091, 0.993114, 0.021897,
		-0.989541, 0.112691, 0.090054,
		34.924866, 31.025200, 44.633801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514935, 31.433228, 45.113335>,  <35.617546, 30.946316, 44.570763>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514935, 31.433228, 45.113335> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.185131, 31.208021, 45.090744>,  <34.987247, 31.072897, 45.077190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.185131, 31.208021, 45.090744>,  <35.514935, 31.433228, 45.113335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185131, 31.208021, 45.090744> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016629, -0.123874, 0.992159,
		-0.565598, 0.817109, 0.111498,
		-0.824513, -0.563017, -0.056475,
		34.937778, 31.039116, 45.073803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043880, 31.761669, 45.536022>,  <35.514935, 31.433228, 45.113335>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043880, 31.761669, 45.536022> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.931648, 31.380634, 45.488937>,  <34.864307, 31.152014, 45.460686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.931648, 31.380634, 45.488937>,  <35.043880, 31.761669, 45.536022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931648, 31.380634, 45.488937> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028895, -0.114198, 0.993038,
		-0.959395, 0.282029, 0.004517,
		-0.280581, -0.952585, -0.117710,
		34.847473, 31.094858, 45.453625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595821, 31.641254, 46.104179>,  <35.043880, 31.761669, 45.536022>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595821, 31.641254, 46.104179> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.664734, 31.263514, 45.992096>,  <34.706081, 31.036869, 45.924847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.664734, 31.263514, 45.992096>,  <34.595821, 31.641254, 46.104179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664734, 31.263514, 45.992096> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002160, -0.284819, 0.958579,
		-0.985045, -0.164540, -0.051109,
		0.172282, -0.944354, -0.280204,
		34.716419, 30.980207, 45.908035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218998, 31.285236, 46.511070>,  <34.595821, 31.641254, 46.104179>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218998, 31.285236, 46.511070> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.502766, 31.033911, 46.383358>,  <34.673027, 30.883116, 46.306732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.502766, 31.033911, 46.383358>,  <34.218998, 31.285236, 46.511070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502766, 31.033911, 46.383358> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050293, -0.496992, 0.866296,
		-0.702986, -0.598513, -0.384178,
		0.709423, -0.628316, -0.319278,
		34.715591, 30.845417, 46.287575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936840, 30.718267, 46.813766>,  <34.218998, 31.285236, 46.511070>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936840, 30.718267, 46.813766> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.325867, 30.667610, 46.735718>,  <34.559284, 30.637217, 46.688889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.325867, 30.667610, 46.735718>,  <33.936840, 30.718267, 46.813766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325867, 30.667610, 46.735718> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104711, -0.510669, 0.853377,
		-0.207716, -0.850399, -0.483399,
		0.972568, -0.126643, -0.195121,
		34.617638, 30.629618, 46.677181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084869, 30.047079, 46.976334>,  <33.936840, 30.718267, 46.813766>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084869, 30.047079, 46.976334> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.450115, 30.209146, 46.958138>,  <34.669262, 30.306387, 46.947220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.450115, 30.209146, 46.958138>,  <34.084869, 30.047079, 46.976334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450115, 30.209146, 46.958138> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192170, -0.329293, 0.924466,
		0.359583, -0.852881, -0.378542,
		0.913110, 0.405167, -0.045490,
		34.724049, 30.330696, 46.944492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583305, 29.546207, 47.220451>,  <34.084869, 30.047079, 46.976334>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583305, 29.546207, 47.220451> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.767143, 29.899212, 47.260342>,  <34.877445, 30.111015, 47.284275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.767143, 29.899212, 47.260342>,  <34.583305, 29.546207, 47.220451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767143, 29.899212, 47.260342> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327624, -0.272837, 0.904556,
		0.825492, -0.383054, -0.414527,
		0.459592, 0.882513, 0.099727,
		34.905022, 30.163965, 47.290260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093906, 29.404675, 47.582214>,  <34.583305, 29.546207, 47.220451>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093906, 29.404675, 47.582214> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.088745, 29.803341, 47.614445>,  <35.085648, 30.042540, 47.633785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.088745, 29.803341, 47.614445>,  <35.093906, 29.404675, 47.582214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088745, 29.803341, 47.614445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323361, -0.072097, 0.943525,
		0.946188, 0.038226, -0.321353,
		-0.012899, 0.996665, 0.080578,
		35.084877, 30.102341, 47.638618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680523, 29.665533, 47.961269>,  <35.093906, 29.404675, 47.582214>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680523, 29.665533, 47.961269> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.421684, 29.968178, 47.998802>,  <35.266380, 30.149765, 48.021320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.421684, 29.968178, 47.998802>,  <35.680523, 29.665533, 47.961269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421684, 29.968178, 47.998802> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202591, 0.051997, 0.977882,
		0.734996, 0.651796, -0.186930,
		-0.647099, 0.756610, 0.093830,
		35.227554, 30.195160, 48.026951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957005, 30.192032, 48.500736>,  <35.680523, 29.665533, 47.961269>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957005, 30.192032, 48.500736> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.565392, 30.270067, 48.477268>,  <35.330425, 30.316889, 48.463188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.565392, 30.270067, 48.477268>,  <35.957005, 30.192032, 48.500736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565392, 30.270067, 48.477268> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026668, 0.408252, 0.912480,
		0.201964, 0.891780, -0.404893,
		-0.979030, 0.195086, -0.058670,
		35.271683, 30.328592, 48.459667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918049, 30.906778, 48.638184>,  <35.957005, 30.192032, 48.500736>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918049, 30.906778, 48.638184> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.556984, 30.761677, 48.730801>,  <35.340343, 30.674616, 48.786369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.556984, 30.761677, 48.730801>,  <35.918049, 30.906778, 48.638184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556984, 30.761677, 48.730801> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052215, 0.441727, 0.895628,
		-0.427171, 0.820539, -0.379789,
		-0.902662, -0.362756, 0.231538,
		35.286186, 30.652849, 48.800262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387936, 31.451773, 48.905029>,  <35.918049, 30.906778, 48.638184>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387936, 31.451773, 48.905029> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.269917, 31.101454, 49.057831>,  <35.199104, 30.891262, 49.149513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.269917, 31.101454, 49.057831>,  <35.387936, 31.451773, 48.905029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269917, 31.101454, 49.057831> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153113, 0.437971, 0.885854,
		-0.943136, 0.202877, -0.263317,
		-0.295044, -0.875798, 0.382004,
		35.181404, 30.838715, 49.172432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024540, 31.713671, 49.342209>,  <35.387936, 31.451773, 48.905029>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024540, 31.713671, 49.342209> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.033142, 31.333542, 49.466415>,  <35.038303, 31.105465, 49.540939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.033142, 31.333542, 49.466415>,  <35.024540, 31.713671, 49.342209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033142, 31.333542, 49.466415> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147527, 0.304176, 0.941123,
		-0.988824, -0.066045, -0.133658,
		0.021501, -0.950324, 0.310520,
		35.039593, 31.048445, 49.559570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807907, 31.731787, 48.614056>,  <35.024540, 31.713671, 49.342209>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807907, 31.731787, 48.614056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.050056, 32.004890, 48.777695>,  <35.195347, 32.168751, 48.875877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.050056, 32.004890, 48.777695>,  <34.807907, 31.731787, 48.614056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050056, 32.004890, 48.777695> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150666, 0.602989, -0.783393,
		-0.781550, 0.412609, 0.467903,
		0.605375, 0.682758, 0.409100,
		35.231670, 32.209717, 48.900425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415726, 32.312119, 48.600853>,  <34.807907, 31.731787, 48.614056>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415726, 32.312119, 48.600853> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.779240, 32.469120, 48.657497>,  <34.997349, 32.563320, 48.691483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.779240, 32.469120, 48.657497>,  <34.415726, 32.312119, 48.600853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779240, 32.469120, 48.657497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214694, 0.730852, -0.647890,
		-0.357795, 0.558389, 0.748454,
		0.908784, 0.392501, 0.141613,
		35.051876, 32.586868, 48.699982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334637, 33.144394, 48.745953>,  <34.415726, 32.312119, 48.600853>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334637, 33.144394, 48.745953> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.704529, 33.054794, 48.622860>,  <34.926464, 33.001034, 48.549004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.704529, 33.054794, 48.622860>,  <34.334637, 33.144394, 48.745953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704529, 33.054794, 48.622860> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001043, 0.809984, -0.586451,
		0.380627, 0.541987, 0.749249,
		0.924728, -0.224001, -0.307736,
		34.981949, 32.987595, 48.530540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718430, 33.754047, 48.714275>,  <34.334637, 33.144394, 48.745953>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718430, 33.754047, 48.714275> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.945969, 33.533966, 48.469757>,  <35.082493, 33.401917, 48.323044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.945969, 33.533966, 48.469757>,  <34.718430, 33.754047, 48.714275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945969, 33.533966, 48.469757> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022775, 0.753526, -0.657024,
		0.822128, 0.359823, 0.441172,
		0.568847, -0.550206, -0.611300,
		35.116623, 33.368904, 48.286366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200745, 34.202934, 48.572124>,  <34.718430, 33.754047, 48.714275>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200745, 34.202934, 48.572124> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.193176, 33.923336, 48.286175>,  <35.188637, 33.755577, 48.114605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.193176, 33.923336, 48.286175>,  <35.200745, 34.202934, 48.572124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193176, 33.923336, 48.286175> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088610, 0.711014, -0.697572,
		0.995887, -0.076541, 0.048488,
		-0.018918, -0.698999, -0.714872,
		35.187500, 33.713634, 48.071712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799728, 34.373245, 48.034958>,  <35.200745, 34.202934, 48.572124>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799728, 34.373245, 48.034958> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.531563, 34.157631, 47.831001>,  <35.370663, 34.028263, 47.708626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.531563, 34.157631, 47.831001>,  <35.799728, 34.373245, 48.034958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531563, 34.157631, 47.831001> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026063, 0.703876, -0.709845,
		0.741535, -0.462596, -0.485932,
		-0.670407, -0.539040, -0.509893,
		35.330441, 33.995918, 47.678036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968918, 34.528675, 47.358078>,  <35.799728, 34.373245, 48.034958>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968918, 34.528675, 47.358078> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.613228, 34.348843, 47.324238>,  <35.399815, 34.240944, 47.303936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.613228, 34.348843, 47.324238>,  <35.968918, 34.528675, 47.358078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613228, 34.348843, 47.324238> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142897, 0.448638, -0.882216,
		0.434569, -0.772405, -0.463185,
		-0.889230, -0.449572, -0.084589,
		35.346462, 34.213966, 47.298859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647335, 34.606655, 46.952019>,  <35.968918, 34.528675, 47.358078>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647335, 34.606655, 46.952019> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.659973, 34.924507, 47.194527>,  <36.667557, 35.115219, 47.340031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.659973, 34.924507, 47.194527>,  <36.647335, 34.606655, 46.952019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659973, 34.924507, 47.194527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172946, -0.601769, 0.779720,
		0.984424, 0.080219, -0.156440,
		0.031593, 0.794631, 0.606270,
		36.669453, 35.162895, 47.376408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096176, 34.408665, 47.503975>,  <36.647335, 34.606655, 46.952019>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096176, 34.408665, 47.503975> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.944916, 34.738174, 47.672928>,  <36.854160, 34.935879, 47.774300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.944916, 34.738174, 47.672928>,  <37.096176, 34.408665, 47.503975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944916, 34.738174, 47.672928> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221947, -0.362276, 0.905260,
		0.898745, 0.436070, -0.045838,
		-0.378151, 0.823771, 0.422378,
		36.831470, 34.985306, 47.799641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615948, 34.629768, 47.958256>,  <37.096176, 34.408665, 47.503975>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615948, 34.629768, 47.958256> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.261456, 34.776623, 48.071259>,  <37.048759, 34.864735, 48.139061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.261456, 34.776623, 48.071259>,  <37.615948, 34.629768, 47.958256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261456, 34.776623, 48.071259> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180553, -0.287860, 0.940499,
		0.426613, 0.884504, 0.188822,
		-0.886229, 0.367137, 0.282505,
		36.995586, 34.886765, 48.156010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694111, 34.846081, 48.673733>,  <37.615948, 34.629768, 47.958256>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694111, 34.846081, 48.673733> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.295650, 34.860783, 48.641903>,  <37.056576, 34.869602, 48.622807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.295650, 34.860783, 48.641903>,  <37.694111, 34.846081, 48.673733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295650, 34.860783, 48.641903> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087576, -0.454921, 0.886215,
		-0.003630, 0.889773, 0.456389,
		-0.996151, 0.036752, -0.079574,
		36.996803, 34.871807, 48.618031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527054, 35.296841, 49.141083>,  <37.694111, 34.846081, 48.673733>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527054, 35.296841, 49.141083> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.208447, 35.068703, 49.060822>,  <37.017281, 34.931820, 49.012665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.208447, 35.068703, 49.060822>,  <37.527054, 35.296841, 49.141083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208447, 35.068703, 49.060822> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056942, -0.401163, 0.914235,
		-0.601929, 0.716778, 0.352010,
		-0.796517, -0.570349, -0.200657,
		36.969490, 34.897598, 49.000626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032116, 35.446739, 49.652821>,  <37.527054, 35.296841, 49.141083>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032116, 35.446739, 49.652821> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.963966, 35.078278, 49.512852>,  <36.923077, 34.857201, 49.428871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.963966, 35.078278, 49.512852>,  <37.032116, 35.446739, 49.652821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963966, 35.078278, 49.512852> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024503, -0.358968, 0.933029,
		-0.985075, 0.150390, 0.083730,
		-0.170374, -0.921154, -0.349925,
		36.912853, 34.801929, 49.407875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442680, 35.123348, 50.123695>,  <37.032116, 35.446739, 49.652821>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442680, 35.123348, 50.123695> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.616123, 34.809967, 49.945621>,  <36.720188, 34.621937, 49.838779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.616123, 34.809967, 49.945621>,  <36.442680, 35.123348, 50.123695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616123, 34.809967, 49.945621> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081182, -0.458067, 0.885203,
		-0.897439, -0.419968, -0.135018,
		0.433604, -0.783455, -0.445181,
		36.746204, 34.574932, 49.812069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070942, 34.491196, 50.337296>,  <36.442680, 35.123348, 50.123695>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070942, 34.491196, 50.337296> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.431343, 34.368809, 50.214275>,  <36.647583, 34.295376, 50.140465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.431343, 34.368809, 50.214275>,  <36.070942, 34.491196, 50.337296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431343, 34.368809, 50.214275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012420, -0.690447, 0.723277,
		-0.433642, -0.655492, -0.618292,
		0.901000, -0.305964, -0.307547,
		36.701645, 34.277020, 50.122009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975842, 33.844528, 50.242386>,  <36.070942, 34.491196, 50.337296>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975842, 33.844528, 50.242386> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.371113, 33.871151, 50.297634>,  <36.608276, 33.887123, 50.330784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.371113, 33.871151, 50.297634>,  <35.975842, 33.844528, 50.242386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371113, 33.871151, 50.297634> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049507, -0.714077, 0.698315,
		0.145105, -0.696896, -0.702339,
		0.988177, 0.066558, 0.138117,
		36.667564, 33.891117, 50.339069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.456112, 35.595078, 34.991474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787754, 35.800526, 35.079823>,  <37.986740, 35.923794, 35.132832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787754, 35.800526, 35.079823>,  <37.456112, 35.595078, 34.991474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787754, 35.800526, 35.079823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317511, 0.107387, 0.942154,
		0.460192, -0.851270, 0.252115,
		0.829102, 0.513621, 0.220869,
		38.036484, 35.954613, 35.146084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582939, 35.502296, 35.692490>,  <37.456112, 35.595078, 34.991474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582939, 35.502296, 35.692490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866215, 35.775669, 35.621620>,  <38.036179, 35.939693, 35.579102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866215, 35.775669, 35.621620>,  <37.582939, 35.502296, 35.692490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866215, 35.775669, 35.621620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104785, 0.349902, 0.930908,
		0.698208, -0.640690, 0.319409,
		0.708185, 0.683436, -0.177169,
		38.078671, 35.980701, 35.568470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960632, 35.537266, 36.254452>,  <37.582939, 35.502296, 35.692490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960632, 35.537266, 36.254452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052048, 35.885666, 36.080494>,  <38.106895, 36.094707, 35.976120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052048, 35.885666, 36.080494>,  <37.960632, 35.537266, 36.254452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052048, 35.885666, 36.080494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089780, 0.425955, 0.900279,
		0.969387, -0.244792, 0.019148,
		0.228537, 0.870999, -0.434892,
		38.120609, 36.146965, 35.950027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522736, 35.765301, 36.532959>,  <37.960632, 35.537266, 36.254452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522736, 35.765301, 36.532959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324589, 36.091022, 36.411945>,  <38.205700, 36.286453, 36.339336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324589, 36.091022, 36.411945>,  <38.522736, 35.765301, 36.532959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324589, 36.091022, 36.411945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000898, 0.347789, 0.937572,
		0.868684, 0.464712, -0.171551,
		-0.495365, 0.814300, -0.302537,
		38.175980, 36.335312, 36.321186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770912, 36.275459, 37.046928>,  <38.522736, 35.765301, 36.532959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770912, 36.275459, 37.046928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469864, 36.453926, 36.853230>,  <38.289234, 36.561005, 36.737011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469864, 36.453926, 36.853230>,  <38.770912, 36.275459, 37.046928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469864, 36.453926, 36.853230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220700, 0.521963, 0.823922,
		0.620368, 0.726973, -0.294370,
		-0.752619, 0.446167, -0.484252,
		38.244080, 36.587776, 36.707954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787910, 37.033676, 37.203518>,  <38.770912, 36.275459, 37.046928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787910, 37.033676, 37.203518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414417, 36.948399, 37.088497>,  <38.190319, 36.897232, 37.019485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414417, 36.948399, 37.088497>,  <38.787910, 37.033676, 37.203518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414417, 36.948399, 37.088497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356062, 0.470494, 0.807376,
		-0.036841, 0.856261, -0.515228,
		-0.933736, -0.213197, -0.287548,
		38.134296, 36.884438, 37.002232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407490, 37.691444, 37.231689>,  <38.787910, 37.033676, 37.203518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407490, 37.691444, 37.231689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145123, 37.393181, 37.278610>,  <37.987701, 37.214222, 37.306763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145123, 37.393181, 37.278610>,  <38.407490, 37.691444, 37.231689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145123, 37.393181, 37.278610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284210, 0.387935, 0.876773,
		-0.699285, 0.541749, -0.466378,
		-0.655916, -0.745663, 0.117306,
		37.948349, 37.169483, 37.313801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819168, 38.061333, 37.390118>,  <38.407490, 37.691444, 37.231689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819168, 38.061333, 37.390118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.799053, 37.685539, 37.525665>,  <37.786983, 37.460064, 37.606995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.799053, 37.685539, 37.525665>,  <37.819168, 38.061333, 37.390118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799053, 37.685539, 37.525665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381963, 0.331598, 0.862639,
		-0.922808, -0.086054, -0.375526,
		-0.050291, -0.939488, 0.338871,
		37.783966, 37.403694, 37.627327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190952, 38.127132, 37.783363>,  <37.819168, 38.061333, 37.390118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190952, 38.127132, 37.783363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333473, 37.771847, 37.899387>,  <37.418987, 37.558678, 37.969002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333473, 37.771847, 37.899387>,  <37.190952, 38.127132, 37.783363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333473, 37.771847, 37.899387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498351, 0.081943, 0.863095,
		-0.790377, -0.452072, -0.413444,
		0.356302, -0.888210, 0.290056,
		37.440365, 37.505383, 37.986404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549835, 37.715652, 37.944412>,  <37.190952, 38.127132, 37.783363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549835, 37.715652, 37.944412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878826, 37.573910, 38.122383>,  <37.076221, 37.488865, 38.229164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878826, 37.573910, 38.122383>,  <36.549835, 37.715652, 37.944412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878826, 37.573910, 38.122383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363101, 0.275001, 0.890243,
		-0.437820, -0.893759, 0.097515,
		0.822479, -0.354359, 0.444926,
		37.125568, 37.467602, 38.255859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304043, 37.237980, 38.487720>,  <36.549835, 37.715652, 37.944412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304043, 37.237980, 38.487720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681496, 37.326588, 38.586094>,  <36.907967, 37.379753, 38.645119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681496, 37.326588, 38.586094>,  <36.304043, 37.237980, 38.487720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681496, 37.326588, 38.586094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269217, 0.081417, 0.959632,
		0.192551, -0.971752, 0.136464,
		0.943635, 0.221516, 0.245935,
		36.964584, 37.393044, 38.659874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358772, 37.103741, 39.092213>,  <36.304043, 37.237980, 38.487720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358772, 37.103741, 39.092213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703621, 37.306297, 39.099281>,  <36.910530, 37.427830, 39.103523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703621, 37.306297, 39.099281>,  <36.358772, 37.103741, 39.092213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703621, 37.306297, 39.099281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046523, 0.044386, 0.997931,
		0.504560, -0.861160, 0.061825,
		0.862122, 0.506392, 0.017669,
		36.962257, 37.458214, 39.104584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098286, 36.399536, 38.900471>,  <36.358772, 37.103741, 39.092213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098286, 36.399536, 38.900471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724468, 36.422344, 39.040974>,  <35.500179, 36.436028, 39.125275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724468, 36.422344, 39.040974>,  <36.098286, 36.399536, 38.900471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724468, 36.422344, 39.040974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336345, 0.180812, -0.924218,
		-0.116208, -0.981863, -0.149799,
		-0.934541, 0.057018, 0.351257,
		35.444107, 36.439449, 39.146351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841709, 36.264366, 38.345829>,  <36.098286, 36.399536, 38.900471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841709, 36.264366, 38.345829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522106, 36.382957, 38.555092>,  <35.330345, 36.454113, 38.680649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522106, 36.382957, 38.555092>,  <35.841709, 36.264366, 38.345829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522106, 36.382957, 38.555092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426790, 0.333285, -0.840697,
		-0.423606, -0.895000, -0.139764,
		-0.799005, 0.296474, 0.523158,
		35.282406, 36.471901, 38.712040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201420, 35.914303, 38.065460>,  <35.841709, 36.264366, 38.345829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201420, 35.914303, 38.065460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081619, 36.250980, 38.245171>,  <35.009739, 36.452988, 38.352997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081619, 36.250980, 38.245171>,  <35.201420, 35.914303, 38.065460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081619, 36.250980, 38.245171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340947, 0.345379, -0.874339,
		-0.891098, -0.415041, 0.183534,
		-0.299498, 0.841697, 0.449274,
		34.991772, 36.503490, 38.379951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483974, 35.995533, 37.851498>,  <35.201420, 35.914303, 38.065460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483974, 35.995533, 37.851498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584564, 36.359207, 37.984249>,  <34.644920, 36.577412, 38.063900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584564, 36.359207, 37.984249>,  <34.483974, 35.995533, 37.851498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584564, 36.359207, 37.984249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457953, 0.413856, -0.786767,
		-0.852665, 0.045871, 0.520440,
		0.251477, 0.909186, 0.331874,
		34.660007, 36.631962, 38.083813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855774, 36.324360, 37.894909>,  <34.483974, 35.995533, 37.851498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855774, 36.324360, 37.894909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168228, 36.569889, 37.849216>,  <34.355701, 36.717205, 37.821800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168228, 36.569889, 37.849216>,  <33.855774, 36.324360, 37.894909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168228, 36.569889, 37.849216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435430, 0.404443, -0.804255,
		-0.447467, 0.677975, 0.583201,
		0.781136, 0.613821, -0.114235,
		34.402569, 36.754036, 37.814945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547237, 37.075138, 37.689404>,  <33.855774, 36.324360, 37.894909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547237, 37.075138, 37.689404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932697, 37.062695, 37.583263>,  <34.163975, 37.055229, 37.519581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932697, 37.062695, 37.583263>,  <33.547237, 37.075138, 37.689404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932697, 37.062695, 37.583263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246269, 0.281620, -0.927384,
		0.103577, 0.959022, 0.263722,
		0.963651, -0.031109, -0.265347,
		34.221794, 37.053360, 37.503658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713364, 37.689053, 37.482910>,  <33.547237, 37.075138, 37.689404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713364, 37.689053, 37.482910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979553, 37.449680, 37.304462>,  <34.139267, 37.306057, 37.197392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979553, 37.449680, 37.304462>,  <33.713364, 37.689053, 37.482910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979553, 37.449680, 37.304462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295232, 0.337912, -0.893674,
		0.685550, 0.726429, 0.048197,
		0.665477, -0.598429, -0.446121,
		34.179195, 37.270153, 37.170628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906662, 37.999905, 36.849480>,  <33.713364, 37.689053, 37.482910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906662, 37.999905, 36.849480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045013, 37.637375, 36.752361>,  <34.128025, 37.419857, 36.694088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045013, 37.637375, 36.752361>,  <33.906662, 37.999905, 36.849480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045013, 37.637375, 36.752361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078056, 0.230078, -0.970037,
		0.935027, 0.354467, 0.008835,
		0.345879, -0.906321, -0.242798,
		34.148777, 37.365479, 36.679523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986534, 38.048534, 36.146420>,  <33.906662, 37.999905, 36.849480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986534, 38.048534, 36.146420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007782, 37.649391, 36.161709>,  <34.020531, 37.409904, 36.170883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007782, 37.649391, 36.161709>,  <33.986534, 38.048534, 36.146420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007782, 37.649391, 36.161709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374294, -0.055383, -0.925655,
		0.925787, 0.034864, -0.376434,
		0.053120, -0.997856, 0.038224,
		34.023720, 37.350033, 36.173176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237156, 37.764324, 35.447086>,  <33.986534, 38.048534, 36.146420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237156, 37.764324, 35.447086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062687, 37.442741, 35.608784>,  <33.958004, 37.249794, 35.705803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062687, 37.442741, 35.608784>,  <34.237156, 37.764324, 35.447086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062687, 37.442741, 35.608784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474469, -0.176236, -0.862450,
		0.764612, -0.567977, -0.304582,
		-0.436174, -0.803955, 0.404240,
		33.931835, 37.201553, 35.730057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179893, 37.308689, 34.910454>,  <34.237156, 37.764324, 35.447086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179893, 37.308689, 34.910454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915642, 37.154675, 35.168236>,  <33.757092, 37.062267, 35.322906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915642, 37.154675, 35.168236>,  <34.179893, 37.308689, 34.910454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915642, 37.154675, 35.168236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597623, -0.249807, -0.761869,
		0.454333, -0.888452, -0.065074,
		-0.660627, -0.385032, 0.644454,
		33.717453, 37.039165, 35.361572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076233, 36.621372, 34.681194>,  <34.179893, 37.308689, 34.910454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076233, 36.621372, 34.681194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753414, 36.741600, 34.884502>,  <33.559723, 36.813736, 35.006489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753414, 36.741600, 34.884502>,  <34.076233, 36.621372, 34.681194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753414, 36.741600, 34.884502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580389, -0.245242, -0.776534,
		-0.108749, -0.921693, 0.372365,
		-0.807046, 0.300564, 0.508271,
		33.511299, 36.831768, 35.036983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602440, 36.103970, 34.545998>,  <34.076233, 36.621372, 34.681194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602440, 36.103970, 34.545998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384850, 36.420139, 34.658653>,  <33.254295, 36.609840, 34.726246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384850, 36.420139, 34.658653>,  <33.602440, 36.103970, 34.545998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384850, 36.420139, 34.658653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656940, -0.192362, -0.728990,
		-0.522035, -0.581572, 0.623902,
		-0.543975, 0.790424, 0.281638,
		33.221657, 36.657265, 34.743145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933010, 35.872288, 34.445251>,  <33.602440, 36.103970, 34.545998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933010, 35.872288, 34.445251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.905605, 36.269798, 34.480389>,  <32.889160, 36.508305, 34.501472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.905605, 36.269798, 34.480389>,  <32.933010, 35.872288, 34.445251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905605, 36.269798, 34.480389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657058, 0.021308, -0.753538,
		-0.750720, -0.109349, 0.651508,
		-0.068516, 0.993775, 0.087845,
		32.885052, 36.567932, 34.506741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490887, 35.461029, 34.870617>,  <32.933010, 35.872288, 34.445251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490887, 35.461029, 34.870617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308155, 35.153152, 35.049004>,  <33.198517, 34.968426, 35.156036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308155, 35.153152, 35.049004>,  <33.490887, 35.461029, 34.870617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308155, 35.153152, 35.049004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799018, 0.134685, -0.586029,
		0.390998, -0.624046, -0.676526,
		-0.456827, -0.769693, 0.445962,
		33.171108, 34.922245, 35.182793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296066, 35.358555, 34.786705>,  <33.490887, 35.461029, 34.870617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296066, 35.358555, 34.786705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477295, 35.001972, 34.784729>,  <34.586033, 34.788021, 34.783543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477295, 35.001972, 34.784729>,  <34.296066, 35.358555, 34.786705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477295, 35.001972, 34.784729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260956, -0.137921, 0.955448,
		-0.852424, -0.431599, -0.295120,
		0.453073, -0.891460, -0.004939,
		34.613216, 34.734535, 34.783249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917137, 34.888569, 35.188206>,  <34.296066, 35.358555, 34.786705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917137, 34.888569, 35.188206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273872, 34.708584, 35.206776>,  <34.487915, 34.600594, 35.217918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273872, 34.708584, 35.206776>,  <33.917137, 34.888569, 35.188206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273872, 34.708584, 35.206776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260082, -0.426085, 0.866492,
		-0.370103, -0.784849, -0.497027,
		0.891842, -0.449959, 0.046429,
		34.541424, 34.573597, 35.220703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792404, 34.230785, 35.508888>,  <33.917137, 34.888569, 35.188206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792404, 34.230785, 35.508888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185604, 34.300957, 35.530552>,  <34.421524, 34.343060, 35.543549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185604, 34.300957, 35.530552>,  <33.792404, 34.230785, 35.508888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185604, 34.300957, 35.530552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000491, -0.297470, 0.954731,
		0.183599, -0.938475, -0.292499,
		0.983001, 0.175432, 0.054155,
		34.480503, 34.353584, 35.546799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225613, 33.559479, 35.602097>,  <33.792404, 34.230785, 35.508888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225613, 33.559479, 35.602097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416405, 33.881836, 35.742393>,  <34.530880, 34.075249, 35.826572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416405, 33.881836, 35.742393>,  <34.225613, 33.559479, 35.602097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416405, 33.881836, 35.742393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086976, -0.440390, 0.893584,
		0.874597, -0.395719, -0.280152,
		0.476985, 0.805893, 0.350746,
		34.559502, 34.123604, 35.847618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795078, 33.305305, 35.987755>,  <34.225613, 33.559479, 35.602097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795078, 33.305305, 35.987755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722996, 33.675205, 36.121838>,  <34.679745, 33.897144, 36.202290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722996, 33.675205, 36.121838>,  <34.795078, 33.305305, 35.987755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722996, 33.675205, 36.121838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113578, -0.318948, 0.940942,
		0.977050, 0.207635, -0.047555,
		-0.180205, 0.924749, 0.335211,
		34.668934, 33.952629, 36.222401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315578, 33.381367, 36.472519>,  <34.795078, 33.305305, 35.987755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315578, 33.381367, 36.472519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.009010, 33.626457, 36.549629>,  <34.825069, 33.773510, 36.595898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.009010, 33.626457, 36.549629>,  <35.315578, 33.381367, 36.472519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009010, 33.626457, 36.549629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042394, -0.347717, 0.936641,
		0.640936, 0.709690, 0.292475,
		-0.766423, 0.612726, 0.192778,
		34.779083, 33.810276, 36.607464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522797, 33.731186, 37.032852>,  <35.315578, 33.381367, 36.472519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522797, 33.731186, 37.032852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124302, 33.763138, 37.019371>,  <34.885204, 33.782310, 37.011284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124302, 33.763138, 37.019371>,  <35.522797, 33.731186, 37.032852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124302, 33.763138, 37.019371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053942, -0.266782, 0.962246,
		0.067872, 0.960441, 0.270087,
		-0.996235, 0.079879, -0.033701,
		34.825432, 33.787102, 37.009262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385654, 33.930840, 37.657963>,  <35.522797, 33.731186, 37.032852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385654, 33.930840, 37.657963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010338, 33.855526, 37.541927>,  <34.785149, 33.810337, 37.472305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010338, 33.855526, 37.541927>,  <35.385654, 33.930840, 37.657963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010338, 33.855526, 37.541927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221426, -0.317273, 0.922122,
		-0.265661, 0.929455, 0.256003,
		-0.938294, -0.188286, -0.290092,
		34.728851, 33.799042, 37.454899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902523, 34.306561, 38.110519>,  <35.385654, 33.930840, 37.657963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902523, 34.306561, 38.110519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717873, 33.991467, 37.947365>,  <34.607082, 33.802410, 37.849472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717873, 33.991467, 37.947365>,  <34.902523, 34.306561, 38.110519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717873, 33.991467, 37.947365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321939, -0.279692, 0.904504,
		-0.826591, 0.548862, -0.124487,
		-0.461630, -0.787733, -0.407891,
		34.579384, 33.755146, 37.824997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226700, 34.295399, 38.427181>,  <34.902523, 34.306561, 38.110519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226700, 34.295399, 38.427181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288948, 33.927307, 38.283539>,  <34.326298, 33.706451, 38.197353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288948, 33.927307, 38.283539>,  <34.226700, 34.295399, 38.427181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288948, 33.927307, 38.283539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297650, -0.390323, 0.871236,
		-0.941906, -0.028693, -0.334649,
		0.155619, -0.920231, -0.359108,
		34.335632, 33.651237, 38.175808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662762, 33.885258, 38.762783>,  <34.226700, 34.295399, 38.427181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662762, 33.885258, 38.762783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934570, 33.629715, 38.618500>,  <34.097656, 33.476391, 38.531929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934570, 33.629715, 38.618500>,  <33.662762, 33.885258, 38.762783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934570, 33.629715, 38.618500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090753, -0.561083, 0.822769,
		-0.728017, -0.526357, -0.439249,
		0.679526, -0.638853, -0.360709,
		34.138428, 33.438061, 38.510288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411892, 33.287621, 38.785530>,  <33.662762, 33.885258, 38.762783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411892, 33.287621, 38.785530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794117, 33.174030, 38.753910>,  <34.023453, 33.105877, 38.734940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794117, 33.174030, 38.753910>,  <33.411892, 33.287621, 38.785530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794117, 33.174030, 38.753910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113465, -0.601849, 0.790509,
		-0.272065, -0.746414, -0.607328,
		0.955566, -0.283980, -0.079051,
		34.080788, 33.088837, 38.730194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428444, 32.551010, 38.766960>,  <33.411892, 33.287621, 38.785530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428444, 32.551010, 38.766960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766323, 32.693272, 38.926964>,  <33.969051, 32.778629, 39.022964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766323, 32.693272, 38.926964>,  <33.428444, 32.551010, 38.766960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766323, 32.693272, 38.926964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142102, -0.571498, 0.808206,
		0.516042, -0.739528, -0.432202,
		0.844693, 0.355652, 0.400006,
		34.019730, 32.799969, 39.046967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896931, 32.039467, 38.988083>,  <33.428444, 32.551010, 38.766960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896931, 32.039467, 38.988083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058365, 32.343517, 39.191776>,  <34.155224, 32.525948, 39.313992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058365, 32.343517, 39.191776>,  <33.896931, 32.039467, 38.988083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058365, 32.343517, 39.191776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086993, -0.585935, 0.805675,
		0.910797, -0.280859, -0.302601,
		0.403586, 0.760131, 0.509235,
		34.179440, 32.571556, 39.344547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517536, 31.826843, 39.176491>,  <33.896931, 32.039467, 38.988083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517536, 31.826843, 39.176491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436249, 32.127731, 39.427208>,  <34.387474, 32.308262, 39.577637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436249, 32.127731, 39.427208>,  <34.517536, 31.826843, 39.176491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436249, 32.127731, 39.427208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027728, -0.635473, 0.771625,
		0.978740, 0.174192, 0.108285,
		-0.203223, 0.752218, 0.626792,
		34.375282, 32.353397, 39.615246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941116, 31.781553, 39.670422>,  <34.517536, 31.826843, 39.176491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941116, 31.781553, 39.670422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666523, 32.018410, 39.839233>,  <34.501766, 32.160522, 39.940521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666523, 32.018410, 39.839233>,  <34.941116, 31.781553, 39.670422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666523, 32.018410, 39.839233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052734, -0.619404, 0.783300,
		0.725226, 0.515471, 0.456439,
		-0.686488, 0.592139, 0.422025,
		34.460575, 32.196053, 39.965839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044327, 31.725597, 40.392879>,  <34.941116, 31.781553, 39.670422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044327, 31.725597, 40.392879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.699821, 31.927971, 40.411865>,  <34.493118, 32.049393, 40.423256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.699821, 31.927971, 40.411865>,  <35.044327, 31.725597, 40.392879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699821, 31.927971, 40.411865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212219, -0.442986, 0.871049,
		0.461718, 0.740133, 0.488897,
		-0.861266, 0.505932, 0.047465,
		34.441441, 32.079750, 40.426105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141823, 32.051487, 40.929848>,  <35.044327, 31.725597, 40.392879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141823, 32.051487, 40.929848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744503, 32.034008, 40.887039>,  <34.506111, 32.023521, 40.861355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744503, 32.034008, 40.887039>,  <35.141823, 32.051487, 40.929848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744503, 32.034008, 40.887039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090238, -0.285503, 0.954120,
		-0.072245, 0.957381, 0.279646,
		-0.993296, -0.043695, -0.107018,
		34.446514, 32.020901, 40.854935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747601, 32.554089, 41.530582>,  <35.141823, 32.051487, 40.929848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747601, 32.554089, 41.530582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510960, 32.260418, 41.397327>,  <34.368973, 32.084213, 41.317375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510960, 32.260418, 41.397327>,  <34.747601, 32.554089, 41.530582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510960, 32.260418, 41.397327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144874, -0.309676, 0.939740,
		-0.793104, 0.604220, 0.076843,
		-0.591606, -0.734179, -0.333141,
		34.333477, 32.040165, 41.297386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294819, 32.490253, 42.092396>,  <34.747601, 32.554089, 41.530582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294819, 32.490253, 42.092396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234661, 32.142330, 41.904434>,  <34.198566, 31.933575, 41.791656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234661, 32.142330, 41.904434>,  <34.294819, 32.490253, 42.092396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234661, 32.142330, 41.904434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215705, -0.434987, 0.874218,
		-0.964808, 0.232834, -0.122205,
		-0.150390, -0.869813, -0.469903,
		34.189545, 31.881386, 41.763462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771420, 32.245934, 42.456093>,  <34.294819, 32.490253, 42.092396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771420, 32.245934, 42.456093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879883, 31.919712, 42.251610>,  <33.944962, 31.723978, 42.128918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879883, 31.919712, 42.251610>,  <33.771420, 32.245934, 42.456093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879883, 31.919712, 42.251610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231914, -0.570820, 0.787642,
		-0.934178, -0.095020, -0.343923,
		0.271160, -0.815559, -0.511211,
		33.961231, 31.675045, 42.098248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354156, 31.736401, 42.782234>,  <33.771420, 32.245934, 42.456093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354156, 31.736401, 42.782234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654892, 31.536709, 42.609951>,  <33.835335, 31.416895, 42.506580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654892, 31.536709, 42.609951>,  <33.354156, 31.736401, 42.782234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654892, 31.536709, 42.609951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205351, -0.443451, 0.872457,
		-0.626554, -0.744393, -0.230887,
		0.751839, -0.499229, -0.430708,
		33.880444, 31.386940, 42.480740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241776, 31.122467, 43.050636>,  <33.354156, 31.736401, 42.782234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241776, 31.122467, 43.050636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623676, 31.148632, 42.934586>,  <33.852818, 31.164331, 42.864956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623676, 31.148632, 42.934586>,  <33.241776, 31.122467, 43.050636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623676, 31.148632, 42.934586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297342, -0.188549, 0.935969,
		0.006520, -0.979883, -0.199467,
		0.954749, 0.065413, -0.290131,
		33.910103, 31.168255, 42.847546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547604, 30.561228, 43.417255>,  <33.241776, 31.122467, 43.050636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547604, 30.561228, 43.417255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834171, 30.821468, 43.316486>,  <34.006111, 30.977612, 43.256023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834171, 30.821468, 43.316486>,  <33.547604, 30.561228, 43.417255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834171, 30.821468, 43.316486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465614, -0.176951, 0.867117,
		0.519568, -0.738517, -0.429699,
		0.716416, 0.650600, -0.251926,
		34.049095, 31.016649, 43.240910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129490, 30.246614, 43.615135>,  <33.547604, 30.561228, 43.417255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129490, 30.246614, 43.615135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245537, 30.627182, 43.573895>,  <34.315166, 30.855522, 43.549149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245537, 30.627182, 43.573895>,  <34.129490, 30.246614, 43.615135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245537, 30.627182, 43.573895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463519, -0.045444, 0.884921,
		0.837245, -0.304525, -0.454186,
		0.290121, 0.951420, -0.103105,
		34.332573, 30.912607, 43.542961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830288, 30.222956, 43.706860>,  <34.129490, 30.246614, 43.615135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830288, 30.222956, 43.706860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719231, 30.600344, 43.779282>,  <34.652596, 30.826777, 43.822735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719231, 30.600344, 43.779282>,  <34.830288, 30.222956, 43.706860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719231, 30.600344, 43.779282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320851, -0.086573, 0.943165,
		0.905521, 0.319955, -0.278677,
		-0.277644, 0.943469, 0.181052,
		34.635937, 30.883385, 43.833595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312553, 30.435135, 44.140804>,  <34.830288, 30.222956, 43.706860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312553, 30.435135, 44.140804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012852, 30.690525, 44.211197>,  <34.833031, 30.843760, 44.253433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012852, 30.690525, 44.211197>,  <35.312553, 30.435135, 44.140804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012852, 30.690525, 44.211197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084932, -0.170900, 0.981621,
		0.656817, 0.750428, 0.073820,
		-0.749251, 0.638476, 0.175985,
		34.788074, 30.882069, 44.263992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008900, 30.630428, 43.834145>,  <35.312553, 30.435135, 44.140804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008900, 30.630428, 43.834145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343002, 30.417406, 43.888897>,  <36.543465, 30.289593, 43.921749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343002, 30.417406, 43.888897>,  <36.008900, 30.630428, 43.834145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343002, 30.417406, 43.888897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293338, 0.221000, -0.930114,
		0.465084, 0.817035, 0.340809,
		0.835254, -0.532553, 0.136884,
		36.593578, 30.257641, 43.929962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412079, 31.107912, 43.453667>,  <36.008900, 30.630428, 43.834145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412079, 31.107912, 43.453667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580559, 30.745504, 43.470257>,  <36.681648, 30.528059, 43.480209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580559, 30.745504, 43.470257>,  <36.412079, 31.107912, 43.453667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580559, 30.745504, 43.470257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161411, 0.029882, -0.986435,
		0.892489, 0.422181, 0.158828,
		0.421200, -0.906019, 0.041475,
		36.706921, 30.473700, 43.482700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865902, 31.282223, 42.998131>,  <36.412079, 31.107912, 43.453667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865902, 31.282223, 42.998131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858349, 30.883055, 43.022793>,  <36.853817, 30.643555, 43.037590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858349, 30.883055, 43.022793>,  <36.865902, 31.282223, 42.998131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858349, 30.883055, 43.022793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168649, -0.063958, -0.983599,
		0.985495, -0.008180, 0.169506,
		-0.018887, -0.997919, 0.061650,
		36.852684, 30.583679, 43.041286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435810, 30.903507, 42.630650>,  <36.865902, 31.282223, 42.998131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435810, 30.903507, 42.630650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117779, 30.660913, 42.628399>,  <36.926960, 30.515356, 42.627048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117779, 30.660913, 42.628399>,  <37.435810, 30.903507, 42.630650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117779, 30.660913, 42.628399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006116, 0.017289, -0.999832,
		0.606481, -0.794906, -0.017456,
		-0.795074, -0.606486, -0.005624,
		36.879257, 30.478968, 42.626713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534416, 30.286009, 42.178440>,  <37.435810, 30.903507, 42.630650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534416, 30.286009, 42.178440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.138206, 30.331295, 42.209530>,  <36.900482, 30.358467, 42.228184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.138206, 30.331295, 42.209530>,  <37.534416, 30.286009, 42.178440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138206, 30.331295, 42.209530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094267, -0.148968, -0.984339,
		-0.099865, -0.982339, 0.158229,
		-0.990526, 0.113216, 0.077725,
		36.841049, 30.365261, 42.232849>
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
