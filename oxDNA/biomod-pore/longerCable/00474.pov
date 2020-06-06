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
	<24.607456, 34.938087, 35.545803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.409851, 34.846325, 35.210346>,  <24.291288, 34.791267, 35.009071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.409851, 34.846325, 35.210346>,  <24.607456, 34.938087, 35.545803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.409851, 34.846325, 35.210346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782484, 0.303195, -0.543868,
		0.379040, -0.924903, 0.029725,
		-0.494012, -0.229407, -0.838645,
		24.261648, 34.777504, 34.958752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.918961, 34.384090, 35.106815>,  <24.607456, 34.938087, 35.545803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.918961, 34.384090, 35.106815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.743757, 34.627602, 34.842228>,  <24.638636, 34.773708, 34.683475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.743757, 34.627602, 34.842228>,  <24.918961, 34.384090, 35.106815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.743757, 34.627602, 34.842228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838408, 0.011127, -0.544929,
		-0.324379, -0.793266, -0.515275,
		-0.438007, 0.608774, -0.661471,
		24.612354, 34.810234, 34.643787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.490625, 34.285595, 34.533215>,  <24.918961, 34.384090, 35.106815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.490625, 34.285595, 34.533215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.772882, 34.445744, 34.767059>,  <25.942238, 34.541832, 34.907364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.772882, 34.445744, 34.767059>,  <25.490625, 34.285595, 34.533215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.772882, 34.445744, 34.767059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663877, 0.085201, 0.742973,
		0.247656, -0.912383, 0.325920,
		0.705644, 0.400372, 0.584609,
		25.984575, 34.565853, 34.942444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.712030, 33.793797, 33.879772>,  <25.490625, 34.285595, 34.533215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.712030, 33.793797, 33.879772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.576616, 33.474625, 34.079250>,  <25.495367, 33.283119, 34.198936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.576616, 33.474625, 34.079250>,  <25.712030, 33.793797, 33.879772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.576616, 33.474625, 34.079250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208959, 0.453002, 0.866675,
		-0.917459, 0.397606, 0.013378,
		-0.338535, -0.797934, 0.498693,
		25.475056, 33.235245, 34.228859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.748692, 33.890850, 33.157001>,  <25.712030, 33.793797, 33.879772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.748692, 33.890850, 33.157001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.074640, 33.708824, 33.013390>,  <26.270210, 33.599609, 32.927223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.074640, 33.708824, 33.013390>,  <25.748692, 33.890850, 33.157001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.074640, 33.708824, 33.013390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046702, -0.565839, 0.823192,
		-0.577770, -0.687556, -0.439828,
		0.814862, -0.455075, -0.359035,
		26.319101, 33.572308, 32.905682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.608044, 33.210827, 33.260395>,  <25.748692, 33.890850, 33.157001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.608044, 33.210827, 33.260395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.997812, 33.293217, 33.224445>,  <26.231674, 33.342651, 33.202877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.997812, 33.293217, 33.224445>,  <25.608044, 33.210827, 33.260395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.997812, 33.293217, 33.224445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217321, -0.761834, 0.610230,
		0.057227, -0.614152, -0.787110,
		0.974421, 0.205977, -0.089871,
		26.290138, 33.355011, 33.197483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.895725, 32.561390, 33.043583>,  <25.608044, 33.210827, 33.260395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.895725, 32.561390, 33.043583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.167961, 32.784046, 33.234138>,  <26.331303, 32.917641, 33.348473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.167961, 32.784046, 33.234138>,  <25.895725, 32.561390, 33.043583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.167961, 32.784046, 33.234138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114468, -0.723014, 0.681284,
		0.723670, -0.409142, -0.555792,
		0.680587, 0.556645, 0.476389,
		26.372137, 32.951038, 33.377056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.285965, 32.082211, 33.301094>,  <25.895725, 32.561390, 33.043583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.285965, 32.082211, 33.301094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.420033, 32.382534, 33.528759>,  <26.500473, 32.562729, 33.665359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.420033, 32.382534, 33.528759>,  <26.285965, 32.082211, 33.301094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.420033, 32.382534, 33.528759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196609, -0.646546, 0.737104,
		0.921415, -0.135151, -0.364318,
		0.335169, 0.750807, 0.569166,
		26.520584, 32.607777, 33.699509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.942150, 31.922785, 33.440872>,  <26.285965, 32.082211, 33.301094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.942150, 31.922785, 33.440872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.852980, 32.180561, 33.733448>,  <26.799477, 32.335228, 33.908993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.852980, 32.180561, 33.733448>,  <26.942150, 31.922785, 33.440872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.852980, 32.180561, 33.733448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201726, -0.703580, 0.681382,
		0.953735, 0.299448, 0.026846,
		-0.222927, 0.644442, 0.731436,
		26.786102, 32.373894, 33.952877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.549940, 31.950302, 33.957973>,  <26.942150, 31.922785, 33.440872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.549940, 31.950302, 33.957973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.210384, 32.064796, 34.135719>,  <27.006651, 32.133492, 34.242367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.210384, 32.064796, 34.135719>,  <27.549940, 31.950302, 33.957973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.210384, 32.064796, 34.135719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175894, -0.639800, 0.748143,
		0.498447, 0.713250, 0.492772,
		-0.848889, 0.286234, 0.444363,
		26.955717, 32.150665, 34.269028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.723816, 32.016922, 34.608353>,  <27.549940, 31.950302, 33.957973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.723816, 32.016922, 34.608353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.327612, 31.962288, 34.614498>,  <27.089890, 31.929508, 34.618183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.327612, 31.962288, 34.614498>,  <27.723816, 32.016922, 34.608353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.327612, 31.962288, 34.614498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108343, -0.707149, 0.698714,
		-0.084569, 0.693748, 0.715236,
		-0.990510, -0.136581, 0.015360,
		27.030458, 31.921314, 34.619106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.656845, 31.779110, 35.275040>,  <27.723816, 32.016922, 34.608353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.656845, 31.779110, 35.275040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.306231, 31.678495, 35.110886>,  <27.095861, 31.618126, 35.012394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.306231, 31.678495, 35.110886>,  <27.656845, 31.779110, 35.275040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.306231, 31.678495, 35.110886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068393, -0.778850, 0.623470,
		-0.476452, 0.574562, 0.665487,
		-0.876537, -0.251538, -0.410380,
		27.043270, 31.603033, 34.987770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.505836, 31.136972, 35.654270>,  <27.656845, 31.779110, 35.275040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.505836, 31.136972, 35.654270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.169987, 30.930824, 35.722885>,  <26.968477, 30.807135, 35.764053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.169987, 30.930824, 35.722885>,  <27.505836, 31.136972, 35.654270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.169987, 30.930824, 35.722885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400445, 0.373962, -0.836538,
		0.366998, -0.771057, -0.520369,
		-0.839617, -0.515386, 0.171522,
		26.918098, 30.776213, 35.774345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.250641, 30.743357, 35.033672>,  <27.505836, 31.136972, 35.654270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.250641, 30.743357, 35.033672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978382, 30.883059, 35.291275>,  <26.815027, 30.966879, 35.445835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978382, 30.883059, 35.291275>,  <27.250641, 30.743357, 35.033672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.978382, 30.883059, 35.291275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460513, 0.479710, -0.746864,
		-0.569781, -0.804923, -0.165677,
		-0.680645, 0.349253, 0.644007,
		26.774189, 30.987835, 35.484478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.471869, 30.760706, 34.854561>,  <27.250641, 30.743357, 35.033672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.471869, 30.760706, 34.854561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.563913, 31.066902, 35.094917>,  <26.619141, 31.250620, 35.239132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.563913, 31.066902, 35.094917>,  <26.471869, 30.760706, 34.854561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.563913, 31.066902, 35.094917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235567, 0.642915, -0.728813,
		-0.944223, 0.026158, 0.328267,
		0.230112, 0.765491, 0.600893,
		26.632946, 31.296549, 35.275185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.022095, 31.170536, 34.782661>,  <26.471869, 30.760706, 34.854561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.022095, 31.170536, 34.782661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.303307, 31.425150, 34.909515>,  <26.472033, 31.577919, 34.985626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.303307, 31.425150, 34.909515>,  <26.022095, 31.170536, 34.782661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.303307, 31.425150, 34.909515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245629, 0.635832, -0.731699,
		-0.667396, 0.436508, 0.603360,
		0.703029, 0.636536, 0.317133,
		26.514215, 31.616110, 35.004654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.747131, 31.872643, 34.786320>,  <26.022095, 31.170536, 34.782661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.747131, 31.872643, 34.786320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.144699, 31.887730, 34.744942>,  <26.383240, 31.896782, 34.720116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.144699, 31.887730, 34.744942>,  <25.747131, 31.872643, 34.786320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.144699, 31.887730, 34.744942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098580, 0.723332, -0.683428,
		0.049045, 0.689470, 0.722652,
		0.993920, 0.037720, -0.103444,
		26.442875, 31.899046, 34.713909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.893538, 32.620087, 34.802860>,  <25.747131, 31.872643, 34.786320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.893538, 32.620087, 34.802860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.195187, 32.442875, 34.608944>,  <26.376177, 32.336548, 34.492592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.195187, 32.442875, 34.608944>,  <25.893538, 32.620087, 34.802860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.195187, 32.442875, 34.608944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071254, 0.789027, -0.610213,
		0.652856, 0.425632, 0.626591,
		0.754123, -0.443028, -0.484794,
		26.421423, 32.309967, 34.463505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.420029, 33.205757, 34.870132>,  <25.893538, 32.620087, 34.802860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.420029, 33.205757, 34.870132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.536598, 32.935993, 34.598770>,  <26.606541, 32.774136, 34.435951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.536598, 32.935993, 34.598770>,  <26.420029, 33.205757, 34.870132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.536598, 32.935993, 34.598770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241129, 0.738083, -0.630151,
		0.925704, 0.020059, 0.377717,
		0.291426, -0.674412, -0.678410,
		26.624025, 32.733669, 34.395248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.980328, 33.542595, 34.523800>,  <26.420029, 33.205757, 34.870132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.980328, 33.542595, 34.523800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.836283, 33.274849, 34.263870>,  <26.749855, 33.114201, 34.107914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.836283, 33.274849, 34.263870>,  <26.980328, 33.542595, 34.523800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.836283, 33.274849, 34.263870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017286, 0.701220, -0.712735,
		0.932748, -0.245433, -0.264091,
		-0.360114, -0.669367, -0.649819,
		26.728249, 33.074039, 34.068924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.705698, 33.297020, 34.433483>,  <26.980328, 33.542595, 34.523800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.705698, 33.297020, 34.433483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.996086, 33.029736, 34.498550>,  <28.170319, 32.869366, 34.537590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.996086, 33.029736, 34.498550>,  <27.705698, 33.297020, 34.433483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.996086, 33.029736, 34.498550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105157, -0.125887, -0.986455,
		0.679640, 0.733241, -0.021123,
		0.725969, -0.668213, 0.162664,
		28.213877, 32.829273, 34.547348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.356430, 33.684090, 33.906105>,  <27.705698, 33.297020, 34.433483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.356430, 33.684090, 33.906105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.041555, 33.476433, 33.772942>,  <26.852631, 33.351837, 33.693043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.041555, 33.476433, 33.772942>,  <27.356430, 33.684090, 33.906105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.041555, 33.476433, 33.772942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105514, 0.645217, -0.756678,
		0.607623, -0.560520, -0.562683,
		-0.787186, -0.519146, -0.332906,
		26.805399, 33.320690, 33.673069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579214, 33.727013, 33.163521>,  <27.356430, 33.684090, 33.906105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.579214, 33.727013, 33.163521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.191561, 33.632076, 33.190212>,  <26.958969, 33.575115, 33.206226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.191561, 33.632076, 33.190212>,  <27.579214, 33.727013, 33.163521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.191561, 33.632076, 33.190212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197291, 0.584276, -0.787209,
		0.147850, -0.776074, -0.613066,
		-0.969132, -0.237341, 0.066727,
		26.900822, 33.560875, 33.210232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.290295, 33.189167, 32.717987>,  <27.579214, 33.727013, 33.163521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.290295, 33.189167, 32.717987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.037727, 33.486053, 32.807812>,  <26.886187, 33.664185, 32.861706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.037727, 33.486053, 32.807812>,  <27.290295, 33.189167, 32.717987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.037727, 33.486053, 32.807812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002646, 0.291646, -0.956523,
		-0.775439, -0.603370, -0.186114,
		-0.631417, 0.742217, 0.224557,
		26.848303, 33.708717, 32.875179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.646324, 33.228592, 32.368034>,  <27.290295, 33.189167, 32.717987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.646324, 33.228592, 32.368034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.785744, 33.586365, 32.480110>,  <26.869394, 33.801029, 32.547356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.785744, 33.586365, 32.480110>,  <26.646324, 33.228592, 32.368034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.785744, 33.586365, 32.480110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120918, 0.253532, -0.959740,
		-0.929459, 0.368394, -0.019785,
		0.348547, 0.894431, 0.280193,
		26.890308, 33.854694, 32.564167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.898149, 33.000114, 31.669802>,  <26.646324, 33.228592, 32.368034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.898149, 33.000114, 31.669802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.803867, 33.204384, 31.339067>,  <26.747299, 33.326946, 31.140627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.803867, 33.204384, 31.339067>,  <26.898149, 33.000114, 31.669802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.803867, 33.204384, 31.339067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027420, 0.846973, 0.530929,
		0.971438, 0.147813, -0.185631,
		-0.235703, 0.510674, -0.826835,
		26.733156, 33.357586, 31.091017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.848879, 32.328285, 31.514309>,  <26.898149, 33.000114, 31.669802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.848879, 32.328285, 31.514309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.614840, 32.651558, 31.487455>,  <26.474417, 32.845520, 31.471344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.614840, 32.651558, 31.487455>,  <26.848879, 32.328285, 31.514309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.614840, 32.651558, 31.487455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448751, -0.253703, 0.856888,
		0.675488, 0.531488, 0.511113,
		-0.585097, 0.808180, -0.067132,
		26.439310, 32.894012, 31.467316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.576542, 32.180714, 31.539980>,  <26.848879, 32.328285, 31.514309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.576542, 32.180714, 31.539980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.871861, 31.917938, 31.478851>,  <28.049051, 31.760275, 31.442173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.871861, 31.917938, 31.478851>,  <27.576542, 32.180714, 31.539980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.871861, 31.917938, 31.478851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618964, -0.569895, -0.540466,
		0.267958, 0.493616, -0.827370,
		0.738297, -0.656934, -0.152823,
		28.093349, 31.720858, 31.433004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.765648, 31.932705, 30.819715>,  <27.576542, 32.180714, 31.539980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.765648, 31.932705, 30.819715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.856871, 31.638689, 31.075123>,  <27.911604, 31.462280, 31.228367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.856871, 31.638689, 31.075123>,  <27.765648, 31.932705, 30.819715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.856871, 31.638689, 31.075123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470055, -0.657432, -0.588924,
		0.852665, -0.165829, -0.495443,
		0.228059, -0.735040, 0.638518,
		27.925289, 31.418177, 31.266678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.071161, 31.253538, 30.431890>,  <27.765648, 31.932705, 30.819715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.071161, 31.253538, 30.431890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.926598, 31.176031, 30.796711>,  <27.839859, 31.129528, 31.015604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.926598, 31.176031, 30.796711>,  <28.071161, 31.253538, 30.431890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.926598, 31.176031, 30.796711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349659, -0.878619, -0.325217,
		0.864363, -0.436443, 0.249788,
		-0.361408, -0.193765, 0.912052,
		27.818174, 31.117901, 31.070326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274517, 30.614798, 30.561279>,  <28.071161, 31.253538, 30.431890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274517, 30.614798, 30.561279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.970053, 30.659262, 30.816866>,  <27.787374, 30.685940, 30.970219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.970053, 30.659262, 30.816866>,  <28.274517, 30.614798, 30.561279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.970053, 30.659262, 30.816866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308206, -0.928846, -0.205558,
		0.570653, -0.353396, 0.741260,
		-0.761160, 0.111159, 0.638967,
		27.741705, 30.692610, 31.008556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.286650, 30.052765, 30.976927>,  <28.274517, 30.614798, 30.561279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.286650, 30.052765, 30.976927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.908428, 30.182476, 30.988062>,  <27.681496, 30.260302, 30.994743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.908428, 30.182476, 30.988062>,  <28.286650, 30.052765, 30.976927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.908428, 30.182476, 30.988062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310550, -0.873301, -0.375372,
		-0.097412, -0.363580, 0.926456,
		-0.945552, 0.324277, 0.027840,
		27.624762, 30.279758, 30.996414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.908590, 29.473658, 31.175871>,  <28.286650, 30.052765, 30.976927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.908590, 29.473658, 31.175871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.656448, 29.727947, 30.997654>,  <27.505163, 29.880520, 30.890724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.656448, 29.727947, 30.997654>,  <27.908590, 29.473658, 31.175871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.656448, 29.727947, 30.997654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256830, -0.712387, -0.653103,
		-0.732591, -0.297259, 0.612330,
		-0.630356, 0.635722, -0.445543,
		27.467342, 29.918665, 30.863991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.168560, 29.190248, 31.219473>,  <27.908590, 29.473658, 31.175871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.168560, 29.190248, 31.219473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.144720, 29.410051, 30.886129>,  <27.130417, 29.541933, 30.686123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.144720, 29.410051, 30.886129>,  <27.168560, 29.190248, 31.219473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.144720, 29.410051, 30.886129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221935, -0.821242, -0.525648,
		-0.973238, 0.153624, 0.170899,
		-0.059598, 0.549509, -0.833359,
		27.126841, 29.574903, 30.636122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.529131, 29.049320, 30.730179>,  <27.168560, 29.190248, 31.219473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.529131, 29.049320, 30.730179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.828814, 29.174871, 30.496883>,  <27.008623, 29.250202, 30.356905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.828814, 29.174871, 30.496883>,  <26.529131, 29.049320, 30.730179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.828814, 29.174871, 30.496883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189259, -0.742414, -0.642653,
		-0.634719, 0.591864, -0.496818,
		0.749208, 0.313877, -0.583240,
		27.053576, 29.269035, 30.321911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.165749, 29.171240, 30.109846>,  <26.529131, 29.049320, 30.730179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.165749, 29.171240, 30.109846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.553831, 29.074350, 30.112003>,  <26.786680, 29.016216, 30.113298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.553831, 29.074350, 30.112003>,  <26.165749, 29.171240, 30.109846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.553831, 29.074350, 30.112003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205177, -0.833260, -0.513401,
		0.128852, 0.496998, -0.858132,
		0.970206, -0.242222, 0.005394,
		26.844893, 29.001684, 30.113621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.320732, 29.056715, 29.424910>,  <26.165749, 29.171240, 30.109846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.320732, 29.056715, 29.424910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.543201, 28.839964, 29.676952>,  <26.676683, 28.709913, 29.828178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.543201, 28.839964, 29.676952>,  <26.320732, 29.056715, 29.424910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.543201, 28.839964, 29.676952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279538, -0.835995, -0.472198,
		0.782641, 0.086486, -0.616436,
		0.556176, -0.541879, 0.630108,
		26.710054, 28.677401, 29.865984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.151983, 28.553026, 28.774464>,  <26.320732, 29.056715, 29.424910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.151983, 28.553026, 28.774464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.461981, 28.300917, 28.755966>,  <26.647980, 28.149651, 28.744867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.461981, 28.300917, 28.755966>,  <26.151983, 28.553026, 28.774464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.461981, 28.300917, 28.755966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412426, 0.448968, 0.792674,
		-0.478842, -0.633388, 0.607890,
		0.774994, -0.630275, -0.046241,
		26.694479, 28.111834, 28.742094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.316639, 28.082277, 29.414967>,  <26.151983, 28.553026, 28.774464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.316639, 28.082277, 29.414967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.625360, 28.207716, 29.193707>,  <26.810593, 28.282980, 29.060951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.625360, 28.207716, 29.193707>,  <26.316639, 28.082277, 29.414967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.625360, 28.207716, 29.193707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344107, 0.525541, 0.778073,
		0.534711, -0.790860, 0.297698,
		0.771800, 0.313604, -0.553153,
		26.856901, 28.301796, 29.027761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.919735, 27.931589, 29.894518>,  <26.316639, 28.082277, 29.414967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.919735, 27.931589, 29.894518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.977865, 28.232454, 29.637417>,  <27.012743, 28.412973, 29.483156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.977865, 28.232454, 29.637417>,  <26.919735, 27.931589, 29.894518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.977865, 28.232454, 29.637417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522028, 0.493569, 0.695612,
		0.840456, -0.436626, -0.320922,
		0.145325, 0.752162, -0.642754,
		27.021463, 28.458103, 29.444592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.685642, 28.033222, 29.909969>,  <26.919735, 27.931589, 29.894518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.685642, 28.033222, 29.909969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.456158, 28.352720, 29.837456>,  <27.318468, 28.544418, 29.793947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.456158, 28.352720, 29.837456>,  <27.685642, 28.033222, 29.909969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.456158, 28.352720, 29.837456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422379, 0.478150, 0.770044,
		0.701750, 0.365212, -0.611692,
		-0.573710, 0.798744, -0.181284,
		27.284044, 28.592344, 29.783072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.032124, 28.529196, 30.191254>,  <27.685642, 28.033222, 29.909969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.032124, 28.529196, 30.191254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.669044, 28.693411, 30.156523>,  <27.451197, 28.791941, 30.135683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.669044, 28.693411, 30.156523>,  <28.032124, 28.529196, 30.191254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.669044, 28.693411, 30.156523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243247, 0.683398, 0.688329,
		0.341924, 0.603676, -0.720183,
		-0.907699, 0.410539, -0.086828,
		27.396734, 28.816572, 30.130474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097458, 29.257141, 30.020426>,  <28.032124, 28.529196, 30.191254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.097458, 29.257141, 30.020426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.758505, 29.193447, 30.223043>,  <27.555132, 29.155231, 30.344614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.758505, 29.193447, 30.223043>,  <28.097458, 29.257141, 30.020426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.758505, 29.193447, 30.223043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239635, 0.736613, 0.632438,
		-0.473831, 0.657302, -0.586035,
		-0.847384, -0.159234, 0.506542,
		27.504290, 29.145678, 30.375006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.786226, 29.983273, 30.151243>,  <28.097458, 29.257141, 30.020426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.786226, 29.983273, 30.151243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.646135, 29.721649, 30.419437>,  <27.562080, 29.564676, 30.580355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.646135, 29.721649, 30.419437>,  <27.786226, 29.983273, 30.151243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.646135, 29.721649, 30.419437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203474, 0.645603, 0.736068,
		-0.914298, 0.394216, -0.093023,
		-0.350226, -0.654057, 0.670486,
		27.541067, 29.525433, 30.620583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.576328, 30.310482, 29.511532>,  <27.786226, 29.983273, 30.151243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.576328, 30.310482, 29.511532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773546, 30.648703, 29.593458>,  <27.891876, 30.851635, 29.642614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773546, 30.648703, 29.593458>,  <27.576328, 30.310482, 29.511532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773546, 30.648703, 29.593458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227990, -0.352764, 0.907512,
		0.839600, -0.400748, -0.366705,
		0.493044, 0.845552, 0.204814,
		27.921459, 30.902369, 29.654902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.095642, 29.653944, 29.542421>,  <27.576328, 30.310482, 29.511532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.095642, 29.653944, 29.542421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.946095, 29.545301, 29.897150>,  <26.856365, 29.480116, 30.109987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.946095, 29.545301, 29.897150>,  <27.095642, 29.653944, 29.542421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.946095, 29.545301, 29.897150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022872, 0.958570, 0.283937,
		-0.927199, 0.085872, -0.364592,
		-0.373870, -0.271605, 0.886821,
		26.833933, 29.463820, 30.163197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.826834, 30.367361, 29.704082>,  <27.095642, 29.653944, 29.542421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.826834, 30.367361, 29.704082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.898027, 30.142277, 30.026989>,  <26.940744, 30.007227, 30.220734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.898027, 30.142277, 30.026989>,  <26.826834, 30.367361, 29.704082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.898027, 30.142277, 30.026989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268094, 0.817061, 0.510428,
		-0.946809, 0.125574, 0.296284,
		0.177985, -0.562710, 0.807266,
		26.951424, 29.973463, 30.269169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.553444, 30.703100, 30.334833>,  <26.826834, 30.367361, 29.704082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.553444, 30.703100, 30.334833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.826462, 30.461874, 30.499973>,  <26.990273, 30.317139, 30.599058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.826462, 30.461874, 30.499973>,  <26.553444, 30.703100, 30.334833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.826462, 30.461874, 30.499973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187388, 0.690419, 0.698718,
		-0.706413, -0.399543, 0.584249,
		0.682544, -0.603064, 0.412851,
		27.031225, 30.280954, 30.623829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.422522, 30.737120, 31.059177>,  <26.553444, 30.703100, 30.334833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.422522, 30.737120, 31.059177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.799229, 30.605455, 31.031672>,  <27.025253, 30.526457, 31.015167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.799229, 30.605455, 31.031672>,  <26.422522, 30.737120, 31.059177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.799229, 30.605455, 31.031672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280927, 0.657754, 0.698885,
		-0.184815, -0.677504, 0.711921,
		0.941766, -0.329162, -0.068766,
		27.081758, 30.506706, 31.011042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.747789, 30.625631, 31.804146>,  <26.422522, 30.737120, 31.059177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.747789, 30.625631, 31.804146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.046749, 30.682356, 31.544521>,  <27.226126, 30.716391, 31.388746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.046749, 30.682356, 31.544521>,  <26.747789, 30.625631, 31.804146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.046749, 30.682356, 31.544521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489293, 0.543386, 0.682147,
		0.449429, -0.827418, 0.336738,
		0.747399, 0.141813, -0.649063,
		27.270969, 30.724899, 31.349802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.427443, 30.562836, 32.176159>,  <26.747789, 30.625631, 31.804146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.427443, 30.562836, 32.176159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502846, 30.770233, 31.842541>,  <27.548088, 30.894672, 31.642370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502846, 30.770233, 31.842541>,  <27.427443, 30.562836, 32.176159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.502846, 30.770233, 31.842541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520502, 0.667429, 0.532558,
		0.832792, -0.534513, -0.144060,
		0.188509, 0.518493, -0.834044,
		27.559399, 30.925781, 31.592327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.177742, 30.713120, 31.947033>,  <27.427443, 30.562836, 32.176159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.177742, 30.713120, 31.947033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.909883, 31.003996, 31.886679>,  <27.749168, 31.178522, 31.850466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.909883, 31.003996, 31.886679>,  <28.177742, 30.713120, 31.947033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.909883, 31.003996, 31.886679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585394, 0.641846, 0.495326,
		0.457044, 0.243364, -0.855503,
		-0.669645, 0.727192, -0.150887,
		27.708990, 31.222153, 31.841412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.542566, 31.211227, 31.589954>,  <28.177742, 30.713120, 31.947033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.542566, 31.211227, 31.589954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251091, 31.352985, 31.824362>,  <28.076206, 31.438040, 31.965006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251091, 31.352985, 31.824362>,  <28.542566, 31.211227, 31.589954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.251091, 31.352985, 31.824362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666326, 0.564526, 0.487154,
		-0.158177, 0.745463, -0.647507,
		-0.728690, 0.354394, 0.586016,
		28.032484, 31.459303, 32.000168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.519814, 32.061367, 31.646944>,  <28.542566, 31.211227, 31.589954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.519814, 32.061367, 31.646944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.340717, 31.925713, 31.977886>,  <28.233259, 31.844320, 32.176453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.340717, 31.925713, 31.977886>,  <28.519814, 32.061367, 31.646944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.340717, 31.925713, 31.977886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669382, 0.486341, 0.561605,
		-0.592836, 0.805270, 0.009255,
		-0.447743, -0.339135, 0.827354,
		28.206394, 31.823973, 32.226093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.154615, 32.609871, 32.016850>,  <28.519814, 32.061367, 31.646944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.154615, 32.609871, 32.016850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.366056, 32.343983, 32.228031>,  <28.492920, 32.184452, 32.354740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.366056, 32.343983, 32.228031>,  <28.154615, 32.609871, 32.016850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.366056, 32.343983, 32.228031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392484, 0.742856, 0.542329,
		-0.752687, -0.079464, 0.653566,
		0.528601, -0.664718, 0.527950,
		28.524637, 32.144566, 32.386417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.917231, 32.563698, 32.740997>,  <28.154615, 32.609871, 32.016850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.917231, 32.563698, 32.740997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.308985, 32.491440, 32.704834>,  <28.544037, 32.448086, 32.683136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.308985, 32.491440, 32.704834>,  <27.917231, 32.563698, 32.740997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.308985, 32.491440, 32.704834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199931, 0.802769, 0.561774,
		-0.028905, -0.568268, 0.822336,
		0.979383, -0.180649, -0.090411,
		28.602800, 32.437244, 32.677711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.172785, 32.706299, 33.402634>,  <27.917231, 32.563698, 32.740997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.172785, 32.706299, 33.402634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.475037, 32.767361, 33.147850>,  <28.656387, 32.803997, 32.994980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.475037, 32.767361, 33.147850>,  <28.172785, 32.706299, 33.402634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.475037, 32.767361, 33.147850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263472, 0.819479, 0.508956,
		0.599672, -0.552404, 0.579002,
		0.755630, 0.152656, -0.636961,
		28.701725, 32.813156, 32.956760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800116, 32.613262, 33.684078>,  <28.172785, 32.706299, 33.402634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.800116, 32.613262, 33.684078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.789158, 32.891632, 33.397041>,  <28.782583, 33.058655, 33.224819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.789158, 32.891632, 33.397041>,  <28.800116, 32.613262, 33.684078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.789158, 32.891632, 33.397041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196519, 0.707604, 0.678732,
		0.980117, -0.122426, -0.156148,
		-0.027396, 0.695923, -0.717593,
		28.780939, 33.100410, 33.181763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.450077, 33.057159, 33.661381>,  <28.800116, 32.613262, 33.684078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.450077, 33.057159, 33.661381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.114105, 33.256168, 33.574673>,  <28.912523, 33.375576, 33.522648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.114105, 33.256168, 33.574673>,  <29.450077, 33.057159, 33.661381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.114105, 33.256168, 33.574673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165269, 0.614952, 0.771051,
		0.516920, 0.611803, -0.598741,
		-0.839928, 0.497526, -0.216769,
		28.862127, 33.405426, 33.509644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.657129, 33.653511, 33.278522>,  <29.450077, 33.057159, 33.661381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.657129, 33.653511, 33.278522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.328238, 33.647793, 33.506115>,  <29.130903, 33.644360, 33.642670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.328238, 33.647793, 33.506115>,  <29.657129, 33.653511, 33.278522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.328238, 33.647793, 33.506115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377738, 0.734074, 0.564313,
		-0.425742, 0.678919, -0.598175,
		-0.822227, -0.014298, 0.568980,
		29.081570, 33.643505, 33.676807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.541109, 34.312603, 33.263859>,  <29.657129, 33.653511, 33.278522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.541109, 34.312603, 33.263859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.393009, 34.134365, 33.589893>,  <29.304150, 34.027424, 33.785515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.393009, 34.134365, 33.589893>,  <29.541109, 34.312603, 33.263859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.393009, 34.134365, 33.589893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320273, 0.762407, 0.562282,
		-0.871974, 0.469234, -0.139571,
		-0.370252, -0.445595, 0.815082,
		29.281933, 34.000687, 33.834419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155998, 34.296051, 33.736965>,  <29.541109, 34.312603, 33.263859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.155998, 34.296051, 33.736965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311146, 34.627308, 33.898823>,  <30.404234, 34.826061, 33.995937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311146, 34.627308, 33.898823>,  <30.155998, 34.296051, 33.736965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311146, 34.627308, 33.898823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757121, -0.035888, -0.652288,
		-0.525666, 0.559368, -0.640924,
		0.387870, 0.828142, 0.404644,
		30.427507, 34.875751, 34.020218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.348923, 34.800209, 33.186512>,  <30.155998, 34.296051, 33.736965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.348923, 34.800209, 33.186512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.587112, 34.769035, 33.506348>,  <30.730026, 34.750332, 33.698250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.587112, 34.769035, 33.506348>,  <30.348923, 34.800209, 33.186512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.587112, 34.769035, 33.506348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766833, -0.241620, -0.594632,
		0.239538, 0.967236, -0.084116,
		0.595474, -0.077934, 0.799586,
		30.765755, 34.745655, 33.746223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010283, 35.035789, 32.964912>,  <30.348923, 34.800209, 33.186512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010283, 35.035789, 32.964912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.071854, 34.803284, 33.284519>,  <31.108797, 34.663780, 33.476284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.071854, 34.803284, 33.284519>,  <31.010283, 35.035789, 32.964912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.071854, 34.803284, 33.284519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705863, -0.501179, -0.500577,
		0.691422, 0.641051, 0.333151,
		0.153927, -0.581268, 0.799020,
		31.118032, 34.628902, 33.524227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723772, 35.025070, 33.066154>,  <31.010283, 35.035789, 32.964912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723772, 35.025070, 33.066154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548040, 34.698586, 33.216244>,  <31.442600, 34.502697, 33.306297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548040, 34.698586, 33.216244>,  <31.723772, 35.025070, 33.066154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548040, 34.698586, 33.216244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590315, -0.577156, -0.564287,
		0.677139, -0.026408, 0.735382,
		-0.439331, -0.816207, 0.375225,
		31.416241, 34.453724, 33.328812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309742, 34.573246, 33.202030>,  <31.723772, 35.025070, 33.066154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309742, 34.573246, 33.202030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976105, 34.353333, 33.184013>,  <31.775923, 34.221386, 33.173203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976105, 34.353333, 33.184013>,  <32.309742, 34.573246, 33.202030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.976105, 34.353333, 33.184013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437400, -0.609412, -0.661285,
		0.336114, -0.571275, 0.748781,
		-0.834092, -0.549784, -0.045044,
		31.725878, 34.188396, 33.170502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287445, 33.855484, 33.476070>,  <32.309742, 34.573246, 33.202030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287445, 33.855484, 33.476070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028286, 33.879757, 33.172348>,  <31.872791, 33.894321, 32.990116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028286, 33.879757, 33.172348>,  <32.287445, 33.855484, 33.476070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028286, 33.879757, 33.172348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546468, -0.657416, -0.518823,
		-0.530660, -0.751081, 0.392781,
		-0.647899, 0.060677, -0.759306,
		31.833916, 33.897961, 32.944557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973866, 33.174911, 33.275455>,  <32.287445, 33.855484, 33.476070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973866, 33.174911, 33.275455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983212, 33.428196, 32.966003>,  <31.988819, 33.580166, 32.780334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983212, 33.428196, 32.966003>,  <31.973866, 33.174911, 33.275455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983212, 33.428196, 32.966003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432912, -0.703930, -0.563089,
		-0.901133, -0.321756, -0.290572,
		0.023365, 0.633210, -0.773627,
		31.990221, 33.618160, 32.733913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639786, 32.871548, 32.667301>,  <31.973866, 33.174911, 33.275455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639786, 32.871548, 32.667301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868509, 33.162529, 32.515598>,  <32.005745, 33.337120, 32.424576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868509, 33.162529, 32.515598>,  <31.639786, 32.871548, 32.667301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868509, 33.162529, 32.515598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446988, -0.663910, -0.599521,
		-0.687920, 0.173288, -0.704796,
		0.571811, 0.727457, -0.379260,
		32.040054, 33.380768, 32.401821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674095, 32.844482, 31.907436>,  <31.639786, 32.871548, 32.667301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674095, 32.844482, 31.907436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976984, 33.089287, 31.998705>,  <32.158718, 33.236168, 32.053467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976984, 33.089287, 31.998705>,  <31.674095, 32.844482, 31.907436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.976984, 33.089287, 31.998705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569913, -0.448424, -0.688561,
		-0.319088, 0.651430, -0.688347,
		0.757220, 0.612009, 0.228172,
		32.204151, 33.272888, 32.067158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.808781, 33.152885, 31.306324>,  <31.674095, 32.844482, 31.907436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.808781, 33.152885, 31.306324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134865, 33.198982, 31.533358>,  <32.330513, 33.226639, 31.669579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134865, 33.198982, 31.533358>,  <31.808781, 33.152885, 31.306324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134865, 33.198982, 31.533358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570869, -0.325188, -0.753897,
		0.097691, 0.938601, -0.330885,
		0.815208, 0.115243, 0.567586,
		32.379429, 33.233555, 31.703634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254272, 33.541012, 30.912554>,  <31.808781, 33.152885, 31.306324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254272, 33.541012, 30.912554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494774, 33.346348, 31.166059>,  <32.639076, 33.229549, 31.318163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494774, 33.346348, 31.166059>,  <32.254272, 33.541012, 30.912554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494774, 33.346348, 31.166059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627886, -0.202811, -0.751417,
		0.494217, 0.849724, 0.183625,
		0.601256, -0.486658, 0.633762,
		32.675152, 33.200352, 31.356188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853786, 33.797459, 30.731256>,  <32.254272, 33.541012, 30.912554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853786, 33.797459, 30.731256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955627, 33.458706, 30.918007>,  <33.016731, 33.255455, 31.030058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955627, 33.458706, 30.918007>,  <32.853786, 33.797459, 30.731256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955627, 33.458706, 30.918007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752459, -0.129768, -0.645729,
		0.607440, 0.515709, 0.604203,
		0.254602, -0.846879, 0.466876,
		33.032009, 33.204643, 31.058069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594311, 33.768738, 30.759787>,  <32.853786, 33.797459, 30.731256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594311, 33.768738, 30.759787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487370, 33.390137, 30.832077>,  <33.423206, 33.162975, 30.875450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487370, 33.390137, 30.832077>,  <33.594311, 33.768738, 30.759787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487370, 33.390137, 30.832077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726797, -0.321218, -0.607113,
		0.632684, -0.030964, 0.773791,
		-0.267354, -0.946499, 0.180724,
		33.407162, 33.106186, 30.886293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189487, 33.375648, 30.992601>,  <33.594311, 33.768738, 30.759787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189487, 33.375648, 30.992601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933777, 33.099720, 30.856678>,  <33.780350, 32.934162, 30.775124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933777, 33.099720, 30.856678>,  <34.189487, 33.375648, 30.992601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933777, 33.099720, 30.856678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693437, -0.326130, -0.642483,
		0.332379, -0.646359, 0.686837,
		-0.639272, -0.689826, -0.339810,
		33.741997, 32.892773, 30.754734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604156, 32.784264, 31.042654>,  <34.189487, 33.375648, 30.992601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604156, 32.784264, 31.042654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314602, 32.741699, 30.769991>,  <34.140869, 32.716160, 30.606392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314602, 32.741699, 30.769991>,  <34.604156, 32.784264, 31.042654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314602, 32.741699, 30.769991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677141, -0.298844, -0.672438,
		-0.132153, -0.948350, 0.288387,
		-0.723889, -0.106414, -0.681660,
		34.097435, 32.709774, 30.565493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748131, 32.171665, 30.767036>,  <34.604156, 32.784264, 31.042654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748131, 32.171665, 30.767036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531990, 32.371281, 30.496046>,  <34.402306, 32.491051, 30.333452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531990, 32.371281, 30.496046>,  <34.748131, 32.171665, 30.767036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531990, 32.371281, 30.496046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524698, -0.429594, -0.734943,
		-0.657807, -0.752600, -0.029713,
		-0.540354, 0.499041, -0.677478,
		34.369884, 32.520992, 30.292803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811371, 31.746986, 30.140265>,  <34.748131, 32.171665, 30.767036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811371, 31.746986, 30.140265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667763, 32.070099, 29.953247>,  <34.581596, 32.263966, 29.841036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667763, 32.070099, 29.953247>,  <34.811371, 31.746986, 30.140265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667763, 32.070099, 29.953247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472557, -0.274664, -0.837406,
		-0.804857, -0.521586, -0.283113,
		-0.359019, 0.807780, -0.467544,
		34.560059, 32.312431, 29.812984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632042, 31.500542, 29.485615>,  <34.811371, 31.746986, 30.140265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632042, 31.500542, 29.485615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673603, 31.896284, 29.444860>,  <34.698540, 32.133728, 29.420408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673603, 31.896284, 29.444860>,  <34.632042, 31.500542, 29.485615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673603, 31.896284, 29.444860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491355, -0.140128, -0.859613,
		-0.864739, 0.039257, -0.500685,
		0.103906, 0.989355, -0.101885,
		34.704773, 32.193092, 29.414295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514313, 31.579487, 28.823977>,  <34.632042, 31.500542, 29.485615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514313, 31.579487, 28.823977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702831, 31.923557, 28.901928>,  <34.815941, 32.130001, 28.948700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702831, 31.923557, 28.901928>,  <34.514313, 31.579487, 28.823977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702831, 31.923557, 28.901928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512392, -0.087188, -0.854314,
		-0.717871, 0.502487, -0.481839,
		0.471292, 0.860178, 0.194881,
		34.844219, 32.181610, 28.960392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400703, 31.967710, 28.250938>,  <34.514313, 31.579487, 28.823977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400703, 31.967710, 28.250938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735115, 32.108681, 28.419155>,  <34.935760, 32.193264, 28.520086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735115, 32.108681, 28.419155>,  <34.400703, 31.967710, 28.250938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735115, 32.108681, 28.419155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435189, 0.040890, -0.899410,
		-0.334169, 0.934947, -0.119186,
		0.836027, 0.352424, 0.420543,
		34.985924, 32.214409, 28.545319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633671, 32.491257, 27.832056>,  <34.400703, 31.967710, 28.250938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633671, 32.491257, 27.832056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978493, 32.414585, 28.019724>,  <35.185387, 32.368584, 28.132324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978493, 32.414585, 28.019724>,  <34.633671, 32.491257, 27.832056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978493, 32.414585, 28.019724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504611, 0.238389, -0.829782,
		0.047203, 0.952067, 0.302226,
		0.862055, -0.191675, 0.469171,
		35.237110, 32.357082, 28.160475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130810, 32.966553, 27.682302>,  <34.633671, 32.491257, 27.832056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130810, 32.966553, 27.682302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367359, 32.668354, 27.805279>,  <35.509289, 32.489437, 27.879065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367359, 32.668354, 27.805279>,  <35.130810, 32.966553, 27.682302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367359, 32.668354, 27.805279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440479, -0.020721, -0.897524,
		0.675469, 0.666190, 0.316121,
		0.591371, -0.745495, 0.307439,
		35.544769, 32.444706, 27.897511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775833, 33.136570, 27.487181>,  <35.130810, 32.966553, 27.682302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775833, 33.136570, 27.487181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.811790, 32.741577, 27.539021>,  <35.833363, 32.504581, 27.570124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.811790, 32.741577, 27.539021>,  <35.775833, 33.136570, 27.487181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811790, 32.741577, 27.539021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642924, -0.041846, -0.764786,
		0.760637, 0.152068, 0.631115,
		0.089890, -0.987484, 0.129598,
		35.838757, 32.445332, 27.577900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493832, 32.958965, 27.537630>,  <35.775833, 33.136570, 27.487181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493832, 32.958965, 27.537630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323433, 32.615246, 27.424397>,  <36.221195, 32.409016, 27.356457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323433, 32.615246, 27.424397>,  <36.493832, 32.958965, 27.537630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323433, 32.615246, 27.424397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578225, -0.017939, -0.815680,
		0.695833, -0.511163, 0.504509,
		-0.425996, -0.859297, -0.283085,
		36.195633, 32.357456, 27.339472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078323, 32.669956, 27.182903>,  <36.493832, 32.958965, 27.537630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078323, 32.669956, 27.182903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764687, 32.431393, 27.114199>,  <36.576504, 32.288254, 27.072975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764687, 32.431393, 27.114199>,  <37.078323, 32.669956, 27.182903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764687, 32.431393, 27.114199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403689, -0.279870, -0.871038,
		0.471425, -0.752308, 0.460207,
		-0.784088, -0.596410, -0.171761,
		36.529461, 32.252468, 27.062670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361736, 31.957193, 26.941662>,  <37.078323, 32.669956, 27.182903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361736, 31.957193, 26.941662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995533, 32.036915, 26.801882>,  <36.775810, 32.084747, 26.718014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995533, 32.036915, 26.801882>,  <37.361736, 31.957193, 26.941662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995533, 32.036915, 26.801882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292210, -0.267570, -0.918161,
		-0.276510, -0.942697, 0.186719,
		-0.915508, 0.199319, -0.349451,
		36.720879, 32.096706, 26.697046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230549, 31.312738, 26.542498>,  <37.361736, 31.957193, 26.941662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230549, 31.312738, 26.542498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987957, 31.613987, 26.440519>,  <36.842403, 31.794735, 26.379332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987957, 31.613987, 26.440519>,  <37.230549, 31.312738, 26.542498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987957, 31.613987, 26.440519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257769, -0.117091, -0.959085,
		-0.752158, -0.647380, -0.123119,
		-0.606476, 0.753120, -0.254945,
		36.806015, 31.839924, 26.364037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994904, 31.011135, 25.955719>,  <37.230549, 31.312738, 26.542498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994904, 31.011135, 25.955719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898273, 31.397629, 25.919853>,  <36.840298, 31.629524, 25.898335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898273, 31.397629, 25.919853>,  <36.994904, 31.011135, 25.955719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898273, 31.397629, 25.919853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254715, -0.026022, -0.966666,
		-0.936357, -0.256357, -0.239828,
		-0.241571, 0.966232, -0.089664,
		36.825802, 31.687498, 25.892954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478546, 31.085835, 25.446545>,  <36.994904, 31.011135, 25.955719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478546, 31.085835, 25.446545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660210, 31.441317, 25.471680>,  <36.769207, 31.654606, 25.486761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660210, 31.441317, 25.471680>,  <36.478546, 31.085835, 25.446545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660210, 31.441317, 25.471680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095151, 0.021747, -0.995225,
		-0.885826, 0.457968, -0.074684,
		0.454157, 0.888703, 0.062840,
		36.796455, 31.707928, 25.490532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088600, 31.545218, 24.859737>,  <36.478546, 31.085835, 25.446545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088600, 31.545218, 24.859737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.434155, 31.716963, 24.965071>,  <36.641487, 31.820009, 25.028271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.434155, 31.716963, 24.965071>,  <36.088600, 31.545218, 24.859737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434155, 31.716963, 24.965071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237429, 0.113946, -0.964699,
		-0.444211, 0.895915, -0.003507,
		0.863889, 0.429362, 0.263332,
		36.693321, 31.845772, 25.044071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132614, 31.965145, 24.315483>,  <36.088600, 31.545218, 24.859737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132614, 31.965145, 24.315483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505188, 31.970795, 24.460941>,  <36.728733, 31.974184, 24.548216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505188, 31.970795, 24.460941>,  <36.132614, 31.965145, 24.315483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505188, 31.970795, 24.460941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360087, 0.108848, -0.926547,
		-0.052670, 0.993958, 0.096298,
		0.931431, 0.014126, 0.363645,
		36.784618, 31.975033, 24.570034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465038, 32.562843, 24.059576>,  <36.132614, 31.965145, 24.315483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465038, 32.562843, 24.059576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758297, 32.306313, 24.150082>,  <36.934254, 32.152393, 24.204386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758297, 32.306313, 24.150082>,  <36.465038, 32.562843, 24.059576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758297, 32.306313, 24.150082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460374, 0.223149, -0.859221,
		0.500551, 0.734100, 0.458852,
		0.733147, -0.641327, 0.226263,
		36.978241, 32.113914, 24.217960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092667, 32.979965, 24.023767>,  <36.465038, 32.562843, 24.059576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092667, 32.979965, 24.023767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162560, 32.588375, 23.981688>,  <37.204494, 32.353420, 23.956440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162560, 32.588375, 23.981688>,  <37.092667, 32.979965, 24.023767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162560, 32.588375, 23.981688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440184, 0.173239, -0.881037,
		0.880742, 0.107640, 0.461201,
		0.174733, -0.978980, -0.105198,
		37.214981, 32.294682, 23.950129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720737, 32.989254, 23.773571>,  <37.092667, 32.979965, 24.023767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720737, 32.989254, 23.773571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608482, 32.611130, 23.707079>,  <37.541130, 32.384254, 23.667183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608482, 32.611130, 23.707079>,  <37.720737, 32.989254, 23.773571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608482, 32.611130, 23.707079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584700, -0.031031, -0.810656,
		0.761162, -0.324696, 0.561431,
		-0.280639, -0.945309, -0.166230,
		37.524292, 32.327538, 23.657209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409428, 32.623711, 23.638617>,  <37.720737, 32.989254, 23.773571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409428, 32.623711, 23.638617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095848, 32.423256, 23.492033>,  <37.907700, 32.302982, 23.404083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095848, 32.423256, 23.492033>,  <38.409428, 32.623711, 23.638617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095848, 32.423256, 23.492033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480337, -0.115633, -0.869428,
		0.393324, -0.857610, 0.331363,
		-0.783947, -0.501132, -0.366460,
		37.860664, 32.272915, 23.382095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621555, 32.012566, 23.269812>,  <38.409428, 32.623711, 23.638617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621555, 32.012566, 23.269812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270168, 32.083843, 23.092478>,  <38.059338, 32.126610, 22.986078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270168, 32.083843, 23.092478>,  <38.621555, 32.012566, 23.269812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270168, 32.083843, 23.092478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406937, -0.207230, -0.889639,
		-0.250398, -0.961927, 0.109532,
		-0.878466, 0.178191, -0.443334,
		38.006630, 32.137299, 22.959478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645638, 31.531960, 22.740154>,  <38.621555, 32.012566, 23.269812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645638, 31.531960, 22.740154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354053, 31.791313, 22.652319>,  <38.179104, 31.946924, 22.599617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354053, 31.791313, 22.652319>,  <38.645638, 31.531960, 22.740154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354053, 31.791313, 22.652319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262574, -0.031411, -0.964401,
		-0.632197, -0.760667, -0.147350,
		-0.728959, 0.648382, -0.219589,
		38.135365, 31.985828, 22.586443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160397, 31.254213, 22.317968>,  <38.645638, 31.531960, 22.740154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160397, 31.254213, 22.317968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172665, 31.650265, 22.263262>,  <38.180027, 31.887896, 22.230438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172665, 31.650265, 22.263262>,  <38.160397, 31.254213, 22.317968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172665, 31.650265, 22.263262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347232, -0.138863, -0.927441,
		-0.937278, -0.019045, -0.348064,
		0.030670, 0.990129, -0.136766,
		38.181866, 31.947304, 22.222233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145920, 31.354546, 21.559290>,  <38.160397, 31.254213, 22.317968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145920, 31.354546, 21.559290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160164, 31.740709, 21.662611>,  <38.168709, 31.972406, 21.724604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160164, 31.740709, 21.662611>,  <38.145920, 31.354546, 21.559290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160164, 31.740709, 21.662611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397889, 0.223400, -0.889818,
		-0.916743, 0.134459, -0.376170,
		0.035608, 0.965408, 0.258300,
		38.170845, 32.030331, 21.740101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739456, 31.768194, 21.039928>,  <38.145920, 31.354546, 21.559290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739456, 31.768194, 21.039928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.006794, 32.013973, 21.207630>,  <38.167194, 32.161442, 21.308250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.006794, 32.013973, 21.207630>,  <37.739456, 31.768194, 21.039928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006794, 32.013973, 21.207630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418750, 0.155042, -0.894768,
		-0.614790, 0.773574, -0.153678,
		0.668343, 0.614447, 0.419253,
		38.207298, 32.198307, 21.333406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771721, 32.380283, 20.567402>,  <37.739456, 31.768194, 21.039928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771721, 32.380283, 20.567402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111195, 32.378185, 20.778954>,  <38.314877, 32.376926, 20.905884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111195, 32.378185, 20.778954>,  <37.771721, 32.380283, 20.567402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111195, 32.378185, 20.778954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508969, 0.280043, -0.813957,
		-0.143840, 0.959973, 0.240337,
		0.848682, -0.005245, 0.528878,
		38.365799, 32.376614, 20.937616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031368, 32.985718, 20.385614>,  <37.771721, 32.380283, 20.567402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031368, 32.985718, 20.385614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322502, 32.747063, 20.520830>,  <38.497185, 32.603870, 20.601959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322502, 32.747063, 20.520830>,  <38.031368, 32.985718, 20.385614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322502, 32.747063, 20.520830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522543, 0.163326, -0.836823,
		0.444073, 0.785712, 0.430646,
		0.727838, -0.596642, 0.338040,
		38.540852, 32.568069, 20.622242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659634, 33.434006, 20.324968>,  <38.031368, 32.985718, 20.385614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659634, 33.434006, 20.324968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754372, 33.045395, 20.327673>,  <38.811214, 32.812229, 20.329296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754372, 33.045395, 20.327673>,  <38.659634, 33.434006, 20.324968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754372, 33.045395, 20.327673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378040, 0.085746, -0.921810,
		0.894980, 0.220885, 0.387583,
		0.236847, -0.971523, 0.006762,
		38.825424, 32.753937, 20.329702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269268, 33.473495, 20.133562>,  <38.659634, 33.434006, 20.324968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269268, 33.473495, 20.133562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176949, 33.094418, 20.045372>,  <39.121555, 32.866970, 19.992458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176949, 33.094418, 20.045372>,  <39.269268, 33.473495, 20.133562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176949, 33.094418, 20.045372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445631, 0.098475, -0.889784,
		0.864954, -0.303611, 0.399594,
		-0.230798, -0.947694, -0.220475,
		39.107708, 32.810108, 19.979229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854992, 33.300167, 19.761423>,  <39.269268, 33.473495, 20.133562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854992, 33.300167, 19.761423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583885, 33.017654, 19.679646>,  <39.421223, 32.848148, 19.630579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583885, 33.017654, 19.679646>,  <39.854992, 33.300167, 19.761423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583885, 33.017654, 19.679646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289622, -0.000872, -0.957141,
		0.675833, -0.707930, 0.205146,
		-0.677767, -0.706282, -0.204443,
		39.380554, 32.805771, 19.618313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189545, 32.731937, 19.484818>,  <39.854992, 33.300167, 19.761423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189545, 32.731937, 19.484818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.814583, 32.727104, 19.345602>,  <39.589607, 32.724205, 19.262074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.814583, 32.727104, 19.345602>,  <40.189545, 32.731937, 19.484818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814583, 32.727104, 19.345602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346888, -0.120659, -0.930113,
		-0.030751, -0.992620, 0.117299,
		-0.937402, -0.012087, -0.348038,
		39.533363, 32.723476, 19.241190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223755, 32.298286, 18.953615>,  <40.189545, 32.731937, 19.484818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.223755, 32.298286, 18.953615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874195, 32.480091, 18.884665>,  <39.664459, 32.589172, 18.843294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874195, 32.480091, 18.884665>,  <40.223755, 32.298286, 18.953615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874195, 32.480091, 18.884665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109050, -0.162265, -0.980703,
		-0.473711, -0.875837, 0.092239,
		-0.873903, 0.454511, -0.172377,
		39.612022, 32.616444, 18.832951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942123, 31.889000, 18.353567>,  <40.223755, 32.298286, 18.953615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942123, 31.889000, 18.353567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.743736, 32.235950, 18.337202>,  <39.624702, 32.444118, 18.327383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.743736, 32.235950, 18.337202>,  <39.942123, 31.889000, 18.353567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743736, 32.235950, 18.337202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093565, -0.100222, -0.990556,
		-0.863283, -0.487459, 0.130863,
		-0.495971, 0.867375, -0.040911,
		39.594944, 32.496162, 18.324928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297760, 31.793398, 17.928833>,  <39.942123, 31.889000, 18.353567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297760, 31.793398, 17.928833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375484, 32.185764, 17.926159>,  <39.422119, 32.421185, 17.924555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375484, 32.185764, 17.926159>,  <39.297760, 31.793398, 17.928833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375484, 32.185764, 17.926159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188015, 0.030555, -0.981691,
		-0.962754, 0.192006, 0.190364,
		0.194307, 0.980918, -0.006683,
		39.433777, 32.480042, 17.924154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450890, 31.648857, 17.888870>,  <39.297760, 31.793398, 17.928833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450890, 31.648857, 17.888870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.281822, 31.738136, 17.537521>,  <38.180382, 31.791704, 17.326712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.281822, 31.738136, 17.537521>,  <38.450890, 31.648857, 17.888870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281822, 31.738136, 17.537521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176830, 0.930261, 0.321473,
		0.888866, 0.291199, -0.353723,
		-0.422668, 0.223198, -0.878371,
		38.155022, 31.805096, 17.274010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607735, 32.430470, 17.786905>,  <38.450890, 31.648857, 17.888870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607735, 32.430470, 17.786905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285076, 32.368057, 17.558880>,  <38.091480, 32.330608, 17.422064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285076, 32.368057, 17.558880>,  <38.607735, 32.430470, 17.786905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285076, 32.368057, 17.558880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411279, 0.840881, 0.351808,
		0.424462, 0.518240, -0.742469,
		-0.806649, -0.156033, -0.570063,
		38.043083, 32.321247, 17.387861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385864, 33.032536, 17.560829>,  <38.607735, 32.430470, 17.786905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385864, 33.032536, 17.560829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040768, 32.830524, 17.550869>,  <37.833710, 32.709320, 17.544893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040768, 32.830524, 17.550869>,  <38.385864, 33.032536, 17.560829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040768, 32.830524, 17.550869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500437, 0.845788, 0.184949,
		-0.072345, 0.172025, -0.982433,
		-0.862745, -0.505026, -0.024899,
		37.781944, 32.679016, 17.543400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416008, 33.726715, 17.261463>,  <38.385864, 33.032536, 17.560829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416008, 33.726715, 17.261463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391525, 34.062469, 17.045431>,  <38.376835, 34.263920, 16.915812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391525, 34.062469, 17.045431>,  <38.416008, 33.726715, 17.261463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391525, 34.062469, 17.045431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095111, -0.533729, -0.840290,
		-0.993583, -0.102803, -0.047165,
		-0.061211, 0.839383, -0.540082,
		38.373161, 34.314285, 16.883406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883724, 33.641682, 16.737328>,  <38.416008, 33.726715, 17.261463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883724, 33.641682, 16.737328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106045, 33.949589, 16.611761>,  <38.239437, 34.134335, 16.536421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106045, 33.949589, 16.611761>,  <37.883724, 33.641682, 16.737328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106045, 33.949589, 16.611761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138644, -0.458155, -0.877993,
		-0.819672, 0.444467, -0.361367,
		0.555801, 0.769768, -0.313915,
		38.272785, 34.180519, 16.517588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250511, 33.410408, 16.090925>,  <37.883724, 33.641682, 16.737328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250511, 33.410408, 16.090925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512371, 33.510216, 15.805498>,  <38.669487, 33.570099, 15.634242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512371, 33.510216, 15.805498>,  <38.250511, 33.410408, 16.090925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512371, 33.510216, 15.805498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078966, 0.916216, 0.392827,
		0.751800, -0.313510, 0.580093,
		0.654646, 0.249520, -0.713567,
		38.708763, 33.585072, 15.591428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990330, 33.636688, 16.183647>,  <38.250511, 33.410408, 16.090925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990330, 33.636688, 16.183647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845646, 33.882881, 15.903550>,  <38.758835, 34.030598, 15.735492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845646, 33.882881, 15.903550>,  <38.990330, 33.636688, 16.183647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845646, 33.882881, 15.903550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087057, 0.725521, 0.682671,
		0.928216, 0.307893, -0.208849,
		-0.361714, 0.615484, -0.700244,
		38.737133, 34.067528, 15.693477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385696, 34.334377, 16.110889>,  <38.990330, 33.636688, 16.183647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385696, 34.334377, 16.110889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992764, 34.339825, 16.036222>,  <38.757004, 34.343094, 15.991423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992764, 34.339825, 16.036222>,  <39.385696, 34.334377, 16.110889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992764, 34.339825, 16.036222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149378, 0.543848, 0.825782,
		0.112763, 0.839073, -0.532204,
		-0.982329, 0.013618, -0.186666,
		38.698063, 34.343910, 15.980223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096241, 35.072300, 16.146236>,  <39.385696, 34.334377, 16.110889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096241, 35.072300, 16.146236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807858, 34.814388, 16.247807>,  <38.634827, 34.659641, 16.308748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807858, 34.814388, 16.247807>,  <39.096241, 35.072300, 16.146236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807858, 34.814388, 16.247807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175653, 0.524495, 0.833098,
		-0.670347, 0.556026, -0.491397,
		-0.720959, -0.644780, 0.253925,
		38.591572, 34.620953, 16.323984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546837, 35.456604, 16.355057>,  <39.096241, 35.072300, 16.146236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546837, 35.456604, 16.355057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456039, 35.099434, 16.510572>,  <38.401562, 34.885132, 16.603882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456039, 35.099434, 16.510572>,  <38.546837, 35.456604, 16.355057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456039, 35.099434, 16.510572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231219, 0.437205, 0.869131,
		-0.946051, 0.107390, -0.305704,
		-0.226991, -0.892927, 0.388788,
		38.387943, 34.831554, 16.627209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748585, 35.468262, 16.577950>,  <38.546837, 35.456604, 16.355057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748585, 35.468262, 16.577950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964931, 35.190586, 16.767929>,  <38.094738, 35.023983, 16.881916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964931, 35.190586, 16.767929>,  <37.748585, 35.468262, 16.577950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964931, 35.190586, 16.767929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268955, 0.392283, 0.879646,
		-0.796950, -0.603508, 0.025468,
		0.540864, -0.694185, 0.474947,
		38.127190, 34.982330, 16.910414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268242, 35.201187, 17.031179>,  <37.748585, 35.468262, 16.577950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268242, 35.201187, 17.031179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628269, 35.123833, 17.187370>,  <37.844288, 35.077419, 17.281084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628269, 35.123833, 17.187370>,  <37.268242, 35.201187, 17.031179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628269, 35.123833, 17.187370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345260, 0.230174, 0.909843,
		-0.265830, -0.953740, 0.140404,
		0.900072, -0.193388, 0.390476,
		37.898293, 35.065815, 17.304514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079044, 34.763309, 17.538754>,  <37.268242, 35.201187, 17.031179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079044, 34.763309, 17.538754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447720, 34.882393, 17.638245>,  <37.668926, 34.953842, 17.697939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447720, 34.882393, 17.638245>,  <37.079044, 34.763309, 17.538754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447720, 34.882393, 17.638245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275901, 0.052326, 0.959761,
		0.272711, -0.953223, 0.130365,
		0.921687, 0.297705, 0.248726,
		37.724224, 34.971703, 17.712862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304764, 34.317318, 18.133568>,  <37.079044, 34.763309, 17.538754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304764, 34.317318, 18.133568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547344, 34.635185, 18.144339>,  <37.692890, 34.825905, 18.150801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547344, 34.635185, 18.144339>,  <37.304764, 34.317318, 18.133568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547344, 34.635185, 18.144339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227616, 0.141058, 0.963480,
		0.761847, -0.590430, 0.266423,
		0.606449, 0.794667, 0.026926,
		37.729279, 34.873585, 18.152416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777344, 34.303497, 18.767370>,  <37.304764, 34.317318, 18.133568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777344, 34.303497, 18.767370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786907, 34.692230, 18.673590>,  <37.792645, 34.925468, 18.617321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786907, 34.692230, 18.673590>,  <37.777344, 34.303497, 18.767370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786907, 34.692230, 18.673590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030798, 0.235124, 0.971477,
		0.999240, -0.016003, 0.035551,
		0.023905, 0.971833, -0.234453,
		37.794079, 34.983780, 18.603254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218384, 34.555321, 19.206060>,  <37.777344, 34.303497, 18.767370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218384, 34.555321, 19.206060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991005, 34.872021, 19.116625>,  <37.854576, 35.062042, 19.062963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991005, 34.872021, 19.116625>,  <38.218384, 34.555321, 19.206060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991005, 34.872021, 19.116625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099347, 0.203719, 0.973976,
		0.816699, 0.575868, -0.037146,
		-0.568448, 0.791754, -0.223588,
		37.820469, 35.109547, 19.049549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335487, 35.024811, 19.756260>,  <38.218384, 34.555321, 19.206060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335487, 35.024811, 19.756260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021896, 35.206444, 19.586937>,  <37.833740, 35.315422, 19.485344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021896, 35.206444, 19.586937>,  <38.335487, 35.024811, 19.756260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021896, 35.206444, 19.586937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243433, 0.402402, 0.882504,
		0.571067, 0.794910, -0.204936,
		-0.783979, 0.454081, -0.423306,
		37.786701, 35.342667, 19.459946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413822, 35.711117, 20.007698>,  <38.335487, 35.024811, 19.756260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413822, 35.711117, 20.007698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029209, 35.650795, 19.915863>,  <37.798439, 35.614601, 19.860762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029209, 35.650795, 19.915863>,  <38.413822, 35.711117, 20.007698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029209, 35.650795, 19.915863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266016, 0.302937, 0.915131,
		-0.068453, 0.941004, -0.331400,
		-0.961535, -0.150801, -0.229585,
		37.740749, 35.605556, 19.846987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024529, 36.310917, 20.312975>,  <38.413822, 35.711117, 20.007698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024529, 36.310917, 20.312975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.753410, 36.038376, 20.202444>,  <37.590740, 35.874851, 20.136126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.753410, 36.038376, 20.202444>,  <38.024529, 36.310917, 20.312975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753410, 36.038376, 20.202444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437790, 0.072055, 0.896185,
		-0.590704, 0.728404, -0.347126,
		-0.677797, -0.681348, -0.276325,
		37.550072, 35.833973, 20.119547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380455, 36.646488, 20.342941>,  <38.024529, 36.310917, 20.312975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380455, 36.646488, 20.342941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361660, 36.251438, 20.402805>,  <37.350384, 36.014408, 20.438723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361660, 36.251438, 20.402805>,  <37.380455, 36.646488, 20.342941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361660, 36.251438, 20.402805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264845, 0.156781, 0.951461,
		-0.963146, 0.005073, -0.268933,
		-0.046990, -0.987621, 0.149659,
		37.347565, 35.955151, 20.447702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840515, 36.594566, 20.737202>,  <37.380455, 36.646488, 20.342941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840515, 36.594566, 20.737202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025818, 36.242641, 20.779760>,  <37.137001, 36.031487, 20.805296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025818, 36.242641, 20.779760>,  <36.840515, 36.594566, 20.737202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025818, 36.242641, 20.779760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235641, -0.006554, 0.971818,
		-0.854321, -0.475274, -0.210357,
		0.463258, -0.879814, 0.106395,
		37.164795, 35.978699, 20.811678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343292, 36.121025, 21.029696>,  <36.840515, 36.594566, 20.737202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343292, 36.121025, 21.029696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707062, 35.964783, 21.086796>,  <36.925323, 35.871037, 21.121056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707062, 35.964783, 21.086796>,  <36.343292, 36.121025, 21.029696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707062, 35.964783, 21.086796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256982, -0.257943, 0.931357,
		-0.326974, -0.883680, -0.334958,
		0.909422, -0.390608, 0.142750,
		36.979889, 35.847603, 21.129622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193493, 35.546219, 21.424414>,  <36.343292, 36.121025, 21.029696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193493, 35.546219, 21.424414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588379, 35.571205, 21.483074>,  <36.825310, 35.586197, 21.518270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588379, 35.571205, 21.483074>,  <36.193493, 35.546219, 21.424414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588379, 35.571205, 21.483074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113475, -0.370709, 0.921791,
		0.111950, -0.926646, -0.358880,
		0.987214, 0.062471, 0.146652,
		36.884544, 35.589947, 21.527069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376751, 35.005638, 21.752298>,  <36.193493, 35.546219, 21.424414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376751, 35.005638, 21.752298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665062, 35.272587, 21.827225>,  <36.838051, 35.432755, 21.872181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665062, 35.272587, 21.827225>,  <36.376751, 35.005638, 21.752298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665062, 35.272587, 21.827225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041592, -0.228109, 0.972747,
		0.691913, -0.708929, -0.136660,
		0.720782, 0.667373, 0.187317,
		36.881298, 35.472797, 21.883419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865353, 34.666199, 22.188814>,  <36.376751, 35.005638, 21.752298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865353, 34.666199, 22.188814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.903000, 35.060650, 22.243511>,  <36.925591, 35.297321, 22.276329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.903000, 35.060650, 22.243511>,  <36.865353, 34.666199, 22.188814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903000, 35.060650, 22.243511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131818, -0.123799, 0.983513,
		0.986796, -0.110593, 0.118337,
		0.094120, 0.986125, 0.136743,
		36.931236, 35.356487, 22.284534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268631, 34.753613, 22.852493>,  <36.865353, 34.666199, 22.188814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268631, 34.753613, 22.852493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.073814, 35.097073, 22.788614>,  <36.956924, 35.303150, 22.750286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.073814, 35.097073, 22.788614>,  <37.268631, 34.753613, 22.852493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073814, 35.097073, 22.788614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342947, -0.019857, 0.939145,
		0.803229, 0.512172, 0.304144,
		-0.487043, 0.858653, -0.159698,
		36.927700, 35.354668, 22.740705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354492, 35.076271, 23.478949>,  <37.268631, 34.753613, 22.852493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354492, 35.076271, 23.478949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062714, 35.277119, 23.293137>,  <36.887646, 35.397629, 23.181650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062714, 35.277119, 23.293137>,  <37.354492, 35.076271, 23.478949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062714, 35.277119, 23.293137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560434, -0.049321, 0.826729,
		0.392207, 0.863389, 0.317383,
		-0.729443, 0.502121, -0.464529,
		36.843880, 35.427753, 23.153778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133797, 35.569370, 23.947042>,  <37.354492, 35.076271, 23.478949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133797, 35.569370, 23.947042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825520, 35.535278, 23.694450>,  <36.640553, 35.514824, 23.542894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825520, 35.535278, 23.694450>,  <37.133797, 35.569370, 23.947042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825520, 35.535278, 23.694450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636161, 0.046143, 0.770175,
		-0.036506, 0.995292, -0.089784,
		-0.770692, -0.085234, -0.631482,
		36.594311, 35.509708, 23.505007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677059, 36.081425, 24.309864>,  <37.133797, 35.569370, 23.947042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677059, 36.081425, 24.309864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431370, 35.902748, 24.049648>,  <36.283958, 35.795544, 23.893518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431370, 35.902748, 24.049648>,  <36.677059, 36.081425, 24.309864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431370, 35.902748, 24.049648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742845, 0.049094, 0.667661,
		-0.266301, 0.893340, -0.361977,
		-0.614219, -0.446692, -0.650540,
		36.247105, 35.768742, 23.854486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044170, 36.469498, 24.355413>,  <36.677059, 36.081425, 24.309864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044170, 36.469498, 24.355413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966553, 36.108913, 24.200640>,  <35.919983, 35.892563, 24.107775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966553, 36.108913, 24.200640>,  <36.044170, 36.469498, 24.355413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966553, 36.108913, 24.200640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633010, -0.186265, 0.751401,
		-0.749430, 0.390738, -0.534489,
		-0.194044, -0.901459, -0.386934,
		35.908340, 35.838474, 24.084560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302208, 36.496445, 24.355343>,  <36.044170, 36.469498, 24.355413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302208, 36.496445, 24.355343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397255, 36.108459, 24.334515>,  <35.454285, 35.875668, 24.322018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397255, 36.108459, 24.334515>,  <35.302208, 36.496445, 24.355343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397255, 36.108459, 24.334515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647341, -0.198096, 0.736007,
		-0.724214, -0.141182, -0.674968,
		0.237620, -0.969961, -0.052071,
		35.468540, 35.817471, 24.318893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591290, 36.075569, 24.459808>,  <35.302208, 36.496445, 24.355343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591290, 36.075569, 24.459808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911953, 35.854324, 24.550503>,  <35.104351, 35.721577, 24.604919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911953, 35.854324, 24.550503>,  <34.591290, 36.075569, 24.459808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911953, 35.854324, 24.550503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485409, -0.380955, 0.786925,
		-0.348876, -0.740910, -0.573880,
		0.801663, -0.553106, 0.226738,
		35.152451, 35.688393, 24.618523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476528, 35.323338, 24.386843>,  <34.591290, 36.075569, 24.459808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476528, 35.323338, 24.386843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786251, 35.309872, 24.639610>,  <34.972084, 35.301792, 24.791271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786251, 35.309872, 24.639610>,  <34.476528, 35.323338, 24.386843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786251, 35.309872, 24.639610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607260, -0.320441, 0.727017,
		0.178020, -0.946670, -0.268560,
		0.774302, -0.033662, 0.631919,
		35.018543, 35.299774, 24.829185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328430, 34.772938, 24.823856>,  <34.476528, 35.323338, 24.386843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328430, 34.772938, 24.823856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600597, 34.979393, 25.031946>,  <34.763897, 35.103264, 25.156799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600597, 34.979393, 25.031946>,  <34.328430, 34.772938, 24.823856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600597, 34.979393, 25.031946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568570, -0.076052, 0.819112,
		0.462337, -0.853124, 0.241712,
		0.680421, 0.516136, 0.520222,
		34.804726, 35.134235, 25.188013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484535, 34.364109, 25.391806>,  <34.328430, 34.772938, 24.823856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484535, 34.364109, 25.391806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601868, 34.731800, 25.496864>,  <34.672268, 34.952415, 25.559900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601868, 34.731800, 25.496864>,  <34.484535, 34.364109, 25.391806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601868, 34.731800, 25.496864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676712, 0.005585, 0.736227,
		0.675290, -0.393696, 0.623688,
		0.293333, 0.919224, 0.262648,
		34.689869, 35.007568, 25.575659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440800, 34.321095, 26.116156>,  <34.484535, 34.364109, 25.391806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440800, 34.321095, 26.116156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491138, 34.715786, 26.075098>,  <34.521343, 34.952599, 26.050463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491138, 34.715786, 26.075098>,  <34.440800, 34.321095, 26.116156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491138, 34.715786, 26.075098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519999, 0.153727, 0.840220,
		0.844845, -0.052367, 0.532443,
		0.125851, 0.986725, -0.102644,
		34.528893, 35.011803, 26.044304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659954, 34.569393, 26.757862>,  <34.440800, 34.321095, 26.116156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659954, 34.569393, 26.757862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433918, 34.838036, 26.566189>,  <34.298294, 34.999222, 26.451185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433918, 34.838036, 26.566189>,  <34.659954, 34.569393, 26.757862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433918, 34.838036, 26.566189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443348, 0.242629, 0.862887,
		0.695783, 0.700056, 0.160647,
		-0.565092, 0.671604, -0.479185,
		34.264389, 35.039516, 26.422434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694221, 35.096699, 27.229435>,  <34.659954, 34.569393, 26.757862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694221, 35.096699, 27.229435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382233, 35.167282, 26.989269>,  <34.195038, 35.209633, 26.845169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382233, 35.167282, 26.989269>,  <34.694221, 35.096699, 27.229435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382233, 35.167282, 26.989269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529995, 0.323923, 0.783696,
		0.332779, 0.929481, -0.159130,
		-0.779977, 0.176460, -0.600415,
		34.148239, 35.220219, 26.809145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618851, 35.703110, 27.330242>,  <34.694221, 35.096699, 27.229435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618851, 35.703110, 27.330242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260509, 35.585766, 27.196745>,  <34.045506, 35.515362, 27.116646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260509, 35.585766, 27.196745>,  <34.618851, 35.703110, 27.330242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260509, 35.585766, 27.196745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417939, 0.301223, 0.857084,
		-0.150900, 0.907307, -0.392457,
		-0.895855, -0.293357, -0.333744,
		33.991753, 35.497761, 27.096622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193623, 36.197708, 27.612474>,  <34.618851, 35.703110, 27.330242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193623, 36.197708, 27.612474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932762, 35.910862, 27.514133>,  <33.776245, 35.738754, 27.455130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932762, 35.910862, 27.514133>,  <34.193623, 36.197708, 27.612474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932762, 35.910862, 27.514133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508225, 0.172945, 0.843681,
		-0.562498, 0.675156, -0.477243,
		-0.652153, -0.717115, -0.245850,
		33.737118, 35.695728, 27.440378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532890, 36.540207, 27.684494>,  <34.193623, 36.197708, 27.612474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532890, 36.540207, 27.684494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473526, 36.144928, 27.699656>,  <33.437908, 35.907761, 27.708752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473526, 36.144928, 27.699656>,  <33.532890, 36.540207, 27.684494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473526, 36.144928, 27.699656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571619, 0.116998, 0.812135,
		-0.806986, 0.098863, -0.582237,
		-0.148411, -0.988199, 0.037904,
		33.429005, 35.848469, 27.711027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799511, 36.430122, 27.913616>,  <33.532890, 36.540207, 27.684494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799511, 36.430122, 27.913616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986004, 36.095833, 28.029682>,  <33.097900, 35.895260, 28.099321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986004, 36.095833, 28.029682>,  <32.799511, 36.430122, 27.913616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986004, 36.095833, 28.029682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512341, 0.012314, 0.858694,
		-0.721202, -0.549014, -0.422434,
		0.466233, -0.835722, 0.290163,
		33.125874, 35.845116, 28.116732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328690, 36.074512, 28.338219>,  <32.799511, 36.430122, 27.913616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328690, 36.074512, 28.338219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.690639, 35.925827, 28.421204>,  <32.907810, 35.836617, 28.470995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.690639, 35.925827, 28.421204>,  <32.328690, 36.074512, 28.338219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.690639, 35.925827, 28.421204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174084, 0.121611, 0.977193,
		-0.388465, -0.920348, 0.045333,
		0.904870, -0.371713, 0.207460,
		32.962101, 35.814312, 28.483442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191082, 35.410770, 28.625999>,  <32.328690, 36.074512, 28.338219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191082, 35.410770, 28.625999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547302, 35.537441, 28.756617>,  <32.761036, 35.613445, 28.834988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547302, 35.537441, 28.756617>,  <32.191082, 35.410770, 28.625999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547302, 35.537441, 28.756617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308012, -0.108440, 0.945182,
		0.334730, -0.942313, 0.000970,
		0.890553, 0.316680, 0.326542,
		32.814468, 35.632446, 28.854580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344002, 34.904926, 29.054199>,  <32.191082, 35.410770, 28.625999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344002, 34.904926, 29.054199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549023, 35.233837, 29.153109>,  <32.672035, 35.431183, 29.212454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549023, 35.233837, 29.153109>,  <32.344002, 34.904926, 29.054199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549023, 35.233837, 29.153109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206590, -0.161424, 0.965020,
		0.833432, -0.545709, 0.087136,
		0.512554, 0.822280, 0.247273,
		32.702789, 35.480522, 29.227291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666599, 34.665108, 29.622416>,  <32.344002, 34.904926, 29.054199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666599, 34.665108, 29.622416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707455, 35.062984, 29.627466>,  <32.731968, 35.301708, 29.630497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707455, 35.062984, 29.627466>,  <32.666599, 34.665108, 29.622416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707455, 35.062984, 29.627466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060148, -0.006494, 0.998168,
		0.992950, -0.102711, 0.059166,
		0.102139, 0.994690, 0.012626,
		32.738098, 35.361393, 29.631254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994350, 34.797058, 30.249311>,  <32.666599, 34.665108, 29.622416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994350, 34.797058, 30.249311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835823, 35.156128, 30.172249>,  <32.740707, 35.371571, 30.126011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835823, 35.156128, 30.172249>,  <32.994350, 34.797058, 30.249311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835823, 35.156128, 30.172249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363876, 0.039078, 0.930627,
		0.842925, 0.438932, 0.311153,
		-0.396323, 0.897670, -0.192657,
		32.716927, 35.425430, 30.114452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234600, 35.221497, 30.782799>,  <32.994350, 34.797058, 30.249311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234600, 35.221497, 30.782799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952377, 35.456215, 30.623871>,  <32.783043, 35.597046, 30.528515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952377, 35.456215, 30.623871>,  <33.234600, 35.221497, 30.782799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952377, 35.456215, 30.623871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379528, 0.160589, 0.911136,
		0.598453, 0.793653, 0.109400,
		-0.705558, 0.586793, -0.397319,
		32.740711, 35.632252, 30.504675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274948, 35.863377, 31.022469>,  <33.234600, 35.221497, 30.782799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274948, 35.863377, 31.022469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896286, 35.793949, 30.913870>,  <32.669086, 35.752293, 30.848711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896286, 35.793949, 30.913870>,  <33.274948, 35.863377, 31.022469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896286, 35.793949, 30.913870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292892, 0.112187, 0.949541,
		-0.134352, 0.978411, -0.157040,
		-0.946659, -0.173569, -0.271496,
		32.612289, 35.741879, 30.832420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976147, 36.201069, 31.128563>,  <33.274948, 35.863377, 31.022469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976147, 36.201069, 31.128563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238049, 36.376404, 31.374865>,  <34.395191, 36.481606, 31.522646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238049, 36.376404, 31.374865>,  <33.976147, 36.201069, 31.128563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238049, 36.376404, 31.374865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585045, 0.221891, -0.780055,
		-0.478560, 0.870990, -0.111165,
		0.654754, 0.438339, 0.615756,
		34.434475, 36.507904, 31.559591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067211, 36.944149, 31.146746>,  <33.976147, 36.201069, 31.128563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067211, 36.944149, 31.146746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427380, 36.792442, 31.231968>,  <34.643482, 36.701420, 31.283100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427380, 36.792442, 31.231968>,  <34.067211, 36.944149, 31.146746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427380, 36.792442, 31.231968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346106, 0.327901, -0.879029,
		0.263525, 0.865239, 0.426516,
		0.900425, -0.379266, 0.213055,
		34.697506, 36.678661, 31.295885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615551, 37.431644, 30.748055>,  <34.067211, 36.944149, 31.146746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615551, 37.431644, 30.748055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796474, 37.104153, 30.889530>,  <34.905029, 36.907658, 30.974415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796474, 37.104153, 30.889530>,  <34.615551, 37.431644, 30.748055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796474, 37.104153, 30.889530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716286, 0.097200, -0.691005,
		0.531370, 0.565886, 0.630411,
		0.452306, -0.818734, 0.353687,
		34.932167, 36.858532, 30.995636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300201, 37.637371, 30.866806>,  <34.615551, 37.431644, 30.748055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300201, 37.637371, 30.866806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273052, 37.248863, 30.775566>,  <35.256763, 37.015759, 30.720821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273052, 37.248863, 30.775566>,  <35.300201, 37.637371, 30.866806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273052, 37.248863, 30.775566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693917, 0.118315, -0.710268,
		0.716849, -0.206490, 0.665950,
		-0.067872, -0.971269, -0.228101,
		35.252689, 36.957481, 30.707136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004349, 37.443428, 30.805038>,  <35.300201, 37.637371, 30.866806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004349, 37.443428, 30.805038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802254, 37.166672, 30.598732>,  <35.680996, 37.000618, 30.474947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802254, 37.166672, 30.598732>,  <36.004349, 37.443428, 30.805038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802254, 37.166672, 30.598732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634262, 0.107557, -0.765600,
		0.585189, -0.713942, 0.384500,
		-0.505238, -0.691895, -0.515767,
		35.650681, 36.959103, 30.444002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530476, 37.073177, 30.442127>,  <36.004349, 37.443428, 30.805038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530476, 37.073177, 30.442127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196846, 36.975311, 30.244358>,  <35.996666, 36.916592, 30.125696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196846, 36.975311, 30.244358>,  <36.530476, 37.073177, 30.442127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196846, 36.975311, 30.244358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511085, -0.005397, -0.859513,
		0.207624, -0.969593, 0.129546,
		-0.834077, -0.244664, -0.494423,
		35.946621, 36.901913, 30.096031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715134, 36.507751, 29.937887>,  <36.530476, 37.073177, 30.442127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715134, 36.507751, 29.937887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363834, 36.628391, 29.789448>,  <36.153053, 36.700775, 29.700384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363834, 36.628391, 29.789448>,  <36.715134, 36.507751, 29.937887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363834, 36.628391, 29.789448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380324, -0.029877, -0.924371,
		-0.289879, -0.952966, -0.088467,
		-0.878251, 0.301602, -0.371097,
		36.100361, 36.718872, 29.678120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554798, 36.061741, 29.410151>,  <36.715134, 36.507751, 29.937887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554798, 36.061741, 29.410151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394279, 36.425339, 29.365099>,  <36.297966, 36.643497, 29.338068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394279, 36.425339, 29.365099>,  <36.554798, 36.061741, 29.410151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394279, 36.425339, 29.365099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502639, 0.115754, -0.856711,
		-0.765710, -0.400410, -0.503349,
		-0.401300, 0.908996, -0.112627,
		36.273888, 36.698036, 29.331310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364685, 36.129559, 28.641687>,  <36.554798, 36.061741, 29.410151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364685, 36.129559, 28.641687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371887, 36.510075, 28.764793>,  <36.376209, 36.738384, 28.838657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371887, 36.510075, 28.764793>,  <36.364685, 36.129559, 28.641687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371887, 36.510075, 28.764793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360901, 0.280875, -0.889303,
		-0.932430, 0.127088, -0.338264,
		0.018010, 0.951293, 0.307763,
		36.377289, 36.795464, 28.857122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113091, 36.435215, 27.997732>,  <36.364685, 36.129559, 28.641687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113091, 36.435215, 27.997732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303940, 36.727516, 28.193018>,  <36.418449, 36.902897, 28.310190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303940, 36.727516, 28.193018>,  <36.113091, 36.435215, 27.997732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303940, 36.727516, 28.193018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325118, 0.369347, -0.870564,
		-0.816488, 0.574093, -0.061358,
		0.477122, 0.730753, 0.488216,
		36.447075, 36.946743, 28.339483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081261, 37.135609, 27.557198>,  <36.113091, 36.435215, 27.997732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081261, 37.135609, 27.557198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390324, 37.178669, 27.807451>,  <36.575760, 37.204506, 27.957603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390324, 37.178669, 27.807451>,  <36.081261, 37.135609, 27.557198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390324, 37.178669, 27.807451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534789, 0.420647, -0.732841,
		-0.342062, 0.900815, 0.267444,
		0.772654, 0.107651, 0.625634,
		36.622120, 37.210964, 27.995142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429001, 37.747200, 27.417557>,  <36.081261, 37.135609, 27.557198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429001, 37.747200, 27.417557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711521, 37.548615, 27.619410>,  <36.881035, 37.429462, 27.740520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711521, 37.548615, 27.619410>,  <36.429001, 37.747200, 27.417557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711521, 37.548615, 27.619410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656458, 0.192548, -0.729375,
		0.264945, 0.846431, 0.461908,
		0.706305, -0.496468, 0.504632,
		36.923412, 37.399673, 27.770800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923519, 38.067406, 27.222651>,  <36.429001, 37.747200, 27.417557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923519, 38.067406, 27.222651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087265, 37.720798, 27.336887>,  <37.185513, 37.512833, 27.405430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087265, 37.720798, 27.336887>,  <36.923519, 38.067406, 27.222651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087265, 37.720798, 27.336887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651034, 0.058126, -0.756819,
		0.639200, 0.495743, 0.587930,
		0.409362, -0.866522, 0.285591,
		37.210075, 37.460842, 27.422565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671162, 38.161091, 27.086329>,  <36.923519, 38.067406, 27.222651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671162, 38.161091, 27.086329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643845, 37.764065, 27.126635>,  <37.627453, 37.525848, 27.150818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643845, 37.764065, 27.126635>,  <37.671162, 38.161091, 27.086329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643845, 37.764065, 27.126635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588194, -0.121637, -0.799520,
		0.805831, 0.004669, 0.592127,
		-0.068291, -0.992564, 0.100766,
		37.623356, 37.466297, 27.156864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232632, 37.814117, 27.135397>,  <37.671162, 38.161091, 27.086329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232632, 37.814117, 27.135397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000828, 37.534904, 26.967150>,  <37.861744, 37.367378, 26.866201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000828, 37.534904, 26.967150>,  <38.232632, 37.814117, 27.135397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000828, 37.534904, 26.967150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629775, -0.055992, -0.774757,
		0.517252, -0.713877, 0.472050,
		-0.579512, -0.698030, -0.420620,
		37.826973, 37.325497, 26.840963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670582, 37.409504, 26.637739>,  <38.232632, 37.814117, 27.135397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670582, 37.409504, 26.637739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312080, 37.296364, 26.501083>,  <38.096977, 37.228481, 26.419090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312080, 37.296364, 26.501083>,  <38.670582, 37.409504, 26.637739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312080, 37.296364, 26.501083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425172, -0.328557, -0.843374,
		0.126301, -0.901135, 0.414732,
		-0.896257, -0.282852, -0.341640,
		38.043201, 37.211510, 26.398592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808487, 36.826412, 26.257536>,  <38.670582, 37.409504, 26.637739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808487, 36.826412, 26.257536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453278, 36.961548, 26.132780>,  <38.240150, 37.042629, 26.057926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453278, 36.961548, 26.132780>,  <38.808487, 36.826412, 26.257536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453278, 36.961548, 26.132780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226564, -0.268745, -0.936186,
		-0.400104, -0.902019, 0.162109,
		-0.888023, 0.337844, -0.311891,
		38.186871, 37.062901, 26.039213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516468, 36.343239, 25.880033>,  <38.808487, 36.826412, 26.257536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516468, 36.343239, 25.880033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.329681, 36.674866, 25.757011>,  <38.217609, 36.873840, 25.683199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.329681, 36.674866, 25.757011>,  <38.516468, 36.343239, 25.880033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329681, 36.674866, 25.757011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218127, -0.229061, -0.948658,
		-0.856950, -0.510077, -0.073878,
		-0.466966, 0.829067, -0.307555,
		38.189590, 36.923584, 25.664745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028835, 36.135231, 25.357222>,  <38.516468, 36.343239, 25.880033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028835, 36.135231, 25.357222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.123116, 36.521294, 25.311771>,  <38.179684, 36.752934, 25.284502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.123116, 36.521294, 25.311771>,  <38.028835, 36.135231, 25.357222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123116, 36.521294, 25.311771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223300, -0.167578, -0.960237,
		-0.945823, 0.200957, -0.255019,
		0.235702, 0.965160, -0.113626,
		38.193825, 36.810841, 25.277683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615631, 36.435215, 24.750853>,  <38.028835, 36.135231, 25.357222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615631, 36.435215, 24.750853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903694, 36.710659, 24.784769>,  <38.076530, 36.875927, 24.805119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903694, 36.710659, 24.784769>,  <37.615631, 36.435215, 24.750853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903694, 36.710659, 24.784769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266549, -0.161765, -0.950149,
		-0.640570, 0.706855, -0.300045,
		0.720154, 0.688614, 0.084790,
		38.119740, 36.917244, 24.810205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666771, 36.783878, 24.117603>,  <37.615631, 36.435215, 24.750853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666771, 36.783878, 24.117603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025986, 36.864040, 24.274252>,  <38.241516, 36.912140, 24.368242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025986, 36.864040, 24.274252>,  <37.666771, 36.783878, 24.117603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025986, 36.864040, 24.274252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429964, -0.211503, -0.877723,
		-0.093073, 0.956610, -0.276105,
		0.898036, 0.200408, 0.391623,
		38.295395, 36.924164, 24.391739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919460, 37.182392, 23.652790>,  <37.666771, 36.783878, 24.117603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919460, 37.182392, 23.652790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.232674, 37.034721, 23.853018>,  <38.420601, 36.946117, 23.973154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.232674, 37.034721, 23.853018>,  <37.919460, 37.182392, 23.652790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232674, 37.034721, 23.853018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462325, -0.192905, -0.865473,
		0.416077, 0.909117, 0.019630,
		0.783030, -0.369179, 0.500571,
		38.467583, 36.923969, 24.003189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514236, 37.497147, 23.292307>,  <37.919460, 37.182392, 23.652790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514236, 37.497147, 23.292307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667381, 37.206238, 23.520166>,  <38.759266, 37.031693, 23.656881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667381, 37.206238, 23.520166>,  <38.514236, 37.497147, 23.292307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667381, 37.206238, 23.520166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537634, -0.326036, -0.777592,
		0.751245, 0.603970, 0.266179,
		0.382858, -0.727270, 0.569648,
		38.782238, 36.988056, 23.691061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228542, 37.509670, 23.143330>,  <38.514236, 37.497147, 23.292307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228542, 37.509670, 23.143330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136059, 37.145115, 23.279510>,  <39.080570, 36.926380, 23.361219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136059, 37.145115, 23.279510>,  <39.228542, 37.509670, 23.143330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136059, 37.145115, 23.279510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446076, -0.410288, -0.795412,
		0.864615, -0.032038, 0.501412,
		-0.231207, -0.911393, 0.340450,
		39.066696, 36.871696, 23.381645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859436, 37.167156, 23.214470>,  <39.228542, 37.509670, 23.143330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859436, 37.167156, 23.214470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573284, 36.890434, 23.175209>,  <39.401592, 36.724400, 23.151653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573284, 36.890434, 23.175209>,  <39.859436, 37.167156, 23.214470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573284, 36.890434, 23.175209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513754, -0.425574, -0.744945,
		0.473585, -0.583348, 0.659866,
		-0.715384, -0.691803, -0.098152,
		39.358669, 36.682892, 23.145763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212219, 36.586113, 23.159689>,  <39.859436, 37.167156, 23.214470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212219, 36.586113, 23.159689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.867043, 36.461254, 23.000746>,  <39.659935, 36.386337, 22.905380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.867043, 36.461254, 23.000746>,  <40.212219, 36.586113, 23.159689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867043, 36.461254, 23.000746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503869, -0.590747, -0.630186,
		-0.038023, -0.744030, 0.667064,
		-0.862943, -0.312151, -0.397356,
		39.608158, 36.367607, 22.881538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345901, 35.931076, 23.053961>,  <40.212219, 36.586113, 23.159689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345901, 35.931076, 23.053961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041378, 36.006660, 22.805862>,  <39.858665, 36.052010, 22.657003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041378, 36.006660, 22.805862>,  <40.345901, 35.931076, 23.053961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041378, 36.006660, 22.805862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392147, -0.627622, -0.672541,
		-0.516364, -0.755238, 0.403713,
		-0.761308, 0.188961, -0.620245,
		39.812984, 36.063351, 22.619789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134235, 35.323406, 22.763199>,  <40.345901, 35.931076, 23.053961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134235, 35.323406, 22.763199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.985600, 35.596100, 22.511118>,  <39.896420, 35.759716, 22.359869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.985600, 35.596100, 22.511118>,  <40.134235, 35.323406, 22.763199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985600, 35.596100, 22.511118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441977, -0.467049, -0.765847,
		-0.816443, -0.563115, -0.127763,
		-0.371588, 0.681738, -0.630203,
		39.874123, 35.800621, 22.322058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975838, 34.929905, 22.208561>,  <40.134235, 35.323406, 22.763199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975838, 34.929905, 22.208561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000412, 35.304615, 22.070763>,  <40.015156, 35.529442, 21.988085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000412, 35.304615, 22.070763>,  <39.975838, 34.929905, 22.208561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000412, 35.304615, 22.070763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336645, -0.344369, -0.876402,
		-0.939625, -0.062130, -0.336518,
		0.061435, 0.936776, -0.344494,
		40.018841, 35.585648, 21.967415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592579, 35.009911, 21.632223>,  <39.975838, 34.929905, 22.208561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.592579, 35.009911, 21.632223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840588, 35.316662, 21.565928>,  <39.989395, 35.500713, 21.526150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840588, 35.316662, 21.565928>,  <39.592579, 35.009911, 21.632223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840588, 35.316662, 21.565928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298973, -0.426240, -0.853777,
		-0.725386, 0.479812, -0.493555,
		0.620025, 0.766877, -0.165738,
		40.026596, 35.546726, 21.516207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529873, 35.223495, 20.950476>,  <39.592579, 35.009911, 21.632223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529873, 35.223495, 20.950476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.890907, 35.371300, 21.038841>,  <40.107529, 35.459984, 21.091860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.890907, 35.371300, 21.038841>,  <39.529873, 35.223495, 20.950476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890907, 35.371300, 21.038841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340253, -0.297886, -0.891904,
		-0.263762, 0.880184, -0.394595,
		0.902584, 0.369513, 0.220914,
		40.161682, 35.482155, 21.105116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824852, 35.271923, 20.283947>,  <39.529873, 35.223495, 20.950476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824852, 35.271923, 20.283947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141853, 35.286583, 20.527454>,  <40.332054, 35.295380, 20.673559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141853, 35.286583, 20.527454>,  <39.824852, 35.271923, 20.283947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141853, 35.286583, 20.527454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548779, -0.478319, -0.685604,
		0.266057, 0.877421, -0.399181,
		0.792499, 0.036653, 0.608771,
		40.379604, 35.297577, 20.710085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344433, 35.583775, 19.830515>,  <39.824852, 35.271923, 20.283947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344433, 35.583775, 19.830515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.517376, 35.389511, 20.134411>,  <40.621140, 35.272953, 20.316748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.517376, 35.389511, 20.134411>,  <40.344433, 35.583775, 19.830515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.517376, 35.389511, 20.134411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712603, -0.332236, -0.617912,
		0.552508, 0.808550, 0.202439,
		0.432355, -0.485661, 0.759739,
		40.647083, 35.243813, 20.362333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033295, 35.465778, 19.540037>,  <40.344433, 35.583775, 19.830515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033295, 35.465778, 19.540037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.037655, 35.215431, 19.851978>,  <41.040272, 35.065224, 20.039143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.037655, 35.215431, 19.851978>,  <41.033295, 35.465778, 19.540037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.037655, 35.215431, 19.851978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686445, -0.562417, -0.460957,
		0.727100, 0.540351, 0.423492,
		0.010900, -0.625866, 0.779855,
		41.040924, 35.027672, 20.085936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752483, 35.228889, 19.477686>,  <41.033295, 35.465778, 19.540037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752483, 35.228889, 19.477686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.585388, 34.956970, 19.718807>,  <41.485130, 34.793819, 19.863480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.585388, 34.956970, 19.718807>,  <41.752483, 35.228889, 19.477686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.585388, 34.956970, 19.718807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677438, -0.675164, -0.291943,
		0.605454, 0.286408, 0.742561,
		-0.417736, -0.679797, 0.602804,
		41.460068, 34.753033, 19.899649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.281540, 34.902565, 19.806650>,  <41.752483, 35.228889, 19.477686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.281540, 34.902565, 19.806650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.970306, 34.654053, 19.843739>,  <41.783566, 34.504944, 19.865992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.970306, 34.654053, 19.843739>,  <42.281540, 34.902565, 19.806650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.970306, 34.654053, 19.843739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557287, -0.750839, -0.354503,
		0.289865, -0.224160, 0.930447,
		-0.778080, -0.621284, 0.092720,
		41.736881, 34.467667, 19.871555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.479500, 34.242664, 20.190647>,  <42.281540, 34.902565, 19.806650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.479500, 34.242664, 20.190647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.153427, 34.160007, 19.974209>,  <41.957783, 34.110413, 19.844345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.153427, 34.160007, 19.974209>,  <42.479500, 34.242664, 20.190647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.153427, 34.160007, 19.974209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508739, -0.702032, -0.498332,
		-0.276890, -0.681506, 0.677407,
		-0.815178, -0.206641, -0.541095,
		41.908875, 34.098015, 19.811880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.459423, 33.539257, 20.271948>,  <42.479500, 34.242664, 20.190647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.459423, 33.539257, 20.271948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.261189, 33.643990, 19.940687>,  <42.142246, 33.706829, 19.741930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.261189, 33.643990, 19.940687>,  <42.459423, 33.539257, 20.271948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.261189, 33.643990, 19.940687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532179, -0.662001, -0.527770,
		-0.686426, -0.702281, 0.188734,
		-0.495585, 0.261834, -0.828154,
		42.112511, 33.722538, 19.692242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.600544, 32.955597, 19.788012>,  <42.459423, 33.539257, 20.271948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.600544, 32.955597, 19.788012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.970192, 32.974800, 19.939642>,  <43.191982, 32.986324, 20.030621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.970192, 32.974800, 19.939642>,  <42.600544, 32.955597, 19.788012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.970192, 32.974800, 19.939642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362999, 0.420093, 0.831718,
		-0.119318, -0.906210, 0.405642,
		0.924119, 0.048009, 0.379078,
		43.247429, 32.989204, 20.053366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.517414, 32.854446, 20.456451>,  <42.600544, 32.955597, 19.788012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.517414, 32.854446, 20.456451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.894432, 32.986530, 20.476721>,  <43.120644, 33.065781, 20.488882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.894432, 32.986530, 20.476721>,  <42.517414, 32.854446, 20.456451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.894432, 32.986530, 20.476721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143522, 0.263275, 0.953985,
		0.301675, -0.906448, 0.295541,
		0.942546, 0.330210, 0.050672,
		43.177197, 33.085594, 20.491922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.979897, 32.433231, 20.886316>,  <42.517414, 32.854446, 20.456451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.979897, 32.433231, 20.886316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.070541, 32.822514, 20.870731>,  <43.124928, 33.056084, 20.861380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.070541, 32.822514, 20.870731>,  <42.979897, 32.433231, 20.886316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.070541, 32.822514, 20.870731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285464, 0.104609, 0.952663,
		0.931214, -0.204760, 0.301521,
		0.226609, 0.973206, -0.038962,
		43.138523, 33.114475, 20.859043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.889889, 32.574467, 21.557102>,  <42.979897, 32.433231, 20.886316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.889889, 32.574467, 21.557102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.957085, 32.940536, 21.410555>,  <42.997402, 33.160179, 21.322626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.957085, 32.940536, 21.410555>,  <42.889889, 32.574467, 21.557102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.957085, 32.940536, 21.410555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329466, 0.402404, 0.854121,
		0.929102, -0.022777, 0.369121,
		0.167990, 0.915179, -0.366370,
		43.007481, 33.215092, 21.300644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.351299, 32.909912, 22.044760>,  <42.889889, 32.574467, 21.557102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.351299, 32.909912, 22.044760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.162613, 33.188583, 21.828564>,  <43.049400, 33.355785, 21.698847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.162613, 33.188583, 21.828564>,  <43.351299, 32.909912, 22.044760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.162613, 33.188583, 21.828564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303462, 0.447259, 0.841350,
		0.827888, 0.560894, 0.000436,
		-0.471713, 0.696676, -0.540490,
		43.021099, 33.397587, 21.666416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.664341, 33.583317, 22.340752>,  <43.351299, 32.909912, 22.044760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.664341, 33.583317, 22.340752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.318836, 33.656242, 22.152847>,  <43.111534, 33.699997, 22.040104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.318836, 33.656242, 22.152847>,  <43.664341, 33.583317, 22.340752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.318836, 33.656242, 22.152847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354764, 0.442026, 0.823866,
		0.357853, 0.878278, -0.317125,
		-0.863761, 0.182318, -0.469762,
		43.059708, 33.710938, 22.011919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.472031, 34.244804, 22.443724>,  <43.664341, 33.583317, 22.340752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.472031, 34.244804, 22.443724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.119686, 34.080257, 22.350040>,  <42.908279, 33.981529, 22.293831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.119686, 34.080257, 22.350040>,  <43.472031, 34.244804, 22.443724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.119686, 34.080257, 22.350040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418672, 0.446171, 0.790977,
		-0.220889, 0.794799, -0.565246,
		-0.880864, -0.411371, -0.234206,
		42.855427, 33.956844, 22.279779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.039600, 34.766739, 22.545155>,  <43.472031, 34.244804, 22.443724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.039600, 34.766739, 22.545155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.808689, 34.440159, 22.550236>,  <42.670143, 34.244213, 22.553284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.808689, 34.440159, 22.550236>,  <43.039600, 34.766739, 22.545155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.808689, 34.440159, 22.550236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530057, 0.386530, 0.754741,
		-0.621115, 0.428965, -0.655900,
		-0.577282, -0.816445, 0.012704,
		42.635506, 34.195225, 22.554047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.355339, 34.968002, 22.541334>,  <43.039600, 34.766739, 22.545155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.355339, 34.968002, 22.541334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.307140, 34.588875, 22.659397>,  <42.278221, 34.361397, 22.730234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.307140, 34.588875, 22.659397>,  <42.355339, 34.968002, 22.541334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.307140, 34.588875, 22.659397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547916, 0.311433, 0.776401,
		-0.827810, -0.068168, -0.556852,
		-0.120496, -0.947820, 0.295157,
		42.270992, 34.304527, 22.747944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.590229, 34.858871, 22.666121>,  <42.355339, 34.968002, 22.541334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.590229, 34.858871, 22.666121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.793690, 34.585812, 22.875984>,  <41.915768, 34.421978, 23.001902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.793690, 34.585812, 22.875984>,  <41.590229, 34.858871, 22.666121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.793690, 34.585812, 22.875984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603077, 0.152415, 0.782986,
		-0.614469, -0.714677, -0.334163,
		0.508651, -0.682647, 0.524660,
		41.946285, 34.381016, 23.033382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088524, 34.440746, 22.926405>,  <41.590229, 34.858871, 22.666121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.088524, 34.440746, 22.926405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.388660, 34.356350, 23.176992>,  <41.568745, 34.305714, 23.327345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.388660, 34.356350, 23.176992>,  <41.088524, 34.440746, 22.926405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.388660, 34.356350, 23.176992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649712, -0.060645, 0.757758,
		-0.121887, -0.975605, -0.182588,
		0.750346, -0.210990, 0.626470,
		41.613766, 34.293053, 23.364933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767601, 34.030235, 23.468647>,  <41.088524, 34.440746, 22.926405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767601, 34.030235, 23.468647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130035, 34.121361, 23.611256>,  <41.347496, 34.176037, 23.696821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130035, 34.121361, 23.611256>,  <40.767601, 34.030235, 23.468647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130035, 34.121361, 23.611256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407448, 0.242817, 0.880356,
		0.113983, -0.942944, 0.312834,
		0.906087, 0.227809, 0.356523,
		41.401863, 34.189705, 23.718212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806389, 33.713348, 24.066626>,  <40.767601, 34.030235, 23.468647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806389, 33.713348, 24.066626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.056068, 34.025169, 24.087337>,  <41.205875, 34.212261, 24.099764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.056068, 34.025169, 24.087337>,  <40.806389, 33.713348, 24.066626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.056068, 34.025169, 24.087337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286013, 0.166332, 0.943679,
		0.727033, -0.603849, 0.326785,
		0.624195, 0.779551, 0.051780,
		41.243328, 34.259033, 24.102871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.209595, 33.654488, 24.641409>,  <40.806389, 33.713348, 24.066626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.209595, 33.654488, 24.641409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.219467, 34.050587, 24.586561>,  <41.225391, 34.288246, 24.553652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.219467, 34.050587, 24.586561>,  <41.209595, 33.654488, 24.641409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.219467, 34.050587, 24.586561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391597, 0.135775, 0.910064,
		0.919806, 0.031236, 0.391128,
		0.024679, 0.990247, -0.137119,
		41.226871, 34.347660, 24.545425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.509060, 33.891605, 25.256687>,  <41.209595, 33.654488, 24.641409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.509060, 33.891605, 25.256687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.351387, 34.213284, 25.078745>,  <41.256783, 34.406288, 24.971979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.351387, 34.213284, 25.078745>,  <41.509060, 33.891605, 25.256687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.351387, 34.213284, 25.078745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518817, 0.204821, 0.829986,
		0.758583, 0.557965, 0.336491,
		-0.394183, 0.804191, -0.444856,
		41.233131, 34.454540, 24.945288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.659454, 34.480545, 25.688707>,  <41.509060, 33.891605, 25.256687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.659454, 34.480545, 25.688707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350338, 34.621620, 25.477654>,  <41.164867, 34.706264, 25.351021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350338, 34.621620, 25.477654>,  <41.659454, 34.480545, 25.688707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350338, 34.621620, 25.477654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332022, 0.483860, 0.809717,
		0.540878, 0.800932, -0.256825,
		-0.772795, 0.352687, -0.527636,
		41.118500, 34.727425, 25.319363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.605820, 35.182728, 25.955790>,  <41.659454, 34.480545, 25.688707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.605820, 35.182728, 25.955790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.265015, 35.074848, 25.776310>,  <41.060532, 35.010120, 25.668623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.265015, 35.074848, 25.776310>,  <41.605820, 35.182728, 25.955790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.265015, 35.074848, 25.776310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519467, 0.329176, 0.788541,
		-0.064965, 0.904935, -0.420562,
		-0.852017, -0.269696, -0.448699,
		41.009411, 34.993938, 25.641701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.230858, 35.808655, 25.991632>,  <41.605820, 35.182728, 25.955790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.230858, 35.808655, 25.991632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956242, 35.534725, 25.893913>,  <40.791473, 35.370369, 25.835281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956242, 35.534725, 25.893913>,  <41.230858, 35.808655, 25.991632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956242, 35.534725, 25.893913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650813, 0.428971, 0.626439,
		-0.324204, 0.589067, -0.740197,
		-0.686538, -0.684824, -0.244299,
		40.750278, 35.329277, 25.820623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558353, 36.227413, 25.755562>,  <41.230858, 35.808655, 25.991632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558353, 36.227413, 25.755562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457047, 35.859505, 25.875483>,  <40.396263, 35.638760, 25.947435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457047, 35.859505, 25.875483>,  <40.558353, 36.227413, 25.755562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457047, 35.859505, 25.875483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660017, 0.390862, 0.641564,
		-0.707272, -0.035388, -0.706055,
		-0.253266, -0.919769, 0.299803,
		40.381065, 35.583572, 25.965424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990150, 36.407513, 26.043209>,  <40.558353, 36.227413, 25.755562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990150, 36.407513, 26.043209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095112, 36.048058, 26.183832>,  <40.158089, 35.832386, 26.268206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095112, 36.048058, 26.183832>,  <39.990150, 36.407513, 26.043209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095112, 36.048058, 26.183832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550536, 0.159788, 0.819376,
		-0.792497, -0.408555, -0.452803,
		0.262408, -0.898638, 0.351556,
		40.173836, 35.778465, 26.289299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332626, 36.060558, 26.280994>,  <39.990150, 36.407513, 26.043209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332626, 36.060558, 26.280994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649620, 35.931919, 26.488279>,  <39.839817, 35.854736, 26.612650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649620, 35.931919, 26.488279>,  <39.332626, 36.060558, 26.280994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649620, 35.931919, 26.488279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509456, 0.118057, 0.852360,
		-0.335292, -0.939489, -0.070279,
		0.792486, -0.321593, 0.518212,
		39.887367, 35.835442, 26.643744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005894, 35.562988, 26.780718>,  <39.332626, 36.060558, 26.280994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005894, 35.562988, 26.780718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360664, 35.655201, 26.940826>,  <39.573528, 35.710529, 27.036892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360664, 35.655201, 26.940826>,  <39.005894, 35.562988, 26.780718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360664, 35.655201, 26.940826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435108, 0.126070, 0.891508,
		0.155068, -0.964861, 0.212125,
		0.886924, 0.230542, 0.400270,
		39.626743, 35.724361, 27.060907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975452, 35.276920, 27.467705>,  <39.005894, 35.562988, 26.780718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975452, 35.276920, 27.467705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.282295, 35.531616, 27.498968>,  <39.466400, 35.684433, 27.517725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.282295, 35.531616, 27.498968>,  <38.975452, 35.276920, 27.467705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282295, 35.531616, 27.498968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299304, 0.247473, 0.921506,
		0.567419, -0.730286, 0.380417,
		0.767107, 0.636741, 0.078156,
		39.512428, 35.722637, 27.522415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368904, 35.041088, 28.193693>,  <38.975452, 35.276920, 27.467705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368904, 35.041088, 28.193693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463699, 35.409554, 28.070219>,  <39.520576, 35.630634, 27.996134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463699, 35.409554, 28.070219>,  <39.368904, 35.041088, 28.193693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463699, 35.409554, 28.070219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176826, 0.353329, 0.918635,
		0.955286, -0.163119, 0.246620,
		0.236985, 0.921168, -0.308687,
		39.534794, 35.685905, 27.977613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774212, 35.361485, 28.681366>,  <39.368904, 35.041088, 28.193693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774212, 35.361485, 28.681366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.603149, 35.670284, 28.493269>,  <39.500511, 35.855564, 28.380411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.603149, 35.670284, 28.493269>,  <39.774212, 35.361485, 28.681366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603149, 35.670284, 28.493269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307236, 0.365104, 0.878809,
		0.850127, 0.520304, 0.081047,
		-0.427657, 0.771999, -0.470241,
		39.474854, 35.901886, 28.352196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883705, 35.854637, 29.135496>,  <39.774212, 35.361485, 28.681366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883705, 35.854637, 29.135496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596291, 36.014317, 28.907690>,  <39.423843, 36.110123, 28.771006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596291, 36.014317, 28.907690>,  <39.883705, 35.854637, 29.135496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596291, 36.014317, 28.907690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426563, 0.393815, 0.814219,
		0.549321, 0.827978, -0.112686,
		-0.718534, 0.399200, -0.569516,
		39.380730, 36.134075, 28.736835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839993, 36.490505, 29.389835>,  <39.883705, 35.854637, 29.135496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839993, 36.490505, 29.389835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.500908, 36.388660, 29.203691>,  <39.297459, 36.327553, 29.092005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.500908, 36.388660, 29.203691>,  <39.839993, 36.490505, 29.389835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500908, 36.388660, 29.203691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523747, 0.262615, 0.810384,
		-0.084122, 0.930702, -0.355973,
		-0.847710, -0.254611, -0.465360,
		39.246593, 36.312279, 29.064083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367771, 37.155140, 29.223614>,  <39.839993, 36.490505, 29.389835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.367771, 37.155140, 29.223614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.170776, 36.818050, 29.310591>,  <39.052578, 36.615799, 29.362778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.170776, 36.818050, 29.310591>,  <39.367771, 37.155140, 29.223614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170776, 36.818050, 29.310591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471097, 0.468200, 0.747567,
		-0.731795, 0.265731, -0.627585,
		-0.492487, -0.842719, 0.217442,
		39.023029, 36.565235, 29.375824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692268, 37.456646, 29.596581>,  <39.367771, 37.155140, 29.223614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692268, 37.456646, 29.596581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657372, 37.060574, 29.640284>,  <38.636433, 36.822929, 29.666506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657372, 37.060574, 29.640284>,  <38.692268, 37.456646, 29.596581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657372, 37.060574, 29.640284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313947, 0.131414, 0.940302,
		-0.945424, 0.047729, -0.322328,
		-0.087238, -0.990178, 0.109258,
		38.631199, 36.763519, 29.673061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031090, 37.350327, 29.859619>,  <38.692268, 37.456646, 29.596581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031090, 37.350327, 29.859619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221024, 37.003208, 29.918219>,  <38.334984, 36.794937, 29.953379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221024, 37.003208, 29.918219>,  <38.031090, 37.350327, 29.859619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221024, 37.003208, 29.918219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536507, -0.153469, 0.829823,
		-0.697636, -0.472624, -0.538452,
		0.474830, -0.867798, 0.146501,
		38.363472, 36.742870, 29.962170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568867, 36.985706, 30.149456>,  <38.031090, 37.350327, 29.859619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568867, 36.985706, 30.149456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905487, 36.787186, 30.234758>,  <38.107460, 36.668072, 30.285940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905487, 36.787186, 30.234758>,  <37.568867, 36.985706, 30.149456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905487, 36.787186, 30.234758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338179, -0.176205, 0.924439,
		-0.421225, -0.850079, -0.316125,
		0.841549, -0.496304, 0.213257,
		38.157951, 36.638294, 30.298735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392624, 36.339119, 30.383661>,  <37.568867, 36.985706, 30.149456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392624, 36.339119, 30.383661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749928, 36.403999, 30.551365>,  <37.964310, 36.442928, 30.651987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749928, 36.403999, 30.551365>,  <37.392624, 36.339119, 30.383661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749928, 36.403999, 30.551365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384023, -0.209506, 0.899240,
		0.233691, -0.964261, -0.124856,
		0.893261, 0.162196, 0.419258,
		38.017906, 36.452660, 30.677143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484619, 35.782249, 30.721537>,  <37.392624, 36.339119, 30.383661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484619, 35.782249, 30.721537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701424, 36.070007, 30.895296>,  <37.831505, 36.242661, 30.999552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701424, 36.070007, 30.895296>,  <37.484619, 35.782249, 30.721537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701424, 36.070007, 30.895296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474852, -0.164313, 0.864590,
		0.693356, -0.674891, 0.252546,
		0.542007, 0.719391, 0.434401,
		37.864025, 36.285824, 31.025616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639603, 35.492413, 31.344112>,  <37.484619, 35.782249, 30.721537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639603, 35.492413, 31.344112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728912, 35.875797, 31.415110>,  <37.782497, 36.105827, 31.457708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728912, 35.875797, 31.415110>,  <37.639603, 35.492413, 31.344112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728912, 35.875797, 31.415110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336729, -0.095039, 0.936793,
		0.914748, -0.268924, 0.301523,
		0.223270, 0.958461, 0.177492,
		37.795895, 36.163334, 31.468357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867641, 35.455391, 32.061222>,  <37.639603, 35.492413, 31.344112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867641, 35.455391, 32.061222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797726, 35.835274, 31.957298>,  <37.755775, 36.063206, 31.894943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797726, 35.835274, 31.957298>,  <37.867641, 35.455391, 32.061222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797726, 35.835274, 31.957298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410256, 0.169626, 0.896056,
		0.895063, 0.263211, 0.359975,
		-0.174791, 0.949709, -0.259810,
		37.745289, 36.120186, 31.879356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221699, 35.885971, 32.549061>,  <37.867641, 35.455391, 32.061222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221699, 35.885971, 32.549061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921196, 36.102654, 32.398243>,  <37.740894, 36.232662, 32.307751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921196, 36.102654, 32.398243>,  <38.221699, 35.885971, 32.549061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921196, 36.102654, 32.398243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262452, 0.278971, 0.923739,
		0.605579, 0.792925, -0.067408,
		-0.751261, 0.541706, -0.377044,
		37.695816, 36.265167, 32.285130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230301, 36.579769, 32.898823>,  <38.221699, 35.885971, 32.549061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230301, 36.579769, 32.898823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862400, 36.574982, 32.741898>,  <37.641659, 36.572109, 32.647743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862400, 36.574982, 32.741898>,  <38.230301, 36.579769, 32.898823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862400, 36.574982, 32.741898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377210, 0.303142, 0.875110,
		0.108455, 0.952871, -0.283329,
		-0.919756, -0.011965, -0.392309,
		37.586472, 36.571392, 32.624207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903198, 37.055283, 33.220070>,  <38.230301, 36.579769, 32.898823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903198, 37.055283, 33.220070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583393, 36.881081, 33.054607>,  <37.391510, 36.776558, 32.955330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583393, 36.881081, 33.054607>,  <37.903198, 37.055283, 33.220070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583393, 36.881081, 33.054607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489091, 0.072272, 0.869234,
		-0.348661, 0.897280, -0.270784,
		-0.799516, -0.435506, -0.413653,
		37.343536, 36.750427, 32.930511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270088, 37.544704, 33.234745>,  <37.903198, 37.055283, 33.220070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270088, 37.544704, 33.234745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139904, 37.166557, 33.227161>,  <37.061794, 36.939671, 33.222610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139904, 37.166557, 33.227161>,  <37.270088, 37.544704, 33.234745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139904, 37.166557, 33.227161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420209, 0.126644, 0.898546,
		-0.847052, 0.300411, -0.438469,
		-0.325463, -0.945365, -0.018961,
		37.042267, 36.882946, 33.221474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627453, 37.544441, 33.574615>,  <37.270088, 37.544704, 33.234745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627453, 37.544441, 33.574615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756397, 37.166035, 33.588158>,  <36.833763, 36.938992, 33.596283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756397, 37.166035, 33.588158>,  <36.627453, 37.544441, 33.574615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756397, 37.166035, 33.588158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360835, -0.089732, 0.928303,
		-0.875148, -0.311462, -0.370280,
		0.322357, -0.946012, 0.033857,
		36.853104, 36.882233, 33.598316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084293, 37.092533, 33.750832>,  <36.627453, 37.544441, 33.574615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084293, 37.092533, 33.750832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449497, 36.966137, 33.854027>,  <36.668621, 36.890297, 33.915943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449497, 36.966137, 33.854027>,  <36.084293, 37.092533, 33.750832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449497, 36.966137, 33.854027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261010, 0.033501, 0.964755,
		-0.313501, -0.948169, -0.051891,
		0.913012, -0.315995, 0.257984,
		36.723400, 36.871338, 33.931423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021759, 36.447392, 34.018486>,  <36.084293, 37.092533, 33.750832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021759, 36.447392, 34.018486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305794, 36.666557, 34.195377>,  <36.476215, 36.798058, 34.301514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305794, 36.666557, 34.195377>,  <36.021759, 36.447392, 34.018486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305794, 36.666557, 34.195377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305052, -0.326667, 0.894557,
		0.634598, -0.770119, -0.064821,
		0.710090, 0.547911, 0.442229,
		36.518822, 36.830929, 34.328045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404079, 36.042404, 34.506104>,  <36.021759, 36.447392, 34.018486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404079, 36.042404, 34.506104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438343, 36.421791, 34.628139>,  <36.458900, 36.649422, 34.701359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438343, 36.421791, 34.628139>,  <36.404079, 36.042404, 34.506104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438343, 36.421791, 34.628139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263237, -0.273785, 0.925067,
		0.960921, -0.159550, 0.226219,
		0.085659, 0.948465, 0.305086,
		36.464039, 36.706329, 34.719666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687874, 36.103413, 35.140099>,  <36.404079, 36.042404, 34.506104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687874, 36.103413, 35.140099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443703, 36.417660, 35.099754>,  <36.297199, 36.606209, 35.075546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443703, 36.417660, 35.099754>,  <36.687874, 36.103413, 35.140099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443703, 36.417660, 35.099754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285561, -0.099510, 0.953180,
		0.738802, 0.610652, 0.285086,
		-0.610431, 0.785622, -0.100860,
		36.260574, 36.653347, 35.069496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976669, 36.882378, 35.426220>,  <36.687874, 36.103413, 35.140099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976669, 36.882378, 35.426220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592098, 36.782578, 35.472527>,  <36.361355, 36.722698, 35.500313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592098, 36.782578, 35.472527>,  <36.976669, 36.882378, 35.426220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592098, 36.782578, 35.472527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139867, -0.081055, 0.986847,
		-0.236839, 0.964975, 0.112826,
		-0.961428, -0.249504, 0.115771,
		36.303669, 36.707726, 35.507259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657249, 37.372116, 35.862324>,  <36.976669, 36.882378, 35.426220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657249, 37.372116, 35.862324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498074, 37.005444, 35.876934>,  <36.402569, 36.785439, 35.885700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498074, 37.005444, 35.876934>,  <36.657249, 37.372116, 35.862324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498074, 37.005444, 35.876934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054486, 0.016133, 0.998384,
		-0.915793, 0.399286, 0.043527,
		-0.397939, -0.916684, 0.036530,
		36.378693, 36.730438, 35.887894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466354, 38.057056, 35.619637>,  <36.657249, 37.372116, 35.862324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466354, 38.057056, 35.619637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.752590, 37.791679, 35.532204>,  <36.924332, 37.632454, 35.479744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.752590, 37.791679, 35.532204>,  <36.466354, 38.057056, 35.619637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752590, 37.791679, 35.532204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547379, 0.726991, -0.414560,
		0.433944, 0.177007, 0.883380,
		0.715590, -0.663440, -0.218583,
		36.967266, 37.592648, 35.466629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129337, 38.279228, 35.858154>,  <36.466354, 38.057056, 35.619637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129337, 38.279228, 35.858154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224606, 38.063049, 35.535370>,  <37.281765, 37.933342, 35.341698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224606, 38.063049, 35.535370>,  <37.129337, 38.279228, 35.858154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224606, 38.063049, 35.535370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691467, 0.677817, -0.249875,
		0.682017, -0.498476, 0.535140,
		0.238170, -0.540451, -0.806962,
		37.296055, 37.900913, 35.293282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869823, 38.215488, 35.786999>,  <37.129337, 38.279228, 35.858154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869823, 38.215488, 35.786999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747101, 38.154629, 35.411186>,  <37.673466, 38.118114, 35.185699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747101, 38.154629, 35.411186>,  <37.869823, 38.215488, 35.786999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747101, 38.154629, 35.411186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626190, 0.711135, -0.319646,
		0.716767, -0.686395, -0.122909,
		-0.306809, -0.152147, -0.939532,
		37.655060, 38.108982, 35.129326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483356, 38.318592, 35.371349>,  <37.869823, 38.215488, 35.786999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483356, 38.318592, 35.371349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145000, 38.366234, 35.163395>,  <37.941986, 38.394821, 35.038620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145000, 38.366234, 35.163395>,  <38.483356, 38.318592, 35.371349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145000, 38.366234, 35.163395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399411, 0.787453, -0.469456,
		0.353472, -0.604757, -0.713671,
		-0.845889, 0.119109, -0.519890,
		37.891235, 38.401966, 35.007427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954208, 37.755947, 35.662880>,  <38.483356, 38.318592, 35.371349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954208, 37.755947, 35.662880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.344078, 37.808319, 35.590366>,  <39.577999, 37.839741, 35.546856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.344078, 37.808319, 35.590366>,  <38.954208, 37.755947, 35.662880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344078, 37.808319, 35.590366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142691, -0.988328, 0.053368,
		-0.172183, -0.077885, -0.981981,
		0.974675, 0.130930, -0.181287,
		39.636482, 37.847599, 35.535980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152863, 37.375038, 35.095978>,  <38.954208, 37.755947, 35.662880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152863, 37.375038, 35.095978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.469353, 37.397171, 35.339584>,  <39.659248, 37.410450, 35.485748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.469353, 37.397171, 35.339584>,  <39.152863, 37.375038, 35.095978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469353, 37.397171, 35.339584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026891, -0.991787, 0.125041,
		0.610930, -0.115313, -0.783241,
		0.791228, 0.055330, 0.609013,
		39.706722, 37.413769, 35.522289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706188, 36.855766, 34.915394>,  <39.152863, 37.375038, 35.095978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706188, 36.855766, 34.915394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.725784, 36.962364, 35.300430>,  <39.737541, 37.026321, 35.531452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.725784, 36.962364, 35.300430>,  <39.706188, 36.855766, 34.915394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.725784, 36.962364, 35.300430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106743, -0.956832, 0.270332,
		0.993079, -0.115995, -0.018432,
		0.048993, 0.266493, 0.962591,
		39.740482, 37.042313, 35.589207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061565, 36.348873, 35.237408>,  <39.706188, 36.855766, 34.915394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061565, 36.348873, 35.237408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.881847, 36.544003, 35.536785>,  <39.774017, 36.661079, 35.716412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.881847, 36.544003, 35.536785>,  <40.061565, 36.348873, 35.237408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881847, 36.544003, 35.536785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241460, -0.872887, 0.423987,
		0.860135, 0.009776, 0.509972,
		-0.449293, 0.487824, 0.748441,
		39.747059, 36.690350, 35.761318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092484, 35.934158, 35.941456>,  <40.061565, 36.348873, 35.237408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092484, 35.934158, 35.941456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808079, 36.200245, 36.032623>,  <39.637436, 36.359898, 36.087322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808079, 36.200245, 36.032623>,  <40.092484, 35.934158, 35.941456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808079, 36.200245, 36.032623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580949, -0.738322, 0.342606,
		0.396183, 0.111190, 0.911414,
		-0.711012, 0.665220, 0.227915,
		39.594776, 36.399811, 36.100998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898079, 35.904785, 36.711739>,  <40.092484, 35.934158, 35.941456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898079, 35.904785, 36.711739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.577133, 36.059395, 36.529831>,  <39.384567, 36.152161, 36.420685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.577133, 36.059395, 36.529831>,  <39.898079, 35.904785, 36.711739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577133, 36.059395, 36.529831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582766, -0.671861, 0.457150,
		-0.128844, 0.631825, 0.764328,
		-0.802361, 0.386523, -0.454771,
		39.336426, 36.175350, 36.393398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487228, 35.783237, 37.180519>,  <39.898079, 35.904785, 36.711739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487228, 35.783237, 37.180519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.239986, 35.875698, 36.879982>,  <39.091640, 35.931175, 36.699661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.239986, 35.875698, 36.879982>,  <39.487228, 35.783237, 37.180519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239986, 35.875698, 36.879982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663705, -0.665625, 0.341232,
		-0.421236, 0.709587, 0.564842,
		-0.618107, 0.231149, -0.751342,
		39.054554, 35.945042, 36.654579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813301, 36.036522, 37.459255>,  <39.487228, 35.783237, 37.180519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813301, 36.036522, 37.459255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.760544, 35.886543, 37.092209>,  <38.728889, 35.796555, 36.871983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.760544, 35.886543, 37.092209>,  <38.813301, 36.036522, 37.459255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760544, 35.886543, 37.092209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794860, -0.513107, 0.323912,
		-0.592285, 0.772099, -0.230353,
		-0.131896, -0.374946, -0.917616,
		38.720974, 35.774059, 36.816925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117287, 36.152374, 37.311478>,  <38.813301, 36.036522, 37.459255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117287, 36.152374, 37.311478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256470, 35.838760, 37.105869>,  <38.339977, 35.650593, 36.982502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256470, 35.838760, 37.105869>,  <38.117287, 36.152374, 37.311478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256470, 35.838760, 37.105869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665790, -0.592663, 0.453292,
		-0.660040, 0.184511, -0.728219,
		0.347951, -0.784032, -0.514027,
		38.360855, 35.603550, 36.951660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362190, 35.796589, 37.033966>,  <38.117287, 36.152374, 37.311478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362190, 35.796589, 37.033966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.677013, 35.551617, 37.004402>,  <37.865910, 35.404633, 36.986664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.677013, 35.551617, 37.004402>,  <37.362190, 35.796589, 37.033966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677013, 35.551617, 37.004402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518468, -0.721660, 0.458692,
		-0.334257, -0.322697, -0.885516,
		0.787060, -0.612433, -0.073912,
		37.913132, 35.367886, 36.982227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024029, 35.182312, 36.792084>,  <37.362190, 35.796589, 37.033966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024029, 35.182312, 36.792084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380005, 35.090191, 36.949547>,  <37.593590, 35.034920, 37.044025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380005, 35.090191, 36.949547>,  <37.024029, 35.182312, 36.792084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380005, 35.090191, 36.949547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398736, -0.811878, 0.426454,
		0.221390, -0.536485, -0.814353,
		0.889942, -0.230299, 0.393658,
		37.646988, 35.021103, 37.067642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156708, 34.521496, 36.594357>,  <37.024029, 35.182312, 36.792084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156708, 34.521496, 36.594357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312981, 34.630478, 36.946068>,  <37.406746, 34.695869, 37.157093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312981, 34.630478, 36.946068>,  <37.156708, 34.521496, 36.594357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312981, 34.630478, 36.946068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596640, -0.652440, 0.467271,
		0.700990, -0.707168, -0.092338,
		0.390684, 0.272460, 0.879279,
		37.430187, 34.712215, 37.209850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472801, 33.956184, 37.039921>,  <37.156708, 34.521496, 36.594357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472801, 33.956184, 37.039921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331127, 34.246025, 37.276398>,  <37.246124, 34.419930, 37.418285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331127, 34.246025, 37.276398>,  <37.472801, 33.956184, 37.039921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331127, 34.246025, 37.276398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499364, -0.681044, 0.535551,
		0.790689, -0.105538, 0.603053,
		-0.354184, 0.724597, 0.591196,
		37.224873, 34.463406, 37.453758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803986, 34.060249, 37.615112>,  <37.472801, 33.956184, 37.039921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803986, 34.060249, 37.615112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.416759, 34.141537, 37.673828>,  <37.184422, 34.190308, 37.709057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.416759, 34.141537, 37.673828>,  <37.803986, 34.060249, 37.615112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416759, 34.141537, 37.673828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059719, -0.755638, 0.652261,
		0.243474, 0.622666, 0.743645,
		-0.968067, 0.203218, 0.146793,
		37.126339, 34.202503, 37.717865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530975, 34.297531, 37.362869>,  <37.803986, 34.060249, 37.615112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530975, 34.297531, 37.362869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211739, 34.498436, 37.229729>,  <38.020199, 34.618977, 37.149845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211739, 34.498436, 37.229729>,  <38.530975, 34.297531, 37.362869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211739, 34.498436, 37.229729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586540, 0.521149, -0.619979,
		-0.137925, -0.690030, -0.710518,
		-0.798090, 0.502258, -0.332851,
		37.972313, 34.649113, 37.129875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729874, 34.376907, 36.726604>,  <38.530975, 34.297531, 37.362869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729874, 34.376907, 36.726604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477566, 34.686966, 36.740887>,  <38.326180, 34.873001, 36.749454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477566, 34.686966, 36.740887>,  <38.729874, 34.376907, 36.726604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477566, 34.686966, 36.740887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683609, 0.576879, -0.447089,
		-0.367155, -0.257606, -0.893777,
		-0.630774, 0.775145, 0.035702,
		38.288334, 34.919510, 36.751598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665474, 34.722984, 36.031624>,  <38.729874, 34.376907, 36.726604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665474, 34.722984, 36.031624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577820, 34.984303, 36.321503>,  <38.525227, 35.141094, 36.495430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577820, 34.984303, 36.321503>,  <38.665474, 34.722984, 36.031624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577820, 34.984303, 36.321503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576654, 0.685862, -0.443919,
		-0.787051, 0.320618, -0.527025,
		-0.219138, 0.653298, 0.724693,
		38.512077, 35.180290, 36.538910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650948, 35.304142, 35.589985>,  <38.665474, 34.722984, 36.031624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650948, 35.304142, 35.589985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652916, 35.441593, 35.965622>,  <38.654095, 35.524063, 36.191006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652916, 35.441593, 35.965622>,  <38.650948, 35.304142, 35.589985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652916, 35.441593, 35.965622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692970, 0.675884, -0.250946,
		-0.720950, 0.651996, -0.234801,
		0.004917, 0.343630, 0.939092,
		38.654392, 35.544682, 36.247349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375645, 36.011833, 35.505394>,  <38.650948, 35.304142, 35.589985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375645, 36.011833, 35.505394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564220, 36.004513, 35.858078>,  <38.677368, 36.000122, 36.069687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564220, 36.004513, 35.858078>,  <38.375645, 36.011833, 35.505394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564220, 36.004513, 35.858078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359673, 0.916847, -0.173284,
		-0.805218, 0.398819, 0.438824,
		0.471443, -0.018302, 0.881706,
		38.705654, 35.999023, 36.122589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280128, 36.630432, 35.929279>,  <38.375645, 36.011833, 35.505394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280128, 36.630432, 35.929279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.627319, 36.465694, 36.040272>,  <38.835636, 36.366852, 36.106869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.627319, 36.465694, 36.040272>,  <38.280128, 36.630432, 35.929279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627319, 36.465694, 36.040272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446500, 0.891796, -0.073062,
		-0.217369, 0.187314, 0.957948,
		0.867979, -0.411842, 0.277485,
		38.887714, 36.342140, 36.123516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546600, 37.192230, 36.288998>,  <38.280128, 36.630432, 35.929279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546600, 37.192230, 36.288998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864826, 36.955456, 36.237324>,  <39.055759, 36.813389, 36.206318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864826, 36.955456, 36.237324>,  <38.546600, 37.192230, 36.288998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864826, 36.955456, 36.237324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585324, 0.805965, -0.088410,
		0.156450, -0.005279, 0.987671,
		0.795562, -0.591940, -0.129183,
		39.103497, 36.777874, 36.198570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086124, 37.390091, 36.740456>,  <38.546600, 37.192230, 36.288998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086124, 37.390091, 36.740456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.278221, 37.186584, 36.454651>,  <39.393478, 37.064480, 36.283169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.278221, 37.186584, 36.454651>,  <39.086124, 37.390091, 36.740456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278221, 37.186584, 36.454651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591553, 0.789320, -0.164433,
		0.647635, -0.343702, 0.680028,
		0.480243, -0.508765, -0.714510,
		39.422295, 37.033955, 36.240299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815804, 37.485279, 36.751659>,  <39.086124, 37.390091, 36.740456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815804, 37.485279, 36.751659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762974, 37.378414, 36.369835>,  <39.731277, 37.314293, 36.140739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762974, 37.378414, 36.369835>,  <39.815804, 37.485279, 36.751659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762974, 37.378414, 36.369835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673262, 0.682604, -0.284200,
		0.727514, -0.680202, 0.089719,
		-0.132071, -0.267164, -0.954558,
		39.723354, 37.298264, 36.083469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437626, 37.274254, 36.269459>,  <39.815804, 37.485279, 36.751659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437626, 37.274254, 36.269459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129196, 37.474216, 36.111706>,  <39.944138, 37.594193, 36.017056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129196, 37.474216, 36.111706>,  <40.437626, 37.274254, 36.269459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129196, 37.474216, 36.111706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595098, 0.786090, -0.167094,
		0.226487, -0.363538, -0.903628,
		-0.771078, 0.499903, -0.394380,
		39.897873, 37.624187, 35.993393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647308, 37.817657, 36.836285>,  <40.437626, 37.274254, 36.269459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647308, 37.817657, 36.836285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628876, 37.567699, 37.148022>,  <40.617817, 37.417725, 37.335064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628876, 37.567699, 37.148022>,  <40.647308, 37.817657, 36.836285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.628876, 37.567699, 37.148022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989140, 0.080456, 0.122996,
		-0.139563, 0.776551, 0.614403,
		-0.046080, -0.624897, 0.779346,
		40.615051, 37.380230, 37.381824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994408, 38.136402, 37.450802>,  <40.647308, 37.817657, 36.836285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994408, 38.136402, 37.450802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980820, 37.746990, 37.541218>,  <40.972668, 37.513344, 37.595467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980820, 37.746990, 37.541218>,  <40.994408, 38.136402, 37.450802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980820, 37.746990, 37.541218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981386, 0.010281, 0.191770,
		-0.189017, 0.228348, 0.955055,
		-0.033971, -0.973525, 0.226041,
		40.970627, 37.454933, 37.609032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170223, 38.143040, 38.097576>,  <40.994408, 38.136402, 37.450802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.170223, 38.143040, 38.097576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.247261, 37.771477, 37.971054>,  <41.293484, 37.548538, 37.895142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.247261, 37.771477, 37.971054>,  <41.170223, 38.143040, 38.097576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.247261, 37.771477, 37.971054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972411, 0.137429, 0.188494,
		-0.131624, -0.343878, 0.929744,
		0.192593, -0.928903, -0.316302,
		41.305038, 37.492805, 37.876163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565849, 37.727322, 38.561619>,  <41.170223, 38.143040, 38.097576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565849, 37.727322, 38.561619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.639553, 37.567097, 38.202599>,  <41.683777, 37.470963, 37.987186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.639553, 37.567097, 38.202599>,  <41.565849, 37.727322, 38.561619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.639553, 37.567097, 38.202599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979630, 0.000688, 0.200808,
		-0.079818, -0.916270, 0.392528,
		0.184264, -0.400561, -0.897551,
		41.694832, 37.446930, 37.933334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.116051, 37.213650, 38.662994>,  <41.565849, 37.727322, 38.561619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.116051, 37.213650, 38.662994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119568, 37.289425, 38.270252>,  <42.121677, 37.334888, 38.034607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119568, 37.289425, 38.270252>,  <42.116051, 37.213650, 38.662994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.119568, 37.289425, 38.270252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989948, 0.136961, 0.035287,
		0.141160, -0.972294, -0.186329,
		0.008789, 0.189437, -0.981854,
		42.122204, 37.346256, 37.975697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.549408, 36.761036, 38.304249>,  <42.116051, 37.213650, 38.662994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.549408, 36.761036, 38.304249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549458, 37.108944, 38.106869>,  <42.549488, 37.317688, 37.988441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549458, 37.108944, 38.106869>,  <42.549408, 36.761036, 38.304249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.549458, 37.108944, 38.106869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961865, 0.134868, 0.237964,
		0.273526, -0.474666, -0.836586,
		0.000125, 0.869772, -0.493455,
		42.549496, 37.369877, 37.958832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.163254, 36.683136, 37.788742>,  <42.549408, 36.761036, 38.304249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.163254, 36.683136, 37.788742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.077065, 37.067921, 37.855923>,  <43.025352, 37.298790, 37.896229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.077065, 37.067921, 37.855923>,  <43.163254, 36.683136, 37.788742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.077065, 37.067921, 37.855923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960247, 0.177472, 0.215475,
		0.177472, 0.207701, -0.961958,
		-0.215475, 0.961958, 0.167948,
		43.012421, 37.356506, 37.906307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.785576, 36.146168, 37.530155>,  <43.163254, 36.683136, 37.788742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.785576, 36.146168, 37.530155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.680351, 36.515656, 37.641544>,  <42.617218, 36.737347, 37.708378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.680351, 36.515656, 37.641544>,  <42.785576, 36.146168, 37.530155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.680351, 36.515656, 37.641544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959517, -0.220387, -0.175377,
		-0.100628, -0.313331, 0.944298,
		-0.263062, 0.923718, 0.278469,
		42.601433, 36.792770, 37.725086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.106323, 35.913239, 37.571056>,  <42.785576, 36.146168, 37.530155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.106323, 35.913239, 37.571056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976112, 35.556122, 37.695602>,  <41.897984, 35.341850, 37.770329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976112, 35.556122, 37.695602>,  <42.106323, 35.913239, 37.571056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976112, 35.556122, 37.695602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074263, 0.304142, 0.949728,
		-0.942611, 0.332287, -0.032705,
		-0.325529, -0.892795, 0.311364,
		41.878452, 35.288284, 37.789013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.392052, 35.958572, 37.972420>,  <42.106323, 35.913239, 37.571056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.392052, 35.958572, 37.972420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.603840, 35.632877, 38.067654>,  <41.730911, 35.437462, 38.124794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.603840, 35.632877, 38.067654>,  <41.392052, 35.958572, 37.972420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.603840, 35.632877, 38.067654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064207, 0.241378, 0.968305,
		-0.845897, -0.527973, 0.075522,
		0.529468, -0.814237, 0.238081,
		41.762680, 35.388607, 38.139076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994053, 35.402699, 38.294041>,  <41.392052, 35.958572, 37.972420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994053, 35.402699, 38.294041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.375717, 35.387169, 38.412750>,  <41.604713, 35.377850, 38.483974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.375717, 35.387169, 38.412750>,  <40.994053, 35.402699, 38.294041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375717, 35.387169, 38.412750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281921, 0.216403, 0.934714,
		-0.100513, -0.975532, 0.195537,
		0.954158, -0.038825, 0.296774,
		41.661964, 35.375523, 38.501781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.129246, 34.830338, 38.824009>,  <40.994053, 35.402699, 38.294041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.129246, 34.830338, 38.824009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.309753, 35.186008, 38.854229>,  <41.418060, 35.399414, 38.872360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.309753, 35.186008, 38.854229>,  <41.129246, 34.830338, 38.824009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309753, 35.186008, 38.854229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533132, 0.200742, 0.821872,
		0.715627, -0.411167, 0.564641,
		0.451273, 0.889182, 0.075550,
		41.445137, 35.452763, 38.876896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800312, 35.123466, 39.412724>,  <41.129246, 34.830338, 38.824009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.800312, 35.123466, 39.412724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.015583, 35.436546, 39.287670>,  <41.144745, 35.624393, 39.212639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.015583, 35.436546, 39.287670>,  <40.800312, 35.123466, 39.412724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015583, 35.436546, 39.287670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460030, 0.583597, 0.669169,
		0.706210, -0.216314, 0.674148,
		0.538181, 0.782702, -0.312631,
		41.177036, 35.671356, 39.193882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.307240, 35.536537, 39.909248>,  <40.800312, 35.123466, 39.412724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.307240, 35.536537, 39.909248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.173805, 35.802647, 39.642078>,  <41.093746, 35.962315, 39.481777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.173805, 35.802647, 39.642078>,  <41.307240, 35.536537, 39.909248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.173805, 35.802647, 39.642078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455044, 0.506875, 0.732129,
		0.825625, 0.548163, 0.133644,
		-0.333585, 0.665278, -0.667927,
		41.073730, 36.002232, 39.441700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616093, 36.126156, 40.279194>,  <41.307240, 35.536537, 39.909248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.616093, 36.126156, 40.279194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.248940, 36.099682, 40.435711>,  <41.028648, 36.083797, 40.529621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.248940, 36.099682, 40.435711>,  <41.616093, 36.126156, 40.279194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.248940, 36.099682, 40.435711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290399, -0.559988, -0.775939,
		0.270476, -0.825852, 0.494784,
		-0.917885, -0.066188, 0.391290,
		40.973576, 36.079826, 40.553097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.055687, 36.696644, 39.902142>,  <41.616093, 36.126156, 40.279194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.055687, 36.696644, 39.902142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.306667, 36.971169, 40.049263>,  <42.457256, 37.135883, 40.137535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.306667, 36.971169, 40.049263>,  <42.055687, 36.696644, 39.902142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.306667, 36.971169, 40.049263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501992, -0.717627, 0.482717,
		0.595244, -0.118243, -0.794797,
		0.627446, 0.686316, 0.367806,
		42.494900, 37.177063, 40.159603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.782887, 36.762604, 39.797142>,  <42.055687, 36.696644, 39.902142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.782887, 36.762604, 39.797142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.753353, 36.885998, 40.176487>,  <42.735634, 36.960033, 40.404095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.753353, 36.885998, 40.176487>,  <42.782887, 36.762604, 39.797142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.753353, 36.885998, 40.176487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577802, -0.761849, 0.292798,
		0.812830, 0.569584, -0.121989,
		-0.073835, 0.308481, 0.948361,
		42.731201, 36.978542, 40.460995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.466774, 36.887482, 40.045902>,  <42.782887, 36.762604, 39.797142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.466774, 36.887482, 40.045902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.201431, 36.790325, 40.329018>,  <43.042225, 36.732033, 40.498886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.201431, 36.790325, 40.329018>,  <43.466774, 36.887482, 40.045902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.201431, 36.790325, 40.329018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543837, -0.806183, 0.233045,
		0.514004, 0.539513, 0.666878,
		-0.663356, -0.242887, 0.707788,
		43.002426, 36.717461, 40.541355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.843216, 36.688675, 40.675747>,  <43.466774, 36.887482, 40.045902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.843216, 36.688675, 40.675747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.480938, 36.523384, 40.637867>,  <43.263573, 36.424210, 40.615139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.480938, 36.523384, 40.637867>,  <43.843216, 36.688675, 40.675747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.480938, 36.523384, 40.637867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389936, -0.899653, 0.196402,
		-0.166354, 0.140953, 0.975940,
		-0.905691, -0.413227, -0.094698,
		43.209232, 36.399418, 40.609459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.958656, 36.072948, 40.154579>,  <43.843216, 36.688675, 40.675747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.958656, 36.072948, 40.154579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.028889, 36.300705, 39.833344>,  <44.071030, 36.437359, 39.640602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.028889, 36.300705, 39.833344>,  <43.958656, 36.072948, 40.154579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.028889, 36.300705, 39.833344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673006, 0.664798, 0.324202,
		0.718494, 0.483563, 0.499933,
		0.175583, 0.569395, -0.803094,
		44.081562, 36.471523, 39.592415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.517570, 35.595531, 40.206047>,  <43.958656, 36.072948, 40.154579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.517570, 35.595531, 40.206047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.894188, 35.616974, 40.073006>,  <45.120159, 35.629837, 39.993179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.894188, 35.616974, 40.073006>,  <44.517570, 35.595531, 40.206047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.894188, 35.616974, 40.073006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037796, -0.964222, -0.262389,
		-0.334767, 0.259622, -0.905829,
		0.941543, 0.053603, -0.332602,
		45.176651, 35.633057, 39.973225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.611835, 35.608242, 39.490395>,  <44.517570, 35.595531, 40.206047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.611835, 35.608242, 39.490395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.933704, 35.428864, 39.646034>,  <45.126827, 35.321236, 39.739418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.933704, 35.428864, 39.646034>,  <44.611835, 35.608242, 39.490395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.933704, 35.428864, 39.646034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215429, -0.831232, -0.512487,
		0.553255, 0.328561, -0.765478,
		0.804673, -0.448443, 0.389102,
		45.175106, 35.294331, 39.762764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.967880, 35.316978, 38.975090>,  <44.611835, 35.608242, 39.490395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.967880, 35.316978, 38.975090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.073261, 35.107426, 39.299099>,  <45.136490, 34.981693, 39.493504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.073261, 35.107426, 39.299099>,  <44.967880, 35.316978, 38.975090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.073261, 35.107426, 39.299099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019800, -0.836576, -0.547494,
		0.964469, 0.160278, -0.210026,
		0.263454, -0.523882, 0.810025,
		45.152298, 34.950260, 39.542107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.559410, 35.005264, 38.914593>,  <44.967880, 35.316978, 38.975090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.559410, 35.005264, 38.914593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.367397, 34.789139, 39.191036>,  <45.252190, 34.659466, 39.356903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.367397, 34.789139, 39.191036>,  <45.559410, 35.005264, 38.914593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.367397, 34.789139, 39.191036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189098, -0.833025, -0.519915,
		0.856629, -0.118887, 0.502049,
		-0.480030, -0.540311, 0.691112,
		45.223389, 34.627045, 39.398369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.870438, 34.975327, 38.257992>,  <45.559410, 35.005264, 38.914593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.870438, 34.975327, 38.257992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.182991, 35.115662, 38.464428>,  <46.370525, 35.199863, 38.588287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.182991, 35.115662, 38.464428>,  <45.870438, 34.975327, 38.257992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.182991, 35.115662, 38.464428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542917, 0.025578, -0.839397,
		-0.307694, 0.936086, -0.170490,
		0.781387, 0.350839, 0.516088,
		46.417408, 35.220913, 38.619255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.896893, 35.695450, 38.031994>,  <45.870438, 34.975327, 38.257992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.896893, 35.695450, 38.031994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.231331, 35.491932, 38.114044>,  <46.431995, 35.369823, 38.163277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.231331, 35.491932, 38.114044>,  <45.896893, 35.695450, 38.031994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.231331, 35.491932, 38.114044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274583, 0.064421, -0.959403,
		0.474921, 0.858476, 0.193568,
		0.836095, -0.508791, 0.205128,
		46.482159, 35.339294, 38.175583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.352066, 36.091228, 37.736160>,  <45.896893, 35.695450, 38.031994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.352066, 36.091228, 37.736160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.481838, 35.713409, 37.756424>,  <46.559700, 35.486717, 37.768581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.481838, 35.713409, 37.756424>,  <46.352066, 36.091228, 37.736160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.481838, 35.713409, 37.756424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342081, 0.067232, -0.937262,
		0.881887, 0.321405, 0.344925,
		0.324431, -0.944552, 0.050656,
		46.579166, 35.430042, 37.771622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.009445, 36.177174, 37.369522>,  <46.352066, 36.091228, 37.736160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.009445, 36.177174, 37.369522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.856056, 35.808617, 37.344292>,  <46.764023, 35.587482, 37.329155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.856056, 35.808617, 37.344292>,  <47.009445, 36.177174, 37.369522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.856056, 35.808617, 37.344292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170206, -0.003379, -0.985403,
		0.907734, -0.388608, 0.158123,
		-0.383470, -0.921397, -0.063076,
		46.741016, 35.532196, 37.325367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.548206, 35.712574, 37.133968>,  <47.009445, 36.177174, 37.369522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.548206, 35.712574, 37.133968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.200768, 35.567600, 36.998806>,  <46.992306, 35.480614, 36.917709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.200768, 35.567600, 36.998806>,  <47.548206, 35.712574, 37.133968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.200768, 35.567600, 36.998806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409170, -0.139950, -0.901662,
		0.279508, -0.921440, 0.269859,
		-0.868594, -0.362439, -0.337908,
		46.940189, 35.458870, 36.897434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.717197, 35.049622, 36.725739>,  <47.548206, 35.712574, 37.133968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.717197, 35.049622, 36.725739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.404789, 35.261353, 36.593182>,  <47.217346, 35.388393, 36.513649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.404789, 35.261353, 36.593182>,  <47.717197, 35.049622, 36.725739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.404789, 35.261353, 36.593182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454701, 0.118247, -0.882759,
		-0.428084, -0.840136, -0.333040,
		-0.781019, 0.529329, -0.331391,
		47.170483, 35.420151, 36.493763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.441612, 34.761314, 36.192535>,  <47.717197, 35.049622, 36.725739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.441612, 34.761314, 36.192535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.345238, 35.148952, 36.171326>,  <47.287415, 35.381535, 36.158600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.345238, 35.148952, 36.171326>,  <47.441612, 34.761314, 36.192535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.345238, 35.148952, 36.171326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667164, 0.125697, -0.734229,
		-0.704871, -0.212275, -0.676828,
		-0.240934, 0.969092, -0.053021,
		47.272957, 35.439682, 36.155418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.250557, 34.526501, 35.521221>,  <47.441612, 34.761314, 36.192535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.250557, 34.526501, 35.521221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.353569, 34.487591, 35.136677>,  <47.415375, 34.464245, 34.905949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.353569, 34.487591, 35.136677>,  <47.250557, 34.526501, 35.521221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.353569, 34.487591, 35.136677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324023, 0.946007, -0.008921,
		0.910323, -0.309205, 0.275146,
		0.257532, -0.097275, -0.961361,
		47.430828, 34.458408, 34.848267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.915173, 34.585747, 35.465431>,  <47.250557, 34.526501, 35.521221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.915173, 34.585747, 35.465431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.749115, 34.719090, 35.126839>,  <47.649483, 34.799095, 34.923683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.749115, 34.719090, 35.126839>,  <47.915173, 34.585747, 35.465431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.749115, 34.719090, 35.126839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376650, 0.909940, 0.173622,
		0.828126, -0.246750, -0.503311,
		-0.415142, 0.333353, -0.846483,
		47.624573, 34.819096, 34.872894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.894115, 30.927132, 27.014246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.567101, 31.043921, 26.815699>,  <39.370892, 31.113995, 26.696569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.567101, 31.043921, 26.815699>,  <39.894115, 30.927132, 27.014246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567101, 31.043921, 26.815699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546567, -0.121935, 0.828490,
		0.181372, 0.948622, 0.259269,
		-0.817538, 0.291973, -0.496370,
		39.321838, 31.131512, 26.666788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642189, 31.436188, 27.404793>,  <39.894115, 30.927132, 27.014246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642189, 31.436188, 27.404793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.320217, 31.328566, 27.193245>,  <39.127033, 31.263992, 27.066317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.320217, 31.328566, 27.193245>,  <39.642189, 31.436188, 27.404793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320217, 31.328566, 27.193245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524306, -0.094847, 0.846231,
		-0.277846, 0.958443, -0.064723,
		-0.804925, -0.269057, -0.528870,
		39.078739, 31.247849, 27.034584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153484, 31.879850, 27.704765>,  <39.642189, 31.436188, 27.404793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153484, 31.879850, 27.704765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.964161, 31.587015, 27.508797>,  <38.850567, 31.411314, 27.391216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.964161, 31.587015, 27.508797>,  <39.153484, 31.879850, 27.704765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964161, 31.587015, 27.508797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689430, -0.038336, 0.723337,
		-0.548330, 0.680128, -0.486580,
		-0.473308, -0.732090, -0.489922,
		38.822170, 31.367388, 27.361820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493126, 32.080559, 27.637602>,  <39.153484, 31.879850, 27.704765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493126, 32.080559, 27.637602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.489857, 31.680740, 27.625956>,  <38.487896, 31.440849, 27.618969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.489857, 31.680740, 27.625956>,  <38.493126, 32.080559, 27.637602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489857, 31.680740, 27.625956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730538, -0.013912, 0.682731,
		-0.682824, 0.026851, -0.730090,
		-0.008175, -0.999543, -0.029115,
		38.487404, 31.380878, 27.617222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778877, 31.908278, 27.621979>,  <38.493126, 32.080559, 27.637602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778877, 31.908278, 27.621979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.983425, 31.590443, 27.752903>,  <38.106155, 31.399742, 27.831457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.983425, 31.590443, 27.752903>,  <37.778877, 31.908278, 27.621979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983425, 31.590443, 27.752903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616176, -0.073532, 0.784168,
		-0.599024, -0.602679, -0.527208,
		0.511368, -0.794589, 0.327309,
		38.136837, 31.352066, 27.851095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305630, 31.391777, 27.799032>,  <37.778877, 31.908278, 27.621979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305630, 31.391777, 27.799032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.637642, 31.304781, 28.004456>,  <37.836849, 31.252584, 28.127710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.637642, 31.304781, 28.004456>,  <37.305630, 31.391777, 27.799032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637642, 31.304781, 28.004456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519763, 0.032209, 0.853703,
		-0.202213, -0.975531, -0.086309,
		0.830033, -0.217490, 0.513558,
		37.886654, 31.239534, 28.158524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107689, 30.854624, 28.276690>,  <37.305630, 31.391777, 27.799032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107689, 30.854624, 28.276690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.445549, 30.987673, 28.444466>,  <37.648266, 31.067503, 28.545132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.445549, 30.987673, 28.444466>,  <37.107689, 30.854624, 28.276690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445549, 30.987673, 28.444466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414798, -0.088633, 0.905586,
		0.338397, -0.938885, 0.063108,
		0.844648, 0.332624, 0.419441,
		37.698944, 31.087460, 28.570297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061695, 30.388330, 28.867638>,  <37.107689, 30.854624, 28.276690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061695, 30.388330, 28.867638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.296734, 30.701460, 28.949533>,  <37.437756, 30.889338, 28.998671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.296734, 30.701460, 28.949533>,  <37.061695, 30.388330, 28.867638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296734, 30.701460, 28.949533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454317, 0.109805, 0.884047,
		0.669571, -0.612480, 0.420171,
		0.587597, 0.782823, 0.204738,
		37.473015, 30.936306, 29.010956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310745, 30.390877, 29.614937>,  <37.061695, 30.388330, 28.867638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310745, 30.390877, 29.614937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.349171, 30.767391, 29.485476>,  <37.372227, 30.993299, 29.407799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.349171, 30.767391, 29.485476>,  <37.310745, 30.390877, 29.614937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349171, 30.767391, 29.485476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411780, 0.333607, 0.848023,
		0.906206, 0.051811, 0.419650,
		0.096061, 0.941287, -0.323651,
		37.377991, 31.049778, 29.388380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686848, 30.773737, 30.158264>,  <37.310745, 30.390877, 29.614937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686848, 30.773737, 30.158264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.486298, 31.042255, 29.939913>,  <37.365967, 31.203367, 29.808903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.486298, 31.042255, 29.939913>,  <37.686848, 30.773737, 30.158264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486298, 31.042255, 29.939913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216941, 0.513218, 0.830387,
		0.837591, 0.534760, -0.111684,
		-0.501377, 0.671296, -0.545878,
		37.335884, 31.243645, 29.776150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930454, 31.259575, 30.430370>,  <37.686848, 30.773737, 30.158264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930454, 31.259575, 30.430370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.626125, 31.416281, 30.223421>,  <37.443527, 31.510303, 30.099251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.626125, 31.416281, 30.223421>,  <37.930454, 31.259575, 30.430370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626125, 31.416281, 30.223421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227652, 0.585453, 0.778087,
		0.607725, 0.709764, -0.356238,
		-0.760819, 0.391765, -0.517374,
		37.397881, 31.533810, 30.068209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911392, 31.993696, 30.475412>,  <37.930454, 31.259575, 30.430370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911392, 31.993696, 30.475412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.533115, 31.887856, 30.399876>,  <37.306149, 31.824350, 30.354553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.533115, 31.887856, 30.399876>,  <37.911392, 31.993696, 30.475412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533115, 31.887856, 30.399876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311898, 0.574825, 0.756502,
		-0.091623, 0.774313, -0.626135,
		-0.945687, -0.264604, -0.188840,
		37.249409, 31.808474, 30.343224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587627, 32.652618, 30.470322>,  <37.911392, 31.993696, 30.475412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587627, 32.652618, 30.470322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.305000, 32.375427, 30.527653>,  <37.135426, 32.209110, 30.562052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.305000, 32.375427, 30.527653>,  <37.587627, 32.652618, 30.470322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305000, 32.375427, 30.527653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319866, 0.493427, 0.808836,
		-0.631231, 0.525648, -0.570300,
		-0.706564, -0.692982, 0.143330,
		37.093033, 32.167534, 30.570652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992580, 33.056305, 30.667103>,  <37.587627, 32.652618, 30.470322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992580, 33.056305, 30.667103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.912762, 32.682056, 30.783573>,  <36.864868, 32.457508, 30.853456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.912762, 32.682056, 30.783573>,  <36.992580, 33.056305, 30.667103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912762, 32.682056, 30.783573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560696, 0.352725, 0.749136,
		-0.803616, -0.013771, -0.594988,
		-0.199551, -0.935625, 0.291177,
		36.852898, 32.401367, 30.870926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218506, 33.029545, 30.824648>,  <36.992580, 33.056305, 30.667103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218506, 33.029545, 30.824648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.372601, 32.708942, 31.007595>,  <36.465057, 32.516582, 31.117363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.372601, 32.708942, 31.007595>,  <36.218506, 33.029545, 30.824648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372601, 32.708942, 31.007595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519966, 0.220926, 0.825122,
		-0.762383, -0.555681, -0.331647,
		0.385236, -0.801505, 0.457365,
		36.488171, 32.468491, 31.144804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706726, 32.623619, 31.183981>,  <36.218506, 33.029545, 30.824648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706726, 32.623619, 31.183981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.047955, 32.529472, 31.370262>,  <36.252689, 32.472984, 31.482031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.047955, 32.529472, 31.370262>,  <35.706726, 32.623619, 31.183981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047955, 32.529472, 31.370262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438146, 0.161601, 0.884259,
		-0.283382, -0.958378, 0.034732,
		0.853067, -0.235366, 0.465704,
		36.303875, 32.458862, 31.509974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517929, 32.162609, 31.741806>,  <35.706726, 32.623619, 31.183981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517929, 32.162609, 31.741806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.881302, 32.301224, 31.835333>,  <36.099323, 32.384392, 31.891449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.881302, 32.301224, 31.835333>,  <35.517929, 32.162609, 31.741806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881302, 32.301224, 31.835333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289645, 0.118451, 0.949777,
		0.301437, -0.930527, 0.207977,
		0.908428, 0.346538, 0.233817,
		36.153831, 32.405186, 31.905478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604622, 31.962505, 32.476891>,  <35.517929, 32.162609, 31.741806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604622, 31.962505, 32.476891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.907898, 32.216537, 32.417793>,  <36.089863, 32.368958, 32.382336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.907898, 32.216537, 32.417793>,  <35.604622, 31.962505, 32.476891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907898, 32.216537, 32.417793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159261, 0.400090, 0.902532,
		0.632287, -0.660759, 0.404487,
		0.758187, 0.635078, -0.147739,
		36.135353, 32.407063, 32.373470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995975, 32.013927, 33.157234>,  <35.604622, 31.962505, 32.476891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995975, 32.013927, 33.157234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.084057, 32.348198, 32.955975>,  <36.136906, 32.548759, 32.835217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.084057, 32.348198, 32.955975>,  <35.995975, 32.013927, 33.157234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084057, 32.348198, 32.955975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063555, 0.527009, 0.847480,
		0.973382, -0.154636, 0.169158,
		0.220199, 0.835673, -0.503153,
		36.150116, 32.598900, 32.805027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490562, 32.318737, 33.578007>,  <35.995975, 32.013927, 33.157234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490562, 32.318737, 33.578007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.347755, 32.621479, 33.359024>,  <36.262070, 32.803123, 33.227634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.347755, 32.621479, 33.359024>,  <36.490562, 32.318737, 33.578007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347755, 32.621479, 33.359024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023755, 0.578539, 0.815308,
		0.933796, 0.304084, -0.188569,
		-0.357016, 0.756852, -0.547461,
		36.240650, 32.848534, 33.194786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956421, 32.860596, 33.536556>,  <36.490562, 32.318737, 33.578007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956421, 32.860596, 33.536556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.579357, 32.990345, 33.505123>,  <36.353119, 33.068195, 33.486263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.579357, 32.990345, 33.505123>,  <36.956421, 32.860596, 33.536556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579357, 32.990345, 33.505123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151009, 0.624497, 0.766289,
		0.297637, 0.710484, -0.637672,
		-0.942660, 0.324371, -0.078584,
		36.296558, 33.087658, 33.481548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232708, 33.546410, 33.822273>,  <36.956421, 32.860596, 33.536556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232708, 33.546410, 33.822273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.395920, 33.907284, 33.878235>,  <37.493847, 34.123806, 33.911812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.395920, 33.907284, 33.878235>,  <37.232708, 33.546410, 33.822273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395920, 33.907284, 33.878235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539687, -0.114751, -0.834008,
		-0.736374, 0.415810, -0.533719,
		0.408034, 0.902183, 0.139908,
		37.518330, 34.177940, 33.920208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285889, 33.872105, 33.215931>,  <37.232708, 33.546410, 33.822273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285889, 33.872105, 33.215931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.566113, 34.048668, 33.440208>,  <37.734245, 34.154606, 33.574776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.566113, 34.048668, 33.440208>,  <37.285889, 33.872105, 33.215931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566113, 34.048668, 33.440208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664834, -0.118259, -0.737571,
		-0.259260, 0.889480, -0.376309,
		0.700557, 0.441406, 0.560697,
		37.776279, 34.181091, 33.608418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447899, 34.445160, 32.829224>,  <37.285889, 33.872105, 33.215931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447899, 34.445160, 32.829224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.742336, 34.363983, 33.087521>,  <37.918999, 34.315277, 33.242496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.742336, 34.363983, 33.087521>,  <37.447899, 34.445160, 32.829224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742336, 34.363983, 33.087521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636254, -0.118078, -0.762390,
		0.230968, 0.972045, 0.042206,
		0.736094, -0.202942, 0.645740,
		37.963165, 34.303101, 33.281242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078835, 34.985718, 32.734402>,  <37.447899, 34.445160, 32.829224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078835, 34.985718, 32.734402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.241737, 34.653564, 32.886517>,  <38.339478, 34.454273, 32.977783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.241737, 34.653564, 32.886517>,  <38.078835, 34.985718, 32.734402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241737, 34.653564, 32.886517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674139, -0.007608, -0.738566,
		0.616182, 0.557148, 0.556692,
		0.407255, -0.830379, 0.380283,
		38.363914, 34.404449, 33.000603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717407, 35.138039, 32.730961>,  <38.078835, 34.985718, 32.734402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717407, 35.138039, 32.730961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.756676, 34.742390, 32.774769>,  <38.780239, 34.505001, 32.801052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.756676, 34.742390, 32.774769>,  <38.717407, 35.138039, 32.730961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756676, 34.742390, 32.774769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728077, -0.003635, -0.685485,
		0.678428, 0.147037, 0.719802,
		0.098175, -0.989124, 0.109520,
		38.786129, 34.445652, 32.807625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374489, 35.070255, 32.818607>,  <38.717407, 35.138039, 32.730961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374489, 35.070255, 32.818607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.224045, 34.721432, 32.693356>,  <39.133778, 34.512138, 32.618206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.224045, 34.721432, 32.693356>,  <39.374489, 35.070255, 32.818607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224045, 34.721432, 32.693356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759447, -0.096527, -0.643368,
		0.530832, -0.479781, 0.698590,
		-0.376108, -0.872063, -0.313129,
		39.111214, 34.459812, 32.599419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002266, 34.662678, 32.863411>,  <39.374489, 35.070255, 32.818607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002266, 34.662678, 32.863411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.719662, 34.477478, 32.649319>,  <39.550098, 34.366360, 32.520863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.719662, 34.477478, 32.649319>,  <40.002266, 34.662678, 32.863411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719662, 34.477478, 32.649319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645785, -0.112425, -0.755197,
		0.289480, -0.879201, 0.378427,
		-0.706514, -0.462997, -0.535230,
		39.507706, 34.338577, 32.488750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.388092, 34.029404, 32.662762>,  <40.002266, 34.662678, 32.863411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.388092, 34.029404, 32.662762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.093452, 34.109631, 32.404396>,  <39.916668, 34.157768, 32.249378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.093452, 34.109631, 32.404396>,  <40.388092, 34.029404, 32.662762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.093452, 34.109631, 32.404396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619164, -0.184309, -0.763326,
		-0.272148, -0.962186, 0.011575,
		-0.736595, 0.200571, -0.645910,
		39.872475, 34.169800, 32.210625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437454, 33.503651, 32.211411>,  <40.388092, 34.029404, 32.662762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437454, 33.503651, 32.211411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.238377, 33.783348, 32.006134>,  <40.118931, 33.951164, 31.882969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.238377, 33.783348, 32.006134>,  <40.437454, 33.503651, 32.211411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.238377, 33.783348, 32.006134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463458, -0.285730, -0.838788,
		-0.733148, -0.655301, -0.181863,
		-0.497695, 0.699241, -0.513187,
		40.089069, 33.993122, 31.852179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048176, 33.137127, 31.664478>,  <40.437454, 33.503651, 32.211411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048176, 33.137127, 31.664478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.077408, 33.516987, 31.542610>,  <40.094948, 33.744904, 31.469490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.077408, 33.516987, 31.542610>,  <40.048176, 33.137127, 31.664478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077408, 33.516987, 31.542610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321462, -0.311611, -0.894181,
		-0.944098, -0.032595, -0.328048,
		0.073077, 0.949650, -0.304670,
		40.099331, 33.801884, 31.451210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749340, 33.126907, 30.987463>,  <40.048176, 33.137127, 31.664478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749340, 33.126907, 30.987463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.988823, 33.445892, 31.017410>,  <40.132515, 33.637283, 31.035378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.988823, 33.445892, 31.017410>,  <39.749340, 33.126907, 30.987463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988823, 33.445892, 31.017410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504629, -0.302965, -0.808432,
		-0.622008, 0.521797, -0.583809,
		0.598711, 0.797458, 0.074867,
		40.168438, 33.685131, 31.039871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673988, 33.408085, 30.403004>,  <39.749340, 33.126907, 30.987463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673988, 33.408085, 30.403004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.014202, 33.569099, 30.538389>,  <40.218330, 33.665707, 30.619621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.014202, 33.569099, 30.538389>,  <39.673988, 33.408085, 30.403004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014202, 33.569099, 30.538389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342602, 0.064201, -0.937285,
		-0.399017, 0.913152, -0.083303,
		0.850535, 0.402532, 0.338465,
		40.269363, 33.689857, 30.639929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819626, 33.994076, 30.010172>,  <39.673988, 33.408085, 30.403004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819626, 33.994076, 30.010172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.174831, 33.913136, 30.175327>,  <40.387955, 33.864571, 30.274422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.174831, 33.913136, 30.175327>,  <39.819626, 33.994076, 30.010172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174831, 33.913136, 30.175327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400975, -0.098692, -0.910757,
		0.225039, 0.974328, -0.006504,
		0.888018, -0.202348, 0.412891,
		40.441238, 33.852432, 30.299194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328568, 34.273945, 29.606188>,  <39.819626, 33.994076, 30.010172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328568, 34.273945, 29.606188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.548645, 34.002201, 29.800407>,  <40.680691, 33.839157, 29.916939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.548645, 34.002201, 29.800407>,  <40.328568, 34.273945, 29.606188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.548645, 34.002201, 29.800407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516488, -0.180040, -0.837153,
		0.656144, 0.711380, 0.251822,
		0.550196, -0.679356, 0.485551,
		40.713703, 33.798393, 29.946074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957016, 34.354076, 29.352381>,  <40.328568, 34.273945, 29.606188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.957016, 34.354076, 29.352381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.027748, 34.004452, 29.533379>,  <41.070187, 33.794678, 29.641977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.027748, 34.004452, 29.533379>,  <40.957016, 34.354076, 29.352381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.027748, 34.004452, 29.533379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571676, -0.283031, -0.770117,
		0.801198, 0.394858, 0.449631,
		0.176828, -0.874060, 0.452495,
		41.080795, 33.742233, 29.669127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.646168, 34.145210, 29.320438>,  <40.957016, 34.354076, 29.352381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.646168, 34.145210, 29.320438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.424694, 33.813145, 29.346588>,  <41.291809, 33.613907, 29.362278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.424694, 33.813145, 29.346588>,  <41.646168, 34.145210, 29.320438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.424694, 33.813145, 29.346588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391658, -0.328891, -0.859322,
		0.734876, -0.450184, 0.507239,
		-0.553679, -0.830160, 0.065376,
		41.258591, 33.564098, 29.366201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.102299, 33.657806, 29.229986>,  <41.646168, 34.145210, 29.320438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.102299, 33.657806, 29.229986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.759338, 33.469440, 29.146938>,  <41.553562, 33.356422, 29.097109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.759338, 33.469440, 29.146938>,  <42.102299, 33.657806, 29.229986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.759338, 33.469440, 29.146938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440542, -0.463005, -0.769123,
		0.266061, -0.750911, 0.604437,
		-0.857400, -0.470913, -0.207620,
		41.502117, 33.328167, 29.084652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.323158, 32.922241, 29.041096>,  <42.102299, 33.657806, 29.229986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.323158, 32.922241, 29.041096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.955059, 32.961052, 28.889454>,  <41.734200, 32.984341, 28.798468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.955059, 32.961052, 28.889454>,  <42.323158, 32.922241, 29.041096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.955059, 32.961052, 28.889454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296258, -0.460199, -0.836928,
		-0.255671, -0.882497, 0.394753,
		-0.920252, 0.097030, -0.379106,
		41.678982, 32.990162, 28.775723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264149, 32.261768, 28.707434>,  <42.323158, 32.922241, 29.041096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.264149, 32.261768, 28.707434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.015846, 32.528938, 28.543222>,  <41.866863, 32.689240, 28.444696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.015846, 32.528938, 28.543222>,  <42.264149, 32.261768, 28.707434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.015846, 32.528938, 28.543222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183201, -0.385554, -0.904315,
		-0.762298, -0.636569, 0.116970,
		-0.620757, 0.667928, -0.410527,
		41.829620, 32.729317, 28.420065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.859089, 31.771898, 28.203667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.805779, 32.148670, 28.080372>,  <41.773792, 32.374733, 28.006395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.805779, 32.148670, 28.080372>,  <41.859089, 31.771898, 28.203667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.805779, 32.148670, 28.080372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055154, -0.303479, -0.951241,
		-0.989543, -0.143781, -0.011504,
		-0.133279, 0.941928, -0.308236,
		41.765793, 32.431248, 27.987902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.274086, 31.822939, 27.699986>,  <41.859089, 31.771898, 28.203667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.274086, 31.822939, 27.699986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.510780, 32.137112, 27.627382>,  <41.652798, 32.325615, 27.583820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.510780, 32.137112, 27.627382>,  <41.274086, 31.822939, 27.699986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.510780, 32.137112, 27.627382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029008, -0.245761, -0.968896,
		-0.805608, 0.568068, -0.168210,
		0.591738, 0.785430, -0.181509,
		41.688301, 32.372742, 27.572929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984528, 32.103828, 27.079643>,  <41.274086, 31.822939, 27.699986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.984528, 32.103828, 27.079643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.325756, 32.311569, 27.099813>,  <41.530495, 32.436214, 27.111916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.325756, 32.311569, 27.099813>,  <40.984528, 32.103828, 27.079643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.325756, 32.311569, 27.099813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205292, -0.245215, -0.947483,
		-0.479709, 0.818625, -0.315805,
		0.853073, 0.519349, 0.050425,
		41.581676, 32.467373, 27.114941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.062851, 32.501915, 26.417858>,  <40.984528, 32.103828, 27.079643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.062851, 32.501915, 26.417858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.431572, 32.444340, 26.561836>,  <41.652805, 32.409794, 26.648224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.431572, 32.444340, 26.561836>,  <41.062851, 32.501915, 26.417858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.431572, 32.444340, 26.561836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281841, -0.388688, -0.877204,
		0.266166, 0.910058, -0.317727,
		0.921803, -0.143934, 0.359947,
		41.708115, 32.401161, 26.669821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555248, 33.025284, 26.009726>,  <41.062851, 32.501915, 26.417858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.555248, 33.025284, 26.009726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.727367, 32.688469, 26.139847>,  <41.830639, 32.486382, 26.217920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.727367, 32.688469, 26.139847>,  <41.555248, 33.025284, 26.009726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.727367, 32.688469, 26.139847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435494, -0.122016, -0.891884,
		0.790688, 0.525446, 0.314197,
		0.430300, -0.842033, 0.325305,
		41.856457, 32.435860, 26.237438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.161133, 33.078682, 25.668919>,  <41.555248, 33.025284, 26.009726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.161133, 33.078682, 25.668919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.181221, 32.699654, 25.795151>,  <42.193275, 32.472237, 25.870890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.181221, 32.699654, 25.795151>,  <42.161133, 33.078682, 25.668919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.181221, 32.699654, 25.795151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217902, -0.297970, -0.929372,
		0.974678, 0.115442, 0.191512,
		0.050224, -0.947569, 0.315579,
		42.196289, 32.415382, 25.889824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.710598, 32.760147, 25.284788>,  <42.161133, 33.078682, 25.668919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.710598, 32.760147, 25.284788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.516449, 32.442375, 25.430828>,  <42.399960, 32.251713, 25.518452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.516449, 32.442375, 25.430828>,  <42.710598, 32.760147, 25.284788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.516449, 32.442375, 25.430828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157899, -0.490367, -0.857093,
		0.859932, -0.358360, 0.363449,
		-0.485371, -0.794429, 0.365098,
		42.370838, 32.204048, 25.540358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.121002, 32.234447, 25.045614>,  <42.710598, 32.760147, 25.284788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.121002, 32.234447, 25.045614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.788010, 32.039639, 25.151278>,  <42.588215, 31.922752, 25.214676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.788010, 32.039639, 25.151278>,  <43.121002, 32.234447, 25.045614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.788010, 32.039639, 25.151278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137537, -0.643508, -0.752981,
		0.536708, -0.590513, 0.602693,
		-0.832483, -0.487024, 0.264159,
		42.538265, 31.893532, 25.230526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.234909, 31.423754, 25.107508>,  <43.121002, 32.234447, 25.045614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.234909, 31.423754, 25.107508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.844700, 31.461956, 25.028282>,  <42.610573, 31.484879, 24.980747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.844700, 31.461956, 25.028282>,  <43.234909, 31.423754, 25.107508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.844700, 31.461956, 25.028282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110684, -0.565038, -0.817607,
		-0.190002, -0.819518, 0.540638,
		-0.975525, 0.095507, -0.198065,
		42.552044, 31.490608, 24.968863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.903088, 30.770006, 24.906475>,  <43.234909, 31.423754, 25.107508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.903088, 30.770006, 24.906475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.655731, 31.049683, 24.762960>,  <42.507317, 31.217487, 24.676851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.655731, 31.049683, 24.762960>,  <42.903088, 30.770006, 24.906475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.655731, 31.049683, 24.762960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089223, -0.391130, -0.916000,
		-0.780790, -0.598457, 0.179487,
		-0.618390, 0.699190, -0.358787,
		42.470215, 31.259439, 24.655325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.504337, 30.385984, 24.434807>,  <42.903088, 30.770006, 24.906475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.504337, 30.385984, 24.434807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.435127, 30.760294, 24.311916>,  <42.393600, 30.984880, 24.238182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.435127, 30.760294, 24.311916>,  <42.504337, 30.385984, 24.434807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.435127, 30.760294, 24.311916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155018, -0.282167, -0.946758,
		-0.972642, -0.211436, -0.096240,
		-0.173023, 0.935775, -0.307224,
		42.383221, 31.041027, 24.219749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.189461, 30.286982, 23.780170>,  <42.504337, 30.385984, 24.434807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.189461, 30.286982, 23.780170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.334621, 30.659502, 23.792711>,  <42.421719, 30.883015, 23.800236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.334621, 30.659502, 23.792711>,  <42.189461, 30.286982, 23.780170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.334621, 30.659502, 23.792711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107024, -0.008232, -0.994222,
		-0.925662, 0.364159, -0.102659,
		0.362900, 0.931300, 0.031354,
		42.443493, 30.938892, 23.802118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997028, 30.466433, 23.192104>,  <42.189461, 30.286982, 23.780170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.997028, 30.466433, 23.192104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.267040, 30.747561, 23.281883>,  <42.429047, 30.916237, 23.335751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.267040, 30.747561, 23.281883>,  <41.997028, 30.466433, 23.192104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.267040, 30.747561, 23.281883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351797, -0.039211, -0.935255,
		-0.648515, 0.710287, -0.273718,
		0.675032, 0.702820, 0.224448,
		42.469551, 30.958406, 23.349218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031136, 30.982660, 22.609955>,  <41.997028, 30.466433, 23.192104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.031136, 30.982660, 22.609955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.367085, 31.048004, 22.817001>,  <42.568653, 31.087210, 22.941229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.367085, 31.048004, 22.817001>,  <42.031136, 30.982660, 22.609955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.367085, 31.048004, 22.817001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519542, 0.034096, -0.853764,
		-0.157119, 0.985977, -0.056236,
		0.839875, 0.163359, 0.517614,
		42.619045, 31.097012, 22.972286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.395958, 31.620094, 22.285244>,  <42.031136, 30.982660, 22.609955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.395958, 31.620094, 22.285244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.676125, 31.407598, 22.475908>,  <42.844223, 31.280102, 22.590307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.676125, 31.407598, 22.475908>,  <42.395958, 31.620094, 22.285244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.676125, 31.407598, 22.475908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502967, -0.106461, -0.857724,
		0.506403, 0.840506, 0.192629,
		0.700414, -0.531240, 0.476659,
		42.886250, 31.248226, 22.618906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.934708, 31.993881, 22.099085>,  <42.395958, 31.620094, 22.285244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.934708, 31.993881, 22.099085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.043156, 31.630440, 22.226168>,  <43.108223, 31.412374, 22.302418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.043156, 31.630440, 22.226168>,  <42.934708, 31.993881, 22.099085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.043156, 31.630440, 22.226168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558104, -0.120532, -0.820970,
		0.784229, 0.399893, 0.474416,
		0.271117, -0.908602, 0.317706,
		43.124493, 31.357859, 22.321480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.665382, 31.883015, 21.931522>,  <42.934708, 31.993881, 22.099085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.665382, 31.883015, 21.931522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.537781, 31.504549, 21.953465>,  <43.461220, 31.277470, 21.966629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.537781, 31.504549, 21.953465>,  <43.665382, 31.883015, 21.931522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.537781, 31.504549, 21.953465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488919, -0.213871, -0.845706,
		0.811909, -0.242961, 0.530823,
		-0.319001, -0.946166, 0.054856,
		43.442081, 31.220699, 21.969921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.227283, 31.420229, 21.679300>,  <43.665382, 31.883015, 21.931522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.227283, 31.420229, 21.679300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.887955, 31.210472, 21.650015>,  <43.684357, 31.084618, 21.632444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.887955, 31.210472, 21.650015>,  <44.227283, 31.420229, 21.679300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.887955, 31.210472, 21.650015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286308, -0.337998, -0.896541,
		0.445392, -0.781518, 0.436869,
		-0.848324, -0.524391, -0.073213,
		43.633457, 31.053154, 21.628052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.439278, 31.156143, 21.095112>,  <44.227283, 31.420229, 21.679300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.439278, 31.156143, 21.095112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.088406, 30.975965, 21.161623>,  <43.877880, 30.867859, 21.201530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.088406, 30.975965, 21.161623>,  <44.439278, 31.156143, 21.095112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.088406, 30.975965, 21.161623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029725, -0.396580, -0.917519,
		0.479234, -0.799890, 0.361262,
		-0.877183, -0.450445, 0.166278,
		43.825249, 30.840832, 21.211506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.440750, 30.304605, 21.014128>,  <44.439278, 31.156143, 21.095112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.440750, 30.304605, 21.014128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.083771, 30.467148, 20.935734>,  <43.869583, 30.564672, 20.888697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.083771, 30.467148, 20.935734>,  <44.440750, 30.304605, 21.014128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.083771, 30.467148, 20.935734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004081, -0.441667, -0.897170,
		-0.451142, -0.799873, 0.395820,
		-0.892443, 0.406366, -0.195990,
		43.816036, 30.589054, 20.876938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.050701, 29.730274, 20.688250>,  <44.440750, 30.304605, 21.014128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.050701, 29.730274, 20.688250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.848087, 30.065538, 20.607346>,  <43.726517, 30.266697, 20.558804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.848087, 30.065538, 20.607346>,  <44.050701, 29.730274, 20.688250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.848087, 30.065538, 20.607346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172370, -0.328285, -0.928718,
		-0.844814, -0.435566, 0.310762,
		-0.506536, 0.838160, -0.202261,
		43.696125, 30.316986, 20.546667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.416195, 29.494282, 20.347094>,  <44.050701, 29.730274, 20.688250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.416195, 29.494282, 20.347094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.507217, 29.872442, 20.253771>,  <43.561829, 30.099339, 20.197777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.507217, 29.872442, 20.253771>,  <43.416195, 29.494282, 20.347094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.507217, 29.872442, 20.253771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122463, -0.209908, -0.970021,
		-0.966034, 0.249304, 0.068011,
		0.227554, 0.945403, -0.233309,
		43.575485, 30.156063, 20.183779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.939266, 29.590361, 19.892426>,  <43.416195, 29.494282, 20.347094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.939266, 29.590361, 19.892426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.208271, 29.878498, 19.824511>,  <43.369675, 30.051380, 19.783762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.208271, 29.878498, 19.824511>,  <42.939266, 29.590361, 19.892426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.208271, 29.878498, 19.824511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057452, -0.177909, -0.982368,
		-0.737850, 0.670412, -0.078262,
		0.672515, 0.720344, -0.169787,
		43.410027, 30.094601, 19.773575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.720028, 29.927826, 19.347601>,  <42.939266, 29.590361, 19.892426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.720028, 29.927826, 19.347601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.107552, 30.026867, 19.351759>,  <43.340065, 30.086292, 19.354254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.107552, 30.026867, 19.351759>,  <42.720028, 29.927826, 19.347601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.107552, 30.026867, 19.351759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061862, -0.201011, -0.977634,
		-0.239976, 0.947781, -0.210058,
		0.968806, 0.247603, 0.010394,
		43.398193, 30.101149, 19.354877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.114338, 30.341055, 19.003160>,  <42.720028, 29.927826, 19.347601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.114338, 30.341055, 19.003160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.737049, 30.225729, 18.937176>,  <41.510677, 30.156534, 18.897585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.737049, 30.225729, 18.937176>,  <42.114338, 30.341055, 19.003160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.737049, 30.225729, 18.937176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282334, 0.434225, 0.855416,
		-0.174999, 0.853419, -0.490971,
		-0.943219, -0.288314, -0.164961,
		41.454082, 30.139235, 18.887688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757469, 30.819752, 19.282097>,  <42.114338, 30.341055, 19.003160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.757469, 30.819752, 19.282097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.472195, 30.540071, 19.262171>,  <41.301029, 30.372263, 19.250216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.472195, 30.540071, 19.262171>,  <41.757469, 30.819752, 19.282097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.472195, 30.540071, 19.262171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349335, 0.292913, 0.890038,
		-0.607723, 0.652167, -0.453157,
		-0.713188, -0.699200, -0.049815,
		41.258240, 30.330311, 19.247227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.205162, 31.179874, 19.529243>,  <41.757469, 30.819752, 19.282097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.205162, 31.179874, 19.529243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.094147, 30.797205, 19.564461>,  <41.027538, 30.567604, 19.585590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.094147, 30.797205, 19.564461>,  <41.205162, 31.179874, 19.529243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094147, 30.797205, 19.564461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510993, 0.224599, 0.829723,
		-0.813548, 0.185288, -0.551188,
		-0.277534, -0.956673, 0.088041,
		41.010887, 30.510202, 19.590874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531326, 31.211460, 19.621412>,  <41.205162, 31.179874, 19.529243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531326, 31.211460, 19.621412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.644051, 30.855997, 19.766115>,  <40.711685, 30.642719, 19.852938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.644051, 30.855997, 19.766115>,  <40.531326, 31.211460, 19.621412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644051, 30.855997, 19.766115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490361, 0.190680, 0.850404,
		-0.824698, -0.417048, -0.382027,
		0.281814, -0.888657, 0.361758,
		40.728596, 30.589399, 19.874643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933525, 30.901531, 19.851591>,  <40.531326, 31.211460, 19.621412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933525, 30.901531, 19.851591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.250557, 30.743298, 20.037207>,  <40.440777, 30.648357, 20.148577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.250557, 30.743298, 20.037207>,  <39.933525, 30.901531, 19.851591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250557, 30.743298, 20.037207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357291, 0.315404, 0.879127,
		-0.494129, -0.862574, 0.108643,
		0.792578, -0.395585, 0.464040,
		40.488331, 30.624622, 20.176418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684288, 30.494989, 20.548199>,  <39.933525, 30.901531, 19.851591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684288, 30.494989, 20.548199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.075268, 30.560091, 20.602020>,  <40.309856, 30.599152, 20.634314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.075268, 30.560091, 20.602020>,  <39.684288, 30.494989, 20.548199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075268, 30.560091, 20.602020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184083, 0.344456, 0.920578,
		0.103480, -0.924587, 0.366649,
		0.977449, 0.162755, 0.134556,
		40.368504, 30.608917, 20.642387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766129, 30.191628, 21.143545>,  <39.684288, 30.494989, 20.548199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766129, 30.191628, 21.143545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.081982, 30.433325, 21.100876>,  <40.271492, 30.578342, 21.075274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.081982, 30.433325, 21.100876>,  <39.766129, 30.191628, 21.143545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081982, 30.433325, 21.100876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152487, 0.361648, 0.919760,
		0.594336, -0.710002, 0.377707,
		0.789628, 0.604242, -0.106674,
		40.318871, 30.614597, 21.068874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203640, 29.975548, 21.594978>,  <39.766129, 30.191628, 21.143545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203640, 29.975548, 21.594978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.287514, 30.355608, 21.502678>,  <40.337837, 30.583645, 21.447298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.287514, 30.355608, 21.502678>,  <40.203640, 29.975548, 21.594978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287514, 30.355608, 21.502678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028268, 0.241791, 0.969917,
		0.977360, -0.196855, 0.077559,
		0.209685, 0.950150, -0.230752,
		40.350418, 30.640654, 21.433453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624989, 30.154068, 22.148901>,  <40.203640, 29.975548, 21.594978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624989, 30.154068, 22.148901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.551685, 30.513969, 21.990480>,  <40.507702, 30.729910, 21.895428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.551685, 30.513969, 21.990480>,  <40.624989, 30.154068, 22.148901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551685, 30.513969, 21.990480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072289, 0.414117, 0.907349,
		0.980403, 0.137650, -0.140933,
		-0.183259, 0.899755, -0.396051,
		40.496708, 30.783895, 21.871664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949211, 30.508408, 22.609947>,  <40.624989, 30.154068, 22.148901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.949211, 30.508408, 22.609947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.681816, 30.762089, 22.454559>,  <40.521378, 30.914297, 22.361326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.681816, 30.762089, 22.454559>,  <40.949211, 30.508408, 22.609947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681816, 30.762089, 22.454559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103330, 0.438064, 0.892985,
		0.736507, 0.637093, -0.227310,
		-0.668491, 0.634202, -0.388468,
		40.481270, 30.952349, 22.338018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.142563, 31.096949, 22.969780>,  <40.949211, 30.508408, 22.609947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.142563, 31.096949, 22.969780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.769039, 31.127310, 22.829933>,  <40.544926, 31.145527, 22.746025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.769039, 31.127310, 22.829933>,  <41.142563, 31.096949, 22.969780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.769039, 31.127310, 22.829933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287838, 0.420972, 0.860193,
		0.212470, 0.903893, -0.371261,
		-0.933813, 0.075902, -0.349618,
		40.488895, 31.150080, 22.725048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953964, 31.736736, 23.066383>,  <41.142563, 31.096949, 22.969780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.953964, 31.736736, 23.066383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.623615, 31.511314, 23.059072>,  <40.425404, 31.376062, 23.054686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.623615, 31.511314, 23.059072>,  <40.953964, 31.736736, 23.066383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.623615, 31.511314, 23.059072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323594, 0.447175, 0.833859,
		-0.461750, 0.694580, -0.551674,
		-0.825877, -0.563554, -0.018279,
		40.375851, 31.342249, 23.053589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.494415, 32.144398, 23.426971>,  <40.953964, 31.736736, 23.066383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.494415, 32.144398, 23.426971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.352482, 31.770685, 23.440948>,  <40.267323, 31.546459, 23.449335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.352482, 31.770685, 23.440948>,  <40.494415, 32.144398, 23.426971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352482, 31.770685, 23.440948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452087, 0.204175, 0.868292,
		-0.818359, 0.292301, -0.494822,
		-0.354832, -0.934277, 0.034943,
		40.246033, 31.490402, 23.451431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924767, 32.297138, 23.753860>,  <40.494415, 32.144398, 23.426971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924767, 32.297138, 23.753860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.956585, 31.899288, 23.780352>,  <39.975677, 31.660578, 23.796246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.956585, 31.899288, 23.780352>,  <39.924767, 32.297138, 23.753860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956585, 31.899288, 23.780352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406414, 0.028305, 0.913250,
		-0.910219, -0.099563, -0.401980,
		0.079548, -0.994629, 0.066228,
		39.980450, 31.600899, 23.800220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389202, 32.147999, 24.218342>,  <39.924767, 32.297138, 23.753860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389202, 32.147999, 24.218342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.610680, 31.814936, 24.214245>,  <39.743565, 31.615097, 24.211786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.610680, 31.814936, 24.214245>,  <39.389202, 32.147999, 24.218342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610680, 31.814936, 24.214245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336527, -0.234996, 0.911881,
		-0.761693, -0.501454, -0.410327,
		0.553691, -0.832659, -0.010242,
		39.776787, 31.565138, 24.211172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925037, 31.513504, 24.366846>,  <39.389202, 32.147999, 24.218342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925037, 31.513504, 24.366846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.287174, 31.370279, 24.458193>,  <39.504456, 31.284344, 24.513000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.287174, 31.370279, 24.458193>,  <38.925037, 31.513504, 24.366846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287174, 31.370279, 24.458193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273214, -0.079385, 0.958672,
		-0.325136, -0.930317, -0.169698,
		0.905340, -0.358063, 0.228365,
		39.558777, 31.262859, 24.526703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816841, 30.878422, 24.685974>,  <38.925037, 31.513504, 24.366846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816841, 30.878422, 24.685974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.169579, 31.013638, 24.817476>,  <39.381222, 31.094767, 24.896378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.169579, 31.013638, 24.817476>,  <38.816841, 30.878422, 24.685974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169579, 31.013638, 24.817476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337192, -0.035302, 0.940774,
		0.329622, -0.940470, 0.082853,
		0.881845, 0.338037, 0.328755,
		39.434132, 31.115049, 24.916103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905281, 30.457031, 25.214666>,  <38.816841, 30.878422, 24.685974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905281, 30.457031, 25.214666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.165340, 30.748699, 25.300104>,  <39.321377, 30.923700, 25.351368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.165340, 30.748699, 25.300104>,  <38.905281, 30.457031, 25.214666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.165340, 30.748699, 25.300104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174803, -0.130035, 0.975979,
		0.739430, -0.671863, 0.042919,
		0.650144, 0.729171, 0.213596,
		39.360382, 30.967451, 25.364183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368320, 30.200836, 25.770136>,  <38.905281, 30.457031, 25.214666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368320, 30.200836, 25.770136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.365665, 30.600826, 25.768896>,  <39.364071, 30.840820, 25.768152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.365665, 30.600826, 25.768896>,  <39.368320, 30.200836, 25.770136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365665, 30.600826, 25.768896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258905, 0.001276, 0.965902,
		0.965880, 0.007218, 0.258890,
		-0.006641, 0.999973, -0.003101,
		39.363674, 30.900818, 25.767965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.784645, 30.351902, 26.289762>,  <39.368320, 30.200836, 25.770136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.784645, 30.351902, 26.289762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.554901, 30.671183, 26.217115>,  <39.417053, 30.862751, 26.173527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.554901, 30.671183, 26.217115>,  <39.784645, 30.351902, 26.289762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554901, 30.671183, 26.217115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332863, -0.025039, 0.942643,
		0.747869, 0.601873, 0.280072,
		-0.574364, 0.798199, -0.181616,
		39.382591, 30.910643, 26.162630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.552216, 33.534492, 30.823467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.198540, 33.624493, 30.659716>,  <40.986336, 33.678493, 30.561464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.198540, 33.624493, 30.659716>,  <41.552216, 33.534492, 30.823467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198540, 33.624493, 30.659716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260164, 0.490677, 0.831596,
		0.387984, 0.841789, -0.375311,
		-0.884185, 0.225004, -0.409378,
		40.933285, 33.691994, 30.536901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.396221, 34.126774, 31.067213>,  <41.552216, 33.534492, 30.823467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.396221, 34.126774, 31.067213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.040020, 34.019890, 30.919918>,  <40.826298, 33.955761, 30.831541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.040020, 34.019890, 30.919918>,  <41.396221, 34.126774, 31.067213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.040020, 34.019890, 30.919918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453905, 0.466441, 0.759212,
		-0.031107, 0.843228, -0.536656,
		-0.890507, -0.267207, -0.368236,
		40.772869, 33.939728, 30.809448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949039, 34.723026, 31.188282>,  <41.396221, 34.126774, 31.067213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.949039, 34.723026, 31.188282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.717312, 34.398067, 31.161741>,  <40.578274, 34.203091, 31.145817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.717312, 34.398067, 31.161741>,  <40.949039, 34.723026, 31.188282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717312, 34.398067, 31.161741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633990, 0.397939, 0.663100,
		-0.512296, 0.426212, -0.745584,
		-0.579318, -0.812396, -0.066352,
		40.543518, 34.154350, 31.141836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355145, 35.082031, 31.149939>,  <40.949039, 34.723026, 31.188282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355145, 35.082031, 31.149939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.285885, 34.701679, 31.252584>,  <40.244331, 34.473469, 31.314171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.285885, 34.701679, 31.252584>,  <40.355145, 35.082031, 31.149939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285885, 34.701679, 31.252584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780116, 0.291452, 0.553602,
		-0.601199, -0.104333, -0.792259,
		-0.173146, -0.950879, 0.256613,
		40.233940, 34.416416, 31.329569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516575, 34.989929, 31.231672>,  <40.355145, 35.082031, 31.149939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516575, 34.989929, 31.231672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.680691, 34.684422, 31.430998>,  <39.779160, 34.501118, 31.550592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.680691, 34.684422, 31.430998>,  <39.516575, 34.989929, 31.231672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680691, 34.684422, 31.430998> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816764, -0.064697, 0.573334,
		-0.405656, -0.642239, -0.650364,
		0.410293, -0.763770, 0.498312,
		39.803780, 34.455292, 31.580492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123196, 34.256149, 31.231771>,  <39.516575, 34.989929, 31.231672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123196, 34.256149, 31.231771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.329445, 34.260609, 31.574469>,  <39.453194, 34.263283, 31.780087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.329445, 34.260609, 31.574469>,  <39.123196, 34.256149, 31.231771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329445, 34.260609, 31.574469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837878, -0.202500, 0.506907,
		0.179140, -0.979219, -0.095076,
		0.515626, 0.011145, 0.856742,
		39.484131, 34.263950, 31.831491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823048, 33.663383, 31.639675>,  <39.123196, 34.256149, 31.231771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823048, 33.663383, 31.639675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.000393, 33.897964, 31.910824>,  <39.106800, 34.038712, 32.073513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.000393, 33.897964, 31.910824>,  <38.823048, 33.663383, 31.639675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000393, 33.897964, 31.910824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678361, -0.274785, 0.681410,
		0.585880, -0.761953, 0.275994,
		0.443363, 0.586448, 0.677870,
		39.133400, 34.073898, 32.114185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874744, 33.236111, 32.237350>,  <38.823048, 33.663383, 31.639675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874744, 33.236111, 32.237350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.923420, 33.613529, 32.360577>,  <38.952625, 33.839981, 32.434513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.923420, 33.613529, 32.360577>,  <38.874744, 33.236111, 32.237350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923420, 33.613529, 32.360577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558528, -0.191479, 0.807082,
		0.820511, -0.270279, 0.503698,
		0.121690, 0.943549, 0.308070,
		38.959927, 33.896595, 32.452999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095184, 33.216988, 32.948261>,  <38.874744, 33.236111, 32.237350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095184, 33.216988, 32.948261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.997272, 33.603214, 32.913029>,  <38.938526, 33.834949, 32.891891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.997272, 33.603214, 32.913029>,  <39.095184, 33.216988, 32.948261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997272, 33.603214, 32.913029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557118, -0.065721, 0.827829,
		0.793537, 0.251708, 0.554023,
		-0.244782, 0.965569, -0.088079,
		38.923840, 33.892883, 32.886604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033504, 33.592663, 33.669079>,  <39.095184, 33.216988, 32.948261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033504, 33.592663, 33.669079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.789066, 33.820152, 33.448856>,  <38.642403, 33.956646, 33.316723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.789066, 33.820152, 33.448856>,  <39.033504, 33.592663, 33.669079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789066, 33.820152, 33.448856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580059, 0.151524, 0.800358,
		0.538607, 0.808450, 0.237300,
		-0.611092, 0.568726, -0.550560,
		38.605740, 33.990768, 33.283688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992287, 34.182846, 34.074100>,  <39.033504, 33.592663, 33.669079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992287, 34.182846, 34.074100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.689270, 34.246426, 33.820847>,  <38.507458, 34.284573, 33.668892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.689270, 34.246426, 33.820847>,  <38.992287, 34.182846, 34.074100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689270, 34.246426, 33.820847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592304, 0.240354, 0.769029,
		0.274413, 0.957583, -0.087933,
		-0.757544, 0.158948, -0.633137,
		38.462006, 34.294109, 33.630905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739487, 34.794201, 34.253723>,  <38.992287, 34.182846, 34.074100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739487, 34.794201, 34.253723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.445717, 34.589851, 34.075005>,  <38.269455, 34.467239, 33.967773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.445717, 34.589851, 34.075005>,  <38.739487, 34.794201, 34.253723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445717, 34.589851, 34.075005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659249, 0.380540, 0.648522,
		-0.161289, 0.770841, -0.616271,
		-0.734423, -0.510876, -0.446799,
		38.225391, 34.436588, 33.940964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149967, 35.244625, 34.364059>,  <38.739487, 34.794201, 34.253723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149967, 35.244625, 34.364059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.964981, 34.924717, 34.210960>,  <37.853989, 34.732773, 34.119102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.964981, 34.924717, 34.210960>,  <38.149967, 35.244625, 34.364059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964981, 34.924717, 34.210960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836360, 0.250208, 0.487747,
		-0.294318, 0.545681, -0.784608,
		-0.462470, -0.799767, -0.382745,
		37.826241, 34.684788, 34.096138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439972, 35.448410, 34.386276>,  <38.149967, 35.244625, 34.364059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439972, 35.448410, 34.386276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.489952, 35.052361, 34.360851>,  <37.519939, 34.814732, 34.345596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.489952, 35.052361, 34.360851>,  <37.439972, 35.448410, 34.386276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489952, 35.052361, 34.360851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906552, -0.139965, 0.398213,
		-0.403177, 0.007870, -0.915088,
		0.124947, -0.990125, -0.063566,
		37.527435, 34.755322, 34.341782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316589, 35.628258, 33.679150>,  <37.439972, 35.448410, 34.386276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316589, 35.628258, 33.679150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.144497, 35.987904, 33.646900>,  <37.041241, 36.203690, 33.627548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.144497, 35.987904, 33.646900>,  <37.316589, 35.628258, 33.679150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144497, 35.987904, 33.646900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197439, 0.006569, -0.980293,
		-0.880865, -0.437668, -0.180346,
		-0.430228, 0.899113, -0.080626,
		37.015430, 36.257637, 33.622711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796818, 35.608101, 33.271137>,  <37.316589, 35.628258, 33.679150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796818, 35.608101, 33.271137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.843426, 36.004440, 33.243900>,  <36.871391, 36.242245, 33.227558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.843426, 36.004440, 33.243900>,  <36.796818, 35.608101, 33.271137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843426, 36.004440, 33.243900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032298, -0.072301, -0.996860,
		-0.992663, 0.113955, -0.040427,
		0.116521, 0.990852, -0.068090,
		36.878384, 36.301697, 33.223473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554329, 35.840580, 32.510750>,  <36.796818, 35.608101, 33.271137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554329, 35.840580, 32.510750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.784023, 36.148926, 32.621037>,  <36.921841, 36.333935, 32.687206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.784023, 36.148926, 32.621037>,  <36.554329, 35.840580, 32.510750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784023, 36.148926, 32.621037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264495, 0.144033, -0.953571,
		-0.774787, 0.620500, -0.121182,
		0.574236, 0.770866, 0.275714,
		36.956295, 36.380184, 32.703751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436680, 36.375771, 32.060612>,  <36.554329, 35.840580, 32.510750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436680, 36.375771, 32.060612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.791256, 36.454876, 32.227993>,  <37.004002, 36.502338, 32.328423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.791256, 36.454876, 32.227993>,  <36.436680, 36.375771, 32.060612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791256, 36.454876, 32.227993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414973, 0.060800, -0.907800,
		-0.204971, 0.978362, -0.028170,
		0.886445, 0.197763, 0.418456,
		37.057190, 36.514206, 32.353531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759850, 36.953384, 31.717228>,  <36.436680, 36.375771, 32.060612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759850, 36.953384, 31.717228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.047314, 36.737553, 31.892672>,  <37.219791, 36.608055, 31.997938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.047314, 36.737553, 31.892672>,  <36.759850, 36.953384, 31.717228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047314, 36.737553, 31.892672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549218, 0.053600, -0.833958,
		0.426479, 0.840226, 0.334868,
		0.718662, -0.539581, 0.438608,
		37.262913, 36.575680, 32.024254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382782, 37.326843, 31.538006>,  <36.759850, 36.953384, 31.717228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382782, 37.326843, 31.538006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.508289, 36.969269, 31.666021>,  <37.583591, 36.754723, 31.742830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.508289, 36.969269, 31.666021>,  <37.382782, 37.326843, 31.538006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508289, 36.969269, 31.666021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619852, -0.062483, -0.782227,
		0.719259, 0.443814, 0.534505,
		0.313766, -0.893938, 0.320041,
		37.602421, 36.701088, 31.762033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097290, 37.399429, 31.652979>,  <37.382782, 37.326843, 31.538006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097290, 37.399429, 31.652979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.003239, 37.018993, 31.572836>,  <37.946808, 36.790733, 31.524750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.003239, 37.018993, 31.572836>,  <38.097290, 37.399429, 31.652979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003239, 37.018993, 31.572836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648706, -0.000052, -0.761039,
		0.723806, -0.308914, 0.616990,
		-0.235128, -0.951090, -0.200357,
		37.932701, 36.733665, 31.512730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742008, 37.146046, 31.498283>,  <38.097290, 37.399429, 31.652979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742008, 37.146046, 31.498283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.480045, 36.883331, 31.348761>,  <38.322868, 36.725704, 31.259047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.480045, 36.883331, 31.348761>,  <38.742008, 37.146046, 31.498283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480045, 36.883331, 31.348761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556898, -0.085068, -0.826213,
		0.510845, -0.749264, 0.421474,
		-0.654906, -0.656785, -0.373807,
		38.283573, 36.686295, 31.236618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198586, 36.601528, 31.228233>,  <38.742008, 37.146046, 31.498283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198586, 36.601528, 31.228233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.846245, 36.548149, 31.046555>,  <38.634842, 36.516121, 30.937548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.846245, 36.548149, 31.046555>,  <39.198586, 36.601528, 31.228233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846245, 36.548149, 31.046555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473203, -0.220847, -0.852822,
		0.013500, -0.966136, 0.257681,
		-0.880850, -0.133448, -0.454197,
		38.581989, 36.508114, 30.910295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257633, 36.039295, 30.712627>,  <39.198586, 36.601528, 31.228233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257633, 36.039295, 30.712627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.928547, 36.225830, 30.582603>,  <38.731094, 36.337749, 30.504589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.928547, 36.225830, 30.582603>,  <39.257633, 36.039295, 30.712627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928547, 36.225830, 30.582603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261279, -0.197627, -0.944816,
		-0.504843, -0.862249, 0.040747,
		-0.822719, 0.466337, -0.325058,
		38.681732, 36.365730, 30.485086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905411, 35.598389, 30.259268>,  <39.257633, 36.039295, 30.712627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905411, 35.598389, 30.259268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.747265, 35.954391, 30.168432>,  <38.652378, 36.167995, 30.113930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.747265, 35.954391, 30.168432>,  <38.905411, 35.598389, 30.259268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747265, 35.954391, 30.168432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126223, -0.192245, -0.973196,
		-0.909812, -0.413428, -0.036334,
		-0.395361, 0.890011, -0.227091,
		38.628658, 36.221394, 30.100306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392960, 35.489277, 29.738737>,  <38.905411, 35.598389, 30.259268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392960, 35.489277, 29.738737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.485046, 35.878468, 29.731653>,  <38.540298, 36.111980, 29.727404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.485046, 35.878468, 29.731653>,  <38.392960, 35.489277, 29.738737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485046, 35.878468, 29.731653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020806, -0.023116, -0.999516,
		-0.972916, 0.229739, -0.025566,
		0.230219, 0.972978, -0.017710,
		38.554111, 36.170361, 29.726339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055466, 35.692852, 29.227051>,  <38.392960, 35.489277, 29.738737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055466, 35.692852, 29.227051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.374027, 35.931633, 29.265820>,  <38.565163, 36.074902, 29.289080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.374027, 35.931633, 29.265820>,  <38.055466, 35.692852, 29.227051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374027, 35.931633, 29.265820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199691, -0.108296, -0.973856,
		-0.570848, 0.794935, -0.205453,
		0.796402, 0.596951, 0.096921,
		38.612949, 36.110718, 29.294895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998230, 36.149544, 28.638437>,  <38.055466, 35.692852, 29.227051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998230, 36.149544, 28.638437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.380657, 36.184704, 28.750298>,  <38.610115, 36.205799, 28.817413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.380657, 36.184704, 28.750298>,  <37.998230, 36.149544, 28.638437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380657, 36.184704, 28.750298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285691, -0.065672, -0.956069,
		-0.065672, 0.993962, -0.087899,
		0.956069, 0.087899, 0.279653,
		38.667477, 36.211075, 28.834194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767296, 36.805199, 28.491444>,  <37.998230, 36.149544, 28.638437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767296, 36.805199, 28.491444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.518341, 36.974705, 28.228214>,  <37.368969, 37.076408, 28.070276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.518341, 36.974705, 28.228214>,  <37.767296, 36.805199, 28.491444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518341, 36.974705, 28.228214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731582, -0.016073, 0.681564,
		0.278243, 0.905631, 0.320020,
		-0.622389, 0.423761, -0.658071,
		37.331623, 37.101833, 28.030792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625572, 37.366535, 28.840483>,  <37.767296, 36.805199, 28.491444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625572, 37.366535, 28.840483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.328648, 37.321171, 28.576326>,  <37.150494, 37.293953, 28.417833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.328648, 37.321171, 28.576326>,  <37.625572, 37.366535, 28.840483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328648, 37.321171, 28.576326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660065, -0.045812, 0.749811,
		-0.115293, 0.992491, -0.040855,
		-0.742309, -0.113415, -0.660390,
		37.105953, 37.287148, 28.378210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085583, 37.898727, 29.032782>,  <37.625572, 37.366535, 28.840483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085583, 37.898727, 29.032782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.895844, 37.617584, 28.820747>,  <36.782001, 37.448898, 28.693527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.895844, 37.617584, 28.820747>,  <37.085583, 37.898727, 29.032782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895844, 37.617584, 28.820747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653571, -0.122240, 0.746928,
		-0.589780, 0.700751, -0.401382,
		-0.474346, -0.702855, -0.530086,
		36.753540, 37.406727, 28.661722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340382, 38.000412, 29.180910>,  <37.085583, 37.898727, 29.032782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340382, 38.000412, 29.180910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.337105, 37.621056, 29.054113>,  <36.335140, 37.393440, 28.978035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.337105, 37.621056, 29.054113>,  <36.340382, 38.000412, 29.180910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337105, 37.621056, 29.054113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790082, -0.188173, 0.583406,
		-0.612947, 0.255229, -0.747766,
		-0.008192, -0.948393, -0.316992,
		36.334648, 37.336536, 28.959015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577034, 37.801861, 29.175457>,  <36.340382, 38.000412, 29.180910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577034, 37.801861, 29.175457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.774658, 37.455311, 29.204590>,  <35.893230, 37.247383, 29.222069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.774658, 37.455311, 29.204590>,  <35.577034, 37.801861, 29.175457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774658, 37.455311, 29.204590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619741, -0.292182, 0.728389,
		-0.609777, -0.405003, -0.681282,
		0.494058, -0.866373, 0.072831,
		35.922874, 37.195400, 29.226439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037720, 37.293968, 29.274837>,  <35.577034, 37.801861, 29.175457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037720, 37.293968, 29.274837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.367664, 37.105152, 29.399277>,  <35.565632, 36.991863, 29.473940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.367664, 37.105152, 29.399277>,  <35.037720, 37.293968, 29.274837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367664, 37.105152, 29.399277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510163, -0.384412, 0.769390,
		-0.243591, -0.793352, -0.557904,
		0.824862, -0.472038, 0.311100,
		35.615124, 36.963539, 29.492607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774666, 36.746510, 29.522001>,  <35.037720, 37.293968, 29.274837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774666, 36.746510, 29.522001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.136669, 36.757843, 29.691782>,  <35.353870, 36.764645, 29.793650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.136669, 36.757843, 29.691782>,  <34.774666, 36.746510, 29.522001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136669, 36.757843, 29.691782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391079, -0.337207, 0.856358,
		0.167391, -0.941004, -0.294094,
		0.905007, 0.028333, 0.424452,
		35.408173, 36.766342, 29.819118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000969, 36.034931, 29.810141>,  <34.774666, 36.746510, 29.522001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000969, 36.034931, 29.810141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.186729, 36.319901, 30.020580>,  <35.298187, 36.490883, 30.146843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.186729, 36.319901, 30.020580>,  <35.000969, 36.034931, 29.810141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186729, 36.319901, 30.020580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386209, -0.371667, 0.844219,
		0.796976, -0.595244, 0.102541,
		0.464405, 0.712425, 0.526098,
		35.326050, 36.533627, 30.178410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258270, 35.685875, 30.443226>,  <35.000969, 36.034931, 29.810141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258270, 35.685875, 30.443226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.243805, 36.076973, 30.525892>,  <35.235126, 36.311630, 30.575491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.243805, 36.076973, 30.525892>,  <35.258270, 35.685875, 30.443226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243805, 36.076973, 30.525892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486710, -0.197848, 0.850864,
		0.872815, -0.069816, 0.483032,
		-0.036163, 0.977743, 0.206665,
		35.232956, 36.370296, 30.587893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465012, 35.709396, 31.163313>,  <35.258270, 35.685875, 30.443226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465012, 35.709396, 31.163313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.313469, 36.074524, 31.102348>,  <35.222542, 36.293602, 31.065769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.313469, 36.074524, 31.102348>,  <35.465012, 35.709396, 31.163313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313469, 36.074524, 31.102348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385601, -0.005987, 0.922646,
		0.841297, 0.408321, 0.354252,
		-0.378857, 0.912819, -0.152412,
		35.199814, 36.348370, 31.056625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858540, 36.085281, 31.608183>,  <35.465012, 35.709396, 31.163313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858540, 36.085281, 31.608183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.511936, 36.264263, 31.519693>,  <35.303974, 36.371655, 31.466599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.511936, 36.264263, 31.519693>,  <35.858540, 36.085281, 31.608183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511936, 36.264263, 31.519693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323536, -0.165974, 0.931546,
		0.380110, 0.878768, 0.288587,
		-0.866511, 0.447458, -0.221225,
		35.251984, 36.398502, 31.453325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665123, 36.615479, 32.121162>,  <35.858540, 36.085281, 31.608183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665123, 36.615479, 32.121162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.318745, 36.508392, 31.952181>,  <35.110916, 36.444141, 31.850792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.318745, 36.508392, 31.952181>,  <35.665123, 36.615479, 32.121162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318745, 36.508392, 31.952181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431800, -0.026023, 0.901594,
		-0.252361, 0.963148, -0.093064,
		-0.865946, -0.267712, -0.422455,
		35.058960, 36.428078, 31.825445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.426590, 37.195042, 24.897671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072071, 37.092400, 24.743462>,  <38.859360, 37.030815, 24.650936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072071, 37.092400, 24.743462>,  <39.426590, 37.195042, 24.897671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072071, 37.092400, 24.743462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461827, 0.427740, 0.777016,
		-0.034480, 0.866714, -0.497612,
		-0.886299, -0.256603, -0.385524,
		38.806183, 37.015419, 24.627804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050835, 37.803398, 24.933607>,  <39.426590, 37.195042, 24.897671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050835, 37.803398, 24.933607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787491, 37.502590, 24.920832>,  <38.629482, 37.322105, 24.913166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787491, 37.502590, 24.920832>,  <39.050835, 37.803398, 24.933607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787491, 37.502590, 24.920832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492081, 0.397909, 0.774289,
		-0.569575, 0.525480, -0.632025,
		-0.658362, -0.752023, -0.031940,
		38.589981, 37.276981, 24.911249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424423, 38.090347, 25.027739>,  <39.050835, 37.803398, 24.933607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424423, 38.090347, 25.027739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350986, 37.710556, 25.129545>,  <38.306927, 37.482681, 25.190628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350986, 37.710556, 25.129545>,  <38.424423, 38.090347, 25.027739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350986, 37.710556, 25.129545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521896, 0.313557, 0.793288,
		-0.833019, 0.012809, -0.553097,
		-0.183588, -0.949483, 0.254514,
		38.295910, 37.425713, 25.205900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693882, 38.000816, 25.265110>,  <38.424423, 38.090347, 25.027739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693882, 38.000816, 25.265110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864468, 37.665951, 25.402100>,  <37.966820, 37.465031, 25.484293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864468, 37.665951, 25.402100>,  <37.693882, 38.000816, 25.265110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864468, 37.665951, 25.402100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434697, 0.142339, 0.889257,
		-0.793198, -0.528111, -0.303209,
		0.426467, -0.837161, 0.342472,
		37.992409, 37.414803, 25.504841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153187, 37.591938, 25.562813>,  <37.693882, 38.000816, 25.265110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153187, 37.591938, 25.562813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482395, 37.434513, 25.726641>,  <37.679920, 37.340057, 25.824938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482395, 37.434513, 25.726641>,  <37.153187, 37.591938, 25.562813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482395, 37.434513, 25.726641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498694, -0.155475, 0.852720,
		-0.271923, -0.906054, -0.324227,
		0.823020, -0.393564, 0.409567,
		37.729301, 37.316444, 25.849510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832195, 37.054939, 25.965246>,  <37.153187, 37.591938, 25.562813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832195, 37.054939, 25.965246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206413, 37.124237, 26.088366>,  <37.430943, 37.165817, 26.162237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206413, 37.124237, 26.088366>,  <36.832195, 37.054939, 25.965246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206413, 37.124237, 26.088366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284476, -0.146936, 0.947356,
		0.209354, -0.973856, -0.088180,
		0.935545, 0.173248, 0.307800,
		37.487076, 37.176212, 26.180706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981606, 36.418327, 26.497486>,  <36.832195, 37.054939, 25.965246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981606, 36.418327, 26.497486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236450, 36.704681, 26.611746>,  <37.389355, 36.876495, 26.680302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236450, 36.704681, 26.611746>,  <36.981606, 36.418327, 26.497486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236450, 36.704681, 26.611746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408496, -0.000661, 0.912760,
		0.653622, -0.698215, 0.292016,
		0.637110, 0.715888, 0.285650,
		37.427582, 36.919449, 26.697441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326279, 36.219975, 27.107365>,  <36.981606, 36.418327, 26.497486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326279, 36.219975, 27.107365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429977, 36.605003, 27.138969>,  <37.492195, 36.836021, 27.157932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429977, 36.605003, 27.138969>,  <37.326279, 36.219975, 27.107365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429977, 36.605003, 27.138969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220521, -0.020653, 0.975163,
		0.940299, -0.270230, 0.206913,
		0.259245, 0.962574, 0.079011,
		37.507751, 36.893776, 27.162672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735825, 36.301872, 27.817940>,  <37.326279, 36.219975, 27.107365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735825, 36.301872, 27.817940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567745, 36.646614, 27.704355>,  <37.466896, 36.853458, 27.636204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567745, 36.646614, 27.704355>,  <37.735825, 36.301872, 27.817940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567745, 36.646614, 27.704355> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340856, 0.140103, 0.929617,
		0.840983, 0.487412, 0.234899,
		-0.420197, 0.861859, -0.283961,
		37.441685, 36.905170, 27.619167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440056, 36.557495, 27.980017>,  <37.735825, 36.301872, 27.817940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440056, 36.557495, 27.980017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736195, 36.449726, 28.226366>,  <38.913879, 36.385067, 28.374176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736195, 36.449726, 28.226366>,  <38.440056, 36.557495, 27.980017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736195, 36.449726, 28.226366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641043, 0.007158, -0.767472,
		0.202364, 0.962996, 0.178010,
		0.740346, -0.269421, 0.615873,
		38.958298, 36.368900, 28.411127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097687, 36.967068, 27.815924>,  <38.440056, 36.557495, 27.980017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097687, 36.967068, 27.815924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206421, 36.620815, 27.984110>,  <39.271660, 36.413063, 28.085022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206421, 36.620815, 27.984110>,  <39.097687, 36.967068, 27.815924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206421, 36.620815, 27.984110> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534916, -0.227288, -0.813760,
		0.799982, 0.446121, 0.401254,
		0.271835, -0.865630, 0.420464,
		39.287971, 36.361126, 28.110249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697300, 36.973450, 27.552183>,  <39.097687, 36.967068, 27.815924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697300, 36.973450, 27.552183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639400, 36.603222, 27.692108>,  <39.604660, 36.381084, 27.776064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639400, 36.603222, 27.692108>,  <39.697300, 36.973450, 27.552183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639400, 36.603222, 27.692108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560891, -0.368004, -0.741603,
		0.815137, 0.088859, 0.572412,
		-0.144752, -0.925569, 0.349814,
		39.595974, 36.325550, 27.797052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.366337, 36.654251, 27.644220>,  <39.697300, 36.973450, 27.552183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.366337, 36.654251, 27.644220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100174, 36.361107, 27.587444>,  <39.940475, 36.185219, 27.553379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100174, 36.361107, 27.587444>,  <40.366337, 36.654251, 27.644220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.100174, 36.361107, 27.587444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549964, -0.352716, -0.757054,
		0.504752, -0.581811, 0.637747,
		-0.665406, -0.732863, -0.141941,
		39.900551, 36.141247, 27.544863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790535, 35.992050, 27.550104>,  <40.366337, 36.654251, 27.644220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790535, 35.992050, 27.550104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429466, 35.914783, 27.396290>,  <40.212826, 35.868423, 27.304001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429466, 35.914783, 27.396290>,  <40.790535, 35.992050, 27.550104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429466, 35.914783, 27.396290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426626, -0.518685, -0.740915,
		-0.056332, -0.832857, 0.550614,
		-0.902672, -0.193169, -0.384537,
		40.158665, 35.856834, 27.280930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761135, 35.198044, 27.384674>,  <40.790535, 35.992050, 27.550104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.761135, 35.198044, 27.384674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514717, 35.402512, 27.144941>,  <40.366867, 35.525192, 27.001101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514717, 35.402512, 27.144941>,  <40.761135, 35.198044, 27.384674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514717, 35.402512, 27.144941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414421, -0.436724, -0.798453,
		-0.669887, -0.740256, 0.057200,
		-0.616040, 0.511169, -0.599334,
		40.329906, 35.555862, 26.965141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346828, 34.690533, 26.927486>,  <40.761135, 35.198044, 27.384674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346828, 34.690533, 26.927486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336128, 35.037945, 26.729521>,  <40.329708, 35.246391, 26.610741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336128, 35.037945, 26.729521>,  <40.346828, 34.690533, 26.927486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336128, 35.037945, 26.729521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157451, -0.485251, -0.860081,
		-0.987164, -0.100932, -0.123771,
		-0.026749, 0.868529, -0.494915,
		40.328102, 35.298504, 26.581047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000004, 34.446667, 26.421633>,  <40.346828, 34.690533, 26.927486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000004, 34.446667, 26.421633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117825, 34.796997, 26.268702>,  <40.188519, 35.007195, 26.176943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117825, 34.796997, 26.268702>,  <40.000004, 34.446667, 26.421633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117825, 34.796997, 26.268702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359969, -0.472295, -0.804587,
		-0.885246, 0.099367, -0.454384,
		0.294553, 0.875822, -0.382328,
		40.206192, 35.059742, 26.154003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846870, 34.390301, 25.626261>,  <40.000004, 34.446667, 26.421633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846870, 34.390301, 25.626261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124657, 34.668797, 25.698875>,  <40.291328, 34.835896, 25.742445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124657, 34.668797, 25.698875>,  <39.846870, 34.390301, 25.626261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124657, 34.668797, 25.698875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418637, -0.185786, -0.888947,
		-0.585196, 0.693346, -0.420496,
		0.694470, 0.696244, 0.181539,
		40.332996, 34.877670, 25.753338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809792, 34.885056, 25.090567>,  <39.846870, 34.390301, 25.626261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.809792, 34.885056, 25.090567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176140, 34.914356, 25.248463>,  <40.395947, 34.931934, 25.343201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176140, 34.914356, 25.248463>,  <39.809792, 34.885056, 25.090567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176140, 34.914356, 25.248463> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396224, -0.006371, -0.918132,
		-0.064736, 0.997293, -0.034858,
		0.915869, 0.073248, 0.394739,
		40.450901, 34.936329, 25.366884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181778, 35.287792, 24.688911>,  <39.809792, 34.885056, 25.090567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181778, 35.287792, 24.688911> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478146, 35.088554, 24.869106>,  <40.655968, 34.969009, 24.977222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478146, 35.088554, 24.869106>,  <40.181778, 35.287792, 24.688911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478146, 35.088554, 24.869106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483763, -0.069447, -0.872440,
		0.465843, 0.864336, 0.189506,
		0.740921, -0.498096, 0.450485,
		40.700420, 34.939125, 25.004251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848083, 35.613525, 24.499596>,  <40.181778, 35.287792, 24.688911>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848083, 35.613525, 24.499596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953465, 35.246326, 24.618166>,  <41.016693, 35.026009, 24.689308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953465, 35.246326, 24.618166>,  <40.848083, 35.613525, 24.499596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953465, 35.246326, 24.618166> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521443, -0.123005, -0.844374,
		0.811596, 0.377026, 0.446278,
		0.263456, -0.917998, 0.296428,
		41.032501, 34.970928, 24.707094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460411, 35.556309, 24.239561>,  <40.848083, 35.613525, 24.499596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.460411, 35.556309, 24.239561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.408707, 35.174385, 24.346622>,  <41.377686, 34.945232, 24.410860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.408707, 35.174385, 24.346622>,  <41.460411, 35.556309, 24.239561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.408707, 35.174385, 24.346622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581616, -0.291616, -0.759397,
		0.803128, 0.057511, 0.593024,
		-0.129262, -0.954805, 0.267654,
		41.369926, 34.887943, 24.426918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.083065, 35.256413, 24.253403>,  <41.460411, 35.556309, 24.239561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.083065, 35.256413, 24.253403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834091, 34.948128, 24.198895>,  <41.684708, 34.763157, 24.166189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834091, 34.948128, 24.198895>,  <42.083065, 35.256413, 24.253403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.834091, 34.948128, 24.198895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527660, -0.284631, -0.800350,
		0.578055, -0.570071, 0.583841,
		-0.622436, -0.770716, -0.136271,
		41.647362, 34.716911, 24.158012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.194885, 31.105526, 23.315933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.312107, 31.470150, 23.431293>,  <37.382439, 31.688925, 23.500509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.312107, 31.470150, 23.431293>,  <37.194885, 31.105526, 23.315933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312107, 31.470150, 23.431293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257774, -0.215143, 0.941948,
		0.920691, -0.350382, 0.171929,
		0.293053, 0.911562, 0.288400,
		37.400024, 31.743618, 23.517813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556992, 31.036373, 24.037365>,  <37.194885, 31.105526, 23.315933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556992, 31.036373, 24.037365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.444073, 31.418495, 24.002275>,  <37.376320, 31.647768, 23.981222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.444073, 31.418495, 24.002275>,  <37.556992, 31.036373, 24.037365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444073, 31.418495, 24.002275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218919, 0.024877, 0.975426,
		0.934013, 0.294567, 0.202112,
		-0.282301, 0.955307, -0.087722,
		37.359383, 31.705088, 23.975960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945080, 31.324638, 24.576908>,  <37.556992, 31.036373, 24.037365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945080, 31.324638, 24.576908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.653694, 31.583757, 24.487738>,  <37.478863, 31.739229, 24.434235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.653694, 31.583757, 24.487738>,  <37.945080, 31.324638, 24.576908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653694, 31.583757, 24.487738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194758, 0.116153, 0.973950,
		0.656815, 0.752906, 0.041550,
		-0.728466, 0.647797, -0.222925,
		37.435154, 31.778097, 24.420860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945377, 31.814806, 25.083296>,  <37.945080, 31.324638, 24.576908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945377, 31.814806, 25.083296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.599125, 31.918396, 24.911896>,  <37.391373, 31.980549, 24.809055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.599125, 31.918396, 24.911896>,  <37.945377, 31.814806, 25.083296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599125, 31.918396, 24.911896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315805, 0.381701, 0.868660,
		0.388519, 0.887263, -0.248628,
		-0.865632, 0.258974, -0.428501,
		37.339436, 31.996088, 24.783346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772396, 32.523697, 25.237881>,  <37.945377, 31.814806, 25.083296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772396, 32.523697, 25.237881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.436413, 32.309971, 25.199974>,  <37.234825, 32.181736, 25.177231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.436413, 32.309971, 25.199974>,  <37.772396, 32.523697, 25.237881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436413, 32.309971, 25.199974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276589, 0.271294, 0.921899,
		-0.466876, 0.800566, -0.375661,
		-0.839956, -0.534316, -0.094767,
		37.184425, 32.149677, 25.171543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333729, 32.854008, 25.660524>,  <37.772396, 32.523697, 25.237881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333729, 32.854008, 25.660524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.174072, 32.492306, 25.599859>,  <37.078278, 32.275284, 25.563461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.174072, 32.492306, 25.599859>,  <37.333729, 32.854008, 25.660524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174072, 32.492306, 25.599859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479013, 0.064611, 0.875427,
		-0.781814, 0.422067, -0.458941,
		-0.399142, -0.904259, -0.151662,
		37.054329, 32.221027, 25.554361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615978, 33.032368, 25.767542>,  <37.333729, 32.854008, 25.660524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615978, 33.032368, 25.767542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.702385, 32.644836, 25.816059>,  <36.754227, 32.412319, 25.845169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.702385, 32.644836, 25.816059>,  <36.615978, 33.032368, 25.767542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702385, 32.644836, 25.816059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477407, 0.003563, 0.878675,
		-0.851716, -0.247714, -0.461755,
		0.216014, -0.968827, 0.121295,
		36.767189, 32.354187, 25.852448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983459, 32.793530, 25.947369>,  <36.615978, 33.032368, 25.767542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983459, 32.793530, 25.947369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.235905, 32.509972, 26.073332>,  <36.387371, 32.339836, 26.148911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.235905, 32.509972, 26.073332>,  <35.983459, 32.793530, 25.947369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235905, 32.509972, 26.073332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510017, -0.073344, 0.857032,
		-0.584447, -0.701493, -0.407835,
		0.631114, -0.708892, 0.314908,
		36.425240, 32.297302, 26.167805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562714, 32.229553, 26.163422>,  <35.983459, 32.793530, 25.947369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562714, 32.229553, 26.163422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.923168, 32.216290, 26.336327>,  <36.139442, 32.208332, 26.440069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.923168, 32.216290, 26.336327>,  <35.562714, 32.229553, 26.163422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923168, 32.216290, 26.336327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432894, -0.014682, 0.901325,
		-0.023512, -0.999343, -0.027571,
		0.901139, -0.033127, 0.432265,
		36.193508, 32.206341, 26.466005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535622, 31.612083, 26.621105>,  <35.562714, 32.229553, 26.163422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535622, 31.612083, 26.621105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.850876, 31.818686, 26.755009>,  <36.040028, 31.942646, 26.835350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.850876, 31.818686, 26.755009>,  <35.535622, 31.612083, 26.621105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850876, 31.818686, 26.755009> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322227, -0.117150, 0.939386,
		0.524414, -0.848233, 0.074102,
		0.788137, 0.516504, 0.334759,
		36.087318, 31.973637, 26.855436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922951, 31.169653, 26.945049>,  <35.535622, 31.612083, 26.621105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922951, 31.169653, 26.945049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.980122, 31.544004, 27.073860>,  <36.014423, 31.768616, 27.151148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.980122, 31.544004, 27.073860>,  <35.922951, 31.169653, 26.945049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980122, 31.544004, 27.073860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288097, -0.271939, 0.918177,
		0.946874, -0.224011, 0.230756,
		0.142930, 0.935878, 0.322029,
		36.023003, 31.824768, 27.170469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051037, 31.152214, 27.699852>,  <35.922951, 31.169653, 26.945049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051037, 31.152214, 27.699852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.973766, 31.542961, 27.663164>,  <35.927402, 31.777409, 27.641151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.973766, 31.542961, 27.663164>,  <36.051037, 31.152214, 27.699852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973766, 31.542961, 27.663164> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403810, 0.006040, 0.914823,
		0.894214, 0.213764, 0.393302,
		-0.193181, 0.976867, -0.091721,
		35.915813, 31.836021, 27.635649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061073, 31.347492, 28.353477>,  <36.051037, 31.152214, 27.699852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061073, 31.347492, 28.353477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.927044, 31.698107, 28.215256>,  <35.846626, 31.908476, 28.132322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.927044, 31.698107, 28.215256>,  <36.061073, 31.347492, 28.353477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927044, 31.698107, 28.215256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260363, 0.266335, 0.928050,
		0.905503, 0.400936, 0.138976,
		-0.335075, 0.876536, -0.345556,
		35.826523, 31.961067, 28.111589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323208, 31.978800, 28.734163>,  <36.061073, 31.347492, 28.353477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323208, 31.978800, 28.734163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.969162, 32.071091, 28.572504>,  <35.756733, 32.126465, 28.475508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.969162, 32.071091, 28.572504>,  <36.323208, 31.978800, 28.734163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969162, 32.071091, 28.572504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360470, 0.209357, 0.908972,
		0.294335, 0.950229, -0.102135,
		-0.885115, 0.230725, -0.404150,
		35.703629, 32.140308, 28.451260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878883, 32.254272, 29.073910>,  <36.323208, 31.978800, 28.734163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878883, 32.254272, 29.073910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.033669, 31.956869, 29.292067>,  <37.126541, 31.778427, 29.422960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.033669, 31.956869, 29.292067>,  <36.878883, 32.254272, 29.073910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033669, 31.956869, 29.292067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576075, -0.266905, -0.772593,
		0.719996, 0.613156, 0.325032,
		0.386967, -0.743506, 0.545394,
		37.149757, 31.733818, 29.455685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631638, 32.308437, 28.986221>,  <36.878883, 32.254272, 29.073910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631638, 32.308437, 28.986221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.560059, 31.935127, 29.110788>,  <37.517109, 31.711142, 29.185528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.560059, 31.935127, 29.110788>,  <37.631638, 32.308437, 28.986221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560059, 31.935127, 29.110788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663660, -0.348173, -0.662065,
		0.726314, 0.088198, 0.681681,
		-0.178950, -0.933272, 0.311416,
		37.506374, 31.655146, 29.204214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311710, 31.967731, 29.119366>,  <37.631638, 32.308437, 28.986221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311710, 31.967731, 29.119366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.069233, 31.650124, 29.101202>,  <37.923744, 31.459558, 29.090303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.069233, 31.650124, 29.101202>,  <38.311710, 31.967731, 29.119366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069233, 31.650124, 29.101202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687312, -0.494294, -0.532235,
		0.400160, -0.353848, 0.845378,
		-0.606196, -0.794018, -0.045407,
		37.887375, 31.411919, 29.087580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744106, 31.325283, 29.225136>,  <38.311710, 31.967731, 29.119366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744106, 31.325283, 29.225136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.410625, 31.263453, 29.013079>,  <38.210537, 31.226355, 28.885843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.410625, 31.263453, 29.013079>,  <38.744106, 31.325283, 29.225136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410625, 31.263453, 29.013079> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527495, -0.506962, -0.681718,
		-0.163386, -0.847995, 0.504191,
		-0.833699, -0.154575, -0.530144,
		38.160515, 31.217079, 28.854036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860138, 30.657907, 28.834146>,  <38.744106, 31.325283, 29.225136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860138, 30.657907, 28.834146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.581169, 30.870989, 28.642385>,  <38.413788, 30.998838, 28.527328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.581169, 30.870989, 28.642385>,  <38.860138, 30.657907, 28.834146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581169, 30.870989, 28.642385> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316661, -0.371035, -0.872960,
		-0.642904, -0.760631, 0.090082,
		-0.697424, 0.532704, -0.479402,
		38.371941, 31.030800, 28.498566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664051, 30.236294, 28.256063>,  <38.860138, 30.657907, 28.834146>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664051, 30.236294, 28.256063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.526394, 30.598673, 28.157413>,  <38.443802, 30.816101, 28.098223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.526394, 30.598673, 28.157413>,  <38.664051, 30.236294, 28.256063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526394, 30.598673, 28.157413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473711, -0.059257, -0.878685,
		-0.810658, -0.419218, -0.408765,
		-0.344138, 0.905950, -0.246626,
		38.423153, 30.870459, 28.083426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451603, 30.103226, 27.470619>,  <38.664051, 30.236294, 28.256063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451603, 30.103226, 27.470619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.483624, 30.493729, 27.551128>,  <38.502838, 30.728031, 27.599434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.483624, 30.493729, 27.551128>,  <38.451603, 30.103226, 27.470619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483624, 30.493729, 27.551128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558448, 0.123330, -0.820320,
		-0.825668, 0.178072, -0.535316,
		0.080056, 0.976258, 0.201273,
		38.507641, 30.786606, 27.611511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160854, 30.355625, 26.922503>,  <38.451603, 30.103226, 27.470619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160854, 30.355625, 26.922503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.360813, 30.681208, 27.040878>,  <38.480789, 30.876556, 27.111904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.360813, 30.681208, 27.040878>,  <38.160854, 30.355625, 26.922503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360813, 30.681208, 27.040878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414294, 0.075333, -0.907020,
		-0.760567, 0.576024, -0.299558,
		0.499899, 0.813954, 0.295939,
		38.510784, 30.925394, 27.129660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076508, 30.837088, 26.343971>,  <38.160854, 30.355625, 26.922503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076508, 30.837088, 26.343971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.385849, 30.983152, 26.551273>,  <38.571453, 31.070791, 26.675653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.385849, 30.983152, 26.551273>,  <38.076508, 30.837088, 26.343971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385849, 30.983152, 26.551273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405073, 0.344234, -0.847006,
		-0.487695, 0.864962, 0.118296,
		0.773349, 0.365162, 0.518254,
		38.617855, 31.092701, 26.706749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169922, 31.571077, 26.157612>,  <38.076508, 30.837088, 26.343971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169922, 31.571077, 26.157612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.516380, 31.419029, 26.287413>,  <38.724255, 31.327801, 26.365294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.516380, 31.419029, 26.287413>,  <38.169922, 31.571077, 26.157612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516380, 31.419029, 26.287413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462622, 0.364055, -0.808359,
		0.189137, 0.850278, 0.491177,
		0.866146, -0.380120, 0.324501,
		38.776222, 31.304993, 26.384764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800911, 32.051735, 25.981152>,  <38.169922, 31.571077, 26.157612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800911, 32.051735, 25.981152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.974976, 31.695808, 26.036091>,  <39.079414, 31.482252, 26.069054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.974976, 31.695808, 26.036091>,  <38.800911, 32.051735, 25.981152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974976, 31.695808, 26.036091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485073, 0.103186, -0.868365,
		0.758513, 0.444499, 0.476528,
		0.435158, -0.889816, 0.137347,
		39.105522, 31.428864, 26.077295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526497, 32.205883, 25.881758>,  <38.800911, 32.051735, 25.981152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526497, 32.205883, 25.881758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.462700, 31.814056, 25.832760>,  <39.424419, 31.578960, 25.803362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.462700, 31.814056, 25.832760>,  <39.526497, 32.205883, 25.881758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462700, 31.814056, 25.832760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537898, 0.017812, -0.842822,
		0.827784, -0.200316, 0.524068,
		-0.159496, -0.979569, -0.122494,
		39.414852, 31.520185, 25.796011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154503, 31.938026, 25.682379>,  <39.526497, 32.205883, 25.881758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.154503, 31.938026, 25.682379> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.934917, 31.625729, 25.562996>,  <39.803165, 31.438351, 25.491365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.934917, 31.625729, 25.562996>,  <40.154503, 31.938026, 25.682379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934917, 31.625729, 25.562996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559263, -0.077731, -0.825338,
		0.621178, -0.619997, 0.479313,
		-0.548964, -0.780744, -0.298457,
		39.770229, 31.391506, 25.473459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626545, 31.514650, 25.446016>,  <40.154503, 31.938026, 25.682379>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.626545, 31.514650, 25.446016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.279686, 31.415030, 25.273493>,  <40.071571, 31.355257, 25.169979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.279686, 31.415030, 25.273493>,  <40.626545, 31.514650, 25.446016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279686, 31.415030, 25.273493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413352, 0.123215, -0.902196,
		0.277837, -0.960620, -0.003900,
		-0.867149, -0.249051, -0.431308,
		40.019543, 31.340315, 25.144100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.389812, 31.327696, 25.434696>,  <40.626545, 31.514650, 25.446016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.389812, 31.327696, 25.434696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.739819, 31.510914, 25.372030>,  <41.949821, 31.620844, 25.334431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.739819, 31.510914, 25.372030>,  <41.389812, 31.327696, 25.434696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.739819, 31.510914, 25.372030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080135, 0.182108, 0.980008,
		0.477416, -0.870076, 0.122642,
		0.875016, 0.458044, -0.156665,
		42.002323, 31.648327, 25.325031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.766438, 31.148520, 25.928041>,  <41.389812, 31.327696, 25.434696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.766438, 31.148520, 25.928041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.932423, 31.491808, 25.807207>,  <42.032013, 31.697781, 25.734707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.932423, 31.491808, 25.807207>,  <41.766438, 31.148520, 25.928041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.932423, 31.491808, 25.807207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043329, 0.350287, 0.935640,
		0.908804, -0.375170, 0.182543,
		0.414967, 0.858223, -0.302087,
		42.056911, 31.749275, 25.716581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.319168, 31.216530, 26.372166>,  <41.766438, 31.148520, 25.928041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.319168, 31.216530, 26.372166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.276981, 31.588795, 26.232025>,  <42.251667, 31.812153, 26.147942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.276981, 31.588795, 26.232025>,  <42.319168, 31.216530, 26.372166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.276981, 31.588795, 26.232025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152572, 0.332998, 0.930502,
		0.982648, 0.151595, 0.106871,
		-0.105471, 0.930662, -0.350349,
		42.245338, 31.867992, 26.126921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.750957, 31.646317, 26.748205>,  <42.319168, 31.216530, 26.372166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.750957, 31.646317, 26.748205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.462559, 31.887058, 26.610838>,  <42.289520, 32.031506, 26.528418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.462559, 31.887058, 26.610838>,  <42.750957, 31.646317, 26.748205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.462559, 31.887058, 26.610838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035750, 0.527242, 0.848963,
		0.692018, 0.599821, -0.401654,
		-0.720995, 0.601857, -0.343417,
		42.246262, 32.067616, 26.507812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.917877, 32.191223, 27.149427>,  <42.750957, 31.646317, 26.748205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.917877, 32.191223, 27.149427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.549564, 32.254185, 27.006662>,  <42.328579, 32.291962, 26.921003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.549564, 32.254185, 27.006662>,  <42.917877, 32.191223, 27.149427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.549564, 32.254185, 27.006662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219511, 0.547273, 0.807656,
		0.322457, 0.822020, -0.469366,
		-0.920780, 0.157403, -0.356914,
		42.273331, 32.301407, 26.899588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.839413, 32.828251, 27.295639>,  <42.917877, 32.191223, 27.149427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.839413, 32.828251, 27.295639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.460224, 32.716835, 27.233974>,  <42.232712, 32.649986, 27.196976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.460224, 32.716835, 27.233974>,  <42.839413, 32.828251, 27.295639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.460224, 32.716835, 27.233974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297710, 0.604068, 0.739237,
		-0.112783, 0.746671, -0.655563,
		-0.947971, -0.278541, -0.154162,
		42.175835, 32.633274, 27.187725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416145, 33.427574, 27.477335>,  <42.839413, 32.828251, 27.295639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.416145, 33.427574, 27.477335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.174500, 33.109505, 27.498291>,  <42.029514, 32.918663, 27.510864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.174500, 33.109505, 27.498291>,  <42.416145, 33.427574, 27.477335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.174500, 33.109505, 27.498291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336080, 0.313836, 0.888008,
		-0.722564, 0.518849, -0.456834,
		-0.604113, -0.795175, 0.052392,
		41.993267, 32.870953, 27.514009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757469, 33.686638, 27.599791>,  <42.416145, 33.427574, 27.477335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.757469, 33.686638, 27.599791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.742031, 33.305550, 27.720350>,  <41.732769, 33.076897, 27.792686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.742031, 33.305550, 27.720350>,  <41.757469, 33.686638, 27.599791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.742031, 33.305550, 27.720350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308198, 0.298271, 0.903354,
		-0.950539, -0.058022, -0.305138,
		-0.038599, -0.952716, 0.301400,
		41.730450, 33.019733, 27.810770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990070, 33.524067, 27.886391>,  <41.757469, 33.686638, 27.599791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.990070, 33.524067, 27.886391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.259537, 33.283329, 28.057951>,  <41.421215, 33.138885, 28.160887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.259537, 33.283329, 28.057951>,  <40.990070, 33.524067, 27.886391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259537, 33.283329, 28.057951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225640, 0.385143, 0.894847,
		-0.703746, -0.699607, 0.123658,
		0.673667, -0.601843, 0.428902,
		41.461636, 33.102776, 28.186623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532932, 33.208874, 28.310877>,  <40.990070, 33.524067, 27.886391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.532932, 33.208874, 28.310877> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.903175, 33.144924, 28.448107>,  <41.125320, 33.106556, 28.530445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.903175, 33.144924, 28.448107>,  <40.532932, 33.208874, 28.310877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903175, 33.144924, 28.448107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339438, 0.050394, 0.939277,
		-0.167454, -0.985850, -0.007622,
		0.925603, -0.159873, 0.343074,
		41.180855, 33.096962, 28.551029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350151, 32.693348, 28.852251>,  <40.532932, 33.208874, 28.310877>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350151, 32.693348, 28.852251> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.697731, 32.879208, 28.920401>,  <40.906281, 32.990723, 28.961290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.697731, 32.879208, 28.920401>,  <40.350151, 32.693348, 28.852251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697731, 32.879208, 28.920401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292788, 0.205109, 0.933920,
		0.399004, -0.861410, 0.314274,
		0.868948, 0.464653, 0.170371,
		40.958416, 33.018604, 28.971512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595551, 32.440327, 29.546200>,  <40.350151, 32.693348, 28.852251>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595551, 32.440327, 29.546200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.784611, 32.786453, 29.479477>,  <40.898048, 32.994129, 29.439444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.784611, 32.786453, 29.479477>,  <40.595551, 32.440327, 29.546200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784611, 32.786453, 29.479477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153234, 0.267099, 0.951408,
		0.867825, -0.424123, 0.258841,
		0.472650, 0.865319, -0.166805,
		40.926407, 33.046047, 29.429436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983082, 32.539845, 30.151779>,  <40.595551, 32.440327, 29.546200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.983082, 32.539845, 30.151779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.028824, 32.905701, 29.996677>,  <41.056271, 33.125214, 29.903616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.028824, 32.905701, 29.996677>,  <40.983082, 32.539845, 30.151779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.028824, 32.905701, 29.996677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122494, 0.400320, 0.908152,
		0.985859, -0.056357, 0.157818,
		0.114358, 0.914641, -0.387755,
		41.063133, 33.180092, 29.880350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.333328, 32.852036, 30.619989>,  <40.983082, 32.539845, 30.151779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.333328, 32.852036, 30.619989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.149956, 33.138268, 30.409166>,  <41.039932, 33.310005, 30.282673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.149956, 33.138268, 30.409166>,  <41.333328, 32.852036, 30.619989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.149956, 33.138268, 30.409166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300330, 0.433421, 0.849675,
		0.836448, 0.547806, 0.016218,
		-0.458428, 0.715580, -0.527057,
		41.012428, 33.352943, 30.251049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.509384, 34.609581, 24.295322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.170361, 34.479916, 24.127243>,  <41.966946, 34.402115, 24.026396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.170361, 34.479916, 24.127243>,  <42.509384, 34.609581, 24.295322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.170361, 34.479916, 24.127243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509082, -0.272892, -0.816312,
		0.149953, -0.905784, 0.396319,
		-0.847555, -0.324167, -0.420197,
		41.916096, 34.382664, 24.001184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.551567, 33.813660, 24.131737>,  <42.509384, 34.609581, 24.295322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.551567, 33.813660, 24.131737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.273716, 33.967869, 23.888800>,  <42.107006, 34.060394, 23.743038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.273716, 33.967869, 23.888800>,  <42.551567, 33.813660, 24.131737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.273716, 33.967869, 23.888800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557019, -0.246000, -0.793230,
		-0.455212, -0.889302, -0.043863,
		-0.694630, 0.385520, -0.607340,
		42.065327, 34.083523, 23.706598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.468803, 33.336826, 23.685778>,  <42.551567, 33.813660, 24.131737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.468803, 33.336826, 23.685778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.304981, 33.640877, 23.483995>,  <42.206688, 33.823307, 23.362926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.304981, 33.640877, 23.483995>,  <42.468803, 33.336826, 23.685778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.304981, 33.640877, 23.483995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467495, -0.299966, -0.831546,
		-0.783400, -0.576391, -0.232505,
		-0.409552, 0.760128, -0.504453,
		42.182117, 33.868916, 23.332659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.121723, 33.117340, 23.198170>,  <42.468803, 33.336826, 23.685778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.121723, 33.117340, 23.198170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.192162, 33.484970, 23.057154>,  <42.234425, 33.705547, 22.972544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.192162, 33.484970, 23.057154>,  <42.121723, 33.117340, 23.198170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.192162, 33.484970, 23.057154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361419, -0.393491, -0.845305,
		-0.915623, 0.021443, -0.401466,
		0.176099, 0.919078, -0.352540,
		42.244991, 33.760693, 22.951391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.007339, 33.049053, 22.514833>,  <42.121723, 33.117340, 23.198170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.007339, 33.049053, 22.514833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.171055, 33.413799, 22.527386>,  <42.269283, 33.632645, 22.534916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.171055, 33.413799, 22.527386>,  <42.007339, 33.049053, 22.514833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.171055, 33.413799, 22.527386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269765, -0.088087, -0.958889,
		-0.871611, 0.400931, -0.282042,
		0.409292, 0.911863, 0.031380,
		42.293842, 33.687359, 22.536800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.700317, 33.369816, 22.013746>,  <42.007339, 33.049053, 22.514833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.700317, 33.369816, 22.013746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.049133, 33.553612, 22.081171>,  <42.258423, 33.663891, 22.121626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.049133, 33.553612, 22.081171>,  <41.700317, 33.369816, 22.013746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.049133, 33.553612, 22.081171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254715, -0.131986, -0.957966,
		-0.417928, 0.878321, -0.232136,
		0.872041, 0.459490, 0.168561,
		42.310745, 33.691460, 22.131739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.872166, 33.839333, 21.410826>,  <41.700317, 33.369816, 22.013746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.872166, 33.839333, 21.410826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.218987, 33.776703, 21.600016>,  <42.427078, 33.739124, 21.713530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.218987, 33.776703, 21.600016>,  <41.872166, 33.839333, 21.410826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.218987, 33.776703, 21.600016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450477, -0.159134, -0.878491,
		0.212817, 0.974762, -0.067444,
		0.867052, -0.156575, 0.472974,
		42.479103, 33.729729, 21.741907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.415272, 34.357994, 21.105455>,  <41.872166, 33.839333, 21.410826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.415272, 34.357994, 21.105455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.601826, 34.046581, 21.273443>,  <42.713757, 33.859734, 21.374237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.601826, 34.046581, 21.273443>,  <42.415272, 34.357994, 21.105455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.601826, 34.046581, 21.273443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505745, -0.154838, -0.848674,
		0.725746, 0.608206, 0.321524,
		0.466384, -0.778531, 0.419970,
		42.741741, 33.813023, 21.399435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.039032, 34.419216, 20.743408>,  <42.415272, 34.357994, 21.105455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.039032, 34.419216, 20.743408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.034859, 34.056049, 20.911018>,  <43.032356, 33.838150, 21.011585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.034859, 34.056049, 20.911018>,  <43.039032, 34.419216, 20.743408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.034859, 34.056049, 20.911018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492765, -0.369302, -0.787907,
		0.870100, 0.198262, 0.451241,
		-0.010432, -0.907914, 0.419027,
		43.031731, 33.783676, 21.036726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.698635, 34.312126, 20.595936>,  <43.039032, 34.419216, 20.743408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.698635, 34.312126, 20.595936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.543137, 33.954113, 20.683390>,  <43.449837, 33.739307, 20.735861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.543137, 33.954113, 20.683390>,  <43.698635, 34.312126, 20.595936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.543137, 33.954113, 20.683390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728381, -0.443864, -0.521963,
		0.564216, -0.043662, 0.824472,
		-0.388744, -0.895030, 0.218633,
		43.426514, 33.685604, 20.748980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.233704, 33.793320, 20.468941>,  <43.698635, 34.312126, 20.595936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.233704, 33.793320, 20.468941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.928249, 33.537155, 20.501770>,  <43.744976, 33.383457, 20.521467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.928249, 33.537155, 20.501770>,  <44.233704, 33.793320, 20.468941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.928249, 33.537155, 20.501770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400084, -0.569126, -0.718352,
		0.506750, -0.515722, 0.690822,
		-0.763634, -0.640412, 0.082073,
		43.699158, 33.345032, 20.526392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.505619, 33.021561, 20.535210>,  <44.233704, 33.793320, 20.468941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.505619, 33.021561, 20.535210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.131092, 33.012314, 20.395056>,  <43.906376, 33.006767, 20.310965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.131092, 33.012314, 20.395056>,  <44.505619, 33.021561, 20.535210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.131092, 33.012314, 20.395056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251759, -0.739789, -0.623963,
		-0.244786, -0.672442, 0.698500,
		-0.936321, -0.023116, -0.350383,
		43.850197, 33.005379, 20.289942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.175217, 32.342949, 20.575151>,  <44.505619, 33.021561, 20.535210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.175217, 32.342949, 20.575151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.081448, 32.594376, 20.278519>,  <44.025185, 32.745232, 20.100538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.081448, 32.594376, 20.278519>,  <44.175217, 32.342949, 20.575151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.081448, 32.594376, 20.278519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579202, -0.522350, -0.625840,
		-0.780749, -0.576241, -0.241614,
		-0.234427, 0.628568, -0.741584,
		44.011120, 32.782948, 20.056044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.919781, 31.937809, 19.946951>,  <44.175217, 32.342949, 20.575151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.919781, 31.937809, 19.946951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.083447, 32.275272, 19.807913>,  <44.181644, 32.477749, 19.724489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.083447, 32.275272, 19.807913>,  <43.919781, 31.937809, 19.946951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.083447, 32.275272, 19.807913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626298, -0.536706, -0.565417,
		-0.663577, 0.013649, -0.747983,
		0.409165, 0.843659, -0.347597,
		44.206196, 32.528370, 19.703634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.636635, 31.325638, 19.698586>,  <43.919781, 31.937809, 19.946951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.636635, 31.325638, 19.698586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.530670, 30.976566, 19.862659>,  <43.467091, 30.767122, 19.961103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.530670, 30.976566, 19.862659>,  <43.636635, 31.325638, 19.698586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.530670, 30.976566, 19.862659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003027, 0.426133, 0.904656,
		-0.964268, 0.238411, -0.115529,
		-0.264910, -0.872680, 0.410184,
		43.451199, 30.714762, 19.985714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.140072, 31.412867, 20.167566>,  <43.636635, 31.325638, 19.698586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.140072, 31.412867, 20.167566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.278175, 31.054276, 20.278650>,  <43.361038, 30.839121, 20.345301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.278175, 31.054276, 20.278650>,  <43.140072, 31.412867, 20.167566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.278175, 31.054276, 20.278650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178132, 0.227930, 0.957245,
		-0.921448, -0.379965, -0.080997,
		0.345258, -0.896479, 0.277710,
		43.381752, 30.785332, 20.361963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.664291, 31.101557, 20.623600>,  <43.140072, 31.412867, 20.167566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.664291, 31.101557, 20.623600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.011917, 30.922131, 20.707048>,  <43.220493, 30.814476, 20.757116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.011917, 30.922131, 20.707048>,  <42.664291, 31.101557, 20.623600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.011917, 30.922131, 20.707048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212371, 0.042587, 0.976261,
		-0.446800, -0.892736, -0.058251,
		0.869062, -0.448564, 0.208619,
		43.272636, 30.787561, 20.769634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.549038, 30.729828, 21.208469>,  <42.664291, 31.101557, 20.623600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.549038, 30.729828, 21.208469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.948509, 30.742527, 21.192312>,  <43.188190, 30.750147, 21.182617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.948509, 30.742527, 21.192312>,  <42.549038, 30.729828, 21.208469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.948509, 30.742527, 21.192312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042496, -0.068605, 0.996738,
		0.028877, -0.997139, -0.069863,
		0.998679, 0.031752, -0.040393,
		43.248112, 30.752052, 21.180195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.625252, 30.199905, 21.634190>,  <42.549038, 30.729828, 21.208469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.625252, 30.199905, 21.634190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.932919, 30.455479, 21.629423>,  <43.117519, 30.608822, 21.626562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.932919, 30.455479, 21.629423>,  <42.625252, 30.199905, 21.634190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.932919, 30.455479, 21.629423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041197, -0.030966, 0.998671,
		0.637713, -0.768640, -0.050140,
		0.769171, 0.638931, -0.011918,
		43.163670, 30.647158, 21.625847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.249306, 29.957964, 21.944731>,  <42.625252, 30.199905, 21.634190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.249306, 29.957964, 21.944731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.266476, 30.356836, 21.969336>,  <43.276775, 30.596161, 21.984098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.266476, 30.356836, 21.969336>,  <43.249306, 29.957964, 21.944731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.266476, 30.356836, 21.969336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153838, -0.054240, 0.986606,
		0.987163, -0.051809, 0.151076,
		0.042920, 0.997183, 0.061514,
		43.279350, 30.655991, 21.987789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.352455, 30.067177, 22.686636>,  <43.249306, 29.957964, 21.944731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.352455, 30.067177, 22.686636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.281330, 30.445311, 22.577290>,  <43.238655, 30.672190, 22.511683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.281330, 30.445311, 22.577290>,  <43.352455, 30.067177, 22.686636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.281330, 30.445311, 22.577290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154343, 0.247564, 0.956499,
		0.971886, 0.212266, 0.101887,
		-0.177809, 0.945333, -0.273366,
		43.227989, 30.728910, 22.495279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.812935, 30.505100, 23.153706>,  <43.352455, 30.067177, 22.686636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.812935, 30.505100, 23.153706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.518784, 30.718357, 22.986385>,  <43.342293, 30.846312, 22.885994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.518784, 30.718357, 22.986385>,  <43.812935, 30.505100, 23.153706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.518784, 30.718357, 22.986385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307177, 0.287956, 0.907041,
		0.604034, 0.795513, -0.047989,
		-0.735381, 0.533142, -0.418299,
		43.298168, 30.878300, 22.860895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.721504, 31.099470, 23.586525>,  <43.812935, 30.505100, 23.153706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.721504, 31.099470, 23.586525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.374966, 31.130995, 23.389250>,  <43.167042, 31.149910, 23.270884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.374966, 31.130995, 23.389250>,  <43.721504, 31.099470, 23.586525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.374966, 31.130995, 23.389250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420279, 0.418466, 0.805141,
		0.269838, 0.904806, -0.329413,
		-0.866345, 0.078812, -0.493189,
		43.115063, 31.154638, 23.241293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.513824, 31.750710, 23.755018>,  <43.721504, 31.099470, 23.586525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.513824, 31.750710, 23.755018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.208622, 31.521692, 23.635002>,  <43.025501, 31.384281, 23.562992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.208622, 31.521692, 23.635002>,  <43.513824, 31.750710, 23.755018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.208622, 31.521692, 23.635002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561294, 0.356635, 0.746833,
		-0.320589, 0.738245, -0.593478,
		-0.763002, -0.572543, -0.300039,
		42.979721, 31.349930, 23.544991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.938206, 32.182560, 23.652086>,  <43.513824, 31.750710, 23.755018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.938206, 32.182560, 23.652086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.774063, 31.826878, 23.733000>,  <42.675579, 31.613468, 23.781548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.774063, 31.826878, 23.733000>,  <42.938206, 32.182560, 23.652086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.774063, 31.826878, 23.733000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557601, 0.420183, 0.715910,
		-0.721590, 0.180981, -0.668247,
		-0.410352, -0.889208, 0.202285,
		42.650959, 31.560116, 23.793686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.188656, 32.222431, 23.765253>,  <42.938206, 32.182560, 23.652086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.188656, 32.222431, 23.765253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.250488, 31.853724, 23.907494>,  <42.287586, 31.632500, 23.992838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.250488, 31.853724, 23.907494>,  <42.188656, 32.222431, 23.765253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.250488, 31.853724, 23.907494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332413, 0.290419, 0.897306,
		-0.930380, -0.256913, -0.261514,
		0.154581, -0.921766, 0.355601,
		42.296864, 31.577194, 24.014174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565826, 32.039242, 24.163195>,  <42.188656, 32.222431, 23.765253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565826, 32.039242, 24.163195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.857231, 31.814775, 24.320347>,  <42.032074, 31.680096, 24.414639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.857231, 31.814775, 24.320347>,  <41.565826, 32.039242, 24.163195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.857231, 31.814775, 24.320347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289411, 0.267697, 0.919010,
		-0.620893, -0.783216, 0.032612,
		0.728514, -0.561169, 0.392883,
		42.075787, 31.646425, 24.438211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.299770, 31.762777, 24.804401>,  <41.565826, 32.039242, 24.163195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.299770, 31.762777, 24.804401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.693382, 31.707108, 24.848787>,  <41.929550, 31.673706, 24.875418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.693382, 31.707108, 24.848787>,  <41.299770, 31.762777, 24.804401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.693382, 31.707108, 24.848787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071455, 0.262093, 0.962393,
		-0.163023, -0.954954, 0.247963,
		0.984031, -0.139174, 0.110964,
		41.988590, 31.665356, 24.882076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834339, 31.058720, 24.766197>,  <41.299770, 31.762777, 24.804401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.834339, 31.058720, 24.766197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.443684, 31.103497, 24.692825>,  <40.209290, 31.130362, 24.648802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.443684, 31.103497, 24.692825>,  <40.834339, 31.058720, 24.766197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.443684, 31.103497, 24.692825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184090, -0.004497, -0.982899,
		-0.110850, -0.993705, -0.016215,
		-0.976638, 0.111940, -0.183430,
		40.150692, 31.137079, 24.637796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555092, 30.505562, 24.345608>,  <40.834339, 31.058720, 24.766197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.555092, 30.505562, 24.345608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.326572, 30.829935, 24.295004>,  <40.189461, 31.024559, 24.264641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.326572, 30.829935, 24.295004>,  <40.555092, 30.505562, 24.345608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326572, 30.829935, 24.295004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145335, -0.051750, -0.988028,
		-0.807769, -0.582849, -0.088291,
		-0.571302, 0.810931, -0.126511,
		40.155182, 31.073214, 24.257051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178070, 30.320576, 23.827099>,  <40.555092, 30.505562, 24.345608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178070, 30.320576, 23.827099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.084755, 30.709526, 23.823891>,  <40.028767, 30.942896, 23.821966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.084755, 30.709526, 23.823891>,  <40.178070, 30.320576, 23.827099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084755, 30.709526, 23.823891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017032, -0.004163, -0.999846,
		-0.972258, -0.233392, -0.015591,
		-0.233291, 0.972373, -0.008023,
		40.014767, 31.001238, 23.821484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685459, 30.377302, 23.398401>,  <40.178070, 30.320576, 23.827099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685459, 30.377302, 23.398401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.813499, 30.756252, 23.400042>,  <39.890324, 30.983622, 23.401026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.813499, 30.756252, 23.400042>,  <39.685459, 30.377302, 23.398401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813499, 30.756252, 23.400042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166652, -0.052045, -0.984641,
		-0.932611, 0.315868, -0.174542,
		0.320101, 0.947375, 0.004103,
		39.909531, 31.040464, 23.401272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257633, 30.722380, 22.949677>,  <39.685459, 30.377302, 23.398401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257633, 30.722380, 22.949677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.609932, 30.907768, 22.988613>,  <39.821312, 31.019001, 23.011974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.609932, 30.907768, 22.988613>,  <39.257633, 30.722380, 22.949677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609932, 30.907768, 22.988613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091248, 0.035615, -0.995191,
		-0.464707, 0.885397, -0.010922,
		0.880750, 0.463469, 0.097341,
		39.874157, 31.046808, 23.017815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229931, 31.274040, 22.432762>,  <39.257633, 30.722380, 22.949677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229931, 31.274040, 22.432762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.612793, 31.189684, 22.512136>,  <39.842510, 31.139071, 22.559761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.612793, 31.189684, 22.512136>,  <39.229931, 31.274040, 22.432762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612793, 31.189684, 22.512136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205285, 0.010876, -0.978642,
		0.204228, 0.977449, 0.053703,
		0.957157, -0.210890, 0.198435,
		39.899940, 31.126417, 22.571667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534714, 31.693302, 21.931274>,  <39.229931, 31.274040, 22.432762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534714, 31.693302, 21.931274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.838436, 31.457575, 22.041655>,  <40.020672, 31.316137, 22.107883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.838436, 31.457575, 22.041655>,  <39.534714, 31.693302, 21.931274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838436, 31.457575, 22.041655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292544, -0.069652, -0.953712,
		0.581262, 0.804892, 0.119514,
		0.759311, -0.589320, 0.275953,
		40.066231, 31.280779, 22.124441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451893, 32.331684, 21.532368>,  <39.534714, 31.693302, 21.931274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451893, 32.331684, 21.532368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.110867, 32.368183, 21.326534>,  <38.906250, 32.390083, 21.203033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.110867, 32.368183, 21.326534>,  <39.451893, 32.331684, 21.532368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110867, 32.368183, 21.326534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494682, 0.176682, 0.850925,
		0.168565, 0.980029, -0.105494,
		-0.852570, 0.091250, -0.514585,
		38.855095, 32.395557, 21.172159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107132, 33.013462, 21.733641>,  <39.451893, 32.331684, 21.532368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107132, 33.013462, 21.733641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.826412, 32.754002, 21.615841>,  <38.657982, 32.598324, 21.545160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.826412, 32.754002, 21.615841>,  <39.107132, 33.013462, 21.733641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826412, 32.754002, 21.615841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507463, 0.165068, 0.845715,
		-0.499965, 0.742966, -0.445013,
		-0.701795, -0.648655, -0.294499,
		38.615875, 32.559406, 21.527491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617744, 33.151619, 22.213379>,  <39.107132, 33.013462, 21.733641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617744, 33.151619, 22.213379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.474598, 32.809814, 22.062782>,  <38.388710, 32.604733, 21.972425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.474598, 32.809814, 22.062782>,  <38.617744, 33.151619, 22.213379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474598, 32.809814, 22.062782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605726, -0.094415, 0.790052,
		-0.710654, 0.510782, -0.483811,
		-0.357865, -0.854510, -0.376490,
		38.367237, 32.553463, 21.949835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945843, 33.259224, 22.298704>,  <38.617744, 33.151619, 22.213379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945843, 33.259224, 22.298704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.031178, 32.871174, 22.252497>,  <38.082378, 32.638344, 22.224773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.031178, 32.871174, 22.252497>,  <37.945843, 33.259224, 22.298704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031178, 32.871174, 22.252497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669684, -0.231302, 0.705707,
		-0.711343, -0.073196, -0.699023,
		0.213341, -0.970124, -0.115517,
		38.095181, 32.580135, 22.217842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248241, 32.930836, 22.213171>,  <37.945843, 33.259224, 22.298704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248241, 32.930836, 22.213171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.507957, 32.659645, 22.351025>,  <37.663788, 32.496933, 22.433737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.507957, 32.659645, 22.351025>,  <37.248241, 32.930836, 22.213171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507957, 32.659645, 22.351025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572738, -0.137730, 0.808085,
		-0.500395, -0.722067, -0.477729,
		0.649289, -0.677975, 0.344636,
		37.702744, 32.456253, 22.454416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820824, 32.471638, 22.661297>,  <37.248241, 32.930836, 22.213171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820824, 32.471638, 22.661297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.190910, 32.334896, 22.727161>,  <37.412960, 32.252850, 22.766680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.190910, 32.334896, 22.727161>,  <36.820824, 32.471638, 22.661297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190910, 32.334896, 22.727161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274413, -0.303116, 0.912589,
		-0.262057, -0.889527, -0.374256,
		0.925216, -0.341851, 0.164664,
		37.468475, 32.232338, 22.776560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790802, 31.795895, 22.790133>,  <36.820824, 32.471638, 22.661297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790802, 31.795895, 22.790133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.123558, 31.933575, 22.964256>,  <37.323212, 32.016182, 23.068731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.123558, 31.933575, 22.964256>,  <36.790802, 31.795895, 22.790133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123558, 31.933575, 22.964256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338556, -0.306754, 0.889540,
		0.439711, -0.887372, -0.138654,
		0.831886, 0.344199, 0.435309,
		37.373123, 32.036835, 23.094849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.524857, 33.998348, 18.627071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.687664, 33.887337, 18.975166>,  <41.785351, 33.820728, 19.184023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.687664, 33.887337, 18.975166>,  <41.524857, 33.998348, 18.627071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.687664, 33.887337, 18.975166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737829, 0.461739, 0.492348,
		-0.538463, -0.842481, -0.016832,
		0.407022, -0.277530, 0.870236,
		41.809769, 33.804077, 19.236237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977589, 33.778004, 19.020403>,  <41.524857, 33.998348, 18.627071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.977589, 33.778004, 19.020403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.270802, 33.870190, 19.276386>,  <41.446728, 33.925503, 19.429977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.270802, 33.870190, 19.276386>,  <40.977589, 33.778004, 19.020403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.270802, 33.870190, 19.276386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635545, 0.567324, 0.523666,
		-0.242377, -0.790587, 0.562340,
		0.733033, 0.230468, 0.639959,
		41.490711, 33.939331, 19.468374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628700, 33.789219, 19.714464>,  <40.977589, 33.778004, 19.020403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.628700, 33.789219, 19.714464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.975914, 33.977791, 19.776783>,  <41.184242, 34.090935, 19.814175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.975914, 33.977791, 19.776783>,  <40.628700, 33.789219, 19.714464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.975914, 33.977791, 19.776783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457046, 0.636088, 0.621692,
		0.193982, -0.610857, 0.767610,
		0.868032, 0.471430, 0.155800,
		41.236324, 34.119221, 19.823523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722725, 33.828720, 20.443501>,  <40.628700, 33.789219, 19.714464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722725, 33.828720, 20.443501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.938068, 34.119915, 20.273697>,  <41.067272, 34.294632, 20.171814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.938068, 34.119915, 20.273697>,  <40.722725, 33.828720, 20.443501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.938068, 34.119915, 20.273697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289756, 0.632932, 0.717940,
		0.791336, -0.263504, 0.551681,
		0.538357, 0.727985, -0.424511,
		41.099575, 34.338310, 20.146343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.979851, 34.097214, 21.037027>,  <40.722725, 33.828720, 20.443501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.979851, 34.097214, 21.037027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.994675, 34.387867, 20.762617>,  <41.003567, 34.562260, 20.597971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.994675, 34.387867, 20.762617>,  <40.979851, 34.097214, 21.037027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994675, 34.387867, 20.762617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373321, 0.646861, 0.664983,
		0.926962, 0.231466, 0.295238,
		0.037057, 0.726632, -0.686026,
		41.005791, 34.605858, 20.556808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.396587, 34.629700, 21.325758>,  <40.979851, 34.097214, 21.037027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.396587, 34.629700, 21.325758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.184269, 34.805805, 21.036091>,  <41.056877, 34.911469, 20.862289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.184269, 34.805805, 21.036091>,  <41.396587, 34.629700, 21.325758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.184269, 34.805805, 21.036091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438733, 0.588324, 0.679255,
		0.725099, 0.678264, -0.119123,
		-0.530797, 0.440264, -0.724170,
		41.025028, 34.937885, 20.818840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403870, 35.382530, 21.504263>,  <41.396587, 34.629700, 21.325758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403870, 35.382530, 21.504263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.097466, 35.361122, 21.248026>,  <40.913624, 35.348278, 21.094284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.097466, 35.361122, 21.248026>,  <41.403870, 35.382530, 21.504263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.097466, 35.361122, 21.248026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533251, 0.609407, 0.586742,
		0.358977, 0.791049, -0.495355,
		-0.766015, -0.053522, -0.640591,
		40.867661, 35.345066, 21.055849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.303402, 36.011272, 21.517441>,  <41.403870, 35.382530, 21.504263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.303402, 36.011272, 21.517441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.967339, 35.834679, 21.391438>,  <40.765701, 35.728722, 21.315836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.967339, 35.834679, 21.391438>,  <41.303402, 36.011272, 21.517441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.967339, 35.834679, 21.391438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475820, 0.321297, 0.818757,
		-0.260262, 0.837768, -0.480009,
		-0.840154, -0.441489, -0.315006,
		40.715294, 35.702232, 21.296936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848782, 36.546368, 21.420097>,  <41.303402, 36.011272, 21.517441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848782, 36.546368, 21.420097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.599216, 36.235165, 21.449600>,  <40.449478, 36.048443, 21.467302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.599216, 36.235165, 21.449600>,  <40.848782, 36.546368, 21.420097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599216, 36.235165, 21.449600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488981, 0.462259, 0.739740,
		-0.609617, 0.425467, -0.668839,
		-0.623911, -0.778007, 0.073755,
		40.412045, 36.001762, 21.471727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187881, 36.807686, 21.566059>,  <40.848782, 36.546368, 21.420097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187881, 36.807686, 21.566059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.122108, 36.429146, 21.677334>,  <40.082645, 36.202023, 21.744099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.122108, 36.429146, 21.677334>,  <40.187881, 36.807686, 21.566059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122108, 36.429146, 21.677334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648214, 0.316250, 0.692679,
		-0.743492, -0.066426, -0.665438,
		-0.164433, -0.946347, 0.278188,
		40.072777, 36.145241, 21.760790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413727, 36.794220, 21.658104>,  <40.187881, 36.807686, 21.566059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413727, 36.794220, 21.658104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.552162, 36.463676, 21.835804>,  <39.635223, 36.265350, 21.942425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.552162, 36.463676, 21.835804>,  <39.413727, 36.794220, 21.658104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552162, 36.463676, 21.835804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636815, 0.140824, 0.758047,
		-0.688979, -0.545254, -0.477500,
		0.346085, -0.826358, 0.444251,
		39.655987, 36.215771, 21.969080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841846, 36.287945, 21.792679>,  <39.413727, 36.794220, 21.658104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841846, 36.287945, 21.792679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.138535, 36.215591, 22.051022>,  <39.316547, 36.172180, 22.206026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.138535, 36.215591, 22.051022>,  <38.841846, 36.287945, 21.792679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138535, 36.215591, 22.051022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605666, 0.233029, 0.760832,
		-0.288124, -0.955499, 0.063288,
		0.741723, -0.180883, 0.645855,
		39.361050, 36.161327, 22.244778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146511, 35.952431, 21.711346>,  <38.841846, 36.287945, 21.792679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146511, 35.952431, 21.711346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.763641, 35.839844, 21.684238>,  <37.533920, 35.772293, 21.667974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.763641, 35.839844, 21.684238>,  <38.146511, 35.952431, 21.711346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763641, 35.839844, 21.684238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137465, -0.235848, -0.962018,
		0.254795, -0.930135, 0.264439,
		-0.957174, -0.281469, -0.067768,
		37.476490, 35.755402, 21.663908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118004, 35.341320, 21.368788>,  <38.146511, 35.952431, 21.711346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118004, 35.341320, 21.368788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.759312, 35.507061, 21.306585>,  <37.544094, 35.606506, 21.269264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.759312, 35.507061, 21.306585>,  <38.118004, 35.341320, 21.368788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759312, 35.507061, 21.306585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035170, -0.283537, -0.958316,
		-0.441175, -0.864822, 0.239684,
		-0.896732, 0.414355, -0.155505,
		37.490292, 35.631367, 21.259933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693195, 34.854988, 20.977369>,  <38.118004, 35.341320, 21.368788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693195, 34.854988, 20.977369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.535892, 35.215771, 20.906012>,  <37.441509, 35.432240, 20.863197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.535892, 35.215771, 20.906012>,  <37.693195, 34.854988, 20.977369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535892, 35.215771, 20.906012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052033, -0.171885, -0.983742,
		-0.917954, -0.396148, 0.020663,
		-0.393259, 0.901955, -0.178395,
		37.417915, 35.486359, 20.852493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102093, 34.708599, 20.553780>,  <37.693195, 34.854988, 20.977369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102093, 34.708599, 20.553780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.154743, 35.101791, 20.502504>,  <37.186333, 35.337708, 20.471739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.154743, 35.101791, 20.502504>,  <37.102093, 34.708599, 20.553780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154743, 35.101791, 20.502504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014482, -0.131206, -0.991249,
		-0.991193, 0.128620, -0.031506,
		0.131628, 0.982976, -0.128187,
		37.194233, 35.396683, 20.464048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627922, 34.866318, 20.024563>,  <37.102093, 34.708599, 20.553780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627922, 34.866318, 20.024563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.901714, 35.157528, 20.039852>,  <37.065990, 35.332256, 20.049025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.901714, 35.157528, 20.039852>,  <36.627922, 34.866318, 20.024563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901714, 35.157528, 20.039852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021996, 0.031780, -0.999253,
		-0.728698, 0.684811, 0.005739,
		0.684482, 0.728027, 0.038221,
		37.107059, 35.375935, 20.051319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511795, 35.179081, 19.477438>,  <36.627922, 34.866318, 20.024563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511795, 35.179081, 19.477438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.870430, 35.329548, 19.570929>,  <37.085609, 35.419827, 19.627024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.870430, 35.329548, 19.570929>,  <36.511795, 35.179081, 19.477438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870430, 35.329548, 19.570929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267511, -0.039419, -0.962748,
		-0.352940, 0.925713, -0.135971,
		0.896589, 0.376166, 0.233726,
		37.139408, 35.442398, 19.641047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677967, 35.681370, 18.949829>,  <36.511795, 35.179081, 19.477438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677967, 35.681370, 18.949829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.026657, 35.580566, 19.117918>,  <37.235870, 35.520084, 19.218771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.026657, 35.580566, 19.117918>,  <36.677967, 35.681370, 18.949829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026657, 35.580566, 19.117918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428595, -0.023502, -0.903191,
		0.237485, 0.967441, 0.087521,
		0.871727, -0.252005, 0.420222,
		37.288174, 35.504967, 19.243984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208557, 36.139458, 18.663042>,  <36.677967, 35.681370, 18.949829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208557, 36.139458, 18.663042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.396343, 35.807674, 18.784105>,  <37.509014, 35.608604, 18.856743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.396343, 35.807674, 18.784105>,  <37.208557, 36.139458, 18.663042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396343, 35.807674, 18.784105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472143, -0.053826, -0.879877,
		0.746112, 0.555970, 0.366354,
		0.469466, -0.829458, 0.302657,
		37.537182, 35.558838, 18.874903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733135, 36.195423, 18.164152>,  <37.208557, 36.139458, 18.663042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733135, 36.195423, 18.164152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.762413, 35.835098, 18.335346>,  <37.779980, 35.618904, 18.438063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.762413, 35.835098, 18.335346>,  <37.733135, 36.195423, 18.164152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762413, 35.835098, 18.335346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507110, -0.335902, -0.793731,
		0.858768, 0.275135, 0.432226,
		0.073198, -0.900816, 0.427986,
		37.784370, 35.564854, 18.463741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485992, 35.990101, 18.234814>,  <37.733135, 36.195423, 18.164152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485992, 35.990101, 18.234814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.270142, 35.655312, 18.198416>,  <38.140633, 35.454437, 18.176577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.270142, 35.655312, 18.198416>,  <38.485992, 35.990101, 18.234814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270142, 35.655312, 18.198416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552940, -0.270831, -0.787977,
		0.634874, -0.475524, 0.608943,
		-0.539623, -0.836975, -0.090993,
		38.108253, 35.404221, 18.171118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916794, 35.433689, 18.028320>,  <38.485992, 35.990101, 18.234814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916794, 35.433689, 18.028320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.570686, 35.256142, 17.935125>,  <38.363022, 35.149612, 17.879208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.570686, 35.256142, 17.935125>,  <38.916794, 35.433689, 18.028320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570686, 35.256142, 17.935125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434349, -0.431772, -0.790515,
		0.250288, -0.785208, 0.566396,
		-0.865273, -0.443870, -0.232987,
		38.311104, 35.122982, 17.865229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147846, 34.796803, 17.790861>,  <38.916794, 35.433689, 18.028320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147846, 34.796803, 17.790861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.778797, 34.873657, 17.657080>,  <38.557369, 34.919769, 17.576811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.778797, 34.873657, 17.657080>,  <39.147846, 34.796803, 17.790861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778797, 34.873657, 17.657080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210256, -0.476423, -0.853706,
		-0.323370, -0.857965, 0.399158,
		-0.922618, 0.192137, -0.334453,
		38.502010, 34.931297, 17.556744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947140, 34.152950, 17.481150>,  <39.147846, 34.796803, 17.790861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947140, 34.152950, 17.481150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.691666, 34.415874, 17.321138>,  <38.538380, 34.573627, 17.225132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.691666, 34.415874, 17.321138>,  <38.947140, 34.152950, 17.481150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691666, 34.415874, 17.321138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027015, -0.500402, -0.865371,
		-0.768992, -0.563509, 0.301844,
		-0.638688, 0.657309, -0.400028,
		38.500061, 34.613068, 17.201130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587803, 33.761383, 17.904327>,  <38.947140, 34.152950, 17.481150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587803, 33.761383, 17.904327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.533916, 33.365070, 17.910107>,  <39.501583, 33.127285, 17.913574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.533916, 33.365070, 17.910107>,  <39.587803, 33.761383, 17.904327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533916, 33.365070, 17.910107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338990, 0.059784, 0.938889,
		-0.931094, 0.121588, -0.343918,
		-0.134718, -0.990778, 0.014447,
		39.493500, 33.067837, 17.914440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956947, 33.643501, 18.312225>,  <39.587803, 33.761383, 17.904327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956947, 33.643501, 18.312225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.144344, 33.290131, 18.315523>,  <39.256783, 33.078106, 18.317501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.144344, 33.290131, 18.315523>,  <38.956947, 33.643501, 18.312225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144344, 33.290131, 18.315523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166551, -0.079151, 0.982851,
		-0.867628, -0.461827, -0.184218,
		0.468488, -0.883431, 0.008245,
		39.284889, 33.025101, 18.317997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489517, 33.161438, 18.642679>,  <38.956947, 33.643501, 18.312225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489517, 33.161438, 18.642679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.838749, 32.972046, 18.689243>,  <39.048286, 32.858410, 18.717182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.838749, 32.972046, 18.689243>,  <38.489517, 33.161438, 18.642679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838749, 32.972046, 18.689243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217565, -0.164643, 0.962059,
		-0.436354, -0.865278, -0.246759,
		0.873076, -0.473484, 0.116412,
		39.100670, 32.830002, 18.724167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288090, 32.535828, 18.942225>,  <38.489517, 33.161438, 18.642679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288090, 32.535828, 18.942225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.679108, 32.570587, 19.019016>,  <38.913719, 32.591442, 19.065090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.679108, 32.570587, 19.019016>,  <38.288090, 32.535828, 18.942225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679108, 32.570587, 19.019016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171758, -0.199261, 0.964777,
		0.122089, -0.976086, -0.179862,
		0.977545, 0.086896, 0.191978,
		38.972370, 32.596657, 19.076609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549084, 31.903635, 19.251627>,  <38.288090, 32.535828, 18.942225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549084, 31.903635, 19.251627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.815586, 32.173302, 19.379129>,  <38.975487, 32.335102, 19.455631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.815586, 32.173302, 19.379129>,  <38.549084, 31.903635, 19.251627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815586, 32.173302, 19.379129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159650, -0.288586, 0.944050,
		0.728437, -0.679865, -0.084640,
		0.666252, 0.674168, 0.318757,
		39.015461, 32.375553, 19.474756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867893, 31.574163, 19.800030>,  <38.549084, 31.903635, 19.251627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867893, 31.574163, 19.800030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.975952, 31.955162, 19.856276>,  <39.040787, 32.183762, 19.890024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.975952, 31.955162, 19.856276>,  <38.867893, 31.574163, 19.800030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975952, 31.955162, 19.856276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206743, -0.085253, 0.974674,
		0.940360, -0.292379, 0.173890,
		0.270150, 0.952495, 0.140616,
		39.056995, 32.240910, 19.898460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400414, 31.578154, 20.293997>,  <38.867893, 31.574163, 19.800030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400414, 31.578154, 20.293997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.205708, 31.927458, 20.302711>,  <39.088882, 32.137039, 20.307941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.205708, 31.927458, 20.302711>,  <39.400414, 31.578154, 20.293997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205708, 31.927458, 20.302711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264013, -0.170847, 0.949267,
		0.832681, 0.456317, 0.313714,
		-0.486764, 0.873261, 0.021788,
		39.059677, 32.189438, 20.309248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567944, 31.834591, 20.947426>,  <39.400414, 31.578154, 20.293997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567944, 31.834591, 20.947426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.242569, 32.044014, 20.846073>,  <39.047344, 32.169666, 20.785261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.242569, 32.044014, 20.846073>,  <39.567944, 31.834591, 20.947426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242569, 32.044014, 20.846073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343488, -0.080844, 0.935671,
		0.469395, 0.848145, 0.245598,
		-0.813440, 0.523559, -0.253380,
		38.998535, 32.201080, 20.770060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113033, 31.925119, 21.513908>,  <39.567944, 31.834591, 20.947426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113033, 31.925119, 21.513908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.242531, 31.565571, 21.632040>,  <40.320229, 31.349842, 21.702919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.242531, 31.565571, 21.632040>,  <40.113033, 31.925119, 21.513908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242531, 31.565571, 21.632040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285936, -0.204596, -0.936152,
		0.901904, 0.387518, 0.190784,
		0.323742, -0.898872, 0.295331,
		40.339653, 31.295910, 21.720640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658909, 31.865646, 21.053732>,  <40.113033, 31.925119, 21.513908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658909, 31.865646, 21.053732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.562687, 31.501192, 21.187578>,  <40.504955, 31.282520, 21.267885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.562687, 31.501192, 21.187578>,  <40.658909, 31.865646, 21.053732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562687, 31.501192, 21.187578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297798, -0.397393, -0.867984,
		0.923824, -0.109149, 0.366929,
		-0.240554, -0.911134, 0.334616,
		40.490520, 31.227852, 21.287964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279438, 31.471598, 20.882738>,  <40.658909, 31.865646, 21.053732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.279438, 31.471598, 20.882738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.000828, 31.194942, 20.959150>,  <40.833664, 31.028950, 21.004997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.000828, 31.194942, 20.959150>,  <41.279438, 31.471598, 20.882738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000828, 31.194942, 20.959150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184493, -0.429911, -0.883821,
		0.693410, -0.580358, 0.427045,
		-0.696523, -0.691637, 0.191033,
		40.791870, 30.987452, 21.016460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.604267, 30.846186, 20.876806>,  <41.279438, 31.471598, 20.882738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.604267, 30.846186, 20.876806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.216099, 30.789589, 20.798557>,  <40.983200, 30.755630, 20.751608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.216099, 30.789589, 20.798557>,  <41.604267, 30.846186, 20.876806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.216099, 30.789589, 20.798557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241431, -0.568511, -0.786452,
		0.000064, -0.810417, 0.585854,
		-0.970418, -0.141493, -0.195624,
		40.924973, 30.747141, 20.739870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544594, 30.030033, 20.709410>,  <41.604267, 30.846186, 20.876806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.544594, 30.030033, 20.709410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.216862, 30.203810, 20.559761>,  <41.020222, 30.308075, 20.469973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.216862, 30.203810, 20.559761>,  <41.544594, 30.030033, 20.709410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.216862, 30.203810, 20.559761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119402, -0.508934, -0.852484,
		-0.560759, -0.743132, 0.365108,
		-0.819324, 0.434443, -0.374121,
		40.971066, 30.334143, 20.447525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.137051, 29.440926, 20.378138>,  <41.544594, 30.030033, 20.709410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.137051, 29.440926, 20.378138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.033768, 29.794109, 20.221313>,  <40.971798, 30.006020, 20.127218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.033768, 29.794109, 20.221313>,  <41.137051, 29.440926, 20.378138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033768, 29.794109, 20.221313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085186, -0.383433, -0.919632,
		-0.962325, -0.270857, 0.023791,
		-0.258211, 0.882958, -0.392061,
		40.956303, 30.058996, 20.103695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.684868, 29.240191, 19.825108>,  <41.137051, 29.440926, 20.378138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.684868, 29.240191, 19.825108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.810139, 29.611618, 19.745424>,  <40.885300, 29.834475, 19.697615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.810139, 29.611618, 19.745424>,  <40.684868, 29.240191, 19.825108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.810139, 29.611618, 19.745424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137012, -0.251742, -0.958047,
		-0.939760, 0.272743, -0.206064,
		0.313175, 0.928567, -0.199208,
		40.904091, 29.890188, 19.685661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302841, 29.377272, 19.178616>,  <40.684868, 29.240191, 19.825108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302841, 29.377272, 19.178616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.612911, 29.629244, 19.197756>,  <40.798954, 29.780426, 19.209240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.612911, 29.629244, 19.197756>,  <40.302841, 29.377272, 19.178616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.612911, 29.629244, 19.197756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238338, -0.221467, -0.945593,
		-0.585060, 0.744407, -0.321813,
		0.775177, 0.629929, 0.047849,
		40.845463, 29.818222, 19.212111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268517, 29.720135, 18.445618>,  <40.302841, 29.377272, 19.178616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268517, 29.720135, 18.445618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.613605, 29.850681, 18.600124>,  <40.820660, 29.929008, 18.692829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.613605, 29.850681, 18.600124>,  <40.268517, 29.720135, 18.445618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613605, 29.850681, 18.600124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476874, -0.270920, -0.836178,
		-0.168253, 0.905586, -0.389364,
		0.862718, 0.326367, 0.386267,
		40.872421, 29.948591, 18.716005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.076385, 33.270123, 33.478336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.452061, 33.378654, 33.562534>,  <35.677467, 33.443775, 33.613052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.452061, 33.378654, 33.562534>,  <35.076385, 33.270123, 33.478336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452061, 33.378654, 33.562534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263291, -0.175418, -0.948634,
		-0.220467, 0.946367, -0.236188,
		0.939187, 0.271328, 0.210496,
		35.733818, 33.460052, 33.625683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260227, 33.693378, 33.055035>,  <35.076385, 33.270123, 33.478336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260227, 33.693378, 33.055035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.589466, 33.510185, 33.189350>,  <35.787010, 33.400269, 33.269939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.589466, 33.510185, 33.189350>,  <35.260227, 33.693378, 33.055035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589466, 33.510185, 33.189350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295961, -0.158705, -0.941924,
		0.484678, 0.874679, 0.004916,
		0.823100, -0.457984, 0.335791,
		35.836395, 33.372791, 33.290089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766117, 33.827839, 32.547173>,  <35.260227, 33.693378, 33.055035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766117, 33.827839, 32.547173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.931000, 33.526272, 32.751801>,  <36.029930, 33.345333, 32.874577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.931000, 33.526272, 32.751801>,  <35.766117, 33.827839, 32.547173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931000, 33.526272, 32.751801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369351, -0.375001, -0.850267,
		0.832866, 0.539433, 0.123881,
		0.412206, -0.753914, 0.511565,
		36.054661, 33.300098, 32.905270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315853, 33.718822, 32.182713>,  <35.766117, 33.827839, 32.547173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315853, 33.718822, 32.182713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.296322, 33.364433, 32.367180>,  <36.284603, 33.151802, 32.477859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.296322, 33.364433, 32.367180>,  <36.315853, 33.718822, 32.182713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296322, 33.364433, 32.367180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278694, -0.455465, -0.845507,
		0.959138, 0.087238, 0.269154,
		-0.048830, -0.885969, 0.461166,
		36.281673, 33.098644, 32.505531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946720, 33.360512, 32.071217>,  <36.315853, 33.718822, 32.182713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946720, 33.360512, 32.071217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.696918, 33.066120, 32.175777>,  <36.547039, 32.889484, 32.238514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.696918, 33.066120, 32.175777>,  <36.946720, 33.360512, 32.071217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696918, 33.066120, 32.175777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392765, -0.585236, -0.709390,
		0.675080, -0.340344, 0.654548,
		-0.624502, -0.735979, 0.261406,
		36.509567, 32.845325, 32.254200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372551, 32.744251, 32.219883>,  <36.946720, 33.360512, 32.071217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372551, 32.744251, 32.219883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.994896, 32.648224, 32.129566>,  <36.768303, 32.590607, 32.075375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.994896, 32.648224, 32.129566>,  <37.372551, 32.744251, 32.219883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994896, 32.648224, 32.129566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320778, -0.512243, -0.796686,
		0.075596, -0.824607, 0.560633,
		-0.944133, -0.240065, -0.225792,
		36.711655, 32.576206, 32.061829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437187, 32.062130, 31.998980>,  <37.372551, 32.744251, 32.219883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437187, 32.062130, 31.998980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.082233, 32.184570, 31.861076>,  <36.869263, 32.258034, 31.778334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.082233, 32.184570, 31.861076>,  <37.437187, 32.062130, 31.998980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082233, 32.184570, 31.861076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201761, -0.414546, -0.887381,
		-0.414546, -0.857003, 0.306101,
		0.887381, -0.306101, 0.344758,
		36.816021, 32.276402, 31.757648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046516, 31.508282, 31.753853>,  <37.437187, 32.062130, 31.998980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046516, 31.508282, 31.753853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.859837, 31.802958, 31.558105>,  <36.747829, 31.979763, 31.440657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.859837, 31.802958, 31.558105>,  <37.046516, 31.508282, 31.753853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859837, 31.802958, 31.558105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019260, -0.561660, -0.827144,
		-0.884206, -0.376602, 0.276315,
		-0.466700, 0.736688, -0.489370,
		36.719826, 32.023964, 31.411295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605869, 31.143919, 31.261442>,  <37.046516, 31.508282, 31.753853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605869, 31.143919, 31.261442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.646862, 31.518194, 31.126398>,  <36.671459, 31.742760, 31.045372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.646862, 31.518194, 31.126398>,  <36.605869, 31.143919, 31.261442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646862, 31.518194, 31.126398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106230, -0.347752, -0.931549,
		-0.989046, 0.059604, -0.135037,
		0.102483, 0.935690, -0.337611,
		36.677608, 31.798901, 31.025114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202808, 31.187628, 30.664995>,  <36.605869, 31.143919, 31.261442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202808, 31.187628, 30.664995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.457718, 31.495289, 30.645891>,  <36.610664, 31.679886, 30.634430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.457718, 31.495289, 30.645891>,  <36.202808, 31.187628, 30.664995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457718, 31.495289, 30.645891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282838, -0.291093, -0.913930,
		-0.716854, 0.568919, -0.403053,
		0.637277, 0.769153, -0.047759,
		36.648903, 31.726034, 30.631563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088379, 31.517664, 29.989956>,  <36.202808, 31.187628, 30.664995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088379, 31.517664, 29.989956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.460670, 31.626364, 30.087852>,  <36.684044, 31.691584, 30.146591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.460670, 31.626364, 30.087852>,  <36.088379, 31.517664, 29.989956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460670, 31.626364, 30.087852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324820, -0.306758, -0.894646,
		-0.168045, 0.912168, -0.373778,
		0.930727, 0.271751, 0.244742,
		36.739887, 31.707890, 30.161276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328285, 31.908159, 29.437460>,  <36.088379, 31.517664, 29.989956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328285, 31.908159, 29.437460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.653194, 31.785290, 29.635792>,  <36.848141, 31.711567, 29.754791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.653194, 31.785290, 29.635792>,  <36.328285, 31.908159, 29.437460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653194, 31.785290, 29.635792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500491, -0.069471, -0.862950,
		0.299523, 0.949114, 0.097309,
		0.812278, -0.307176, 0.495831,
		36.896877, 31.693136, 29.784540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062328, 32.616493, 29.157299>,  <36.328285, 31.908159, 29.437460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062328, 32.616493, 29.157299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.730721, 32.487907, 28.974260>,  <35.531757, 32.410759, 28.864437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.730721, 32.487907, 28.974260>,  <36.062328, 32.616493, 29.157299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730721, 32.487907, 28.974260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550649, 0.326490, 0.768238,
		-0.097557, 0.888858, -0.447677,
		-0.829017, -0.321460, -0.457597,
		35.482014, 32.391468, 28.836981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581730, 33.224522, 29.222733>,  <36.062328, 32.616493, 29.157299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581730, 33.224522, 29.222733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.369072, 32.889877, 29.169930>,  <35.241478, 32.689091, 29.138248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.369072, 32.889877, 29.169930>,  <35.581730, 33.224522, 29.222733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369072, 32.889877, 29.169930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671108, 0.321033, 0.668246,
		-0.516686, 0.443862, -0.732136,
		-0.531648, -0.836615, -0.132006,
		35.209579, 32.638893, 29.130327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898964, 33.464863, 29.101658>,  <35.581730, 33.224522, 29.222733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898964, 33.464863, 29.101658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.838047, 33.077118, 29.178741>,  <34.801498, 32.844471, 29.224993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.838047, 33.077118, 29.178741>,  <34.898964, 33.464863, 29.101658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838047, 33.077118, 29.178741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861228, 0.225816, 0.455295,
		-0.484864, -0.096630, -0.869235,
		-0.152292, -0.969366, 0.192710,
		34.792358, 32.786308, 29.236555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154964, 33.404976, 29.254326>,  <34.898964, 33.464863, 29.101658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154964, 33.404976, 29.254326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.289917, 33.065483, 29.417215>,  <34.370888, 32.861790, 29.514948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.289917, 33.065483, 29.417215>,  <34.154964, 33.404976, 29.254326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289917, 33.065483, 29.417215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732308, 0.035190, 0.680064,
		-0.591520, -0.527656, -0.609658,
		0.337385, -0.848729, 0.407223,
		34.391132, 32.810863, 29.539383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611290, 32.925556, 29.329731>,  <34.154964, 33.404976, 29.254326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611290, 32.925556, 29.329731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.850224, 32.799324, 29.624649>,  <33.993584, 32.723587, 29.801600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.850224, 32.799324, 29.624649>,  <33.611290, 32.925556, 29.329731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850224, 32.799324, 29.624649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744448, 0.123770, 0.656108,
		-0.298308, -0.940793, -0.160999,
		0.597335, -0.315578, 0.737294,
		34.029423, 32.704651, 29.845837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160870, 32.507317, 29.708389>,  <33.611290, 32.925556, 29.329731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160870, 32.507317, 29.708389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.465088, 32.571636, 29.960012>,  <33.647617, 32.610226, 30.110987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.465088, 32.571636, 29.960012>,  <33.160870, 32.507317, 29.708389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465088, 32.571636, 29.960012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642123, 0.042766, 0.765408,
		0.096175, -0.986060, 0.135780,
		0.760545, 0.160801, 0.629058,
		33.693253, 32.619877, 30.148729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973457, 31.947796, 30.263548>,  <33.160870, 32.507317, 29.708389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973457, 31.947796, 30.263548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.202549, 32.238758, 30.414732>,  <33.340004, 32.413338, 30.505444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.202549, 32.238758, 30.414732>,  <32.973457, 31.947796, 30.263548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202549, 32.238758, 30.414732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726616, 0.237042, 0.644856,
		0.379481, -0.643963, 0.664309,
		0.572733, 0.727409, 0.377961,
		33.374371, 32.456982, 30.528120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946671, 31.884476, 31.076986>,  <32.973457, 31.947796, 30.263548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946671, 31.884476, 31.076986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.105415, 32.245041, 31.007750>,  <33.200661, 32.461380, 30.966208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.105415, 32.245041, 31.007750>,  <32.946671, 31.884476, 31.076986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105415, 32.245041, 31.007750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365549, 0.328190, 0.871014,
		0.841949, -0.282395, 0.459755,
		0.396858, 0.901412, -0.173090,
		33.224472, 32.515465, 30.955822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190922, 32.060631, 31.688141>,  <32.946671, 31.884476, 31.076986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190922, 32.060631, 31.688141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.148098, 32.406322, 31.491508>,  <33.122406, 32.613735, 31.373529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.148098, 32.406322, 31.491508>,  <33.190922, 32.060631, 31.688141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148098, 32.406322, 31.491508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443574, 0.400974, 0.801537,
		0.889821, 0.303863, 0.340421,
		-0.107057, 0.864226, -0.491581,
		33.115982, 32.665592, 31.344034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515984, 32.584503, 32.103889>,  <33.190922, 32.060631, 31.688141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515984, 32.584503, 32.103889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.248482, 32.767662, 31.869591>,  <33.087982, 32.877556, 31.729012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.248482, 32.767662, 31.869591>,  <33.515984, 32.584503, 32.103889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248482, 32.767662, 31.869591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360752, 0.489039, 0.794165,
		0.650097, 0.742411, -0.161861,
		-0.668754, 0.457893, -0.585749,
		33.047855, 32.905029, 31.693867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543915, 33.316296, 32.332409>,  <33.515984, 32.584503, 32.103889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543915, 33.316296, 32.332409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.184193, 33.276882, 32.161976>,  <32.968361, 33.253235, 32.059715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.184193, 33.276882, 32.161976>,  <33.543915, 33.316296, 32.332409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184193, 33.276882, 32.161976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391535, 0.615417, 0.684078,
		0.194816, 0.782019, -0.592025,
		-0.899304, -0.098529, -0.426080,
		32.914402, 33.247322, 32.034153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266739, 34.008873, 32.235725>,  <33.543915, 33.316296, 32.332409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266739, 34.008873, 32.235725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.945240, 33.772556, 32.207565>,  <32.752342, 33.630768, 32.190670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.945240, 33.772556, 32.207565>,  <33.266739, 34.008873, 32.235725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945240, 33.772556, 32.207565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533605, 0.663442, 0.524510,
		-0.263168, 0.459141, -0.848489,
		-0.803747, -0.590792, -0.070403,
		32.704117, 33.595318, 32.186443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790127, 34.447094, 32.167641>,  <33.266739, 34.008873, 32.235725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790127, 34.447094, 32.167641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.587002, 34.108665, 32.232491>,  <32.465126, 33.905609, 32.271400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.587002, 34.108665, 32.232491>,  <32.790127, 34.447094, 32.167641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587002, 34.108665, 32.232491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751633, 0.527108, 0.396491,
		-0.420920, 0.079482, -0.903609,
		-0.507813, -0.846073, 0.162129,
		32.434658, 33.854843, 32.281128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076130, 34.489555, 31.805695>,  <32.790127, 34.447094, 32.167641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076130, 34.489555, 31.805695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.070358, 34.233326, 32.112801>,  <32.066895, 34.079590, 32.297066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.070358, 34.233326, 32.112801>,  <32.076130, 34.489555, 31.805695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.070358, 34.233326, 32.112801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806884, 0.460945, 0.369416,
		-0.590534, -0.614166, -0.523517,
		-0.014429, -0.640570, 0.767764,
		32.066029, 34.041157, 32.343128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380405, 34.990772, 31.231771>,  <32.076130, 34.489555, 31.805695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380405, 34.990772, 31.231771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.134399, 35.291283, 31.327551>,  <31.986795, 35.471588, 31.385017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.134399, 35.291283, 31.327551>,  <32.380405, 34.990772, 31.231771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134399, 35.291283, 31.327551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097786, 0.373994, -0.922261,
		-0.782425, -0.543794, -0.303478,
		-0.615019, 0.751276, 0.239447,
		31.949894, 35.516666, 31.399385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732292, 35.097614, 30.925138>,  <32.380405, 34.990772, 31.231771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732292, 35.097614, 30.925138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.876030, 35.457825, 31.023052>,  <31.962273, 35.673950, 31.081800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.876030, 35.457825, 31.023052>,  <31.732292, 35.097614, 30.925138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876030, 35.457825, 31.023052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273587, 0.149118, -0.950218,
		-0.892200, 0.408427, -0.192788,
		0.359347, 0.900528, 0.244783,
		31.983833, 35.727982, 31.096487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.391813, 35.535980, 30.519249>,  <31.732292, 35.097614, 30.925138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.391813, 35.535980, 30.519249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.765654, 35.649570, 30.604923>,  <31.989958, 35.717724, 30.656328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.765654, 35.649570, 30.604923>,  <31.391813, 35.535980, 30.519249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.765654, 35.649570, 30.604923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250479, -0.097905, -0.963159,
		-0.252547, 0.953819, -0.162633,
		0.934602, 0.283979, 0.214186,
		32.046036, 35.734764, 30.669180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619047, 36.155579, 30.107538>,  <31.391813, 35.535980, 30.519249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619047, 36.155579, 30.107538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.968246, 36.004555, 30.231035>,  <32.177765, 35.913940, 30.305134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.968246, 36.004555, 30.231035>,  <31.619047, 36.155579, 30.107538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.968246, 36.004555, 30.231035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317142, -0.041476, -0.947471,
		0.370529, 0.925057, 0.083530,
		0.873000, -0.377556, 0.308743,
		32.230148, 35.891289, 30.323658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178017, 36.593212, 29.796219>,  <31.619047, 36.155579, 30.107538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178017, 36.593212, 29.796219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.388367, 36.268856, 29.898914>,  <32.514576, 36.074242, 29.960531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.388367, 36.268856, 29.898914>,  <32.178017, 36.593212, 29.796219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388367, 36.268856, 29.898914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552935, 0.096556, -0.827611,
		0.646310, 0.577181, 0.499145,
		0.525876, -0.810888, 0.256739,
		32.546131, 36.025589, 29.975937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913044, 36.669609, 29.636562>,  <32.178017, 36.593212, 29.796219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913044, 36.669609, 29.636562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.866158, 36.272415, 29.642653>,  <32.838024, 36.034100, 29.646307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.866158, 36.272415, 29.642653>,  <32.913044, 36.669609, 29.636562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866158, 36.272415, 29.642653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510029, -0.073346, -0.857024,
		0.852133, -0.092695, 0.515051,
		-0.117219, -0.992989, 0.015223,
		32.830994, 35.974518, 29.647219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569679, 36.311214, 29.616623>,  <32.913044, 36.669609, 29.636562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569679, 36.311214, 29.616623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.305225, 36.050159, 29.468590>,  <33.146553, 35.893524, 29.379770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.305225, 36.050159, 29.468590>,  <33.569679, 36.311214, 29.616623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305225, 36.050159, 29.468590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641965, -0.236796, -0.729252,
		0.388306, -0.719714, 0.575527,
		-0.661135, -0.652641, -0.370081,
		33.106884, 35.854366, 29.357565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035080, 35.906513, 29.304279>,  <33.569679, 36.311214, 29.616623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035080, 35.906513, 29.304279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.668983, 35.839207, 29.157846>,  <33.449326, 35.798820, 29.069986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.668983, 35.839207, 29.157846>,  <34.035080, 35.906513, 29.304279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668983, 35.839207, 29.157846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402795, -0.403069, -0.821761,
		-0.009278, -0.899567, 0.436684,
		-0.915243, -0.168270, -0.366081,
		33.394409, 35.788727, 29.048021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172562, 35.337334, 28.797306>,  <34.035080, 35.906513, 29.304279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172562, 35.337334, 28.797306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.803276, 35.467365, 28.715338>,  <33.581703, 35.545383, 28.666157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.803276, 35.467365, 28.715338>,  <34.172562, 35.337334, 28.797306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803276, 35.467365, 28.715338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167674, -0.139051, -0.975987,
		-0.345768, -0.935408, 0.073867,
		-0.923217, 0.325079, -0.204923,
		33.526310, 35.564888, 28.653860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748177, 34.744835, 28.450743>,  <34.172562, 35.337334, 28.797306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748177, 34.744835, 28.450743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.559879, 35.084976, 28.356674>,  <33.446899, 35.289059, 28.300234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.559879, 35.084976, 28.356674>,  <33.748177, 34.744835, 28.450743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559879, 35.084976, 28.356674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122267, -0.201102, -0.971910,
		-0.873758, -0.486272, -0.009303,
		-0.470742, 0.850351, -0.235169,
		33.418655, 35.340080, 28.286123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271446, 34.533142, 27.861683>,  <33.748177, 34.744835, 28.450743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271446, 34.533142, 27.861683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.301426, 34.929413, 27.816181>,  <33.319412, 35.167175, 27.788879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.301426, 34.929413, 27.816181>,  <33.271446, 34.533142, 27.861683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301426, 34.929413, 27.816181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100137, -0.120977, -0.987592,
		-0.992147, 0.062624, -0.108270,
		0.074945, 0.990678, -0.113756,
		33.323910, 35.226616, 27.782055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922077, 34.660465, 27.263046>,  <33.271446, 34.533142, 27.861683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922077, 34.660465, 27.263046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.185951, 34.956989, 27.312475>,  <33.344276, 35.134903, 27.342133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.185951, 34.956989, 27.312475>,  <32.922077, 34.660465, 27.263046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185951, 34.956989, 27.312475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081527, 0.092869, -0.992335,
		-0.747108, 0.664702, 0.000827,
		0.659684, 0.741314, 0.123574,
		33.383858, 35.179382, 27.349546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914852, 34.928154, 26.632502>,  <32.922077, 34.660465, 27.263046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914852, 34.928154, 26.632502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.245296, 35.106831, 26.769911>,  <33.443562, 35.214035, 26.852356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.245296, 35.106831, 26.769911>,  <32.914852, 34.928154, 26.632502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245296, 35.106831, 26.769911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308553, 0.151538, -0.939059,
		-0.471522, 0.881763, -0.012639,
		0.826112, 0.446687, 0.343525,
		33.493130, 35.240837, 26.872969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085663, 35.558907, 26.175753>,  <32.914852, 34.928154, 26.632502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085663, 35.558907, 26.175753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.426861, 35.448833, 26.353146>,  <33.631580, 35.382790, 26.459581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.426861, 35.448833, 26.353146>,  <33.085663, 35.558907, 26.175753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426861, 35.448833, 26.353146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468527, 0.029341, -0.882962,
		0.229965, 0.960944, 0.153959,
		0.852994, -0.275184, 0.443481,
		33.682758, 35.366280, 26.486189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665573, 35.970760, 25.795517>,  <33.085663, 35.558907, 26.175753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665573, 35.970760, 25.795517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.877987, 35.692600, 25.989183>,  <34.005436, 35.525703, 26.105383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.877987, 35.692600, 25.989183>,  <33.665573, 35.970760, 25.795517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877987, 35.692600, 25.989183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702128, 0.041240, -0.710856,
		0.474364, 0.717435, 0.510162,
		0.531032, -0.695404, 0.484168,
		34.037296, 35.483978, 26.134434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413326, 36.240395, 25.842733>,  <33.665573, 35.970760, 25.795517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413326, 36.240395, 25.842733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.455009, 35.849434, 25.916300>,  <34.480019, 35.614857, 25.960440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.455009, 35.849434, 25.916300>,  <34.413326, 36.240395, 25.842733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455009, 35.849434, 25.916300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838551, -0.013084, -0.544666,
		0.534764, 0.210983, 0.818238,
		0.104210, -0.977402, 0.183917,
		34.486271, 35.556213, 25.971476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089283, 36.192982, 25.942404>,  <34.413326, 36.240395, 25.842733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089283, 36.192982, 25.942404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.960648, 35.829342, 25.836487>,  <34.883465, 35.611156, 25.772936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.960648, 35.829342, 25.836487>,  <35.089283, 36.192982, 25.942404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960648, 35.829342, 25.836487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746995, -0.071733, -0.660948,
		0.581874, -0.410355, 0.702162,
		-0.321592, -0.909100, -0.264794,
		34.864170, 35.556610, 25.757050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645603, 35.822605, 25.792212>,  <35.089283, 36.192982, 25.942404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645603, 35.822605, 25.792212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.410568, 35.561180, 25.601379>,  <35.269547, 35.404327, 25.486879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.410568, 35.561180, 25.601379>,  <35.645603, 35.822605, 25.792212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410568, 35.561180, 25.601379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679093, -0.077710, -0.729927,
		0.439976, -0.752876, 0.489488,
		-0.587583, -0.653559, -0.477082,
		35.234295, 35.365112, 25.458254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040020, 35.234344, 25.563463>,  <35.645603, 35.822605, 25.792212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040020, 35.234344, 25.563463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.717518, 35.272282, 25.329899>,  <35.524017, 35.295044, 25.189760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.717518, 35.272282, 25.329899>,  <36.040020, 35.234344, 25.563463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717518, 35.272282, 25.329899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587240, 0.009204, -0.809360,
		-0.071388, -0.995450, -0.063117,
		-0.806258, 0.094844, -0.583911,
		35.475639, 35.300735, 25.154726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201786, 34.868382, 25.010803>,  <36.040020, 35.234344, 25.563463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201786, 34.868382, 25.010803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.881821, 35.081375, 24.900097>,  <35.689842, 35.209171, 24.833673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.881821, 35.081375, 24.900097>,  <36.201786, 34.868382, 25.010803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881821, 35.081375, 24.900097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430579, 0.188007, -0.882754,
		-0.418018, -0.825297, -0.379666,
		-0.799914, 0.532484, -0.276765,
		35.641846, 35.241119, 24.817068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980263, 34.642937, 24.316233>,  <36.201786, 34.868382, 25.010803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980263, 34.642937, 24.316233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.792789, 34.996281, 24.317879>,  <35.680305, 35.208286, 24.318867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.792789, 34.996281, 24.317879>,  <35.980263, 34.642937, 24.316233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792789, 34.996281, 24.317879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223383, 0.123025, -0.966936,
		-0.854657, -0.452264, -0.254987,
		-0.468680, 0.883358, 0.004116,
		35.652184, 35.261288, 24.319113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505386, 34.668045, 23.756037>,  <35.980263, 34.642937, 24.316233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505386, 34.668045, 23.756037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.652267, 35.026672, 23.855087>,  <35.740398, 35.241848, 23.914518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.652267, 35.026672, 23.855087>,  <35.505386, 34.668045, 23.756037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652267, 35.026672, 23.855087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465079, 0.053576, -0.883647,
		-0.805519, 0.439647, -0.397303,
		0.367207, 0.896571, 0.247627,
		35.762428, 35.295643, 23.929375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514679, 34.956371, 23.094654>,  <35.505386, 34.668045, 23.756037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514679, 34.956371, 23.094654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.737530, 35.197220, 23.323410>,  <35.871239, 35.341728, 23.460665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.737530, 35.197220, 23.323410>,  <35.514679, 34.956371, 23.094654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737530, 35.197220, 23.323410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590315, 0.197214, -0.782710,
		-0.584073, 0.773663, -0.245569,
		0.557124, 0.602123, 0.571892,
		35.904667, 35.377857, 23.494978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570580, 35.448330, 22.718506>,  <35.514679, 34.956371, 23.094654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570580, 35.448330, 22.718506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.888603, 35.481056, 22.958899>,  <36.079418, 35.500694, 23.103134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.888603, 35.481056, 22.958899>,  <35.570580, 35.448330, 22.718506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888603, 35.481056, 22.958899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578262, 0.196697, -0.791785,
		-0.182994, 0.977044, 0.109074,
		0.795063, 0.081818, 0.600982,
		36.127121, 35.505600, 23.139193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837330, 36.036198, 22.628675>,  <35.570580, 35.448330, 22.718506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837330, 36.036198, 22.628675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.143799, 35.832260, 22.785156>,  <36.327679, 35.709896, 22.879044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.143799, 35.832260, 22.785156>,  <35.837330, 36.036198, 22.628675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143799, 35.832260, 22.785156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588286, 0.311444, -0.746272,
		0.258645, 0.801911, 0.538554,
		0.766173, -0.509844, 0.391200,
		36.373650, 35.679306, 22.902515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465179, 36.542141, 22.693701>,  <35.837330, 36.036198, 22.628675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465179, 36.542141, 22.693701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.612556, 36.170536, 22.679949>,  <36.700981, 35.947571, 22.671698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.612556, 36.170536, 22.679949>,  <36.465179, 36.542141, 22.693701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612556, 36.170536, 22.679949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555639, 0.249712, -0.793038,
		0.745328, 0.273086, 0.608202,
		0.368443, -0.929014, -0.034380,
		36.723091, 35.891830, 22.669636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156166, 36.590244, 22.492880>,  <36.465179, 36.542141, 22.693701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156166, 36.590244, 22.492880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.064445, 36.209114, 22.413336>,  <37.009411, 35.980434, 22.365608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.064445, 36.209114, 22.413336>,  <37.156166, 36.590244, 22.492880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064445, 36.209114, 22.413336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494623, 0.061895, -0.866901,
		0.838313, -0.297145, 0.457096,
		-0.229303, -0.952824, -0.198862,
		36.995655, 35.923267, 22.353678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752571, 36.342964, 22.232754>,  <37.156166, 36.590244, 22.492880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752571, 36.342964, 22.232754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.448368, 36.116405, 22.105740>,  <37.265846, 35.980469, 22.029531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.448368, 36.116405, 22.105740>,  <37.752571, 36.342964, 22.232754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448368, 36.116405, 22.105740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402668, -0.027738, -0.914925,
		0.509403, -0.823666, 0.249165,
		-0.760504, -0.566397, -0.317534,
		37.220219, 35.946487, 22.010479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429447, 36.028698, 22.434444>,  <37.752571, 36.342964, 22.232754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429447, 36.028698, 22.434444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.795677, 36.142593, 22.548044>,  <39.015415, 36.210930, 22.616205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.795677, 36.142593, 22.548044>,  <38.429447, 36.028698, 22.434444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795677, 36.142593, 22.548044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358770, 0.259239, 0.896705,
		0.181695, -0.922889, 0.339505,
		0.915571, 0.284731, 0.284002,
		39.070347, 36.228012, 22.633244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357136, 35.826115, 23.176186>,  <38.429447, 36.028698, 22.434444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357136, 35.826115, 23.176186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.692364, 36.044262, 23.170389>,  <38.893501, 36.175152, 23.166912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.692364, 36.044262, 23.170389>,  <38.357136, 35.826115, 23.176186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692364, 36.044262, 23.170389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234895, 0.384684, 0.892660,
		0.492404, -0.744708, 0.450497,
		0.838071, 0.545369, -0.014492,
		38.943787, 36.207874, 23.166042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748783, 35.670483, 23.813799>,  <38.357136, 35.826115, 23.176186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748783, 35.670483, 23.813799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.870037, 36.031635, 23.691866>,  <38.942787, 36.248325, 23.618706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.870037, 36.031635, 23.691866>,  <38.748783, 35.670483, 23.813799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870037, 36.031635, 23.691866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187824, 0.370217, 0.909759,
		0.934255, -0.218523, 0.281807,
		0.303133, 0.902877, -0.304834,
		38.960976, 36.302498, 23.600416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196079, 35.928394, 24.339539>,  <38.748783, 35.670483, 23.813799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196079, 35.928394, 24.339539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.088234, 36.253307, 24.132656>,  <39.023525, 36.448257, 24.008526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.088234, 36.253307, 24.132656>,  <39.196079, 35.928394, 24.339539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088234, 36.253307, 24.132656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285225, 0.445633, 0.848562,
		0.919758, 0.376305, 0.111535,
		-0.269614, 0.812285, -0.517206,
		39.007351, 36.496994, 23.977495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441486, 36.457134, 24.674332>,  <39.196079, 35.928394, 24.339539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441486, 36.457134, 24.674332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.135506, 36.600079, 24.459990>,  <38.951916, 36.685844, 24.331385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.135506, 36.600079, 24.459990>,  <39.441486, 36.457134, 24.674332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135506, 36.600079, 24.459990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385029, 0.413226, 0.825225,
		0.516329, 0.837580, -0.178506,
		-0.764956, 0.357357, -0.535853,
		38.906017, 36.707287, 24.299234>
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
