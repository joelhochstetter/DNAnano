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
	<24.161583, 34.505188, 34.567165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.373056, 34.832283, 34.658195>,  <24.499941, 35.028542, 34.712814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.373056, 34.832283, 34.658195>,  <24.161583, 34.505188, 34.567165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.373056, 34.832283, 34.658195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003127, 0.266230, -0.963904,
		-0.848812, 0.510313, 0.138195,
		0.528685, 0.817742, 0.227575,
		24.531662, 35.077606, 34.726467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.851770, 34.998558, 34.180851>,  <24.161583, 34.505188, 34.567165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.851770, 34.998558, 34.180851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.202579, 35.154205, 34.293579>,  <24.413065, 35.247593, 34.361214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.202579, 35.154205, 34.293579>,  <23.851770, 34.998558, 34.180851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.202579, 35.154205, 34.293579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105483, 0.416311, -0.903083,
		-0.468726, 0.821751, 0.324069,
		0.877023, 0.389115, 0.281817,
		24.465687, 35.270939, 34.378124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.824902, 35.602749, 33.985794>,  <23.851770, 34.998558, 34.180851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.824902, 35.602749, 33.985794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.212248, 35.502930, 33.985577>,  <24.444654, 35.443039, 33.985447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.212248, 35.502930, 33.985577>,  <23.824902, 35.602749, 33.985794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.212248, 35.502930, 33.985577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067440, 0.263795, -0.962218,
		0.240258, 0.931740, 0.272279,
		0.968363, -0.249543, -0.000542,
		24.502756, 35.428066, 33.985413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.190357, 36.207413, 33.694046>,  <23.824902, 35.602749, 33.985794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.190357, 36.207413, 33.694046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.386902, 35.859814, 33.670696>,  <24.504829, 35.651253, 33.656685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.386902, 35.859814, 33.670696>,  <24.190357, 36.207413, 33.694046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.386902, 35.859814, 33.670696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434069, 0.302442, -0.848595,
		0.755082, 0.391628, 0.525813,
		0.491361, -0.868998, -0.058375,
		24.534309, 35.599113, 33.653183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.376900, 36.360382, 34.441826>,  <24.190357, 36.207413, 33.694046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.376900, 36.360382, 34.441826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.754538, 36.414833, 34.321720>,  <24.981119, 36.447502, 34.249657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.754538, 36.414833, 34.321720>,  <24.376900, 36.360382, 34.441826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.754538, 36.414833, 34.321720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125809, 0.990610, 0.053525,
		0.304728, -0.012757, 0.952354,
		0.944094, 0.136125, -0.300262,
		25.037766, 36.455669, 34.231640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.245449, 36.956295, 34.535381>,  <24.376900, 36.360382, 34.441826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.245449, 36.956295, 34.535381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.629448, 36.919815, 34.429485>,  <24.859848, 36.897926, 34.365948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.629448, 36.919815, 34.429485>,  <24.245449, 36.956295, 34.535381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.629448, 36.919815, 34.429485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109974, 0.992301, 0.056959,
		0.257506, -0.083795, 0.962636,
		0.959998, -0.091198, -0.264739,
		24.917448, 36.892456, 34.350063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.634363, 37.543011, 34.844307>,  <24.245449, 36.956295, 34.535381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.634363, 37.543011, 34.844307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.885818, 37.414459, 34.561031>,  <25.036692, 37.337326, 34.391068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.885818, 37.414459, 34.561031>,  <24.634363, 37.543011, 34.844307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.885818, 37.414459, 34.561031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293690, 0.941295, -0.166466,
		0.720111, -0.103340, 0.686121,
		0.628639, -0.321381, -0.708186,
		25.074409, 37.318047, 34.348576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.225065, 37.862095, 35.046085>,  <24.634363, 37.543011, 34.844307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.225065, 37.862095, 35.046085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.265814, 37.767757, 34.659512>,  <25.290262, 37.711155, 34.427567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.265814, 37.767757, 34.659512>,  <25.225065, 37.862095, 35.046085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.265814, 37.767757, 34.659512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277212, 0.939740, -0.200105,
		0.955393, -0.247523, 0.161110,
		0.101871, -0.235841, -0.966438,
		25.296375, 37.697006, 34.369579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.858473, 38.226410, 34.921165>,  <25.225065, 37.862095, 35.046085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.858473, 38.226410, 34.921165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.698364, 38.136314, 34.565853>,  <25.602299, 38.082256, 34.352665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.698364, 38.136314, 34.565853>,  <25.858473, 38.226410, 34.921165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.698364, 38.136314, 34.565853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411732, 0.821776, -0.393904,
		0.818687, -0.523408, -0.236212,
		-0.400285, -0.225228, -0.888281,
		25.578281, 38.068745, 34.299366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.435757, 38.256786, 34.457619>,  <25.858473, 38.226410, 34.921165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.435757, 38.256786, 34.457619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.096941, 38.323090, 34.255608>,  <25.893652, 38.362869, 34.134399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.096941, 38.323090, 34.255608>,  <26.435757, 38.256786, 34.457619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.096941, 38.323090, 34.255608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387762, 0.842554, -0.373822,
		0.363549, -0.512471, -0.777949,
		-0.847038, 0.165756, -0.505027,
		25.842829, 38.372818, 34.104099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.679203, 38.522636, 33.765663>,  <26.435757, 38.256786, 34.457619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.679203, 38.522636, 33.765663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.294943, 38.625668, 33.807247>,  <26.064386, 38.687485, 33.832199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.294943, 38.625668, 33.807247>,  <26.679203, 38.522636, 33.765663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.294943, 38.625668, 33.807247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221438, 0.936127, -0.273187,
		-0.167689, -0.239416, -0.956327,
		-0.960649, 0.257577, 0.103962,
		26.006748, 38.702942, 33.838436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.448360, 38.621872, 33.065739>,  <26.679203, 38.522636, 33.765663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.448360, 38.621872, 33.065739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.209892, 38.822399, 33.316582>,  <26.066811, 38.942715, 33.467087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.209892, 38.822399, 33.316582>,  <26.448360, 38.621872, 33.065739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.209892, 38.822399, 33.316582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241925, 0.856961, -0.455072,
		-0.765541, -0.119587, -0.632175,
		-0.596170, 0.501315, 0.627108,
		26.031040, 38.972794, 33.504715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.090879, 39.034378, 32.634659>,  <26.448360, 38.621872, 33.065739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.090879, 39.034378, 32.634659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.030506, 39.218193, 32.984756>,  <25.994282, 39.328484, 33.194813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.030506, 39.218193, 32.984756>,  <26.090879, 39.034378, 32.634659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.030506, 39.218193, 32.984756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126467, 0.887083, -0.443947,
		-0.980421, 0.043683, -0.192004,
		-0.150931, 0.459537, 0.875240,
		25.985228, 39.356052, 33.247330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.812494, 39.662300, 32.410370>,  <26.090879, 39.034378, 32.634659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.812494, 39.662300, 32.410370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.952673, 39.700695, 32.783031>,  <26.036779, 39.723732, 33.006626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.952673, 39.700695, 32.783031>,  <25.812494, 39.662300, 32.410370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.952673, 39.700695, 32.783031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403703, 0.882101, -0.242739,
		-0.845110, 0.461177, 0.270379,
		0.350447, 0.095989, 0.931651,
		26.057808, 39.729492, 33.062527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.813187, 40.411572, 32.593128>,  <25.812494, 39.662300, 32.410370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.813187, 40.411572, 32.593128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.072748, 40.245235, 32.848003>,  <26.228485, 40.145435, 33.000927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.072748, 40.245235, 32.848003>,  <25.813187, 40.411572, 32.593128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.072748, 40.245235, 32.848003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512159, 0.858032, 0.038387,
		-0.562690, 0.301432, 0.769753,
		0.648901, -0.415836, 0.637187,
		26.267418, 40.120483, 33.039158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.913599, 40.793663, 33.110321>,  <25.813187, 40.411572, 32.593128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.913599, 40.793663, 33.110321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.239805, 40.573586, 33.182129>,  <26.435528, 40.441540, 33.225212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.239805, 40.573586, 33.182129>,  <25.913599, 40.793663, 33.110321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.239805, 40.573586, 33.182129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535333, 0.835004, 0.127232,
		-0.219902, -0.007657, 0.975492,
		0.815514, -0.550191, 0.179520,
		26.484459, 40.408527, 33.235985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.255005, 41.150742, 33.742336>,  <25.913599, 40.793663, 33.110321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.255005, 41.150742, 33.742336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.524157, 40.924664, 33.551426>,  <26.685648, 40.789017, 33.436882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.524157, 40.924664, 33.551426>,  <26.255005, 41.150742, 33.742336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.524157, 40.924664, 33.551426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677760, 0.729557, 0.091583,
		0.296436, -0.385101, 0.873970,
		0.672879, -0.565194, -0.477273,
		26.726021, 40.755104, 33.408245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.901697, 41.180119, 34.138859>,  <26.255005, 41.150742, 33.742336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.901697, 41.180119, 34.138859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.973431, 41.070168, 33.761017>,  <27.016472, 41.004196, 33.534313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.973431, 41.070168, 33.761017>,  <26.901697, 41.180119, 34.138859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.973431, 41.070168, 33.761017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846400, 0.532517, 0.005728,
		0.501444, -0.800541, 0.328158,
		0.179336, -0.274881, -0.944605,
		27.027231, 40.987705, 33.477634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.682556, 41.165218, 34.071659>,  <26.901697, 41.180119, 34.138859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.682556, 41.165218, 34.071659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.552382, 41.174187, 33.693539>,  <27.474277, 41.179569, 33.466667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.552382, 41.174187, 33.693539>,  <27.682556, 41.165218, 34.071659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.552382, 41.174187, 33.693539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782749, 0.567238, -0.256019,
		0.530468, -0.823249, -0.202151,
		-0.325435, 0.022423, -0.945298,
		27.454752, 41.180912, 33.409950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.165472, 41.014790, 33.672100>,  <27.682556, 41.165218, 34.071659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.165472, 41.014790, 33.672100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.956566, 41.221752, 33.400948>,  <27.831223, 41.345932, 33.238255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.956566, 41.221752, 33.400948>,  <28.165472, 41.014790, 33.672100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.956566, 41.221752, 33.400948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813524, 0.540696, -0.214072,
		0.255764, -0.663275, -0.703314,
		-0.522267, 0.517411, -0.677881,
		27.799885, 41.376976, 33.197582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.542725, 40.978935, 33.116875>,  <28.165472, 41.014790, 33.672100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.542725, 40.978935, 33.116875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.309549, 41.293636, 33.035675>,  <28.169643, 41.482456, 32.986954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.309549, 41.293636, 33.035675>,  <28.542725, 40.978935, 33.116875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.309549, 41.293636, 33.035675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784220, 0.479435, -0.393881,
		-0.212561, -0.388804, -0.896465,
		-0.582939, 0.786749, -0.202998,
		28.134668, 41.529659, 32.974777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.817335, 41.210712, 32.436493>,  <28.542725, 40.978935, 33.116875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.817335, 41.210712, 32.436493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.582304, 41.503113, 32.575275>,  <28.441284, 41.678555, 32.658546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.582304, 41.503113, 32.575275>,  <28.817335, 41.210712, 32.436493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.582304, 41.503113, 32.575275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553177, 0.675829, -0.487083,
		-0.590546, -0.094270, -0.801479,
		-0.587580, 0.731005, 0.346960,
		28.406031, 41.722416, 32.679363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.557138, 41.609356, 31.870743>,  <28.817335, 41.210712, 32.436493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.557138, 41.609356, 31.870743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.511106, 41.877254, 32.164188>,  <28.483488, 42.037994, 32.340256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.511106, 41.877254, 32.164188>,  <28.557138, 41.609356, 31.870743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.511106, 41.877254, 32.164188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627883, 0.621325, -0.468741,
		-0.769753, 0.406683, -0.492026,
		-0.115079, 0.669750, 0.733616,
		28.476583, 42.078178, 32.384274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.418684, 42.227867, 31.607740>,  <28.557138, 41.609356, 31.870743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.418684, 42.227867, 31.607740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.581936, 42.345951, 31.953291>,  <28.679888, 42.416801, 32.160622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.581936, 42.345951, 31.953291>,  <28.418684, 42.227867, 31.607740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.581936, 42.345951, 31.953291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713268, 0.487505, -0.503574,
		-0.569805, 0.821698, -0.011601,
		0.408130, 0.295214, 0.863874,
		28.704374, 42.434517, 32.212452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.698837, 42.851990, 31.478127>,  <28.418684, 42.227867, 31.607740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.698837, 42.851990, 31.478127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.876425, 42.802700, 31.833138>,  <28.982977, 42.773129, 32.046146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.876425, 42.802700, 31.833138>,  <28.698837, 42.851990, 31.478127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.876425, 42.802700, 31.833138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817781, 0.460559, -0.345135,
		-0.366232, 0.879034, 0.305242,
		0.443968, -0.123222, 0.887530,
		29.009615, 42.765732, 32.099396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.932295, 43.494415, 31.694885>,  <28.698837, 42.851990, 31.478127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.932295, 43.494415, 31.694885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.136127, 43.181892, 31.839048>,  <29.258427, 42.994381, 31.925547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.136127, 43.181892, 31.839048>,  <28.932295, 43.494415, 31.694885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.136127, 43.181892, 31.839048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834184, 0.345956, -0.429478,
		0.210867, 0.519501, 0.828042,
		0.509580, -0.781303, 0.360409,
		29.289001, 42.947502, 31.947170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.374527, 43.728130, 32.151516>,  <28.932295, 43.494415, 31.694885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.374527, 43.728130, 32.151516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501825, 43.398773, 31.963581>,  <29.578205, 43.201160, 31.850819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501825, 43.398773, 31.963581>,  <29.374527, 43.728130, 32.151516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501825, 43.398773, 31.963581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844987, 0.471061, -0.253176,
		0.429785, -0.316436, 0.845667,
		0.318247, -0.823389, -0.469839,
		29.597300, 43.151756, 31.822630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017454, 43.481861, 32.533180>,  <29.374527, 43.728130, 32.151516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.017454, 43.481861, 32.533180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.017450, 43.337173, 32.160267>,  <30.017448, 43.250359, 31.936518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.017450, 43.337173, 32.160267>,  <30.017454, 43.481861, 32.533180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.017450, 43.337173, 32.160267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848928, 0.492718, -0.191181,
		0.528509, -0.791446, 0.307070,
		-0.000010, -0.361721, -0.932286,
		30.017447, 43.228657, 31.880581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.567606, 43.957527, 32.144356>,  <30.017454, 43.481861, 32.533180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.567606, 43.957527, 32.144356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590059, 44.135548, 32.501854>,  <30.603531, 44.242359, 32.716351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590059, 44.135548, 32.501854>,  <30.567606, 43.957527, 32.144356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590059, 44.135548, 32.501854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248696, -0.873171, 0.419192,
		0.966954, 0.198740, -0.159697,
		0.056132, 0.445056, 0.893742,
		30.606899, 44.269066, 32.769978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252092, 43.928413, 32.405067>,  <30.567606, 43.957527, 32.144356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252092, 43.928413, 32.405067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.000540, 43.948368, 32.715427>,  <30.849607, 43.960342, 32.901642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.000540, 43.948368, 32.715427>,  <31.252092, 43.928413, 32.405067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.000540, 43.948368, 32.715427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267180, -0.923300, 0.275920,
		0.730152, 0.380826, 0.567318,
		-0.628883, 0.049888, 0.775898,
		30.811874, 43.963333, 32.948196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464293, 43.736557, 33.062241>,  <31.252092, 43.928413, 32.405067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464293, 43.736557, 33.062241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.072527, 43.685600, 33.124878>,  <30.837467, 43.655025, 33.162460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.072527, 43.685600, 33.124878>,  <31.464293, 43.736557, 33.062241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.072527, 43.685600, 33.124878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172303, -0.931720, 0.319702,
		0.105171, 0.340101, 0.934489,
		-0.979413, -0.127392, 0.156591,
		30.778704, 43.647381, 33.171856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463434, 43.345562, 33.716537>,  <31.464293, 43.736557, 33.062241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463434, 43.345562, 33.716537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100754, 43.257885, 33.572403>,  <30.883144, 43.205280, 33.485920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100754, 43.257885, 33.572403>,  <31.463434, 43.345562, 33.716537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.100754, 43.257885, 33.572403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137950, -0.961481, 0.237747,
		-0.398572, 0.165857, 0.902015,
		-0.906703, -0.219193, -0.360340,
		30.828743, 43.192127, 33.464302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219456, 43.368931, 33.921673>,  <31.463434, 43.345562, 33.716537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219456, 43.368931, 33.921673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477264, 43.351543, 34.227013>,  <32.631950, 43.341110, 34.410217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477264, 43.351543, 34.227013>,  <32.219456, 43.368931, 33.921673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477264, 43.351543, 34.227013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587220, -0.667531, 0.457794,
		0.489660, -0.743312, -0.455763,
		0.644520, -0.043469, 0.763351,
		32.670620, 43.338501, 34.456017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316429, 42.696037, 34.186989>,  <32.219456, 43.368931, 33.921673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316429, 42.696037, 34.186989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370304, 42.952625, 34.489082>,  <32.402630, 43.106579, 34.670338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370304, 42.952625, 34.489082>,  <32.316429, 42.696037, 34.186989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370304, 42.952625, 34.489082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500445, -0.613793, 0.610584,
		0.855227, -0.460191, 0.238349,
		0.134689, 0.641469, 0.755233,
		32.410709, 43.145065, 34.715652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658974, 42.460777, 34.732201>,  <32.316429, 42.696037, 34.186989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658974, 42.460777, 34.732201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409733, 42.718380, 34.909740>,  <32.260189, 42.872940, 35.016266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409733, 42.718380, 34.909740>,  <32.658974, 42.460777, 34.732201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409733, 42.718380, 34.909740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313471, -0.725536, 0.612645,
		0.716574, 0.242607, 0.653960,
		-0.623104, 0.644003, 0.443849,
		32.222801, 42.911579, 35.042896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.669098, 42.197166, 35.495724>,  <32.658974, 42.460777, 34.732201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.669098, 42.197166, 35.495724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361546, 42.440575, 35.417225>,  <32.177013, 42.586620, 35.370125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361546, 42.440575, 35.417225>,  <32.669098, 42.197166, 35.495724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361546, 42.440575, 35.417225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577934, -0.530141, 0.620438,
		0.273510, 0.590466, 0.759304,
		-0.768885, 0.608523, -0.196252,
		32.130878, 42.623131, 35.358349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267570, 42.074753, 36.009335>,  <32.669098, 42.197166, 35.495724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267570, 42.074753, 36.009335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011147, 42.289188, 35.789646>,  <31.857290, 42.417850, 35.657833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011147, 42.289188, 35.789646>,  <32.267570, 42.074753, 36.009335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011147, 42.289188, 35.789646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766192, -0.405480, 0.498533,
		0.044562, 0.740399, 0.670688,
		-0.641065, 0.536092, -0.549219,
		31.818827, 42.450016, 35.624882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800642, 42.162136, 36.445076>,  <32.267570, 42.074753, 36.009335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800642, 42.162136, 36.445076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622370, 42.309933, 36.118923>,  <31.515406, 42.398609, 35.923233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622370, 42.309933, 36.118923>,  <31.800642, 42.162136, 36.445076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622370, 42.309933, 36.118923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894933, -0.205823, 0.395894,
		-0.021545, 0.906153, 0.422401,
		-0.445680, 0.369491, -0.815380,
		31.488667, 42.420780, 35.874310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.414598, 42.718571, 36.668739>,  <31.800642, 42.162136, 36.445076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.414598, 42.718571, 36.668739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259800, 42.550297, 36.340530>,  <31.166920, 42.449333, 36.143604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259800, 42.550297, 36.340530>,  <31.414598, 42.718571, 36.668739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259800, 42.550297, 36.340530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881837, -0.091161, 0.462658,
		-0.269435, 0.902613, -0.335700,
		-0.386999, -0.420689, -0.820520,
		31.143700, 42.424091, 36.094376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723675, 42.870838, 36.626690>,  <31.414598, 42.718571, 36.668739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723675, 42.870838, 36.626690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.729120, 42.556137, 36.379845>,  <30.732388, 42.367317, 36.231739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.729120, 42.556137, 36.379845>,  <30.723675, 42.870838, 36.626690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.729120, 42.556137, 36.379845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882367, -0.299775, 0.362718,
		-0.470366, 0.539581, -0.698289,
		0.013614, -0.786757, -0.617113,
		30.733204, 42.320110, 36.194710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.070158, 42.830494, 36.501118>,  <30.723675, 42.870838, 36.626690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.070158, 42.830494, 36.501118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.200663, 42.473866, 36.375481>,  <30.278965, 42.259888, 36.300098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.200663, 42.473866, 36.375481>,  <30.070158, 42.830494, 36.501118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.200663, 42.473866, 36.375481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891480, -0.400706, 0.211417,
		-0.314352, 0.211029, -0.925554,
		0.326260, -0.891572, -0.314091,
		30.298540, 42.206394, 36.281254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.573868, 42.502190, 35.910297>,  <30.070158, 42.830494, 36.501118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.573868, 42.502190, 35.910297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790487, 42.229893, 36.107605>,  <29.920460, 42.066513, 36.225990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790487, 42.229893, 36.107605>,  <29.573868, 42.502190, 35.910297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790487, 42.229893, 36.107605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834624, -0.505613, 0.218537,
		0.100637, -0.530044, -0.841977,
		0.541549, -0.680742, 0.493271,
		29.952951, 42.025669, 36.255585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.156183, 41.975346, 35.813023>,  <29.573868, 42.502190, 35.910297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.156183, 41.975346, 35.813023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.451738, 41.826355, 36.037632>,  <29.629072, 41.736961, 36.172398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.451738, 41.826355, 36.037632>,  <29.156183, 41.975346, 35.813023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.451738, 41.826355, 36.037632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372082, -0.920299, -0.120856,
		0.561783, -0.119633, -0.818589,
		0.738888, -0.372477, 0.561522,
		29.673405, 41.714611, 36.206089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.572996, 41.431225, 35.353477>,  <29.156183, 41.975346, 35.813023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.572996, 41.431225, 35.353477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.607784, 41.353363, 35.744282>,  <29.628656, 41.306648, 35.978764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.607784, 41.353363, 35.744282>,  <29.572996, 41.431225, 35.353477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.607784, 41.353363, 35.744282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360532, -0.920397, -0.151281,
		0.928684, -0.339086, -0.150224,
		0.086969, -0.194653, 0.977009,
		29.633875, 41.294968, 36.037384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.643044, 40.773239, 35.341076>,  <29.572996, 41.431225, 35.353477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.643044, 40.773239, 35.341076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528799, 40.828495, 35.720409>,  <29.460253, 40.861649, 35.948009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528799, 40.828495, 35.720409>,  <29.643044, 40.773239, 35.341076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.528799, 40.828495, 35.720409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463476, -0.886047, -0.010516,
		0.838819, -0.442535, 0.317089,
		-0.285609, 0.138143, 0.948337,
		29.443117, 40.869938, 36.004910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.800531, 40.248440, 35.690758>,  <29.643044, 40.773239, 35.341076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.800531, 40.248440, 35.690758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.513319, 40.379372, 35.936455>,  <29.340992, 40.457932, 36.083874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.513319, 40.379372, 35.936455>,  <29.800531, 40.248440, 35.690758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.513319, 40.379372, 35.936455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407931, -0.912962, 0.009656,
		0.563938, -0.243634, 0.789061,
		-0.718030, 0.327328, 0.614239,
		29.297911, 40.477570, 36.120728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.752853, 39.736980, 36.339348>,  <29.800531, 40.248440, 35.690758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.752853, 39.736980, 36.339348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.410513, 39.929070, 36.262505>,  <29.205109, 40.044323, 36.216400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.410513, 39.929070, 36.262505>,  <29.752853, 39.736980, 36.339348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.410513, 39.929070, 36.262505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492020, -0.870435, 0.016090,
		-0.159488, 0.108290, 0.981242,
		-0.855850, 0.480225, -0.192105,
		29.153757, 40.073135, 36.204872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298986, 39.499908, 36.858006>,  <29.752853, 39.736980, 36.339348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298986, 39.499908, 36.858006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.076719, 39.657768, 36.565296>,  <28.943359, 39.752483, 36.389671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.076719, 39.657768, 36.565296>,  <29.298986, 39.499908, 36.858006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.076719, 39.657768, 36.565296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596822, -0.802109, 0.020616,
		-0.578822, 0.448192, 0.681241,
		-0.555669, 0.394646, -0.731769,
		28.910019, 39.776161, 36.345764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.529707, 39.307453, 37.008110>,  <29.298986, 39.499908, 36.858006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.529707, 39.307453, 37.008110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.511976, 39.407909, 36.621338>,  <28.501337, 39.468185, 36.389275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.511976, 39.407909, 36.621338>,  <28.529707, 39.307453, 37.008110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.511976, 39.407909, 36.621338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679041, -0.717501, -0.155229,
		-0.732761, 0.649707, 0.202342,
		-0.044327, 0.251145, -0.966934,
		28.498678, 39.483253, 36.331257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.801382, 39.398716, 36.724895>,  <28.529707, 39.307453, 37.008110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.801382, 39.398716, 36.724895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.996254, 39.335499, 36.381344>,  <28.113176, 39.297569, 36.175213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.996254, 39.335499, 36.381344>,  <27.801382, 39.398716, 36.724895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.996254, 39.335499, 36.381344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799987, -0.475211, -0.366326,
		-0.350254, 0.865561, -0.357946,
		0.487178, -0.158045, -0.858883,
		28.142406, 39.288086, 36.123680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.312771, 39.557636, 36.139694>,  <27.801382, 39.398716, 36.724895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.312771, 39.557636, 36.139694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.610086, 39.328655, 36.001232>,  <27.788475, 39.191269, 35.918156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.610086, 39.328655, 36.001232>,  <27.312771, 39.557636, 36.139694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.610086, 39.328655, 36.001232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665230, -0.577831, -0.472843,
		0.070658, 0.581733, -0.810305,
		0.743288, -0.572449, -0.346158,
		27.833073, 39.156921, 35.897385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.017164, 39.412998, 35.536224>,  <27.312771, 39.557636, 36.139694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.017164, 39.412998, 35.536224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.335300, 39.170658, 35.543957>,  <27.526182, 39.025253, 35.548595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.335300, 39.170658, 35.543957>,  <27.017164, 39.412998, 35.536224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.335300, 39.170658, 35.543957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457840, -0.621323, -0.635877,
		0.397258, 0.496890, -0.771548,
		0.795342, -0.605853, 0.019330,
		27.573902, 38.988903, 35.549755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.230974, 39.291328, 34.817638>,  <27.017164, 39.412998, 35.536224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.230974, 39.291328, 34.817638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.368011, 38.976219, 35.022400>,  <27.450233, 38.787155, 35.145256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.368011, 38.976219, 35.022400>,  <27.230974, 39.291328, 34.817638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.368011, 38.976219, 35.022400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464764, -0.615646, -0.636376,
		0.816471, -0.019897, -0.577044,
		0.342593, -0.787771, 0.511904,
		27.470789, 38.739887, 35.175972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.316545, 38.823242, 34.361938>,  <27.230974, 39.291328, 34.817638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.316545, 38.823242, 34.361938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.364021, 38.558975, 34.658432>,  <27.392508, 38.400414, 34.836327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.364021, 38.558975, 34.658432>,  <27.316545, 38.823242, 34.361938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.364021, 38.558975, 34.658432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449086, -0.701513, -0.553355,
		0.885571, -0.267201, -0.379959,
		0.118689, -0.660669, 0.741235,
		27.399628, 38.360775, 34.880802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.765919, 38.202415, 34.126991>,  <27.316545, 38.823242, 34.361938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.765919, 38.202415, 34.126991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.539232, 38.085087, 34.434963>,  <27.403219, 38.014690, 34.619747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.539232, 38.085087, 34.434963>,  <27.765919, 38.202415, 34.126991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.539232, 38.085087, 34.434963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159984, -0.877521, -0.452064,
		0.808230, -0.379370, 0.450381,
		-0.566718, -0.293318, 0.769932,
		27.369217, 37.997093, 34.665943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.113119, 37.566074, 34.320351>,  <27.765919, 38.202415, 34.126991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.113119, 37.566074, 34.320351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.736031, 37.535877, 34.450317>,  <27.509777, 37.517761, 34.528297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.736031, 37.535877, 34.450317>,  <28.113119, 37.566074, 34.320351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.736031, 37.535877, 34.450317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152429, -0.768922, -0.620906,
		0.296712, -0.634870, 0.713374,
		-0.942724, -0.075491, 0.324921,
		27.453213, 37.513229, 34.547794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.001581, 36.879631, 34.551331>,  <28.113119, 37.566074, 34.320351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.001581, 36.879631, 34.551331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.634224, 37.020924, 34.480026>,  <27.413809, 37.105701, 34.437244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.634224, 37.020924, 34.480026>,  <28.001581, 36.879631, 34.551331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.634224, 37.020924, 34.480026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275332, -0.894106, -0.353224,
		-0.284153, -0.275319, 0.918399,
		-0.918395, 0.353234, -0.178259,
		27.358706, 37.126892, 34.426548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.455208, 36.434521, 34.768291>,  <28.001581, 36.879631, 34.551331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.455208, 36.434521, 34.768291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.316805, 36.633949, 34.450371>,  <27.233763, 36.753609, 34.259621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.316805, 36.633949, 34.450371>,  <27.455208, 36.434521, 34.768291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.316805, 36.633949, 34.450371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075259, -0.859142, -0.506174,
		-0.935208, -0.115324, 0.334792,
		-0.346008, 0.498574, -0.794797,
		27.213003, 36.783520, 34.211933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.068411, 36.105194, 35.001511>,  <27.455208, 36.434521, 34.768291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.068411, 36.105194, 35.001511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.410961, 36.281651, 34.894169>,  <28.616491, 36.387524, 34.829762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.410961, 36.281651, 34.894169>,  <28.068411, 36.105194, 35.001511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.410961, 36.281651, 34.894169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166237, 0.256501, 0.952141,
		0.488858, -0.860003, 0.146329,
		0.856378, 0.441137, -0.268357,
		28.667875, 36.413990, 34.813663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.662138, 35.872395, 35.445305>,  <28.068411, 36.105194, 35.001511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.662138, 35.872395, 35.445305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.726980, 36.253376, 35.342113>,  <28.765884, 36.481964, 35.280201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.726980, 36.253376, 35.342113>,  <28.662138, 35.872395, 35.445305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.726980, 36.253376, 35.342113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125442, 0.239421, 0.962778,
		0.978768, -0.188431, -0.080667,
		0.162104, 0.952455, -0.257975,
		28.775612, 36.539112, 35.264721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307058, 36.127510, 35.676857>,  <28.662138, 35.872395, 35.445305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.307058, 36.127510, 35.676857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084473, 36.457539, 35.637642>,  <28.950922, 36.655556, 35.614113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084473, 36.457539, 35.637642>,  <29.307058, 36.127510, 35.676857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.084473, 36.457539, 35.637642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100564, 0.184011, 0.977766,
		0.824764, 0.534232, -0.185367,
		-0.556464, 0.825067, -0.098041,
		28.917534, 36.705059, 35.608231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.761667, 36.690342, 35.753994>,  <29.307058, 36.127510, 35.676857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.761667, 36.690342, 35.753994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.384077, 36.761131, 35.865414>,  <29.157522, 36.803604, 35.932266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.384077, 36.761131, 35.865414>,  <29.761667, 36.690342, 35.753994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.384077, 36.761131, 35.865414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286023, 0.017707, 0.958059,
		0.164617, 0.984057, -0.067333,
		-0.943977, 0.176972, 0.278548,
		29.100883, 36.814224, 35.948978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.799362, 37.352058, 36.129448>,  <29.761667, 36.690342, 35.753994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.799362, 37.352058, 36.129448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.506056, 37.099834, 36.231201>,  <29.330072, 36.948502, 36.292255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.506056, 37.099834, 36.231201>,  <29.799362, 37.352058, 36.129448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.506056, 37.099834, 36.231201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303729, 0.030967, 0.952255,
		-0.608333, 0.775522, 0.168813,
		-0.733267, -0.630561, 0.254387,
		29.286076, 36.910667, 36.307518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357286, 37.638367, 36.646011>,  <29.799362, 37.352058, 36.129448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357286, 37.638367, 36.646011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.351027, 37.240036, 36.681980>,  <29.347271, 37.001038, 36.703560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.351027, 37.240036, 36.681980>,  <29.357286, 37.638367, 36.646011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.351027, 37.240036, 36.681980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248307, 0.083243, 0.965098,
		-0.968555, 0.037431, 0.245968,
		-0.015649, -0.995826, 0.089920,
		29.346333, 36.941288, 36.708958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.062311, 37.464306, 37.393505>,  <29.357286, 37.638367, 36.646011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.062311, 37.464306, 37.393505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.209238, 37.100376, 37.316254>,  <29.297394, 36.882019, 37.269901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.209238, 37.100376, 37.316254>,  <29.062311, 37.464306, 37.393505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.209238, 37.100376, 37.316254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096521, -0.169236, 0.980838,
		-0.925073, -0.378921, 0.025653,
		0.367319, -0.909823, -0.193129,
		29.319433, 36.827431, 37.258316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.702585, 37.023769, 37.739849>,  <29.062311, 37.464306, 37.393505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.702585, 37.023769, 37.739849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.068245, 36.878227, 37.668365>,  <29.287642, 36.790901, 37.625473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.068245, 36.878227, 37.668365>,  <28.702585, 37.023769, 37.739849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.068245, 36.878227, 37.668365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155152, -0.093247, 0.983480,
		-0.374511, -0.926775, -0.028789,
		0.914150, -0.363857, -0.178713,
		29.342489, 36.769070, 37.614750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.801891, 36.626392, 38.305252>,  <28.702585, 37.023769, 37.739849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.801891, 36.626392, 38.305252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.165625, 36.664276, 38.143196>,  <29.383865, 36.687008, 38.045963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.165625, 36.664276, 38.143196>,  <28.801891, 36.626392, 38.305252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.165625, 36.664276, 38.143196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412744, -0.082550, 0.907099,
		0.052467, -0.992077, -0.114157,
		0.909335, 0.094710, -0.405142,
		29.438425, 36.692688, 38.021652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.235184, 36.104630, 38.664169>,  <28.801891, 36.626392, 38.305252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.235184, 36.104630, 38.664169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.498899, 36.366283, 38.515877>,  <29.657129, 36.523273, 38.426899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.498899, 36.366283, 38.515877>,  <29.235184, 36.104630, 38.664169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.498899, 36.366283, 38.515877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619536, -0.193223, 0.760815,
		0.426040, -0.731283, -0.532649,
		0.659291, 0.654133, -0.370736,
		29.696688, 36.562523, 38.404655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915302, 35.825211, 38.837971>,  <29.235184, 36.104630, 38.664169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915302, 35.825211, 38.837971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.007978, 36.210125, 38.780945>,  <30.063585, 36.441074, 38.746731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.007978, 36.210125, 38.780945>,  <29.915302, 35.825211, 38.837971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.007978, 36.210125, 38.780945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636003, -0.038952, 0.770703,
		0.736084, -0.269236, -0.621042,
		0.231692, 0.962286, -0.142563,
		30.077486, 36.498810, 38.738174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642696, 35.865425, 39.042274>,  <29.915302, 35.825211, 38.837971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642696, 35.865425, 39.042274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.528585, 36.247375, 39.009228>,  <30.460119, 36.476547, 38.989399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.528585, 36.247375, 39.009228>,  <30.642696, 35.865425, 39.042274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528585, 36.247375, 39.009228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669593, 0.260238, 0.695645,
		0.685756, 0.143129, -0.713619,
		-0.285278, 0.954877, -0.082621,
		30.443003, 36.533840, 38.984440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220152, 36.269146, 38.839157>,  <30.642696, 35.865425, 39.042274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220152, 36.269146, 38.839157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.962568, 36.503864, 39.035519>,  <30.808018, 36.644695, 39.153336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.962568, 36.503864, 39.035519>,  <31.220152, 36.269146, 38.839157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.962568, 36.503864, 39.035519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607126, 0.001514, 0.794604,
		0.465525, 0.809735, -0.357233,
		-0.643959, 0.586794, 0.490907,
		30.769381, 36.679901, 39.182789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.719965, 36.806442, 39.119576>,  <31.220152, 36.269146, 38.839157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.719965, 36.806442, 39.119576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.376284, 36.797817, 39.324047>,  <31.170074, 36.792645, 39.446732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.376284, 36.797817, 39.324047>,  <31.719965, 36.806442, 39.119576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376284, 36.797817, 39.324047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509579, 0.053453, 0.858762,
		-0.045838, 0.998338, -0.034942,
		-0.859202, -0.021558, 0.511182,
		31.118523, 36.791351, 39.477402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887882, 37.330486, 39.646439>,  <31.719965, 36.806442, 39.119576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887882, 37.330486, 39.646439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580336, 37.116444, 39.786442>,  <31.395807, 36.988018, 39.870441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580336, 37.116444, 39.786442>,  <31.887882, 37.330486, 39.646439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580336, 37.116444, 39.786442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343434, 0.116124, 0.931970,
		-0.539349, 0.836764, 0.094491,
		-0.768866, -0.535109, 0.350005,
		31.349676, 36.955910, 39.891445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651268, 37.694515, 40.268673>,  <31.887882, 37.330486, 39.646439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651268, 37.694515, 40.268673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486683, 37.332394, 40.310875>,  <31.387932, 37.115120, 40.336197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486683, 37.332394, 40.310875>,  <31.651268, 37.694515, 40.268673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486683, 37.332394, 40.310875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387638, -0.069058, 0.919221,
		-0.824885, 0.419122, 0.379343,
		-0.411462, -0.905300, 0.105502,
		31.363245, 37.060802, 40.342525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262897, 37.687809, 40.890812>,  <31.651268, 37.694515, 40.268673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262897, 37.687809, 40.890812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327402, 37.301262, 40.810677>,  <31.366104, 37.069336, 40.762596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327402, 37.301262, 40.810677>,  <31.262897, 37.687809, 40.890812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327402, 37.301262, 40.810677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216189, -0.163470, 0.962569,
		-0.962942, -0.198536, 0.182556,
		0.161262, -0.966365, -0.200334,
		31.375780, 37.011353, 40.750576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888206, 37.346588, 41.419910>,  <31.262897, 37.687809, 40.890812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888206, 37.346588, 41.419910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140644, 37.068760, 41.281757>,  <31.292107, 36.902061, 41.198864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140644, 37.068760, 41.281757>,  <30.888206, 37.346588, 41.419910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140644, 37.068760, 41.281757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089039, -0.377443, 0.921742,
		-0.770579, -0.612459, -0.176357,
		0.631094, -0.694573, -0.345382,
		31.329973, 36.860390, 41.178143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.732662, 36.638882, 41.692318>,  <30.888206, 37.346588, 41.419910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.732662, 36.638882, 41.692318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.121950, 36.633030, 41.600555>,  <31.355524, 36.629520, 41.545498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.121950, 36.633030, 41.600555>,  <30.732662, 36.638882, 41.692318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.121950, 36.633030, 41.600555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197519, -0.457295, 0.867103,
		-0.117587, -0.889195, -0.442161,
		0.973221, -0.014625, -0.229405,
		31.413916, 36.628643, 41.531734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.002218, 35.915775, 41.751106>,  <30.732662, 36.638882, 41.692318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.002218, 35.915775, 41.751106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.286320, 36.193348, 41.798428>,  <31.456779, 36.359894, 41.826820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.286320, 36.193348, 41.798428>,  <31.002218, 35.915775, 41.751106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.286320, 36.193348, 41.798428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310390, -0.459555, 0.832146,
		0.631823, -0.554313, -0.541790,
		0.710252, 0.693936, 0.118304,
		31.499395, 36.401527, 41.833920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585327, 35.558022, 42.129883>,  <31.002218, 35.915775, 41.751106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585327, 35.558022, 42.129883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.616539, 35.952263, 42.189888>,  <31.635267, 36.188808, 42.225891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.616539, 35.952263, 42.189888>,  <31.585327, 35.558022, 42.129883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616539, 35.952263, 42.189888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367661, -0.168315, 0.914601,
		0.926680, -0.016213, -0.375500,
		0.078031, 0.985600, 0.150013,
		31.639948, 36.247944, 42.234890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289185, 35.654675, 42.370354>,  <31.585327, 35.558022, 42.129883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289185, 35.654675, 42.370354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.067673, 35.970604, 42.475807>,  <31.934765, 36.160160, 42.539082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.067673, 35.970604, 42.475807>,  <32.289185, 35.654675, 42.370354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067673, 35.970604, 42.475807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433632, 0.003266, 0.901084,
		0.710835, 0.613327, -0.344301,
		-0.553784, 0.789822, 0.263636,
		31.901537, 36.207550, 42.554897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670841, 35.996075, 42.856346>,  <32.289185, 35.654675, 42.370354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670841, 35.996075, 42.856346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295471, 36.114605, 42.927402>,  <32.070251, 36.185722, 42.970036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295471, 36.114605, 42.927402>,  <32.670841, 35.996075, 42.856346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295471, 36.114605, 42.927402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186573, 0.001902, 0.982439,
		0.290782, 0.955086, -0.057071,
		-0.938422, 0.296323, 0.177640,
		32.013943, 36.203503, 42.980694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731102, 36.325760, 43.445557>,  <32.670841, 35.996075, 42.856346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731102, 36.325760, 43.445557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334518, 36.274803, 43.434364>,  <32.096569, 36.244228, 43.427647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334518, 36.274803, 43.434364>,  <32.731102, 36.325760, 43.445557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334518, 36.274803, 43.434364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039287, 0.087100, 0.995425,
		-0.124374, 0.988020, -0.091360,
		-0.991457, -0.127394, -0.027983,
		32.037083, 36.236584, 43.425968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399277, 36.765095, 43.988663>,  <32.731102, 36.325760, 43.445557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399277, 36.765095, 43.988663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098442, 36.516056, 43.902187>,  <31.917942, 36.366634, 43.850300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098442, 36.516056, 43.902187>,  <32.399277, 36.765095, 43.988663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098442, 36.516056, 43.902187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230008, -0.059456, 0.971371,
		-0.617627, 0.780281, -0.098486,
		-0.752086, -0.622597, -0.216192,
		31.872816, 36.329277, 43.837330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889265, 36.915405, 44.497787>,  <32.399277, 36.765095, 43.988663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889265, 36.915405, 44.497787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.803757, 36.548389, 44.363667>,  <31.752453, 36.328182, 44.283192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.803757, 36.548389, 44.363667>,  <31.889265, 36.915405, 44.497787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.803757, 36.548389, 44.363667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307918, -0.262454, 0.914497,
		-0.927086, 0.298738, -0.226422,
		-0.213770, -0.917537, -0.335305,
		31.739626, 36.273129, 44.263077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.248423, 36.768051, 44.734325>,  <31.889265, 36.915405, 44.497787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.248423, 36.768051, 44.734325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.360518, 36.391708, 44.658165>,  <31.427774, 36.165901, 44.612469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.360518, 36.391708, 44.658165>,  <31.248423, 36.768051, 44.734325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.360518, 36.391708, 44.658165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386982, -0.292250, 0.874548,
		-0.878471, -0.171399, -0.445994,
		0.280239, -0.940857, -0.190405,
		31.444590, 36.109451, 44.601044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681808, 36.236168, 44.935463>,  <31.248423, 36.768051, 44.734325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681808, 36.236168, 44.935463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.029144, 36.037880, 44.941704>,  <31.237547, 35.918907, 44.945450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.029144, 36.037880, 44.941704>,  <30.681808, 36.236168, 44.935463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.029144, 36.037880, 44.941704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277521, -0.459569, 0.843670,
		-0.411052, -0.736925, -0.536636,
		0.868343, -0.495720, 0.015606,
		31.289646, 35.889164, 44.946384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.517954, 35.517159, 45.058849>,  <30.681808, 36.236168, 44.935463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.517954, 35.517159, 45.058849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897270, 35.555584, 45.179859>,  <31.124859, 35.578640, 45.252464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897270, 35.555584, 45.179859>,  <30.517954, 35.517159, 45.058849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.897270, 35.555584, 45.179859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224400, -0.471165, 0.853023,
		0.224486, -0.876798, -0.425243,
		0.948289, 0.096067, 0.302523,
		31.181757, 35.584404, 45.270615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.661257, 34.934647, 45.456837>,  <30.517954, 35.517159, 45.058849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.661257, 34.934647, 45.456837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940344, 35.199711, 45.565704>,  <31.107796, 35.358749, 45.631023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940344, 35.199711, 45.565704>,  <30.661257, 34.934647, 45.456837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.940344, 35.199711, 45.565704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060685, -0.323883, 0.944149,
		0.713800, -0.675264, -0.185765,
		0.697716, 0.662660, 0.272166,
		31.149658, 35.398510, 45.647354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004047, 34.591179, 45.909546>,  <30.661257, 34.934647, 45.456837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004047, 34.591179, 45.909546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149290, 34.956467, 45.983505>,  <31.236437, 35.175640, 46.027882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149290, 34.956467, 45.983505>,  <31.004047, 34.591179, 45.909546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149290, 34.956467, 45.983505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001844, -0.199146, 0.979968,
		0.931745, -0.355493, -0.073995,
		0.363107, 0.913217, 0.184898,
		31.258223, 35.230431, 46.038975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656712, 34.499104, 46.303650>,  <31.004047, 34.591179, 45.909546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.656712, 34.499104, 46.303650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529602, 34.867203, 46.395008>,  <31.453337, 35.088062, 46.449825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529602, 34.867203, 46.395008>,  <31.656712, 34.499104, 46.303650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529602, 34.867203, 46.395008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171980, -0.180948, 0.968339,
		0.932439, 0.346992, -0.100763,
		-0.317773, 0.920247, 0.228398,
		31.434271, 35.143276, 46.463528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163090, 34.696747, 46.668522>,  <31.656712, 34.499104, 46.303650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163090, 34.696747, 46.668522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848682, 34.920361, 46.774094>,  <31.660038, 35.054527, 46.837437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848682, 34.920361, 46.774094>,  <32.163090, 34.696747, 46.668522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848682, 34.920361, 46.774094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382880, 0.105024, 0.917809,
		0.485368, 0.822466, -0.296594,
		-0.786016, 0.559035, 0.263930,
		31.612877, 35.088070, 46.853271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437599, 35.300564, 46.946438>,  <32.163090, 34.696747, 46.668522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437599, 35.300564, 46.946438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071621, 35.314472, 47.107265>,  <31.852034, 35.322819, 47.203762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071621, 35.314472, 47.107265>,  <32.437599, 35.300564, 46.946438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071621, 35.314472, 47.107265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383576, -0.234772, 0.893169,
		0.125455, 0.971428, 0.201465,
		-0.914948, 0.034776, 0.402070,
		31.797136, 35.324905, 47.227886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481777, 35.782658, 47.453194>,  <32.437599, 35.300564, 46.946438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481777, 35.782658, 47.453194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158566, 35.566708, 47.547539>,  <31.964640, 35.437138, 47.604145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158566, 35.566708, 47.547539>,  <32.481777, 35.782658, 47.453194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158566, 35.566708, 47.547539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389928, -0.189956, 0.901040,
		-0.441646, 0.820031, 0.364002,
		-0.808025, -0.539875, 0.235860,
		31.916159, 35.404743, 47.618298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197708, 36.109306, 47.969215>,  <32.481777, 35.782658, 47.453194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197708, 36.109306, 47.969215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054626, 35.737717, 48.007290>,  <31.968777, 35.514763, 48.030136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054626, 35.737717, 48.007290>,  <32.197708, 36.109306, 47.969215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054626, 35.737717, 48.007290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454415, -0.084111, 0.886810,
		-0.815813, 0.360473, 0.452225,
		-0.357709, -0.928969, 0.095185,
		31.947313, 35.459026, 48.035847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760126, 35.942787, 48.576500>,  <32.197708, 36.109306, 47.969215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760126, 35.942787, 48.576500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871563, 35.564285, 48.510780>,  <31.938425, 35.337185, 48.471348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871563, 35.564285, 48.510780>,  <31.760126, 35.942787, 48.576500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871563, 35.564285, 48.510780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108072, -0.139096, 0.984364,
		-0.954309, -0.291993, 0.063512,
		0.278593, -0.946252, -0.164297,
		31.955141, 35.280411, 48.461491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691492, 35.668686, 49.162239>,  <31.760126, 35.942787, 48.576500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691492, 35.668686, 49.162239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927488, 35.386440, 49.005257>,  <32.069084, 35.217094, 48.911068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927488, 35.386440, 49.005257>,  <31.691492, 35.668686, 49.162239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927488, 35.386440, 49.005257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173570, -0.363864, 0.915138,
		-0.788535, -0.608039, -0.092202,
		0.589989, -0.705614, -0.392456,
		32.104485, 35.174755, 48.887520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412052, 34.991138, 49.420002>,  <31.691492, 35.668686, 49.162239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412052, 34.991138, 49.420002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788269, 34.943073, 49.292915>,  <32.014000, 34.914234, 49.216663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788269, 34.943073, 49.292915>,  <31.412052, 34.991138, 49.420002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788269, 34.943073, 49.292915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234947, -0.445375, 0.863968,
		-0.245314, -0.887245, -0.390663,
		0.940543, -0.120159, -0.317712,
		32.070431, 34.907024, 49.197601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688347, 34.356892, 49.781929>,  <31.412052, 34.991138, 49.420002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688347, 34.356892, 49.781929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004658, 34.562485, 49.648968>,  <32.194443, 34.685841, 49.569191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004658, 34.562485, 49.648968>,  <31.688347, 34.356892, 49.781929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004658, 34.562485, 49.648968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523156, -0.285600, 0.802957,
		0.317770, -0.808861, -0.494739,
		0.790778, 0.513981, -0.332405,
		32.241890, 34.716679, 49.549248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194118, 33.931145, 49.831573>,  <31.688347, 34.356892, 49.781929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194118, 33.931145, 49.831573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366272, 34.292133, 49.824577>,  <32.469566, 34.508728, 49.820377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366272, 34.292133, 49.824577>,  <32.194118, 33.931145, 49.831573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366272, 34.292133, 49.824577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642350, -0.292602, 0.708358,
		0.634156, -0.316106, -0.705637,
		0.430387, 0.902475, -0.017495,
		32.495388, 34.562878, 49.819328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773479, 33.783138, 50.120548>,  <32.194118, 33.931145, 49.831573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773479, 33.783138, 50.120548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780472, 34.181835, 50.152031>,  <32.784668, 34.421055, 50.170921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780472, 34.181835, 50.152031>,  <32.773479, 33.783138, 50.120548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780472, 34.181835, 50.152031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383622, -0.079380, 0.920072,
		0.923325, 0.014105, -0.383761,
		0.017485, 0.996745, 0.078705,
		32.785717, 34.480858, 50.175644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485462, 33.994267, 50.179573>,  <32.773479, 33.783138, 50.120548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485462, 33.994267, 50.179573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254753, 34.285805, 50.327152>,  <33.116329, 34.460728, 50.415699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254753, 34.285805, 50.327152>,  <33.485462, 33.994267, 50.179573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254753, 34.285805, 50.327152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415490, -0.127128, 0.900670,
		0.703349, 0.672777, -0.229502,
		-0.576774, 0.728841, 0.368948,
		33.081722, 34.504456, 50.437836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974148, 34.463917, 50.557854>,  <33.485462, 33.994267, 50.179573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974148, 34.463917, 50.557854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600910, 34.516068, 50.691925>,  <33.376968, 34.547356, 50.772366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600910, 34.516068, 50.691925>,  <33.974148, 34.463917, 50.557854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600910, 34.516068, 50.691925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340848, 0.023291, 0.939830,
		0.114722, 0.991192, -0.066170,
		-0.933092, 0.130373, 0.335174,
		33.320984, 34.555180, 50.792477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938744, 35.005062, 51.088947>,  <33.974148, 34.463917, 50.557854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938744, 35.005062, 51.088947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611446, 34.788261, 51.165588>,  <33.415070, 34.658180, 51.211575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611446, 34.788261, 51.165588>,  <33.938744, 35.005062, 51.088947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611446, 34.788261, 51.165588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284166, -0.091612, 0.954388,
		-0.499731, 0.835366, 0.228980,
		-0.818241, -0.542006, 0.191601,
		33.365974, 34.625660, 51.223068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734734, 35.241936, 51.768448>,  <33.938744, 35.005062, 51.088947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734734, 35.241936, 51.768448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558270, 34.885395, 51.726738>,  <33.452393, 34.671471, 51.701710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558270, 34.885395, 51.726738>,  <33.734734, 35.241936, 51.768448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558270, 34.885395, 51.726738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290709, -0.251870, 0.923065,
		-0.849039, 0.376904, 0.370238,
		-0.441159, -0.891350, -0.104278,
		33.425922, 34.617989, 51.695454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316616, 35.029163, 52.414650>,  <33.734734, 35.241936, 51.768448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316616, 35.029163, 52.414650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367561, 34.662193, 52.263863>,  <33.398129, 34.442013, 52.173389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367561, 34.662193, 52.263863>,  <33.316616, 35.029163, 52.414650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367561, 34.662193, 52.263863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474263, -0.277475, 0.835513,
		-0.871122, -0.285195, 0.399763,
		0.127360, -0.917426, -0.376972,
		33.405769, 34.386967, 52.150772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181480, 34.595959, 52.918850>,  <33.316616, 35.029163, 52.414650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181480, 34.595959, 52.918850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379612, 34.378574, 52.647762>,  <33.498489, 34.248146, 52.485107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379612, 34.378574, 52.647762>,  <33.181480, 34.595959, 52.918850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379612, 34.378574, 52.647762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686065, -0.233841, 0.688937,
		-0.532887, -0.806208, 0.257021,
		0.495325, -0.543459, -0.677722,
		33.528210, 34.215538, 52.444447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230213, 33.917381, 53.226582>,  <33.181480, 34.595959, 52.918850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230213, 33.917381, 53.226582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526913, 34.019054, 52.978321>,  <33.704933, 34.080059, 52.829365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526913, 34.019054, 52.978321>,  <33.230213, 33.917381, 53.226582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526913, 34.019054, 52.978321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670420, -0.255130, 0.696739,
		0.018753, -0.932899, -0.359651,
		0.741745, 0.254183, -0.620650,
		33.749435, 34.095310, 52.792126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745213, 33.642307, 53.520168>,  <33.230213, 33.917381, 53.226582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745213, 33.642307, 53.520168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924599, 33.885105, 53.257736>,  <34.032230, 34.030785, 53.100277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924599, 33.885105, 53.257736>,  <33.745213, 33.642307, 53.520168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924599, 33.885105, 53.257736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826922, -0.003180, 0.562307,
		0.339231, -0.794699, -0.503364,
		0.448466, 0.606995, -0.656076,
		34.059139, 34.067204, 53.060913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449814, 33.353142, 53.234600>,  <33.745213, 33.642307, 53.520168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449814, 33.353142, 53.234600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406132, 33.749908, 53.260441>,  <34.379921, 33.987968, 53.275948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406132, 33.749908, 53.260441>,  <34.449814, 33.353142, 53.234600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406132, 33.749908, 53.260441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807248, 0.050576, 0.588041,
		0.580020, 0.116372, -0.806247,
		-0.109208, 0.991917, 0.064605,
		34.373371, 34.047485, 53.279823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039066, 32.912373, 53.663982>,  <34.449814, 33.353142, 53.234600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039066, 32.912373, 53.663982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807976, 32.601284, 53.564880>,  <33.669319, 32.414631, 53.505421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807976, 32.601284, 53.564880>,  <34.039066, 32.912373, 53.663982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807976, 32.601284, 53.564880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653847, 0.622654, -0.429867,
		0.488580, -0.086355, -0.868235,
		-0.577731, -0.777718, -0.247754,
		33.634655, 32.367970, 53.490555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498955, 32.528522, 53.182709>,  <34.039066, 32.912373, 53.663982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498955, 32.528522, 53.182709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417171, 32.140209, 53.232964>,  <34.368103, 31.907223, 53.263115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417171, 32.140209, 53.232964>,  <34.498955, 32.528522, 53.182709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417171, 32.140209, 53.232964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244040, -0.073741, -0.966958,
		0.947967, -0.228363, -0.221832,
		-0.204459, -0.970779, 0.125634,
		34.355835, 31.848976, 53.270653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784863, 32.296024, 52.621483>,  <34.498955, 32.528522, 53.182709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784863, 32.296024, 52.621483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500492, 32.048935, 52.755947>,  <34.329868, 31.900681, 52.836624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500492, 32.048935, 52.755947>,  <34.784863, 32.296024, 52.621483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500492, 32.048935, 52.755947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281349, -0.188261, -0.940957,
		0.644538, -0.763528, -0.039957,
		-0.710925, -0.617724, 0.336159,
		34.287216, 31.863617, 52.856796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697861, 31.773781, 52.093800>,  <34.784863, 32.296024, 52.621483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697861, 31.773781, 52.093800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367050, 31.805414, 52.316429>,  <34.168564, 31.824394, 52.450005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367050, 31.805414, 52.316429>,  <34.697861, 31.773781, 52.093800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367050, 31.805414, 52.316429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558742, -0.224675, -0.798328,
		0.061914, -0.971219, 0.229999,
		-0.827027, 0.079083, 0.556572,
		34.118942, 31.829140, 52.483402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435829, 31.124666, 52.120304>,  <34.697861, 31.773781, 52.093800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435829, 31.124666, 52.120304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143768, 31.397022, 52.143154>,  <33.968533, 31.560436, 52.156864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143768, 31.397022, 52.143154>,  <34.435829, 31.124666, 52.120304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143768, 31.397022, 52.143154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370075, -0.323799, -0.870746,
		-0.574389, -0.656916, 0.488404,
		-0.730152, 0.680893, 0.057121,
		33.924721, 31.601290, 52.160290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836906, 30.849165, 52.103809>,  <34.435829, 31.124666, 52.120304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836906, 30.849165, 52.103809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686775, 31.207968, 52.010426>,  <33.596695, 31.423250, 51.954395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686775, 31.207968, 52.010426>,  <33.836906, 30.849165, 52.103809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686775, 31.207968, 52.010426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454888, -0.397717, -0.796805,
		-0.807591, -0.192868, 0.557314,
		-0.375331, 0.897008, -0.233459,
		33.574177, 31.477070, 51.940388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203384, 30.684843, 51.744560>,  <33.836906, 30.849165, 52.103809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203384, 30.684843, 51.744560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297089, 31.058504, 51.636868>,  <33.353313, 31.282700, 51.572254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297089, 31.058504, 51.636868>,  <33.203384, 30.684843, 51.744560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297089, 31.058504, 51.636868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365391, -0.172025, -0.914821,
		-0.900894, 0.312681, 0.301031,
		0.234262, 0.934151, -0.269228,
		33.367367, 31.338749, 51.556099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696960, 30.899712, 51.349804>,  <33.203384, 30.684843, 51.744560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696960, 30.899712, 51.349804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996326, 31.140345, 51.238110>,  <33.175945, 31.284723, 51.171093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996326, 31.140345, 51.238110>,  <32.696960, 30.899712, 51.349804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996326, 31.140345, 51.238110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267068, -0.112029, -0.957144,
		-0.607083, 0.790917, 0.076819,
		0.748415, 0.601582, -0.279239,
		33.220852, 31.320820, 51.154339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487686, 31.153757, 50.720436>,  <32.696960, 30.899712, 51.349804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487686, 31.153757, 50.720436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866421, 31.282331, 50.714989>,  <33.093662, 31.359476, 50.711720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866421, 31.282331, 50.714989>,  <32.487686, 31.153757, 50.720436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866421, 31.282331, 50.714989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064937, 0.149471, -0.986632,
		-0.315105, 0.935059, 0.162398,
		0.946833, 0.321438, -0.013621,
		33.150471, 31.378763, 50.710903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573948, 31.697220, 50.325947>,  <32.487686, 31.153757, 50.720436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573948, 31.697220, 50.325947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960884, 31.597345, 50.308487>,  <33.193047, 31.537420, 50.298012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960884, 31.597345, 50.308487>,  <32.573948, 31.697220, 50.325947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960884, 31.597345, 50.308487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061220, 0.397261, -0.915661,
		0.245969, 0.883086, 0.399573,
		0.967342, -0.249686, -0.043651,
		33.251087, 31.522440, 50.295391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906071, 32.225822, 49.993275>,  <32.573948, 31.697220, 50.325947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906071, 32.225822, 49.993275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159725, 31.919765, 49.948696>,  <33.311920, 31.736130, 49.921947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159725, 31.919765, 49.948696>,  <32.906071, 32.225822, 49.993275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159725, 31.919765, 49.948696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157481, 0.268920, -0.950201,
		0.757012, 0.585009, 0.291029,
		0.634139, -0.765145, -0.111448,
		33.349968, 31.690222, 49.915260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214191, 32.443073, 49.511425>,  <32.906071, 32.225822, 49.993275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214191, 32.443073, 49.511425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341160, 32.063766, 49.508980>,  <33.417339, 31.836184, 49.507511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341160, 32.063766, 49.508980>,  <33.214191, 32.443073, 49.511425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341160, 32.063766, 49.508980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226978, 0.082238, -0.970422,
		0.920720, 0.306644, 0.241340,
		0.317422, -0.948265, -0.006117,
		33.436386, 31.779287, 49.507145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926228, 32.473278, 49.341499>,  <33.214191, 32.443073, 49.511425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926228, 32.473278, 49.341499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743515, 32.130810, 49.244900>,  <33.633888, 31.925329, 49.186939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743515, 32.130810, 49.244900>,  <33.926228, 32.473278, 49.341499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743515, 32.130810, 49.244900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139504, 0.199171, -0.969984,
		0.878573, -0.476758, 0.028463,
		-0.456779, -0.856173, -0.241497,
		33.606480, 31.873959, 49.172451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308918, 32.242100, 48.753315>,  <33.926228, 32.473278, 49.341499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308918, 32.242100, 48.753315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980209, 32.015892, 48.725372>,  <33.782986, 31.880167, 48.708607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980209, 32.015892, 48.725372>,  <34.308918, 32.242100, 48.753315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980209, 32.015892, 48.725372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022081, 0.090899, -0.995615,
		0.569389, -0.819711, -0.062211,
		-0.821772, -0.565519, -0.069857,
		33.733677, 31.846237, 48.704414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424591, 31.853106, 48.092411>,  <34.308918, 32.242100, 48.753315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424591, 31.853106, 48.092411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031803, 31.814968, 48.157696>,  <33.796131, 31.792086, 48.196865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031803, 31.814968, 48.157696>,  <34.424591, 31.853106, 48.092411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031803, 31.814968, 48.157696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163674, -0.002952, -0.986510,
		0.094542, -0.995440, -0.012707,
		-0.981974, -0.095347, 0.163207,
		33.737209, 31.786366, 48.206657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226833, 31.304060, 47.725040>,  <34.424591, 31.853106, 48.092411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226833, 31.304060, 47.725040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907547, 31.534300, 47.796082>,  <33.715977, 31.672443, 47.838707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907547, 31.534300, 47.796082>,  <34.226833, 31.304060, 47.725040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907547, 31.534300, 47.796082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167089, 0.071704, -0.983331,
		-0.578740, -0.814582, 0.038941,
		-0.798212, 0.575599, 0.177606,
		33.668083, 31.706980, 47.849361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750359, 31.094465, 47.208927>,  <34.226833, 31.304060, 47.725040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750359, 31.094465, 47.208927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621323, 31.453712, 47.328472>,  <33.543903, 31.669262, 47.400200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621323, 31.453712, 47.328472>,  <33.750359, 31.094465, 47.208927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621323, 31.453712, 47.328472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256000, 0.221193, -0.941030,
		-0.911264, -0.380073, 0.158565,
		-0.322586, 0.898120, 0.298864,
		33.524548, 31.723148, 47.418133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109734, 31.177252, 46.841171>,  <33.750359, 31.094465, 47.208927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109734, 31.177252, 46.841171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218403, 31.544228, 46.957443>,  <33.283604, 31.764414, 47.027206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218403, 31.544228, 46.957443>,  <33.109734, 31.177252, 46.841171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218403, 31.544228, 46.957443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066269, 0.319161, -0.945381,
		-0.960105, 0.237574, 0.147506,
		0.271676, 0.917439, 0.290684,
		33.299904, 31.819460, 47.044647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591461, 31.610214, 46.640717>,  <33.109734, 31.177252, 46.841171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591461, 31.610214, 46.640717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923080, 31.831835, 46.670925>,  <33.122051, 31.964808, 46.689053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923080, 31.831835, 46.670925>,  <32.591461, 31.610214, 46.640717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923080, 31.831835, 46.670925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140255, 0.336788, -0.931076,
		-0.541300, 0.761315, 0.356923,
		0.829049, 0.554052, 0.075525,
		33.171795, 31.998051, 46.693584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377136, 32.211678, 46.365051>,  <32.591461, 31.610214, 46.640717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377136, 32.211678, 46.365051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775986, 32.212116, 46.334743>,  <33.015297, 32.212379, 46.316559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775986, 32.212116, 46.334743>,  <32.377136, 32.211678, 46.365051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775986, 32.212116, 46.334743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075048, 0.152855, -0.985395,
		0.010500, 0.988248, 0.152498,
		0.997125, 0.001098, -0.075771,
		33.075123, 32.212444, 46.312012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569626, 32.691341, 45.913631>,  <32.377136, 32.211678, 46.365051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569626, 32.691341, 45.913631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899429, 32.465031, 45.909992>,  <33.097309, 32.329243, 45.907810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899429, 32.465031, 45.909992>,  <32.569626, 32.691341, 45.913631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899429, 32.465031, 45.909992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203687, 0.311752, -0.928074,
		0.527921, 0.763351, 0.372284,
		0.824506, -0.565779, -0.009096,
		33.146782, 32.295296, 45.907265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098282, 33.186897, 45.925411>,  <32.569626, 32.691341, 45.913631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098282, 33.186897, 45.925411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244667, 32.847336, 45.772865>,  <33.332497, 32.643600, 45.681339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244667, 32.847336, 45.772865>,  <33.098282, 33.186897, 45.925411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244667, 32.847336, 45.772865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083299, 0.378265, -0.921942,
		0.926895, 0.369162, 0.067718,
		0.365961, -0.848902, -0.381362,
		33.354454, 32.592667, 45.658455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598015, 33.407986, 45.459259>,  <33.098282, 33.186897, 45.925411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598015, 33.407986, 45.459259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483536, 33.037586, 45.360775>,  <33.414848, 32.815346, 45.301685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483536, 33.037586, 45.360775>,  <33.598015, 33.407986, 45.459259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483536, 33.037586, 45.360775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004866, 0.258355, -0.966038,
		0.958160, -0.275275, -0.078446,
		-0.286193, -0.926000, -0.246206,
		33.397678, 32.759785, 45.286915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902397, 33.280190, 44.751240>,  <33.598015, 33.407986, 45.459259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902397, 33.280190, 44.751240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642632, 32.976059, 44.746204>,  <33.486771, 32.793579, 44.743183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642632, 32.976059, 44.746204>,  <33.902397, 33.280190, 44.751240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642632, 32.976059, 44.746204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108776, 0.109261, -0.988043,
		0.752615, -0.640280, -0.153662,
		-0.649414, -0.760331, -0.012584,
		33.447807, 32.747959, 44.742428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098553, 32.784744, 44.266335>,  <33.902397, 33.280190, 44.751240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098553, 32.784744, 44.266335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713512, 32.699242, 44.332909>,  <33.482487, 32.647942, 44.372852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713512, 32.699242, 44.332909>,  <34.098553, 32.784744, 44.266335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713512, 32.699242, 44.332909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149608, -0.092725, -0.984388,
		0.225854, -0.972476, 0.057278,
		-0.962604, -0.213759, 0.166433,
		33.424732, 32.635113, 44.382839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906326, 32.199661, 43.891163>,  <34.098553, 32.784744, 44.266335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906326, 32.199661, 43.891163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561695, 32.394306, 43.948971>,  <33.354916, 32.511093, 43.983658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561695, 32.394306, 43.948971>,  <33.906326, 32.199661, 43.891163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561695, 32.394306, 43.948971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152769, 0.022943, -0.987996,
		-0.484086, -0.873317, 0.054572,
		-0.861581, 0.486612, 0.144522,
		33.303219, 32.540291, 43.992329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530827, 31.935070, 43.378826>,  <33.906326, 32.199661, 43.891163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530827, 31.935070, 43.378826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301712, 32.243805, 43.489231>,  <33.164246, 32.429047, 43.555473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301712, 32.243805, 43.489231>,  <33.530827, 31.935070, 43.378826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301712, 32.243805, 43.489231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408379, 0.023265, -0.912516,
		-0.710737, -0.635392, 0.301877,
		-0.572783, 0.771839, 0.276016,
		33.129879, 32.475357, 43.572037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982670, 31.825008, 43.024818>,  <33.530827, 31.935070, 43.378826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982670, 31.825008, 43.024818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934921, 32.213177, 43.108749>,  <32.906273, 32.446079, 43.159107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934921, 32.213177, 43.108749>,  <32.982670, 31.825008, 43.024818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934921, 32.213177, 43.108749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361339, 0.154386, -0.919565,
		-0.924762, -0.185591, 0.332222,
		-0.119372, 0.970423, 0.209831,
		32.899109, 32.504303, 43.171700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205784, 32.043274, 42.872112>,  <32.982670, 31.825008, 43.024818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205784, 32.043274, 42.872112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450268, 32.359859, 42.871777>,  <32.596958, 32.549812, 42.871574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450268, 32.359859, 42.871777>,  <32.205784, 32.043274, 42.872112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450268, 32.359859, 42.871777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438287, 0.337580, -0.833033,
		-0.659035, 0.509527, 0.553223,
		0.611210, 0.791468, -0.000842,
		32.633629, 32.597301, 42.871525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839897, 32.560219, 42.600002>,  <32.205784, 32.043274, 42.872112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839897, 32.560219, 42.600002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197811, 32.736992, 42.574512>,  <32.412560, 32.843056, 42.559219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197811, 32.736992, 42.574512>,  <31.839897, 32.560219, 42.600002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197811, 32.736992, 42.574512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262297, 0.404756, -0.875998,
		-0.361337, 0.800543, 0.478086,
		0.894783, 0.441931, -0.063727,
		32.466248, 32.869572, 42.555393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766813, 33.330822, 42.330437>,  <31.839897, 32.560219, 42.600002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766813, 33.330822, 42.330437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139118, 33.206326, 42.253696>,  <32.362503, 33.131626, 42.207653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139118, 33.206326, 42.253696>,  <31.766813, 33.330822, 42.330437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139118, 33.206326, 42.253696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111053, 0.259262, -0.959401,
		0.348346, 0.914282, 0.206748,
		0.930765, -0.311243, -0.191846,
		32.418346, 33.112953, 42.196144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966579, 33.836239, 41.811943>,  <31.766813, 33.330822, 42.330437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966579, 33.836239, 41.811943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212196, 33.524040, 41.765003>,  <32.359566, 33.336720, 41.736839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212196, 33.524040, 41.765003>,  <31.966579, 33.836239, 41.811943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212196, 33.524040, 41.765003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068685, 0.095271, -0.993079,
		0.786279, 0.617852, 0.004892,
		0.614042, -0.780501, -0.117347,
		32.396408, 33.289890, 41.729797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511467, 34.119705, 41.375515>,  <31.966579, 33.836239, 41.811943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511467, 34.119705, 41.375515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523685, 33.720490, 41.353691>,  <32.531017, 33.480961, 41.340599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523685, 33.720490, 41.353691>,  <32.511467, 34.119705, 41.375515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.523685, 33.720490, 41.353691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147033, 0.049500, -0.987892,
		0.988660, 0.038196, -0.145234,
		0.030545, -0.998043, -0.054555,
		32.532848, 33.421078, 41.337326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147308, 33.936623, 41.059540>,  <32.511467, 34.119705, 41.375515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147308, 33.936623, 41.059540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882408, 33.644413, 40.992908>,  <32.723469, 33.469086, 40.952930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882408, 33.644413, 40.992908>,  <33.147308, 33.936623, 41.059540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882408, 33.644413, 40.992908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181260, 0.059518, -0.981633,
		0.727024, -0.680285, 0.092999,
		-0.662254, -0.730527, -0.166580,
		32.683731, 33.425255, 40.942936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450745, 33.339226, 40.567154>,  <33.147308, 33.936623, 41.059540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450745, 33.339226, 40.567154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053024, 33.299484, 40.551712>,  <32.814392, 33.275639, 40.542446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053024, 33.299484, 40.551712>,  <33.450745, 33.339226, 40.567154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053024, 33.299484, 40.551712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035093, 0.036893, -0.998703,
		0.100653, -0.994368, -0.033196,
		-0.994302, -0.099357, -0.038609,
		32.754734, 33.269680, 40.540131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372517, 32.888569, 40.037689>,  <33.450745, 33.339226, 40.567154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372517, 32.888569, 40.037689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006535, 33.047741, 40.064533>,  <32.786945, 33.143246, 40.080639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006535, 33.047741, 40.064533>,  <33.372517, 32.888569, 40.037689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006535, 33.047741, 40.064533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119415, -0.108124, -0.986939,
		-0.385480, -0.911021, 0.146448,
		-0.914957, 0.397933, 0.067110,
		32.732048, 33.167122, 40.084667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763897, 32.426514, 39.774712>,  <33.372517, 32.888569, 40.037689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763897, 32.426514, 39.774712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627415, 32.801567, 39.748104>,  <32.545525, 33.026600, 39.732140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627415, 32.801567, 39.748104>,  <32.763897, 32.426514, 39.774712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627415, 32.801567, 39.748104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224316, -0.149938, -0.962913,
		-0.912832, -0.313628, 0.261486,
		-0.341203, 0.937633, -0.066517,
		32.525055, 33.082855, 39.728149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183174, 32.444397, 39.223934>,  <32.763897, 32.426514, 39.774712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183174, 32.444397, 39.223934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263031, 32.833794, 39.268570>,  <32.310944, 33.067432, 39.295353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263031, 32.833794, 39.268570>,  <32.183174, 32.444397, 39.223934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263031, 32.833794, 39.268570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213551, 0.154372, -0.964658,
		-0.956316, 0.168754, 0.238710,
		0.199640, 0.973495, 0.111590,
		32.322922, 33.125843, 39.302048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650457, 32.871597, 38.957752>,  <32.183174, 32.444397, 39.223934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650457, 32.871597, 38.957752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953518, 33.132423, 38.946617>,  <32.135353, 33.288918, 38.939934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953518, 33.132423, 38.946617>,  <31.650457, 32.871597, 38.957752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953518, 33.132423, 38.946617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218858, 0.213645, -0.952080,
		-0.614871, 0.727438, 0.304578,
		0.757651, 0.652066, -0.027841,
		32.180813, 33.328045, 38.938263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384171, 33.449020, 38.638275>,  <31.650457, 32.871597, 38.957752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384171, 33.449020, 38.638275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782351, 33.468189, 38.605328>,  <32.021259, 33.479691, 38.585560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782351, 33.468189, 38.605328>,  <31.384171, 33.449020, 38.638275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782351, 33.468189, 38.605328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090471, 0.203782, -0.974827,
		-0.029934, 0.977843, 0.207190,
		0.995449, 0.047925, -0.082366,
		32.080986, 33.482567, 38.580616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.555155, 33.966789, 38.158676>,  <31.384171, 33.449020, 38.638275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.555155, 33.966789, 38.158676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.908936, 33.780689, 38.144329>,  <32.121204, 33.669029, 38.135719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.908936, 33.780689, 38.144329>,  <31.555155, 33.966789, 38.158676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908936, 33.780689, 38.144329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163716, 0.381365, -0.909812,
		0.436970, 0.798812, 0.413468,
		0.884451, -0.465252, -0.035867,
		32.174271, 33.641113, 38.133568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996895, 34.521111, 37.885838>,  <31.555155, 33.966789, 38.158676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996895, 34.521111, 37.885838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.160698, 34.160915, 37.827293>,  <32.258980, 33.944798, 37.792168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.160698, 34.160915, 37.827293>,  <31.996895, 34.521111, 37.885838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160698, 34.160915, 37.827293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236063, 0.259560, -0.936431,
		0.881236, 0.348925, 0.318864,
		0.409509, -0.900489, -0.146365,
		32.283550, 33.890770, 37.783382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640404, 34.747921, 37.614071>,  <31.996895, 34.521111, 37.885838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640404, 34.747921, 37.614071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629250, 34.361095, 37.512867>,  <32.622559, 34.129002, 37.452145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629250, 34.361095, 37.512867>,  <32.640404, 34.747921, 37.614071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629250, 34.361095, 37.512867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450301, 0.213820, -0.866897,
		0.892441, -0.138102, 0.429507,
		-0.027883, -0.967062, -0.253009,
		32.620884, 34.070976, 37.436966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319405, 34.518120, 37.444603>,  <32.640404, 34.747921, 37.614071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319405, 34.518120, 37.444603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062458, 34.279648, 37.251965>,  <32.908291, 34.136566, 37.136383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062458, 34.279648, 37.251965>,  <33.319405, 34.518120, 37.444603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062458, 34.279648, 37.251965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492631, 0.160172, -0.855371,
		0.587092, -0.786711, 0.190808,
		-0.642368, -0.596179, -0.481594,
		32.869747, 34.100796, 37.107487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665672, 33.960999, 37.069134>,  <33.319405, 34.518120, 37.444603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665672, 33.960999, 37.069134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319981, 33.988735, 36.869816>,  <33.112564, 34.005375, 36.750225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319981, 33.988735, 36.869816>,  <33.665672, 33.960999, 37.069134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319981, 33.988735, 36.869816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498013, -0.022549, -0.866876,
		-0.071346, -0.997338, -0.015045,
		-0.864230, 0.069340, -0.498296,
		33.060711, 34.009537, 36.720325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662968, 33.417080, 36.561626>,  <33.665672, 33.960999, 37.069134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662968, 33.417080, 36.561626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438492, 33.727108, 36.445465>,  <33.303806, 33.913124, 36.375771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438492, 33.727108, 36.445465>,  <33.662968, 33.417080, 36.561626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438492, 33.727108, 36.445465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429526, -0.027199, -0.902645,
		-0.707509, -0.631293, -0.317648,
		-0.561194, 0.775067, -0.290401,
		33.270134, 33.959629, 36.358345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886696, 33.056728, 37.207886>,  <33.662968, 33.417080, 36.561626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886696, 33.056728, 37.207886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187244, 33.222679, 37.002628>,  <34.367573, 33.322250, 36.879475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187244, 33.222679, 37.002628>,  <33.886696, 33.056728, 37.207886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187244, 33.222679, 37.002628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642916, -0.285079, 0.710907,
		0.148653, -0.864064, -0.480932,
		0.751373, 0.414877, -0.513143,
		34.412655, 33.347141, 36.848686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519451, 32.552498, 37.170303>,  <33.886696, 33.056728, 37.207886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519451, 32.552498, 37.170303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663311, 32.916645, 37.088440>,  <34.749626, 33.135132, 37.039322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663311, 32.916645, 37.088440>,  <34.519451, 32.552498, 37.170303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663311, 32.916645, 37.088440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661140, -0.093849, 0.744370,
		0.658443, -0.403018, -0.635633,
		0.359648, 0.910367, -0.204658,
		34.771206, 33.189754, 37.027042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189835, 32.496147, 37.019966>,  <34.519451, 32.552498, 37.170303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189835, 32.496147, 37.019966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.169315, 32.886116, 37.106583>,  <35.157005, 33.120098, 37.158550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.169315, 32.886116, 37.106583>,  <35.189835, 32.496147, 37.019966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169315, 32.886116, 37.106583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832919, -0.077866, 0.547889,
		0.551012, 0.208464, -0.808040,
		-0.051296, 0.974926, 0.216538,
		35.153927, 33.178593, 37.171543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887970, 32.762657, 36.974819>,  <35.189835, 32.496147, 37.019966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887970, 32.762657, 36.974819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692738, 33.017471, 37.213467>,  <35.575596, 33.170361, 37.356655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692738, 33.017471, 37.213467>,  <35.887970, 32.762657, 36.974819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692738, 33.017471, 37.213467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679816, -0.151232, 0.717621,
		0.547380, 0.755851, -0.359255,
		-0.488083, 0.637039, 0.596620,
		35.546314, 33.208584, 37.392452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454891, 33.177734, 37.261803>,  <35.887970, 32.762657, 36.974819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454891, 33.177734, 37.261803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125950, 33.211605, 37.486858>,  <35.928585, 33.231926, 37.621891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125950, 33.211605, 37.486858>,  <36.454891, 33.177734, 37.261803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125950, 33.211605, 37.486858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539180, -0.199827, 0.818141,
		0.181705, 0.976166, 0.118675,
		-0.822356, 0.084673, 0.562638,
		35.879242, 33.237007, 37.655651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555847, 33.735165, 37.756756>,  <36.454891, 33.177734, 37.261803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555847, 33.735165, 37.756756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260475, 33.529739, 37.931557>,  <36.083252, 33.406487, 38.036438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260475, 33.529739, 37.931557>,  <36.555847, 33.735165, 37.756756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260475, 33.529739, 37.931557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569547, -0.128042, 0.811925,
		-0.361018, 0.848446, 0.387047,
		-0.738433, -0.513560, 0.437005,
		36.038944, 33.375671, 38.062656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344223, 34.042606, 38.343014>,  <36.555847, 33.735165, 37.756756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344223, 34.042606, 38.343014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244598, 33.661297, 38.411400>,  <36.184822, 33.432510, 38.452431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244598, 33.661297, 38.411400>,  <36.344223, 34.042606, 38.343014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244598, 33.661297, 38.411400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413578, 0.054930, 0.908810,
		-0.875740, 0.297057, 0.380573,
		-0.249064, -0.953278, 0.170961,
		36.169880, 33.375313, 38.462688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242390, 34.015663, 39.059402>,  <36.344223, 34.042606, 38.343014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242390, 34.015663, 39.059402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.253250, 33.625683, 38.971100>,  <36.259766, 33.391693, 38.918118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.253250, 33.625683, 38.971100>,  <36.242390, 34.015663, 39.059402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253250, 33.625683, 38.971100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199938, -0.211080, 0.956802,
		-0.979432, -0.070117, 0.189198,
		0.027152, -0.974951, -0.220758,
		36.261395, 33.333199, 38.904873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914112, 33.686779, 39.604015>,  <36.242390, 34.015663, 39.059402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914112, 33.686779, 39.604015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115398, 33.388092, 39.430031>,  <36.236172, 33.208881, 39.325642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115398, 33.388092, 39.430031>,  <35.914112, 33.686779, 39.604015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115398, 33.388092, 39.430031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316146, -0.309362, 0.896854,
		-0.804254, -0.588824, 0.080394,
		0.503218, -0.746714, -0.434960,
		36.266365, 33.164078, 39.299541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073978, 33.234467, 40.141354>,  <35.914112, 33.686779, 39.604015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073978, 33.234467, 40.141354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324188, 33.036694, 39.899937>,  <36.474312, 32.918030, 39.755085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324188, 33.036694, 39.899937>,  <36.073978, 33.234467, 40.141354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324188, 33.036694, 39.899937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359018, -0.504395, 0.785297,
		-0.692698, -0.707902, -0.138000,
		0.625520, -0.494429, -0.603543,
		36.511845, 32.888367, 39.718872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848442, 32.541157, 40.179070>,  <36.073978, 33.234467, 40.141354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848442, 32.541157, 40.179070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236240, 32.602417, 40.102509>,  <36.468918, 32.639172, 40.056572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236240, 32.602417, 40.102509>,  <35.848442, 32.541157, 40.179070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236240, 32.602417, 40.102509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244801, -0.564715, 0.788143,
		0.012616, -0.810952, -0.584977,
		0.969491, 0.153146, -0.191398,
		36.527088, 32.648361, 40.045090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225132, 31.746159, 40.194736>,  <35.848442, 32.541157, 40.179070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225132, 31.746159, 40.194736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501228, 32.035046, 40.212509>,  <36.666885, 32.208378, 40.223171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501228, 32.035046, 40.212509>,  <36.225132, 31.746159, 40.194736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501228, 32.035046, 40.212509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340387, -0.378276, 0.860839,
		0.638519, -0.579061, -0.506934,
		0.690239, 0.722216, 0.044431,
		36.708302, 32.251709, 40.225838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968639, 31.417597, 40.301010>,  <36.225132, 31.746159, 40.194736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968639, 31.417597, 40.301010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980442, 31.783396, 40.462414>,  <36.987522, 32.002876, 40.559258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980442, 31.783396, 40.462414>,  <36.968639, 31.417597, 40.301010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980442, 31.783396, 40.462414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244400, -0.398034, 0.884216,
		0.969226, 0.072531, -0.235246,
		0.029503, 0.914499, 0.403511,
		36.989292, 32.057747, 40.583466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576862, 31.413841, 40.831379>,  <36.968639, 31.417597, 40.301010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576862, 31.413841, 40.831379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341686, 31.728899, 40.905071>,  <37.200581, 31.917934, 40.949287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341686, 31.728899, 40.905071>,  <37.576862, 31.413841, 40.831379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341686, 31.728899, 40.905071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163332, -0.107469, 0.980700,
		0.792243, 0.606685, -0.065462,
		-0.587941, 0.787645, 0.184232,
		37.165302, 31.965193, 40.960342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844997, 31.693638, 41.444138>,  <37.576862, 31.413841, 40.831379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844997, 31.693638, 41.444138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499523, 31.894886, 41.432072>,  <37.292236, 32.015636, 41.424831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499523, 31.894886, 41.432072>,  <37.844997, 31.693638, 41.444138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499523, 31.894886, 41.432072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023093, 0.020277, 0.999528,
		0.503497, 0.863977, -0.005895,
		-0.863688, 0.503123, -0.030162,
		37.240417, 32.045822, 41.423023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916794, 32.292740, 41.935177>,  <37.844997, 31.693638, 41.444138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916794, 32.292740, 41.935177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.521832, 32.243786, 41.895073>,  <37.284855, 32.214413, 41.871010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.521832, 32.243786, 41.895073>,  <37.916794, 32.292740, 41.935177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521832, 32.243786, 41.895073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123508, 0.200280, 0.971923,
		-0.098873, 0.972064, -0.212874,
		-0.987406, -0.122389, -0.100256,
		37.225609, 32.207069, 41.864998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499298, 32.834297, 42.292290>,  <37.916794, 32.292740, 41.935177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499298, 32.834297, 42.292290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.267895, 32.511322, 42.246044>,  <37.129051, 32.317535, 42.218296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.267895, 32.511322, 42.246044>,  <37.499298, 32.834297, 42.292290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267895, 32.511322, 42.246044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290652, 0.071623, 0.954144,
		-0.762133, 0.585586, -0.276119,
		-0.578511, -0.807440, -0.115615,
		37.094341, 32.269089, 42.211361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936325, 32.998344, 42.766823>,  <37.499298, 32.834297, 42.292290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936325, 32.998344, 42.766823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887535, 32.603424, 42.726097>,  <36.858261, 32.366474, 42.701664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887535, 32.603424, 42.726097>,  <36.936325, 32.998344, 42.766823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887535, 32.603424, 42.726097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376526, -0.048883, 0.925115,
		-0.918341, 0.151173, -0.365781,
		-0.121972, -0.987298, -0.101812,
		36.850945, 32.307236, 42.695553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268818, 32.878616, 42.998558>,  <36.936325, 32.998344, 42.766823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268818, 32.878616, 42.998558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410210, 32.504822, 43.015507>,  <36.495045, 32.280544, 43.025677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410210, 32.504822, 43.015507>,  <36.268818, 32.878616, 42.998558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410210, 32.504822, 43.015507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535196, -0.164872, 0.828482,
		-0.767216, -0.315527, -0.558410,
		0.353475, -0.934484, 0.042376,
		36.516251, 32.224476, 43.028221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690693, 32.394753, 43.014359>,  <36.268818, 32.878616, 42.998558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690693, 32.394753, 43.014359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026989, 32.271156, 43.192207>,  <36.228767, 32.196999, 43.298916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026989, 32.271156, 43.192207>,  <35.690693, 32.394753, 43.014359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026989, 32.271156, 43.192207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480747, -0.048223, 0.875532,
		-0.249091, -0.949841, -0.189090,
		0.840736, -0.308991, 0.444621,
		36.279209, 32.178459, 43.325592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430573, 31.967619, 43.623623>,  <35.690693, 32.394753, 43.014359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430573, 31.967619, 43.623623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818722, 32.043644, 43.683292>,  <36.051613, 32.089260, 43.719093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818722, 32.043644, 43.683292>,  <35.430573, 31.967619, 43.623623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818722, 32.043644, 43.683292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161848, 0.052902, 0.985397,
		0.179396, -0.980345, 0.082096,
		0.970372, 0.190063, 0.149176,
		36.109833, 32.100662, 43.728046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545155, 31.452253, 44.186546>,  <35.430573, 31.967619, 43.623623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545155, 31.452253, 44.186546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844105, 31.718012, 44.185169>,  <36.023476, 31.877466, 44.184345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844105, 31.718012, 44.185169>,  <35.545155, 31.452253, 44.186546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844105, 31.718012, 44.185169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002058, 0.007493, 0.999970,
		0.664401, -0.747344, 0.006968,
		0.747373, 0.664395, -0.003440,
		36.068317, 31.917330, 44.184135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047882, 31.178717, 44.725159>,  <35.545155, 31.452253, 44.186546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047882, 31.178717, 44.725159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114395, 31.570887, 44.682980>,  <36.154301, 31.806189, 44.657673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114395, 31.570887, 44.682980>,  <36.047882, 31.178717, 44.725159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114395, 31.570887, 44.682980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105892, 0.088566, 0.990426,
		0.980376, -0.175853, -0.089093,
		0.166279, 0.980424, -0.105449,
		36.164280, 31.865013, 44.651344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666946, 31.315449, 45.049854>,  <36.047882, 31.178717, 44.725159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666946, 31.315449, 45.049854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443497, 31.647167, 45.044106>,  <36.309425, 31.846197, 45.040657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443497, 31.647167, 45.044106>,  <36.666946, 31.315449, 45.049854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443497, 31.647167, 45.044106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077168, 0.069215, 0.994613,
		0.825821, 0.554510, -0.102660,
		-0.558628, 0.829294, -0.014369,
		36.275909, 31.895956, 45.039795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858974, 31.701323, 45.694653>,  <36.666946, 31.315449, 45.049854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858974, 31.701323, 45.694653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565990, 31.939703, 45.562988>,  <36.390202, 32.082733, 45.483990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565990, 31.939703, 45.562988>,  <36.858974, 31.701323, 45.694653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565990, 31.939703, 45.562988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072768, 0.412185, 0.908190,
		0.676914, 0.689162, -0.258541,
		-0.732456, 0.595953, -0.329163,
		36.346252, 32.118488, 45.464241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995445, 32.389812, 45.868584>,  <36.858974, 31.701323, 45.694653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995445, 32.389812, 45.868584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596466, 32.375698, 45.843777>,  <36.357079, 32.367229, 45.828892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596466, 32.375698, 45.843777>,  <36.995445, 32.389812, 45.868584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596466, 32.375698, 45.843777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071145, 0.557354, 0.827221,
		0.005376, 0.829525, -0.558444,
		-0.997452, -0.035283, -0.062013,
		36.297230, 32.365112, 45.825172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780682, 33.043789, 46.030025>,  <36.995445, 32.389812, 45.868584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780682, 33.043789, 46.030025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449715, 32.830177, 46.099525>,  <36.251133, 32.702011, 46.141228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449715, 32.830177, 46.099525>,  <36.780682, 33.043789, 46.030025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449715, 32.830177, 46.099525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096329, 0.439776, 0.892927,
		-0.553262, 0.722087, -0.415321,
		-0.827419, -0.534030, 0.173754,
		36.201488, 32.669968, 46.151653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128963, 33.408684, 46.066910>,  <36.780682, 33.043789, 46.030025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128963, 33.408684, 46.066910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083080, 33.074474, 46.281849>,  <36.055550, 32.873947, 46.410812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083080, 33.074474, 46.281849>,  <36.128963, 33.408684, 46.066910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083080, 33.074474, 46.281849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267062, 0.546939, 0.793433,
		-0.956828, -0.052489, -0.285877,
		-0.114710, -0.835525, 0.537344,
		36.048668, 32.823818, 46.443050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982506, 33.671440, 46.667229>,  <36.128963, 33.408684, 46.066910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982506, 33.671440, 46.667229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976353, 33.288048, 46.781124>,  <35.972660, 33.058010, 46.849461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976353, 33.288048, 46.781124>,  <35.982506, 33.671440, 46.667229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976353, 33.288048, 46.781124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226671, 0.280699, 0.932646,
		-0.973850, -0.050192, -0.221579,
		-0.015386, -0.958482, 0.284736,
		35.971737, 33.000504, 46.866547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519932, 33.662457, 47.191959>,  <35.982506, 33.671440, 46.667229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519932, 33.662457, 47.191959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735264, 33.331093, 47.253849>,  <35.864464, 33.132275, 47.290981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735264, 33.331093, 47.253849>,  <35.519932, 33.662457, 47.191959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735264, 33.331093, 47.253849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102946, 0.117580, 0.987713,
		-0.836421, -0.547647, -0.021984,
		0.538333, -0.828406, 0.154725,
		35.896763, 33.082569, 47.300266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140144, 33.263062, 47.729111>,  <35.519932, 33.662457, 47.191959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140144, 33.263062, 47.729111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514263, 33.123325, 47.751656>,  <35.738735, 33.039482, 47.765182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514263, 33.123325, 47.751656>,  <35.140144, 33.263062, 47.729111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514263, 33.123325, 47.751656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027607, 0.086747, 0.995848,
		-0.352784, -0.932970, 0.071490,
		0.935298, -0.349345, 0.056359,
		35.794853, 33.018520, 47.768562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170696, 32.695534, 48.299164>,  <35.140144, 33.263062, 47.729111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170696, 32.695534, 48.299164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545578, 32.824749, 48.246555>,  <35.770508, 32.902279, 48.214989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545578, 32.824749, 48.246555>,  <35.170696, 32.695534, 48.299164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545578, 32.824749, 48.246555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096233, 0.122955, 0.987735,
		0.335248, -0.938365, 0.084146,
		0.937202, 0.323039, -0.131522,
		35.826740, 32.921661, 48.207100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664429, 32.289467, 48.810268>,  <35.170696, 32.695534, 48.299164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664429, 32.289467, 48.810268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863625, 32.617657, 48.697968>,  <35.983143, 32.814571, 48.630589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863625, 32.617657, 48.697968>,  <35.664429, 32.289467, 48.810268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863625, 32.617657, 48.697968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155030, 0.234301, 0.959723,
		0.853212, -0.521459, -0.010519,
		0.497992, 0.820478, -0.280751,
		36.013023, 32.863800, 48.613743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381062, 32.226830, 49.055607>,  <35.664429, 32.289467, 48.810268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381062, 32.226830, 49.055607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.319939, 32.616283, 48.987862>,  <36.283264, 32.849957, 48.947216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.319939, 32.616283, 48.987862>,  <36.381062, 32.226830, 49.055607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319939, 32.616283, 48.987862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175061, 0.195331, 0.964987,
		0.972628, 0.117805, -0.200293,
		-0.152804, 0.973636, -0.169361,
		36.274097, 32.908375, 48.937054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882961, 32.421749, 49.470917>,  <36.381062, 32.226830, 49.055607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882961, 32.421749, 49.470917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665665, 32.746521, 49.385448>,  <36.535286, 32.941383, 49.334167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665665, 32.746521, 49.385448>,  <36.882961, 32.421749, 49.470917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665665, 32.746521, 49.385448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169225, 0.355166, 0.919359,
		0.822343, 0.463279, -0.330341,
		-0.543245, 0.811930, -0.213669,
		36.502689, 32.990101, 49.321346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244690, 32.914761, 49.708637>,  <36.882961, 32.421749, 49.470917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244690, 32.914761, 49.708637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873646, 33.063908, 49.699520>,  <36.651020, 33.153397, 49.694050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873646, 33.063908, 49.699520>,  <37.244690, 32.914761, 49.708637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873646, 33.063908, 49.699520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066515, 0.224894, 0.972110,
		0.367591, 0.900219, -0.233414,
		-0.927606, 0.372864, -0.022791,
		36.595364, 33.175766, 49.692684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250748, 33.513390, 50.125744>,  <37.244690, 32.914761, 49.708637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250748, 33.513390, 50.125744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862526, 33.420654, 50.099564>,  <36.629593, 33.365013, 50.083855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862526, 33.420654, 50.099564>,  <37.250748, 33.513390, 50.125744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862526, 33.420654, 50.099564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082714, 0.065527, 0.994417,
		-0.226252, 0.970545, -0.082773,
		-0.970550, -0.231836, -0.065452,
		36.571362, 33.351105, 50.079929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944031, 34.074024, 50.482800>,  <37.250748, 33.513390, 50.125744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944031, 34.074024, 50.482800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698715, 33.758381, 50.496552>,  <36.551525, 33.568996, 50.504803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698715, 33.758381, 50.496552>,  <36.944031, 34.074024, 50.482800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698715, 33.758381, 50.496552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015320, 0.031636, 0.999382,
		-0.789707, 0.613441, -0.007313,
		-0.613293, -0.789107, 0.034381,
		36.514729, 33.521648, 50.506866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155010, 34.462704, 51.074951>,  <36.944031, 34.074024, 50.482800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155010, 34.462704, 51.074951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525558, 34.613338, 51.073051>,  <37.747887, 34.703720, 51.071911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525558, 34.613338, 51.073051>,  <37.155010, 34.462704, 51.074951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525558, 34.613338, 51.073051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016803, 0.028734, -0.999446,
		-0.376238, 0.925937, 0.032946,
		0.926371, 0.376583, -0.004747,
		37.803471, 34.726315, 51.071629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039173, 34.999641, 50.599010>,  <37.155010, 34.462704, 51.074951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039173, 34.999641, 50.599010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425415, 34.900608, 50.630802>,  <37.657158, 34.841187, 50.649876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425415, 34.900608, 50.630802>,  <37.039173, 34.999641, 50.599010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425415, 34.900608, 50.630802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098725, 0.066313, -0.992903,
		0.240558, 0.966594, 0.088475,
		0.965601, -0.247586, 0.079475,
		37.715096, 34.826332, 50.654644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413338, 35.416214, 50.149918>,  <37.039173, 34.999641, 50.599010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413338, 35.416214, 50.149918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710449, 35.157238, 50.218163>,  <37.888714, 35.001854, 50.259109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710449, 35.157238, 50.218163>,  <37.413338, 35.416214, 50.149918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710449, 35.157238, 50.218163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321013, 0.120752, -0.939345,
		0.587568, 0.752490, 0.297528,
		0.742775, -0.647440, 0.170608,
		37.933281, 34.963005, 50.269344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057652, 35.656399, 49.848701>,  <37.413338, 35.416214, 50.149918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057652, 35.656399, 49.848701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105145, 35.259754, 49.869118>,  <38.133640, 35.021767, 49.881367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105145, 35.259754, 49.869118>,  <38.057652, 35.656399, 49.848701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105145, 35.259754, 49.869118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437264, 0.006070, -0.899313,
		0.891461, 0.129096, 0.434318,
		0.118733, -0.991614, 0.051038,
		38.140766, 34.962269, 49.884430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616184, 35.584591, 49.539520>,  <38.057652, 35.656399, 49.848701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616184, 35.584591, 49.539520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523163, 35.195786, 49.526192>,  <38.467350, 34.962502, 49.518196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523163, 35.195786, 49.526192>,  <38.616184, 35.584591, 49.539520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523163, 35.195786, 49.526192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238916, -0.023883, -0.970747,
		0.942782, -0.233710, 0.237784,
		-0.232552, -0.972013, -0.033321,
		38.453396, 34.904182, 49.516197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240551, 35.129688, 49.347752>,  <38.616184, 35.584591, 49.539520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240551, 35.129688, 49.347752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928905, 34.896122, 49.256523>,  <38.741917, 34.755981, 49.201786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928905, 34.896122, 49.256523>,  <39.240551, 35.129688, 49.347752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928905, 34.896122, 49.256523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339537, -0.087245, -0.936538,
		0.526963, -0.807111, 0.266236,
		-0.779118, -0.583918, -0.228069,
		38.695171, 34.720947, 49.188103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478931, 34.435253, 49.141140>,  <39.240551, 35.129688, 49.347752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478931, 34.435253, 49.141140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.109917, 34.451153, 48.987598>,  <38.888508, 34.460693, 48.895473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.109917, 34.451153, 48.987598>,  <39.478931, 34.435253, 49.141140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109917, 34.451153, 48.987598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364100, -0.240003, -0.899905,
		-0.127892, -0.969958, 0.206941,
		-0.922537, 0.039744, -0.383856,
		38.833157, 34.463078, 48.872440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336128, 33.802750, 48.712925>,  <39.478931, 34.435253, 49.141140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336128, 33.802750, 48.712925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072403, 34.071232, 48.577412>,  <38.914165, 34.232323, 48.496101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072403, 34.071232, 48.577412>,  <39.336128, 33.802750, 48.712925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072403, 34.071232, 48.577412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187279, -0.289784, -0.938590,
		-0.728167, -0.682277, 0.065356,
		-0.659318, 0.671210, -0.338788,
		38.874607, 34.272594, 48.475777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925907, 33.397587, 48.190414>,  <39.336128, 33.802750, 48.712925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925907, 33.397587, 48.190414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834785, 33.779476, 48.113884>,  <38.780113, 34.008610, 48.067966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834785, 33.779476, 48.113884>,  <38.925907, 33.397587, 48.190414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834785, 33.779476, 48.113884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069382, -0.211906, -0.974824,
		-0.971233, -0.208791, 0.114513,
		-0.227800, 0.954726, -0.191324,
		38.766445, 34.065895, 48.056488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393570, 33.350166, 47.743328>,  <38.925907, 33.397587, 48.190414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393570, 33.350166, 47.743328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563061, 33.707386, 47.682774>,  <38.664757, 33.921719, 47.646439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563061, 33.707386, 47.682774>,  <38.393570, 33.350166, 47.743328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563061, 33.707386, 47.682774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264005, -0.038113, -0.963768,
		-0.866461, 0.448344, 0.219620,
		0.423729, 0.893048, -0.151389,
		38.690178, 33.975300, 47.637356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967323, 33.648392, 47.223427>,  <38.393570, 33.350166, 47.743328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967323, 33.648392, 47.223427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306305, 33.860012, 47.205879>,  <38.509693, 33.986984, 47.195351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306305, 33.860012, 47.205879>,  <37.967323, 33.648392, 47.223427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306305, 33.860012, 47.205879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088118, 0.058704, -0.994379,
		-0.523499, 0.846559, 0.096368,
		0.847458, 0.529048, -0.043866,
		38.560543, 34.018726, 47.192719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788845, 34.021763, 46.717068>,  <37.967323, 33.648392, 47.223427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788845, 34.021763, 46.717068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184860, 34.074150, 46.737720>,  <38.422470, 34.105583, 46.750114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184860, 34.074150, 46.737720>,  <37.788845, 34.021763, 46.717068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184860, 34.074150, 46.737720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020718, 0.227237, -0.973619,
		-0.139243, 0.964993, 0.222261,
		0.990041, 0.130965, 0.051634,
		38.481873, 34.113441, 46.753212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907169, 34.626339, 46.454559>,  <37.788845, 34.021763, 46.717068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907169, 34.626339, 46.454559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.250923, 34.423172, 46.430935>,  <38.457176, 34.301273, 46.416759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.250923, 34.423172, 46.430935>,  <37.907169, 34.626339, 46.454559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250923, 34.423172, 46.430935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023433, 0.154497, -0.987715,
		0.510800, 0.847439, 0.144674,
		0.859380, -0.507915, -0.059059,
		38.508736, 34.270798, 46.413216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487934, 35.058697, 46.164680>,  <37.907169, 34.626339, 46.454559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487934, 35.058697, 46.164680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620663, 34.689648, 46.086033>,  <38.700302, 34.468220, 46.038845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620663, 34.689648, 46.086033>,  <38.487934, 35.058697, 46.164680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620663, 34.689648, 46.086033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078515, 0.234720, -0.968887,
		0.940068, 0.306062, 0.150325,
		0.331823, -0.922623, -0.196622,
		38.720211, 34.412861, 46.027046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133869, 35.065853, 45.743336>,  <38.487934, 35.058697, 46.164680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133869, 35.065853, 45.743336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995953, 34.694729, 45.686371>,  <38.913204, 34.472054, 45.652191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995953, 34.694729, 45.686371>,  <39.133869, 35.065853, 45.743336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995953, 34.694729, 45.686371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135436, 0.100956, -0.985629,
		0.928857, -0.359124, 0.090851,
		-0.344791, -0.927813, -0.142412,
		38.892517, 34.416386, 45.643646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367561, 35.003208, 45.128025>,  <39.133869, 35.065853, 45.743336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.367561, 35.003208, 45.128025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120922, 34.688393, 45.135674>,  <38.972939, 34.499504, 45.140263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120922, 34.688393, 45.135674>,  <39.367561, 35.003208, 45.128025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120922, 34.688393, 45.135674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124565, -0.121512, -0.984743,
		0.777358, -0.604813, 0.172962,
		-0.616603, -0.787042, 0.019120,
		38.935940, 34.452278, 45.141411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633850, 34.484356, 44.657383>,  <39.367561, 35.003208, 45.128025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633850, 34.484356, 44.657383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242496, 34.405151, 44.681255>,  <39.007687, 34.357628, 44.695580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242496, 34.405151, 44.681255>,  <39.633850, 34.484356, 44.657383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242496, 34.405151, 44.681255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020638, -0.193675, -0.980848,
		0.205778, -0.960875, 0.185402,
		-0.978381, -0.198011, 0.059684,
		38.948982, 34.345749, 44.699162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619331, 34.021347, 44.094101>,  <39.633850, 34.484356, 44.657383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619331, 34.021347, 44.094101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237595, 34.089241, 44.192425>,  <39.008553, 34.129978, 44.251419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237595, 34.089241, 44.192425>,  <39.619331, 34.021347, 44.094101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237595, 34.089241, 44.192425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270285, -0.140260, -0.952509,
		-0.127199, -0.975457, 0.179733,
		-0.954341, 0.169737, 0.245810,
		38.951294, 34.140163, 44.266167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158829, 33.422176, 43.868839>,  <39.619331, 34.021347, 44.094101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158829, 33.422176, 43.868839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.953625, 33.765503, 43.873009>,  <38.830502, 33.971500, 43.875511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.953625, 33.765503, 43.873009>,  <39.158829, 33.422176, 43.868839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953625, 33.765503, 43.873009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305651, -0.171313, -0.936605,
		-0.802123, -0.483670, 0.350232,
		-0.513007, 0.858321, 0.010421,
		38.799721, 34.022999, 43.876137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625576, 33.193008, 43.462807>,  <39.158829, 33.422176, 43.868839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625576, 33.193008, 43.462807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607178, 33.592152, 43.481380>,  <38.596138, 33.831638, 43.492523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607178, 33.592152, 43.481380>,  <38.625576, 33.193008, 43.462807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607178, 33.592152, 43.481380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249452, 0.033537, -0.967806,
		-0.967294, -0.056102, 0.247376,
		-0.045999, 0.997862, 0.046435,
		38.593376, 33.891510, 43.495312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058552, 33.376446, 43.111359>,  <38.625576, 33.193008, 43.462807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058552, 33.376446, 43.111359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249496, 33.727570, 43.095524>,  <38.364063, 33.938244, 43.086021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249496, 33.727570, 43.095524>,  <38.058552, 33.376446, 43.111359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249496, 33.727570, 43.095524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342450, 0.144359, -0.928380,
		-0.809227, 0.456735, 0.369519,
		0.477366, 0.877812, -0.039590,
		38.392708, 33.990913, 43.083649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624821, 33.751453, 42.760078>,  <38.058552, 33.376446, 43.111359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624821, 33.751453, 42.760078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962605, 33.963825, 42.731792>,  <38.165276, 34.091248, 42.714821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962605, 33.963825, 42.731792>,  <37.624821, 33.751453, 42.760078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962605, 33.963825, 42.731792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256478, 0.284926, -0.923599,
		-0.470220, 0.798078, 0.376781,
		0.844459, 0.530932, -0.070712,
		38.215942, 34.123104, 42.710579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382755, 34.347538, 42.408653>,  <37.624821, 33.751453, 42.760078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382755, 34.347538, 42.408653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778847, 34.349342, 42.352913>,  <38.016502, 34.350426, 42.319469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778847, 34.349342, 42.352913>,  <37.382755, 34.347538, 42.408653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778847, 34.349342, 42.352913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135928, 0.253642, -0.957700,
		0.031022, 0.967288, 0.251778,
		0.990233, 0.004514, -0.139350,
		38.075916, 34.350697, 42.311108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475773, 34.910770, 42.071705>,  <37.382755, 34.347538, 42.408653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475773, 34.910770, 42.071705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787052, 34.676716, 41.980473>,  <37.973820, 34.536285, 41.925732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787052, 34.676716, 41.980473>,  <37.475773, 34.910770, 42.071705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787052, 34.676716, 41.980473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071473, 0.443337, -0.893501,
		0.623933, 0.679023, 0.386827,
		0.778203, -0.585133, -0.228080,
		38.020512, 34.501175, 41.912048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798477, 35.341831, 41.682243>,  <37.475773, 34.910770, 42.071705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798477, 35.341831, 41.682243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940224, 34.980412, 41.585899>,  <38.025272, 34.763557, 41.528091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940224, 34.980412, 41.585899>,  <37.798477, 35.341831, 41.682243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940224, 34.980412, 41.585899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154974, 0.310765, -0.937768,
		0.922175, 0.294987, 0.250153,
		0.354368, -0.903553, -0.240865,
		38.046535, 34.709347, 41.513641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260197, 35.551922, 41.161507>,  <37.798477, 35.341831, 41.682243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260197, 35.551922, 41.161507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229370, 35.154747, 41.125443>,  <38.210873, 34.916443, 41.103806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229370, 35.154747, 41.125443>,  <38.260197, 35.551922, 41.161507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229370, 35.154747, 41.125443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261857, 0.067098, -0.962771,
		0.962025, -0.097806, 0.254838,
		-0.077066, -0.992941, -0.090161,
		38.206249, 34.856865, 41.098392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901756, 35.344471, 40.890778>,  <38.260197, 35.551922, 41.161507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901756, 35.344471, 40.890778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624653, 35.068058, 40.808250>,  <38.458393, 34.902210, 40.758732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624653, 35.068058, 40.808250>,  <38.901756, 35.344471, 40.890778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624653, 35.068058, 40.808250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353219, -0.075694, -0.932473,
		0.628749, -0.718853, 0.296522,
		-0.692756, -0.691029, -0.206320,
		38.416824, 34.860748, 40.746353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286919, 34.728802, 40.573357>,  <38.901756, 35.344471, 40.890778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286919, 34.728802, 40.573357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900768, 34.703651, 40.472092>,  <38.669079, 34.688560, 40.411331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900768, 34.703651, 40.472092>,  <39.286919, 34.728802, 40.573357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900768, 34.703651, 40.472092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259676, -0.139546, -0.955560,
		0.024754, -0.988217, 0.151043,
		-0.965379, -0.062876, -0.253162,
		38.611156, 34.684788, 40.396141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284523, 34.267967, 40.062721>,  <39.286919, 34.728802, 40.573357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284523, 34.267967, 40.062721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.931820, 34.448074, 40.006496>,  <38.720196, 34.556137, 39.972763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.931820, 34.448074, 40.006496>,  <39.284523, 34.267967, 40.062721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931820, 34.448074, 40.006496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082090, -0.146959, -0.985730,
		-0.464498, -0.880718, 0.092621,
		-0.881761, 0.450266, -0.140560,
		38.667290, 34.583153, 39.964329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884270, 33.729431, 39.890076>,  <39.284523, 34.267967, 40.062721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884270, 33.729431, 39.890076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722927, 34.062447, 39.738190>,  <38.626122, 34.262257, 39.647057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722927, 34.062447, 39.738190>,  <38.884270, 33.729431, 39.890076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722927, 34.062447, 39.738190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133491, -0.356993, -0.924519,
		-0.905254, -0.423599, 0.032859,
		-0.403356, 0.832538, -0.379716,
		38.601921, 34.312206, 39.624275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405914, 33.593273, 39.357582>,  <38.884270, 33.729431, 39.890076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405914, 33.593273, 39.357582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483704, 33.972343, 39.256313>,  <38.530376, 34.199783, 39.195553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483704, 33.972343, 39.256313>,  <38.405914, 33.593273, 39.357582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483704, 33.972343, 39.256313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062704, -0.245562, -0.967351,
		-0.978902, 0.203998, 0.011668,
		0.194472, 0.947673, -0.253173,
		38.542046, 34.256645, 39.180363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964279, 33.745338, 38.823997>,  <38.405914, 33.593273, 39.357582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964279, 33.745338, 38.823997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.243004, 34.029778, 38.786469>,  <38.410236, 34.200439, 38.763950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.243004, 34.029778, 38.786469>,  <37.964279, 33.745338, 38.823997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243004, 34.029778, 38.786469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140330, 0.006881, -0.990081,
		-0.703395, 0.703063, 0.104583,
		0.696809, 0.711094, -0.093821,
		38.452045, 34.243107, 38.758324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739109, 34.136532, 38.238548>,  <37.964279, 33.745338, 38.823997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739109, 34.136532, 38.238548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110600, 34.274494, 38.292953>,  <38.333496, 34.357273, 38.325596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110600, 34.274494, 38.292953>,  <37.739109, 34.136532, 38.238548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110600, 34.274494, 38.292953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078298, 0.176133, -0.981248,
		-0.362394, 0.921964, 0.136574,
		0.928730, 0.344905, 0.136018,
		38.389217, 34.377964, 38.333759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904984, 34.785286, 37.861210>,  <37.739109, 34.136532, 38.238548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904984, 34.785286, 37.861210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280804, 34.679813, 37.948586>,  <38.506298, 34.616531, 38.001011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280804, 34.679813, 37.948586>,  <37.904984, 34.785286, 37.861210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280804, 34.679813, 37.948586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309795, 0.382898, -0.870297,
		0.145839, 0.885360, 0.441439,
		0.939552, -0.263679, 0.218438,
		38.562668, 34.600708, 38.014118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278645, 35.370285, 37.612644>,  <37.904984, 34.785286, 37.861210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278645, 35.370285, 37.612644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495907, 35.034771, 37.627705>,  <38.626263, 34.833462, 37.636742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495907, 35.034771, 37.627705>,  <38.278645, 35.370285, 37.612644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495907, 35.034771, 37.627705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213897, 0.094863, -0.972239,
		0.811931, 0.536130, 0.230939,
		0.543154, -0.838789, 0.037654,
		38.658852, 34.783134, 37.639000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961094, 35.513832, 37.217857>,  <38.278645, 35.370285, 37.612644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961094, 35.513832, 37.217857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938622, 35.114491, 37.222336>,  <38.925137, 34.874886, 37.225025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938622, 35.114491, 37.222336>,  <38.961094, 35.513832, 37.217857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938622, 35.114491, 37.222336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128764, -0.018370, -0.991505,
		0.990082, -0.054266, 0.129585,
		-0.056185, -0.998358, 0.011200,
		38.921764, 34.814983, 37.225697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601685, 35.341064, 36.816856>,  <38.961094, 35.513832, 37.217857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601685, 35.341064, 36.816856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325657, 35.051636, 36.823097>,  <39.160042, 34.877979, 36.826843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325657, 35.051636, 36.823097>,  <39.601685, 35.341064, 36.816856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325657, 35.051636, 36.823097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259345, -0.267352, -0.928043,
		0.675682, -0.636366, 0.372146,
		-0.690069, -0.723576, 0.015607,
		39.118637, 34.834564, 36.827778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947571, 34.811836, 36.534420>,  <39.601685, 35.341064, 36.816856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947571, 34.811836, 36.534420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.560272, 34.719543, 36.495922>,  <39.327892, 34.664165, 36.472824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.560272, 34.719543, 36.495922>,  <39.947571, 34.811836, 36.534420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560272, 34.719543, 36.495922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139970, -0.181333, -0.973410,
		0.207148, -0.955970, 0.207871,
		-0.968245, -0.230736, -0.096245,
		39.269798, 34.650322, 36.467049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842075, 34.178452, 36.185818>,  <39.947571, 34.811836, 36.534420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842075, 34.178452, 36.185818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.492592, 34.365990, 36.133945>,  <39.282902, 34.478512, 36.102821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.492592, 34.365990, 36.133945>,  <39.842075, 34.178452, 36.185818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492592, 34.365990, 36.133945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038400, -0.199283, -0.979189,
		-0.484932, -0.860506, 0.156112,
		-0.873708, 0.468846, -0.129682,
		39.230480, 34.506641, 36.095039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302410, 33.711090, 35.889904>,  <39.842075, 34.178452, 36.185818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302410, 33.711090, 35.889904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309414, 34.103207, 35.811188>,  <39.313614, 34.338474, 35.763958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309414, 34.103207, 35.811188>,  <39.302410, 33.711090, 35.889904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309414, 34.103207, 35.811188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378406, -0.188680, -0.906206,
		-0.925474, -0.058604, -0.374250,
		0.017506, 0.980288, -0.196795,
		39.314667, 34.397293, 35.752148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039524, 33.975182, 35.148449>,  <39.302410, 33.711090, 35.889904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039524, 33.975182, 35.148449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.293949, 34.270576, 35.237946>,  <39.446606, 34.447815, 35.291645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.293949, 34.270576, 35.237946>,  <39.039524, 33.975182, 35.148449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293949, 34.270576, 35.237946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534902, -0.212993, -0.817627,
		-0.556151, 0.639742, -0.530496,
		0.636062, 0.738487, 0.223743,
		39.484768, 34.492123, 35.305069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127235, 34.316315, 34.601723>,  <39.039524, 33.975182, 35.148449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127235, 34.316315, 34.601723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464134, 34.372478, 34.809921>,  <39.666271, 34.406178, 34.934841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464134, 34.372478, 34.809921>,  <39.127235, 34.316315, 34.601723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464134, 34.372478, 34.809921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538624, -0.259638, -0.801543,
		0.022598, 0.955445, -0.294304,
		0.842243, 0.140406, 0.520493,
		39.716808, 34.414600, 34.966068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619545, 34.792156, 34.249634>,  <39.127235, 34.316315, 34.601723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619545, 34.792156, 34.249634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.803421, 34.519840, 34.477741>,  <39.913746, 34.356449, 34.614605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.803421, 34.519840, 34.477741>,  <39.619545, 34.792156, 34.249634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803421, 34.519840, 34.477741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600922, -0.234352, -0.764180,
		0.653891, 0.693975, 0.301373,
		0.459694, -0.680793, 0.570265,
		39.941330, 34.315601, 34.648819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426960, 34.967411, 34.472202>,  <39.619545, 34.792156, 34.249634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426960, 34.967411, 34.472202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383217, 34.571682, 34.433670>,  <40.356972, 34.334244, 34.410549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383217, 34.571682, 34.433670>,  <40.426960, 34.967411, 34.472202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383217, 34.571682, 34.433670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711036, -0.010131, -0.703083,
		0.694601, -0.145382, 0.704552,
		-0.109353, -0.989324, -0.096335,
		40.350410, 34.274883, 34.404770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107311, 34.806793, 34.392445>,  <40.426960, 34.967411, 34.472202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.107311, 34.806793, 34.392445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.903122, 34.560204, 34.152653>,  <40.780609, 34.412251, 34.008778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.903122, 34.560204, 34.152653>,  <41.107311, 34.806793, 34.392445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903122, 34.560204, 34.152653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763475, -0.004174, -0.645824,
		0.395634, -0.787361, 0.472796,
		-0.510470, -0.616478, -0.599479,
		40.749981, 34.375259, 33.972809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.449615, 34.176960, 34.340927>,  <41.107311, 34.806793, 34.392445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.449615, 34.176960, 34.340927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.243824, 34.292236, 34.017876>,  <41.120350, 34.361401, 33.824047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.243824, 34.292236, 34.017876>,  <41.449615, 34.176960, 34.340927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.243824, 34.292236, 34.017876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835320, -0.044405, -0.547968,
		-0.193779, -0.956544, -0.217882,
		-0.514481, 0.288186, -0.807625,
		41.089481, 34.378693, 33.775589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612946, 34.102726, 33.574287>,  <41.449615, 34.176960, 34.340927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612946, 34.102726, 33.574287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.995071, 34.063663, 33.462688>,  <42.224346, 34.040226, 33.395729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.995071, 34.063663, 33.462688>,  <41.612946, 34.102726, 33.574287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.995071, 34.063663, 33.462688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070098, -0.991770, 0.107140,
		-0.287169, -0.082795, -0.954295,
		0.955312, -0.097661, -0.279002,
		42.281666, 34.034367, 33.378986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.676659, 33.559902, 33.049595>,  <41.612946, 34.102726, 33.574287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.676659, 33.559902, 33.049595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.004677, 33.584518, 33.277187>,  <42.201488, 33.599289, 33.413742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.004677, 33.584518, 33.277187>,  <41.676659, 33.559902, 33.049595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.004677, 33.584518, 33.277187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040327, -0.985516, 0.164715,
		0.570872, -0.158020, -0.805689,
		0.820048, 0.061540, 0.568977,
		42.250690, 33.602982, 33.447880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.152813, 33.055542, 32.748383>,  <41.676659, 33.559902, 33.049595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.152813, 33.055542, 32.748383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256161, 33.158501, 33.120831>,  <42.318169, 33.220276, 33.344299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256161, 33.158501, 33.120831>,  <42.152813, 33.055542, 32.748383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.256161, 33.158501, 33.120831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123714, -0.964731, 0.232355,
		0.958091, 0.055159, -0.281104,
		0.258374, 0.257393, 0.931124,
		42.333672, 33.235718, 33.400169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.726860, 32.465385, 32.934971>,  <42.152813, 33.055542, 32.748383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.726860, 32.465385, 32.934971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599682, 32.615147, 33.283394>,  <42.523376, 32.705002, 33.492447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599682, 32.615147, 33.283394>,  <42.726860, 32.465385, 32.934971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599682, 32.615147, 33.283394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093459, -0.901876, 0.421764,
		0.943492, 0.215505, 0.251753,
		-0.317943, 0.374403, 0.871054,
		42.504299, 32.727467, 33.544708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.201202, 32.259079, 33.392620>,  <42.726860, 32.465385, 32.934971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.201202, 32.259079, 33.392620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.859234, 32.334099, 33.586086>,  <42.654053, 32.379108, 33.702168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.859234, 32.334099, 33.586086>,  <43.201202, 32.259079, 33.392620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.859234, 32.334099, 33.586086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061498, -0.962427, 0.264486,
		0.515099, 0.196370, 0.834333,
		-0.854922, 0.187546, 0.483669,
		42.602757, 32.390362, 33.731186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.251598, 31.945734, 34.028805>,  <43.201202, 32.259079, 33.392620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.251598, 31.945734, 34.028805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.859619, 31.978521, 33.956161>,  <42.624432, 31.998194, 33.912575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.859619, 31.978521, 33.956161>,  <43.251598, 31.945734, 34.028805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.859619, 31.978521, 33.956161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120145, -0.970207, 0.210389,
		-0.158956, 0.227990, 0.960601,
		-0.979948, 0.081969, -0.181612,
		42.565636, 32.003113, 33.901676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.991348, 31.687574, 34.714951>,  <43.251598, 31.945734, 34.028805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.991348, 31.687574, 34.714951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.700554, 31.678423, 34.440441>,  <42.526077, 31.672932, 34.275734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.700554, 31.678423, 34.440441>,  <42.991348, 31.687574, 34.714951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.700554, 31.678423, 34.440441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261773, -0.914734, 0.307792,
		-0.634800, 0.403408, 0.659007,
		-0.726982, -0.022876, -0.686275,
		42.482460, 31.671560, 34.234558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.389622, 31.498631, 35.100513>,  <42.991348, 31.687574, 34.714951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.389622, 31.498631, 35.100513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287685, 31.415655, 34.722725>,  <42.226524, 31.365870, 34.496052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287685, 31.415655, 34.722725>,  <42.389622, 31.498631, 35.100513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.287685, 31.415655, 34.722725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371885, -0.880575, 0.293750,
		-0.892613, 0.426094, 0.147263,
		-0.254841, -0.207440, -0.944471,
		42.211235, 31.353422, 34.439384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703182, 31.309736, 35.181427>,  <42.389622, 31.498631, 35.100513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703182, 31.309736, 35.181427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.884167, 31.152136, 34.861416>,  <41.992760, 31.057575, 34.669411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.884167, 31.152136, 34.861416>,  <41.703182, 31.309736, 35.181427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.884167, 31.152136, 34.861416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000246, -0.897163, 0.441699,
		-0.891778, -0.199660, -0.406038,
		0.452472, -0.393998, -0.800021,
		42.019905, 31.033936, 34.621407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416283, 30.555664, 35.096703>,  <41.703182, 31.309736, 35.181427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416283, 30.555664, 35.096703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.710014, 30.545277, 34.825382>,  <41.886253, 30.539043, 34.662590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.710014, 30.545277, 34.825382>,  <41.416283, 30.555664, 35.096703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.710014, 30.545277, 34.825382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142638, -0.971054, 0.191596,
		-0.663643, -0.237445, -0.709365,
		0.734325, -0.025969, -0.678301,
		41.930313, 30.537485, 34.621891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.230206, 29.959166, 34.650768>,  <41.416283, 30.555664, 35.096703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.230206, 29.959166, 34.650768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.618214, 30.040852, 34.598083>,  <41.851021, 30.089863, 34.566471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.618214, 30.040852, 34.598083>,  <41.230206, 29.959166, 34.650768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.618214, 30.040852, 34.598083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214499, -0.974275, 0.069130,
		-0.114208, -0.095311, -0.988874,
		0.970024, 0.204217, -0.131714,
		41.909222, 30.102118, 34.558571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379047, 29.661798, 33.975903>,  <41.230206, 29.959166, 34.650768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.379047, 29.661798, 33.975903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.704144, 29.692162, 34.206966>,  <41.899200, 29.710379, 34.345604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.704144, 29.692162, 34.206966>,  <41.379047, 29.661798, 33.975903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704144, 29.692162, 34.206966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103988, -0.994456, -0.015629,
		0.573270, 0.072772, -0.816128,
		0.812741, 0.075908, 0.577660,
		41.947968, 29.714933, 34.380264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.773731, 29.106215, 33.777607>,  <41.379047, 29.661798, 33.975903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.773731, 29.106215, 33.777607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936962, 29.198648, 34.130894>,  <42.034901, 29.254108, 34.342865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936962, 29.198648, 34.130894>,  <41.773731, 29.106215, 33.777607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.936962, 29.198648, 34.130894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268080, -0.955117, 0.126032,
		0.872698, 0.185341, -0.451715,
		0.408082, 0.231084, 0.883215,
		42.059387, 29.267973, 34.395859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.307419, 28.796677, 33.682335>,  <41.773731, 29.106215, 33.777607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.307419, 28.796677, 33.682335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.317024, 28.873915, 34.074688>,  <42.322788, 28.920258, 34.310101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.317024, 28.873915, 34.074688>,  <42.307419, 28.796677, 33.682335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.317024, 28.873915, 34.074688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302557, -0.936559, 0.176963,
		0.952829, 0.292524, -0.080916,
		0.024016, 0.193097, 0.980886,
		42.324230, 28.931845, 34.368954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.983879, 28.694187, 33.913101>,  <42.307419, 28.796677, 33.682335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.983879, 28.694187, 33.913101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.749249, 28.645805, 34.233425>,  <42.608471, 28.616776, 34.425617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.749249, 28.645805, 34.233425>,  <42.983879, 28.694187, 33.913101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.749249, 28.645805, 34.233425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466199, -0.858966, 0.211745,
		0.662255, 0.497541, 0.560242,
		-0.586581, -0.120956, 0.800808,
		42.573273, 28.609518, 34.473667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.396072, 28.643812, 34.464478>,  <42.983879, 28.694187, 33.913101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.396072, 28.643812, 34.464478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.050030, 28.454849, 34.531910>,  <42.842403, 28.341471, 34.572369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.050030, 28.454849, 34.531910>,  <43.396072, 28.643812, 34.464478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.050030, 28.454849, 34.531910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484897, -0.873649, 0.040163,
		0.128304, 0.116487, 0.984870,
		-0.865109, -0.472407, 0.168577,
		42.790497, 28.313128, 34.582481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.690445, 28.067896, 34.786526>,  <43.396072, 28.643812, 34.464478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.690445, 28.067896, 34.786526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.310860, 27.976469, 34.699604>,  <43.083107, 27.921614, 34.647453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.310860, 27.976469, 34.699604>,  <43.690445, 28.067896, 34.786526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.310860, 27.976469, 34.699604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190565, -0.964585, 0.182373,
		-0.251291, 0.131656, 0.958916,
		-0.948967, -0.228565, -0.217303,
		43.026169, 27.907900, 34.634415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.494076, 27.615849, 35.325848>,  <43.690445, 28.067896, 34.786526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.494076, 27.615849, 35.325848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.252750, 27.557558, 35.012215>,  <43.107956, 27.522583, 34.824036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.252750, 27.557558, 35.012215>,  <43.494076, 27.615849, 35.325848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.252750, 27.557558, 35.012215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105965, -0.989094, 0.102296,
		-0.790434, -0.021369, 0.612174,
		-0.603312, -0.145728, -0.784078,
		43.071758, 27.513840, 34.776993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.993141, 27.040421, 35.496094>,  <43.494076, 27.615849, 35.325848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.993141, 27.040421, 35.496094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.005711, 27.051266, 35.096439>,  <43.013252, 27.057774, 34.856647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.005711, 27.051266, 35.096439>,  <42.993141, 27.040421, 35.496094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.005711, 27.051266, 35.096439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199940, -0.979598, -0.020296,
		-0.979304, -0.199129, -0.036204,
		0.031424, 0.027115, -0.999138,
		43.015137, 27.059401, 34.796700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.618378, 26.489676, 35.378056>,  <42.993141, 27.040421, 35.496094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.618378, 26.489676, 35.378056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.835808, 26.559149, 35.049580>,  <42.966267, 26.600832, 34.852493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.835808, 26.559149, 35.049580>,  <42.618378, 26.489676, 35.378056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.835808, 26.559149, 35.049580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058762, -0.983831, -0.169185,
		-0.837300, 0.043710, -0.544993,
		0.543576, 0.173683, -0.821194,
		42.998882, 26.611254, 34.803223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.378506, 26.051086, 34.863983>,  <42.618378, 26.489676, 35.378056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.378506, 26.051086, 34.863983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.722126, 26.175991, 34.701733>,  <42.928299, 26.250933, 34.604382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.722126, 26.175991, 34.701733>,  <42.378506, 26.051086, 34.863983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.722126, 26.175991, 34.701733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171916, -0.922362, -0.345967,
		-0.482167, 0.227468, -0.846034,
		0.859046, 0.312261, -0.405627,
		42.979839, 26.269669, 34.580044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.452675, 25.739328, 34.203224>,  <42.378506, 26.051086, 34.863983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.452675, 25.739328, 34.203224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.812389, 25.836555, 34.348667>,  <43.028217, 25.894892, 34.435932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.812389, 25.836555, 34.348667>,  <42.452675, 25.739328, 34.203224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.812389, 25.836555, 34.348667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346587, -0.903127, -0.253456,
		0.266773, 0.353949, -0.896411,
		0.899283, 0.243069, 0.363604,
		43.082172, 25.909475, 34.457748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.845154, 25.823643, 33.685734>,  <42.452675, 25.739328, 34.203224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.845154, 25.823643, 33.685734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.060608, 25.733080, 34.010353>,  <43.189880, 25.678741, 34.205124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.060608, 25.733080, 34.010353>,  <42.845154, 25.823643, 33.685734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.060608, 25.733080, 34.010353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256647, -0.873352, -0.413992,
		0.802496, 0.431273, -0.412314,
		0.538639, -0.226408, 0.811547,
		43.222198, 25.665157, 34.253819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.522160, 25.757158, 33.348972>,  <42.845154, 25.823643, 33.685734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.522160, 25.757158, 33.348972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.871670, 25.947016, 33.306568>,  <44.081375, 26.060930, 33.281124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.871670, 25.947016, 33.306568>,  <43.522160, 25.757158, 33.348972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.871670, 25.947016, 33.306568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135737, -0.028692, 0.990329,
		0.467012, -0.879710, -0.089497,
		0.873771, 0.474644, -0.106009,
		44.133801, 26.089409, 33.274765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.115723, 25.409121, 33.743389>,  <43.522160, 25.757158, 33.348972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.115723, 25.409121, 33.743389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.233593, 25.789400, 33.704735>,  <44.304314, 26.017569, 33.681541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.233593, 25.789400, 33.704735>,  <44.115723, 25.409121, 33.743389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.233593, 25.789400, 33.704735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385760, -0.025825, 0.922238,
		0.874276, -0.309036, -0.374352,
		0.294672, 0.950700, -0.096636,
		44.321995, 26.074610, 33.675743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.887653, 25.595655, 33.801781>,  <44.115723, 25.409121, 33.743389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.887653, 25.595655, 33.801781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.737637, 25.954281, 33.896030>,  <44.647629, 26.169456, 33.952579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.737637, 25.954281, 33.896030>,  <44.887653, 25.595655, 33.801781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.737637, 25.954281, 33.896030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546785, 0.008695, 0.837228,
		0.748581, 0.442827, -0.493489,
		-0.375038, 0.896565, 0.235622,
		44.625126, 26.223251, 33.966717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.421936, 26.124031, 33.941547>,  <44.887653, 25.595655, 33.801781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.421936, 26.124031, 33.941547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.085335, 26.255459, 34.113091>,  <44.883373, 26.334316, 34.216015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.085335, 26.255459, 34.113091>,  <45.421936, 26.124031, 33.941547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.085335, 26.255459, 34.113091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458966, 0.016017, 0.888310,
		0.285004, 0.944343, -0.164281,
		-0.841501, 0.328571, 0.428856,
		44.832886, 26.354031, 34.241749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.503128, 25.571447, 33.450932>,  <45.421936, 26.124031, 33.941547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.503128, 25.571447, 33.450932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.795731, 25.727261, 33.227085>,  <45.971291, 25.820749, 33.092777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.795731, 25.727261, 33.227085>,  <45.503128, 25.571447, 33.450932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.795731, 25.727261, 33.227085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180598, -0.680741, -0.709913,
		-0.657487, 0.620368, -0.427615,
		0.731502, 0.389532, -0.559616,
		46.015182, 25.844120, 33.059200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.495789, 25.566135, 32.661388>,  <45.503128, 25.571447, 33.450932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.495789, 25.566135, 32.661388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.873268, 25.483202, 32.764492>,  <46.099758, 25.433441, 32.826355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.873268, 25.483202, 32.764492>,  <45.495789, 25.566135, 32.661388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.873268, 25.483202, 32.764492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240835, -0.103531, -0.965028,
		0.226769, 0.972776, -0.047770,
		0.943703, -0.207334, 0.257757,
		46.156380, 25.421001, 32.841820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.033154, 25.910692, 32.279041>,  <45.495789, 25.566135, 32.661388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.033154, 25.910692, 32.279041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.176819, 25.560535, 32.408466>,  <46.263020, 25.350441, 32.486122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.176819, 25.560535, 32.408466>,  <46.033154, 25.910692, 32.279041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.176819, 25.560535, 32.408466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246390, -0.245456, -0.937573,
		0.900162, 0.416467, 0.127528,
		0.359166, -0.875390, 0.323563,
		46.284569, 25.297918, 32.505535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.666576, 25.888994, 32.066624>,  <46.033154, 25.910692, 32.279041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.666576, 25.888994, 32.066624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.564545, 25.505257, 32.114948>,  <46.503326, 25.275015, 32.143944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.564545, 25.505257, 32.114948>,  <46.666576, 25.888994, 32.066624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.564545, 25.505257, 32.114948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551007, -0.246887, -0.797144,
		0.794562, -0.136765, 0.591580,
		-0.255075, -0.959345, 0.120808,
		46.488022, 25.217453, 32.151192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.574543, 26.425938, 31.545166>,  <46.666576, 25.888994, 32.066624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.574543, 26.425938, 31.545166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.277882, 26.671007, 31.435926>,  <46.099884, 26.818048, 31.370382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.277882, 26.671007, 31.435926>,  <46.574543, 26.425938, 31.545166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.277882, 26.671007, 31.435926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500385, 0.776463, 0.383042,
		0.446731, 0.147429, -0.882438,
		-0.741651, 0.612675, -0.273098,
		46.055386, 26.854809, 31.353996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.830803, 27.069435, 31.244688>,  <46.574543, 26.425938, 31.545166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.830803, 27.069435, 31.244688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.457104, 27.161104, 31.353979>,  <46.232883, 27.216105, 31.419554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.457104, 27.161104, 31.353979>,  <46.830803, 27.069435, 31.244688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.457104, 27.161104, 31.353979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326293, 0.858495, 0.395626,
		-0.143900, 0.458767, -0.876827,
		-0.934251, 0.229172, 0.273230,
		46.176826, 27.229856, 31.435947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.711285, 27.749544, 31.058041>,  <46.830803, 27.069435, 31.244688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.711285, 27.749544, 31.058041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.429764, 27.695053, 31.336927>,  <46.260853, 27.662359, 31.504259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.429764, 27.695053, 31.336927>,  <46.711285, 27.749544, 31.058041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.429764, 27.695053, 31.336927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171733, 0.919707, 0.353055,
		-0.689329, 0.368214, -0.623894,
		-0.703799, -0.136228, 0.697215,
		46.218624, 27.654184, 31.546091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.182808, 28.256155, 30.983616>,  <46.711285, 27.749544, 31.058041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.182808, 28.256155, 30.983616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.219326, 28.138250, 31.364096>,  <46.241238, 28.067509, 31.592384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.219326, 28.138250, 31.364096>,  <46.182808, 28.256155, 30.983616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.219326, 28.138250, 31.364096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170340, 0.945733, 0.276718,
		-0.981147, 0.136766, 0.136547,
		0.091291, -0.294760, 0.951200,
		46.246712, 28.049822, 31.649456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.713177, 28.769247, 31.377272>,  <46.182808, 28.256155, 30.983616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.713177, 28.769247, 31.377272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.958881, 28.611368, 31.650591>,  <46.106304, 28.516642, 31.814583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.958881, 28.611368, 31.650591>,  <45.713177, 28.769247, 31.377272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.958881, 28.611368, 31.650591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122513, 0.903120, 0.411539,
		-0.779531, -0.169081, 0.603110,
		0.614265, -0.394697, 0.683296,
		46.143162, 28.492960, 31.855579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.479473, 29.022127, 31.942984>,  <45.713177, 28.769247, 31.377272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.479473, 29.022127, 31.942984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.844322, 28.912085, 32.064541>,  <46.063232, 28.846060, 32.137474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.844322, 28.912085, 32.064541>,  <45.479473, 29.022127, 31.942984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.844322, 28.912085, 32.064541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131134, 0.898217, 0.419536,
		-0.388378, -0.342817, 0.855359,
		0.912122, -0.275106, 0.303893,
		46.117958, 28.829554, 32.155708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.490795, 29.198565, 32.617275>,  <45.479473, 29.022127, 31.942984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.490795, 29.198565, 32.617275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.879543, 29.179182, 32.525089>,  <46.112793, 29.167553, 32.469780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.879543, 29.179182, 32.525089>,  <45.490795, 29.198565, 32.617275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.879543, 29.179182, 32.525089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170061, 0.821368, 0.544458,
		0.162913, -0.568337, 0.806506,
		0.971874, -0.048456, -0.230463,
		46.171104, 29.164646, 32.455952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.914715, 29.353662, 33.243038>,  <45.490795, 29.198565, 32.617275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.914715, 29.353662, 33.243038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.168934, 29.397472, 32.937336>,  <46.321465, 29.423758, 32.753914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.168934, 29.397472, 32.937336>,  <45.914715, 29.353662, 33.243038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.168934, 29.397472, 32.937336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201905, 0.931862, 0.301444,
		0.745196, -0.345888, 0.570126,
		0.635545, 0.109524, -0.764257,
		46.359596, 29.430330, 32.708057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.464417, 29.720371, 33.504753>,  <45.914715, 29.353662, 33.243038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.464417, 29.720371, 33.504753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.501961, 29.785570, 33.111893>,  <46.524487, 29.824690, 32.876175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.501961, 29.785570, 33.111893>,  <46.464417, 29.720371, 33.504753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.501961, 29.785570, 33.111893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291770, 0.938689, 0.183667,
		0.951872, -0.303801, 0.040547,
		0.093859, 0.162997, -0.982152,
		46.530117, 29.834469, 32.817245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.091068, 30.177210, 33.490505>,  <46.464417, 29.720371, 33.504753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.091068, 30.177210, 33.490505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.868584, 30.221754, 33.161087>,  <46.735092, 30.248480, 32.963436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.868584, 30.221754, 33.161087>,  <47.091068, 30.177210, 33.490505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.868584, 30.221754, 33.161087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029017, 0.992979, 0.114674,
		0.830533, 0.039887, -0.555539,
		-0.556212, 0.111361, -0.823545,
		46.701721, 30.255163, 32.914024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.366959, 30.709097, 33.094353>,  <47.091068, 30.177210, 33.490505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.366959, 30.709097, 33.094353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.984795, 30.719957, 32.976738>,  <46.755497, 30.726473, 32.906170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.984795, 30.719957, 32.976738>,  <47.366959, 30.709097, 33.094353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.984795, 30.719957, 32.976738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023660, 0.985524, 0.167875,
		0.294343, 0.167346, -0.940934,
		-0.955407, 0.027151, -0.294041,
		46.698174, 30.728102, 32.888527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.305607, 31.394598, 32.702717>,  <47.366959, 30.709097, 33.094353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.305607, 31.394598, 32.702717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.930649, 31.300064, 32.805038>,  <46.705673, 31.243343, 32.866432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.930649, 31.300064, 32.805038>,  <47.305607, 31.394598, 32.702717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.930649, 31.300064, 32.805038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124765, 0.913642, 0.386900,
		-0.325147, 0.330764, -0.885931,
		-0.937397, -0.236333, 0.255801,
		46.649429, 31.229164, 32.881779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.882267, 31.878939, 32.246639>,  <47.305607, 31.394598, 32.702717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.882267, 31.878939, 32.246639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.649616, 31.725681, 32.533669>,  <46.510025, 31.633726, 32.705887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.649616, 31.725681, 32.533669>,  <46.882267, 31.878939, 32.246639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.649616, 31.725681, 32.533669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317815, 0.919049, 0.233117,
		-0.748805, -0.092471, -0.656308,
		-0.581623, -0.383143, 0.717577,
		46.475128, 31.610739, 32.748943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.263672, 32.188160, 32.178814>,  <46.882267, 31.878939, 32.246639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.263672, 32.188160, 32.178814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.240528, 32.058247, 32.556423>,  <46.226643, 31.980299, 32.782990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.240528, 32.058247, 32.556423>,  <46.263672, 32.188160, 32.178814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.240528, 32.058247, 32.556423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579160, 0.781134, 0.233244,
		-0.813158, -0.533243, -0.233294,
		-0.057859, -0.324779, 0.944019,
		46.223171, 31.960814, 32.839630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.648262, 32.470440, 32.388210>,  <46.263672, 32.188160, 32.178814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.648262, 32.470440, 32.388210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.800716, 32.375160, 32.745533>,  <45.892189, 32.317993, 32.959927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.800716, 32.375160, 32.745533>,  <45.648262, 32.470440, 32.388210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.800716, 32.375160, 32.745533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486405, 0.770038, 0.412858,
		-0.786222, -0.591864, 0.177629,
		0.381136, -0.238199, 0.893307,
		45.915058, 32.303699, 33.013523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.036465, 32.385891, 32.891300>,  <45.648262, 32.470440, 32.388210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.036465, 32.385891, 32.891300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.369827, 32.477230, 33.092613>,  <45.569843, 32.532036, 33.213402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.369827, 32.477230, 33.092613>,  <45.036465, 32.385891, 32.891300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.369827, 32.477230, 33.092613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502492, 0.692205, 0.518029,
		-0.230082, -0.684623, 0.691631,
		0.833405, 0.228350, 0.503281,
		45.619850, 32.545734, 33.243599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.807655, 32.523582, 33.602623>,  <45.036465, 32.385891, 32.891300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.807655, 32.523582, 33.602623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.174671, 32.678532, 33.638557>,  <45.394878, 32.771500, 33.660118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.174671, 32.678532, 33.638557>,  <44.807655, 32.523582, 33.602623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.174671, 32.678532, 33.638557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374877, 0.767268, 0.520353,
		0.132646, -0.511118, 0.849213,
		0.917536, 0.387373, 0.089832,
		45.449932, 32.794743, 33.665508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.870525, 32.685520, 34.274803>,  <44.807655, 32.523582, 33.602623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.870525, 32.685520, 34.274803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.148376, 32.910095, 34.094898>,  <45.315086, 33.044842, 33.986958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.148376, 32.910095, 34.094898>,  <44.870525, 32.685520, 34.274803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.148376, 32.910095, 34.094898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360586, 0.812738, 0.457640,
		0.622471, -0.155713, 0.766997,
		0.694628, 0.561436, -0.449757,
		45.356766, 33.078526, 33.959972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.202682, 33.116344, 34.841705>,  <44.870525, 32.685520, 34.274803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.202682, 33.116344, 34.841705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.235096, 33.297874, 34.486748>,  <45.254543, 33.406792, 34.273773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.235096, 33.297874, 34.486748>,  <45.202682, 33.116344, 34.841705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.235096, 33.297874, 34.486748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309659, 0.857731, 0.410377,
		0.947389, 0.241535, 0.210037,
		0.081035, 0.453826, -0.887398,
		45.259407, 33.434021, 34.220528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.522015, 33.769802, 35.002640>,  <45.202682, 33.116344, 34.841705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.522015, 33.769802, 35.002640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.356060, 33.793579, 34.639469>,  <45.256489, 33.807846, 34.421566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.356060, 33.793579, 34.639469>,  <45.522015, 33.769802, 35.002640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.356060, 33.793579, 34.639469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367632, 0.901831, 0.227040,
		0.832296, 0.427980, -0.352303,
		-0.414886, 0.059446, -0.907929,
		45.231594, 33.811413, 34.367092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.707172, 34.475891, 34.697876>,  <45.522015, 33.769802, 35.002640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.707172, 34.475891, 34.697876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.398182, 34.346222, 34.479446>,  <45.212788, 34.268421, 34.348389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.398182, 34.346222, 34.479446>,  <45.707172, 34.475891, 34.697876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.398182, 34.346222, 34.479446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267081, 0.945988, -0.183775,
		0.576154, 0.003884, -0.817332,
		-0.772473, -0.324177, -0.546072,
		45.166439, 34.248970, 34.315624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.609238, 35.126423, 34.198090>,  <45.707172, 34.475891, 34.697876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.609238, 35.126423, 34.198090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.273373, 34.913437, 34.240887>,  <45.071854, 34.785645, 34.266567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.273373, 34.913437, 34.240887>,  <45.609238, 35.126423, 34.198090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.273373, 34.913437, 34.240887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538802, 0.841440, -0.040878,
		-0.068265, -0.091973, -0.993419,
		-0.839662, -0.532465, 0.106996,
		45.021473, 34.753696, 34.272987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.955410, 35.146881, 34.857376>,  <45.609238, 35.126423, 34.198090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.955410, 35.146881, 34.857376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.911537, 34.835442, 35.104523>,  <45.885212, 34.648579, 35.252811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.911537, 34.835442, 35.104523>,  <45.955410, 35.146881, 34.857376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.911537, 34.835442, 35.104523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365817, -0.609608, -0.703247,
		0.924201, 0.148893, 0.351686,
		-0.109682, -0.778594, 0.617868,
		45.878632, 34.601864, 35.289883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.577663, 35.572704, 35.153542>,  <45.955410, 35.146881, 34.857376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.577663, 35.572704, 35.153542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.877071, 35.496174, 34.899574>,  <47.056717, 35.450256, 34.747196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.877071, 35.496174, 34.899574>,  <46.577663, 35.572704, 35.153542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.877071, 35.496174, 34.899574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662988, 0.234796, 0.710857,
		0.013071, -0.953030, 0.302595,
		0.748516, -0.191325, -0.634916,
		47.101627, 35.438778, 34.709099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.959469, 35.003254, 35.374271>,  <46.577663, 35.572704, 35.153542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.959469, 35.003254, 35.374271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.191628, 35.237377, 35.147800>,  <47.330925, 35.377850, 35.011917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.191628, 35.237377, 35.147800>,  <46.959469, 35.003254, 35.374271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.191628, 35.237377, 35.147800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636326, 0.107882, 0.763839,
		0.508160, -0.803603, -0.309832,
		0.580398, 0.585307, -0.566174,
		47.365746, 35.412968, 34.977947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.668583, 34.769405, 35.197704>,  <46.959469, 35.003254, 35.374271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.668583, 34.769405, 35.197704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.673988, 35.168457, 35.224701>,  <47.677231, 35.407887, 35.240898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.673988, 35.168457, 35.224701>,  <47.668583, 34.769405, 35.197704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.673988, 35.168457, 35.224701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752798, -0.054576, 0.655986,
		0.658113, 0.041938, -0.751750,
		0.013517, 0.997629, 0.067488,
		47.678043, 35.467747, 35.244946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.352615, 37.885239, 45.162533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.966125, 37.863842, 45.263374>,  <34.734234, 37.851002, 45.323879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.966125, 37.863842, 45.263374>,  <35.352615, 37.885239, 45.162533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966125, 37.863842, 45.263374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246362, -0.095464, -0.964465,
		0.075660, -0.993995, 0.079060,
		-0.966220, -0.053494, 0.252105,
		34.676258, 37.847794, 45.339005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012634, 37.303108, 44.858089>,  <35.352615, 37.885239, 45.162533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012634, 37.303108, 44.858089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.702099, 37.541538, 44.940063>,  <34.515778, 37.684597, 44.989246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.702099, 37.541538, 44.940063>,  <35.012634, 37.303108, 44.858089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702099, 37.541538, 44.940063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207366, 0.065496, -0.976068,
		-0.595230, -0.800255, 0.072758,
		-0.776338, 0.596072, 0.204931,
		34.469196, 37.720360, 45.001541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483841, 36.918373, 44.497837>,  <35.012634, 37.303108, 44.858089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483841, 36.918373, 44.497837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.350288, 37.290852, 44.556358>,  <34.270157, 37.514339, 44.591469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.350288, 37.290852, 44.556358>,  <34.483841, 36.918373, 44.497837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350288, 37.290852, 44.556358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422866, -0.009252, -0.906145,
		-0.842443, -0.364408, 0.396859,
		-0.333878, 0.931193, 0.146301,
		34.250126, 37.570210, 44.600250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860905, 36.922123, 44.227345>,  <34.483841, 36.918373, 44.497837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860905, 36.922123, 44.227345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.947670, 37.312527, 44.219803>,  <33.999729, 37.546768, 44.215279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.947670, 37.312527, 44.219803>,  <33.860905, 36.922123, 44.227345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947670, 37.312527, 44.219803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342799, 0.058076, -0.937612,
		-0.914023, 0.209842, 0.347172,
		0.216913, 0.976009, -0.018851,
		34.012745, 37.605328, 44.214149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346817, 37.098194, 43.896374>,  <33.860905, 36.922123, 44.227345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346817, 37.098194, 43.896374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.607578, 37.401237, 43.883369>,  <33.764034, 37.583061, 43.875568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.607578, 37.401237, 43.883369>,  <33.346817, 37.098194, 43.896374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607578, 37.401237, 43.883369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151673, 0.088269, -0.984481,
		-0.742980, 0.646716, 0.172451,
		0.651902, 0.757606, -0.032508,
		33.803150, 37.628521, 43.873615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998016, 37.458225, 43.467400>,  <33.346817, 37.098194, 43.896374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998016, 37.458225, 43.467400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.374958, 37.591740, 43.458004>,  <33.601124, 37.671848, 43.452366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.374958, 37.591740, 43.458004>,  <32.998016, 37.458225, 43.467400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374958, 37.591740, 43.458004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108733, 0.239088, -0.964891,
		-0.316454, 0.911824, 0.261600,
		0.942356, 0.333788, -0.023485,
		33.657665, 37.691875, 43.450958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056782, 38.156525, 43.181908>,  <32.998016, 37.458225, 43.467400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056782, 38.156525, 43.181908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.427399, 38.018532, 43.121887>,  <33.649769, 37.935738, 43.085876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.427399, 38.018532, 43.121887>,  <33.056782, 38.156525, 43.181908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427399, 38.018532, 43.121887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088666, 0.187371, -0.978279,
		0.365604, 0.919717, 0.143018,
		0.926538, -0.344982, -0.150051,
		33.705360, 37.915039, 43.076870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496525, 38.633266, 42.757160>,  <33.056782, 38.156525, 43.181908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496525, 38.633266, 42.757160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.657734, 38.273289, 42.690624>,  <33.754459, 38.057301, 42.650703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.657734, 38.273289, 42.690624>,  <33.496525, 38.633266, 42.757160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657734, 38.273289, 42.690624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021060, 0.172585, -0.984770,
		0.914949, 0.400384, 0.050602,
		0.403019, -0.899949, -0.166338,
		33.778641, 38.003304, 42.640724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859844, 38.765148, 42.158199>,  <33.496525, 38.633266, 42.757160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859844, 38.765148, 42.158199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.855713, 38.367970, 42.205429>,  <33.853233, 38.129662, 42.233768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.855713, 38.367970, 42.205429>,  <33.859844, 38.765148, 42.158199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855713, 38.367970, 42.205429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073412, -0.117011, -0.990413,
		0.997248, -0.018900, -0.071686,
		-0.010331, -0.992951, 0.118076,
		33.852615, 38.070084, 42.240852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373051, 38.596489, 41.729073>,  <33.859844, 38.765148, 42.158199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373051, 38.596489, 41.729073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.184185, 38.251434, 41.801640>,  <34.070866, 38.044399, 41.845181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.184185, 38.251434, 41.801640>,  <34.373051, 38.596489, 41.729073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184185, 38.251434, 41.801640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199925, -0.305235, -0.931054,
		0.858541, -0.403339, 0.316584,
		-0.472163, -0.862641, 0.181419,
		34.042538, 37.992641, 41.856064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821972, 37.990314, 41.651451>,  <34.373051, 38.596489, 41.729073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821972, 37.990314, 41.651451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.447674, 37.856346, 41.607269>,  <34.223095, 37.775963, 41.580761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.447674, 37.856346, 41.607269>,  <34.821972, 37.990314, 41.651451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447674, 37.856346, 41.607269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182647, -0.192332, -0.964183,
		0.301686, -0.922407, 0.241147,
		-0.935749, -0.334925, -0.110451,
		34.166950, 37.755867, 41.574135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897343, 37.295422, 41.490211>,  <34.821972, 37.990314, 41.651451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897343, 37.295422, 41.490211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.531708, 37.400410, 41.366562>,  <34.312328, 37.463402, 41.292374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.531708, 37.400410, 41.366562>,  <34.897343, 37.295422, 41.490211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531708, 37.400410, 41.366562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191047, -0.393656, -0.899186,
		-0.357696, -0.880991, 0.309691,
		-0.914087, 0.262470, -0.309120,
		34.257481, 37.479153, 41.273827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682945, 36.727997, 41.111958>,  <34.897343, 37.295422, 41.490211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682945, 36.727997, 41.111958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.462143, 37.038677, 40.990612>,  <34.329662, 37.225086, 40.917805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.462143, 37.038677, 40.990612>,  <34.682945, 36.727997, 41.111958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462143, 37.038677, 40.990612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162471, -0.256657, -0.952749,
		-0.817862, -0.575206, 0.015484,
		-0.552001, 0.776701, -0.303365,
		34.296543, 37.271687, 40.899601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385361, 36.511425, 40.481113>,  <34.682945, 36.727997, 41.111958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385361, 36.511425, 40.481113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.313763, 36.904377, 40.459610>,  <34.270802, 37.140148, 40.446709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.313763, 36.904377, 40.459610>,  <34.385361, 36.511425, 40.481113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313763, 36.904377, 40.459610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104656, -0.035316, -0.993881,
		-0.978267, -0.183529, -0.096491,
		-0.178998, 0.982380, -0.053756,
		34.260063, 37.199089, 40.443481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980759, 36.527901, 39.882885>,  <34.385361, 36.511425, 40.481113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980759, 36.527901, 39.882885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.112114, 36.898136, 39.958199>,  <34.190929, 37.120277, 40.003387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.112114, 36.898136, 39.958199>,  <33.980759, 36.527901, 39.882885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112114, 36.898136, 39.958199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024015, 0.191088, -0.981279,
		-0.944236, 0.326766, 0.040524,
		0.328392, 0.925586, 0.188280,
		34.210632, 37.175812, 40.014683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684135, 36.916981, 39.492348>,  <33.980759, 36.527901, 39.882885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684135, 36.916981, 39.492348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.007618, 37.137871, 39.573380>,  <34.201706, 37.270405, 39.621998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.007618, 37.137871, 39.573380>,  <33.684135, 36.916981, 39.492348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007618, 37.137871, 39.573380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183023, 0.091068, -0.978882,
		-0.559012, 0.828706, -0.027422,
		0.808707, 0.552226, 0.202580,
		34.250229, 37.303539, 39.634155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675323, 37.395500, 39.043961>,  <33.684135, 36.916981, 39.492348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675323, 37.395500, 39.043961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.053902, 37.440159, 39.165138>,  <34.281048, 37.466953, 39.237846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.053902, 37.440159, 39.165138>,  <33.675323, 37.395500, 39.043961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053902, 37.440159, 39.165138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282668, 0.166861, -0.944593,
		-0.156006, 0.979639, 0.126368,
		0.946446, 0.111642, 0.302944,
		34.337837, 37.473652, 39.256023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943817, 37.915905, 38.593437>,  <33.675323, 37.395500, 39.043961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943817, 37.915905, 38.593437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.253162, 37.687054, 38.702671>,  <34.438770, 37.549744, 38.768211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.253162, 37.687054, 38.702671>,  <33.943817, 37.915905, 38.593437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253162, 37.687054, 38.702671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342823, 0.015080, -0.939279,
		0.533274, 0.820022, 0.207803,
		0.773363, -0.572133, 0.273081,
		34.485172, 37.515415, 38.784595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638199, 38.173447, 38.244987>,  <33.943817, 37.915905, 38.593437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638199, 38.173447, 38.244987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.746250, 37.795124, 38.317074>,  <34.811081, 37.568130, 38.360325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.746250, 37.795124, 38.317074>,  <34.638199, 38.173447, 38.244987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746250, 37.795124, 38.317074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372700, -0.069869, -0.925318,
		0.887764, 0.317123, 0.333629,
		0.270129, -0.945807, 0.180219,
		34.827290, 37.511383, 38.371140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300850, 38.088814, 38.025318>,  <34.638199, 38.173447, 38.244987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300850, 38.088814, 38.025318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.135597, 37.724567, 38.029202>,  <35.036446, 37.506020, 38.031532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.135597, 37.724567, 38.029202>,  <35.300850, 38.088814, 38.025318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135597, 37.724567, 38.029202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233831, -0.116379, -0.965287,
		0.880138, -0.396522, 0.261012,
		-0.413134, -0.910619, 0.009711,
		35.011658, 37.451382, 38.032116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823112, 37.755707, 37.708725>,  <35.300850, 38.088814, 38.025318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823112, 37.755707, 37.708725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.520348, 37.494347, 37.713718>,  <35.338688, 37.337528, 37.716713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.520348, 37.494347, 37.713718>,  <35.823112, 37.755707, 37.708725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520348, 37.494347, 37.713718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176614, -0.222909, -0.958707,
		0.629204, -0.723448, 0.284122,
		-0.756908, -0.653402, 0.012484,
		35.293274, 37.298325, 37.717464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092625, 37.119591, 37.462738>,  <35.823112, 37.755707, 37.708725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092625, 37.119591, 37.462738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.700653, 37.057156, 37.413151>,  <35.465469, 37.019695, 37.383396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.700653, 37.057156, 37.413151>,  <36.092625, 37.119591, 37.462738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700653, 37.057156, 37.413151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162228, -0.263142, -0.951020,
		0.115820, -0.952047, 0.283183,
		-0.979932, -0.156087, -0.123972,
		35.406673, 37.010330, 37.375957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634987, 36.731121, 37.119820>,  <36.092625, 37.119591, 37.462738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634987, 36.731121, 37.119820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.012478, 36.827023, 37.028702>,  <37.238972, 36.884563, 36.974033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.012478, 36.827023, 37.028702>,  <36.634987, 36.731121, 37.119820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012478, 36.827023, 37.028702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209576, 0.099264, 0.972741,
		0.255828, -0.965746, 0.043433,
		0.943732, 0.239752, -0.227791,
		37.295597, 36.898949, 36.960365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170090, 36.256741, 37.446423>,  <36.634987, 36.731121, 37.119820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170090, 36.256741, 37.446423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.331024, 36.619072, 37.393345>,  <37.427586, 36.836472, 37.361500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.331024, 36.619072, 37.393345>,  <37.170090, 36.256741, 37.446423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331024, 36.619072, 37.393345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067802, 0.115059, 0.991042,
		0.912977, -0.407731, -0.015124,
		0.402338, 0.905824, -0.132691,
		37.451725, 36.890820, 37.353539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579994, 36.366665, 38.023205>,  <37.170090, 36.256741, 37.446423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579994, 36.366665, 38.023205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.545418, 36.743179, 37.892658>,  <37.524673, 36.969086, 37.814331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.545418, 36.743179, 37.892658>,  <37.579994, 36.366665, 38.023205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545418, 36.743179, 37.892658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207260, 0.337418, 0.918255,
		0.974460, 0.011728, -0.224256,
		-0.086437, 0.941282, -0.326370,
		37.519485, 37.025562, 37.794746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213718, 36.649570, 38.206642>,  <37.579994, 36.366665, 38.023205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213718, 36.649570, 38.206642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.940838, 36.937828, 38.157204>,  <37.777111, 37.110783, 38.127541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.940838, 36.937828, 38.157204>,  <38.213718, 36.649570, 38.206642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940838, 36.937828, 38.157204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264555, 0.400874, 0.877104,
		0.681625, 0.565663, -0.464126,
		-0.682201, 0.720643, -0.123597,
		37.736179, 37.154022, 38.120125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620510, 37.235981, 38.199627>,  <38.213718, 36.649570, 38.206642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620510, 37.235981, 38.199627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.247032, 37.333252, 38.304760>,  <38.022945, 37.391613, 38.367840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.247032, 37.333252, 38.304760>,  <38.620510, 37.235981, 38.199627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247032, 37.333252, 38.304760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347462, 0.437937, 0.829145,
		0.086526, 0.865492, -0.493394,
		-0.933694, 0.243178, 0.262833,
		37.966923, 37.406204, 38.383610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658699, 37.794643, 38.534714>,  <38.620510, 37.235981, 38.199627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658699, 37.794643, 38.534714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.278839, 37.707867, 38.625134>,  <38.050922, 37.655800, 38.679386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.278839, 37.707867, 38.625134>,  <38.658699, 37.794643, 38.534714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278839, 37.707867, 38.625134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182852, 0.202107, 0.962142,
		-0.254418, 0.955033, -0.152262,
		-0.949651, -0.216945, 0.226050,
		37.993942, 37.642784, 38.692947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586899, 38.193336, 39.155899>,  <38.658699, 37.794643, 38.534714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586899, 38.193336, 39.155899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.282970, 37.933384, 39.148617>,  <38.100613, 37.777412, 39.144249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.282970, 37.933384, 39.148617>,  <38.586899, 38.193336, 39.155899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282970, 37.933384, 39.148617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019294, -0.050530, 0.998536,
		-0.649846, 0.758357, 0.050932,
		-0.759821, -0.649878, -0.018205,
		38.055023, 37.738422, 39.143154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116802, 38.437305, 39.639198>,  <38.586899, 38.193336, 39.155899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116802, 38.437305, 39.639198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.037575, 38.046078, 39.613453>,  <37.990036, 37.811340, 39.598007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.037575, 38.046078, 39.613453>,  <38.116802, 38.437305, 39.639198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037575, 38.046078, 39.613453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162844, -0.031917, 0.986135,
		-0.966566, 0.205806, -0.152951,
		-0.198071, -0.978072, -0.064364,
		37.978153, 37.752655, 39.594143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400551, 38.313175, 40.034195>,  <38.116802, 38.437305, 39.639198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400551, 38.313175, 40.034195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.603493, 37.968597, 40.025249>,  <37.725258, 37.761852, 40.019882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.603493, 37.968597, 40.025249>,  <37.400551, 38.313175, 40.034195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603493, 37.968597, 40.025249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177177, -0.129673, 0.975599,
		-0.843324, -0.491017, -0.218419,
		0.507359, -0.861445, -0.022359,
		37.755699, 37.710163, 40.018543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076668, 37.816235, 40.476627>,  <37.400551, 38.313175, 40.034195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076668, 37.816235, 40.476627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.433243, 37.639977, 40.434338>,  <37.647186, 37.534222, 40.408966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.433243, 37.639977, 40.434338>,  <37.076668, 37.816235, 40.476627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433243, 37.639977, 40.434338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058623, -0.119201, 0.991138,
		-0.449343, -0.889731, -0.080428,
		0.891434, -0.440646, -0.105721,
		37.700672, 37.507782, 40.402622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977180, 37.224491, 40.753532>,  <37.076668, 37.816235, 40.476627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977180, 37.224491, 40.753532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.373009, 37.279816, 40.769650>,  <37.610504, 37.313011, 40.779320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.373009, 37.279816, 40.769650>,  <36.977180, 37.224491, 40.753532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373009, 37.279816, 40.769650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021662, -0.133674, 0.990789,
		0.142429, -0.981326, -0.129283,
		0.989568, 0.138316, 0.040296,
		37.669880, 37.321312, 40.781738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223389, 36.838409, 41.288754>,  <36.977180, 37.224491, 40.753532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223389, 36.838409, 41.288754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.516464, 37.109135, 41.260231>,  <37.692310, 37.271572, 41.243118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.516464, 37.109135, 41.260231>,  <37.223389, 36.838409, 41.288754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516464, 37.109135, 41.260231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067218, 0.032298, 0.997215,
		0.677233, -0.735444, -0.021830,
		0.732691, 0.676815, -0.071308,
		37.736271, 37.312180, 41.238838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636761, 36.714676, 41.798065>,  <37.223389, 36.838409, 41.288754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636761, 36.714676, 41.798065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.790253, 37.074539, 41.714767>,  <37.882347, 37.290459, 41.664791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.790253, 37.074539, 41.714767>,  <37.636761, 36.714676, 41.798065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790253, 37.074539, 41.714767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037917, 0.209966, 0.976973,
		0.922665, -0.382792, 0.046458,
		0.383733, 0.899658, -0.208242,
		37.905373, 37.344437, 41.652294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337502, 36.775562, 42.017899>,  <37.636761, 36.714676, 41.798065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337502, 36.775562, 42.017899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.165131, 37.135571, 41.991787>,  <38.061707, 37.351574, 41.976120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.165131, 37.135571, 41.991787>,  <38.337502, 36.775562, 42.017899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165131, 37.135571, 41.991787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308166, 0.214769, 0.926773,
		0.848135, 0.379257, -0.369907,
		-0.430930, 0.900021, -0.065279,
		38.035851, 37.405579, 41.972202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717800, 37.177826, 42.348106>,  <38.337502, 36.775562, 42.017899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717800, 37.177826, 42.348106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.386906, 37.401428, 42.325520>,  <38.188370, 37.535587, 42.311966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.386906, 37.401428, 42.325520>,  <38.717800, 37.177826, 42.348106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386906, 37.401428, 42.325520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120998, 0.275402, 0.953684,
		0.548665, 0.782093, -0.295462,
		-0.827240, 0.559003, -0.056471,
		38.138733, 37.569130, 42.308578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868668, 37.826893, 42.771294>,  <38.717800, 37.177826, 42.348106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868668, 37.826893, 42.771294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.474281, 37.764698, 42.746986>,  <38.237648, 37.727383, 42.732403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.474281, 37.764698, 42.746986>,  <38.868668, 37.826893, 42.771294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474281, 37.764698, 42.746986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073682, 0.078666, 0.994174,
		-0.149797, 0.984701, -0.089018,
		-0.985968, -0.155483, -0.060770,
		38.178490, 37.718052, 42.728756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645641, 38.175030, 43.351368>,  <38.868668, 37.826893, 42.771294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645641, 38.175030, 43.351368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.325298, 37.960007, 43.245796>,  <38.133091, 37.830994, 43.182453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.325298, 37.960007, 43.245796>,  <38.645641, 38.175030, 43.351368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325298, 37.960007, 43.245796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316290, 0.005446, 0.948647,
		-0.508512, 0.843212, -0.174384,
		-0.800860, -0.537554, -0.263930,
		38.085041, 37.798740, 43.166618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085415, 38.541302, 43.651241>,  <38.645641, 38.175030, 43.351368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085415, 38.541302, 43.651241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.987396, 38.155338, 43.613480>,  <37.928585, 37.923759, 43.590820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.987396, 38.155338, 43.613480>,  <38.085415, 38.541302, 43.651241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987396, 38.155338, 43.613480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277835, -0.023402, 0.960344,
		-0.928850, 0.261555, -0.262349,
		-0.245043, -0.964905, -0.094406,
		37.913883, 37.865868, 43.585159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.150734, 38.414249, 43.819412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.338058, 38.062038, 43.848682>,  <37.450455, 37.850712, 43.866245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.338058, 38.062038, 43.848682>,  <37.150734, 38.414249, 43.819412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338058, 38.062038, 43.848682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404207, -0.139863, 0.903911,
		-0.785684, -0.452891, -0.421414,
		0.468314, -0.880527, 0.073174,
		37.478554, 37.797882, 43.870636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712711, 38.102234, 44.094406>,  <37.150734, 38.414249, 43.819412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712711, 38.102234, 44.094406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.012226, 37.852516, 44.183468>,  <37.191936, 37.702686, 44.236904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.012226, 37.852516, 44.183468>,  <36.712711, 38.102234, 44.094406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012226, 37.852516, 44.183468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500345, -0.312084, 0.807625,
		-0.434710, -0.716142, -0.546047,
		0.748787, -0.624295, 0.222652,
		37.236862, 37.665230, 44.250263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304142, 37.412415, 44.188839>,  <36.712711, 38.102234, 44.094406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304142, 37.412415, 44.188839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.663460, 37.366673, 44.358543>,  <36.879051, 37.339226, 44.460365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.663460, 37.366673, 44.358543>,  <36.304142, 37.412415, 44.188839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663460, 37.366673, 44.358543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437340, -0.139264, 0.888448,
		-0.042515, -0.983630, -0.175112,
		0.898291, -0.114356, 0.424261,
		36.932945, 37.332367, 44.485821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555050, 36.736439, 44.602917>,  <36.304142, 37.412415, 44.188839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555050, 36.736439, 44.602917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.756836, 37.046780, 44.754478>,  <36.877907, 37.232983, 44.845417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.756836, 37.046780, 44.754478>,  <36.555050, 36.736439, 44.602917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756836, 37.046780, 44.754478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345719, -0.220627, 0.912032,
		0.791199, -0.591083, 0.156928,
		0.504464, 0.775851, 0.378908,
		36.908176, 37.279533, 44.868153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823032, 36.420853, 45.120968>,  <36.555050, 36.736439, 44.602917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823032, 36.420853, 45.120968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.882298, 36.804390, 45.217857>,  <36.917854, 37.034512, 45.275990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.882298, 36.804390, 45.217857>,  <36.823032, 36.420853, 45.120968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882298, 36.804390, 45.217857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269410, -0.196529, 0.942759,
		0.951560, -0.204937, 0.229203,
		0.148161, 0.958842, 0.242221,
		36.926746, 37.092041, 45.290524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306103, 36.463306, 45.793816>,  <36.823032, 36.420853, 45.120968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306103, 36.463306, 45.793816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.160328, 36.833424, 45.751820>,  <37.072865, 37.055492, 45.726620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.160328, 36.833424, 45.751820>,  <37.306103, 36.463306, 45.793816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160328, 36.833424, 45.751820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149158, 0.053291, 0.987376,
		0.919204, 0.375499, 0.118593,
		-0.364439, 0.925289, -0.104994,
		37.050995, 37.111012, 45.720322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751854, 36.890934, 46.176414>,  <37.306103, 36.463306, 45.793816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751854, 36.890934, 46.176414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.415874, 37.106899, 46.154583>,  <37.214287, 37.236477, 46.141483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.415874, 37.106899, 46.154583>,  <37.751854, 36.890934, 46.176414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415874, 37.106899, 46.154583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017162, 0.126959, 0.991759,
		0.542392, 0.832092, -0.115905,
		-0.839950, 0.539912, -0.054581,
		37.163891, 37.268871, 46.138210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860672, 37.523258, 46.542007>,  <37.751854, 36.890934, 46.176414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860672, 37.523258, 46.542007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.462460, 37.494316, 46.517738>,  <37.223534, 37.476952, 46.503178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.462460, 37.494316, 46.517738>,  <37.860672, 37.523258, 46.542007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462460, 37.494316, 46.517738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086180, 0.433567, 0.896991,
		-0.038599, 0.898212, -0.437865,
		-0.995532, -0.072358, -0.060673,
		37.163799, 37.472607, 46.499535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485138, 38.211243, 46.606148>,  <37.860672, 37.523258, 46.542007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485138, 38.211243, 46.606148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.231297, 37.922832, 46.717434>,  <37.078991, 37.749786, 46.784206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.231297, 37.922832, 46.717434>,  <37.485138, 38.211243, 46.606148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231297, 37.922832, 46.717434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248190, 0.531059, 0.810171,
		-0.731905, 0.445083, -0.515961,
		-0.634599, -0.721025, 0.278220,
		37.040916, 37.706524, 46.800900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033230, 38.548882, 46.881439>,  <37.485138, 38.211243, 46.606148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033230, 38.548882, 46.881439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.933708, 38.196445, 47.042320>,  <36.873997, 37.984982, 47.138851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.933708, 38.196445, 47.042320>,  <37.033230, 38.548882, 46.881439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933708, 38.196445, 47.042320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176262, 0.449521, 0.875707,
		-0.952381, 0.146983, -0.267145,
		-0.248801, -0.881094, 0.402207,
		36.859066, 37.932117, 47.162983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361378, 38.694534, 47.287773>,  <37.033230, 38.548882, 46.881439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361378, 38.694534, 47.287773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.512280, 38.350887, 47.426102>,  <36.602821, 38.144699, 47.509098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.512280, 38.350887, 47.426102>,  <36.361378, 38.694534, 47.287773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512280, 38.350887, 47.426102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224733, 0.277332, 0.934121,
		-0.898430, -0.430117, -0.088449,
		0.377252, -0.859120, 0.345824,
		36.625454, 38.093151, 47.529850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813225, 38.416912, 47.707150>,  <36.361378, 38.694534, 47.287773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813225, 38.416912, 47.707150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.136108, 38.215000, 47.829533>,  <36.329838, 38.093853, 47.902962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.136108, 38.215000, 47.829533>,  <35.813225, 38.416912, 47.707150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136108, 38.215000, 47.829533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234908, 0.200802, 0.951050,
		-0.541512, -0.839567, 0.043511,
		0.807207, -0.504784, 0.305958,
		36.378269, 38.063564, 47.921318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602432, 38.063496, 48.379116>,  <35.813225, 38.416912, 47.707150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602432, 38.063496, 48.379116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.001575, 38.087872, 48.388592>,  <36.241062, 38.102497, 48.394279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.001575, 38.087872, 48.388592>,  <35.602432, 38.063496, 48.379116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001575, 38.087872, 48.388592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032226, 0.143093, 0.989184,
		0.056892, -0.987831, 0.144751,
		0.997860, 0.060941, 0.023693,
		36.300934, 38.106155, 48.395699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821915, 37.439079, 48.875088>,  <35.602432, 38.063496, 48.379116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821915, 37.439079, 48.875088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.128181, 37.693626, 48.837582>,  <36.311939, 37.846355, 48.815079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.128181, 37.693626, 48.837582>,  <35.821915, 37.439079, 48.875088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128181, 37.693626, 48.837582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211975, -0.111989, 0.970837,
		0.607312, -0.763210, -0.220640,
		0.765662, 0.636371, -0.093769,
		36.357880, 37.884537, 48.809452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363094, 37.142220, 49.161629>,  <35.821915, 37.439079, 48.875088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363094, 37.142220, 49.161629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.514233, 37.511444, 49.190426>,  <36.604916, 37.732979, 49.207706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.514233, 37.511444, 49.190426>,  <36.363094, 37.142220, 49.161629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514233, 37.511444, 49.190426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145786, -0.136104, 0.979909,
		0.914318, -0.359761, -0.185997,
		0.377848, 0.923064, 0.071994,
		36.627586, 37.788364, 49.212025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936054, 37.053307, 49.570431>,  <36.363094, 37.142220, 49.161629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936054, 37.053307, 49.570431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.921898, 37.452820, 49.584175>,  <36.913403, 37.692528, 49.592422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.921898, 37.452820, 49.584175>,  <36.936054, 37.053307, 49.570431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921898, 37.452820, 49.584175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256473, -0.024156, 0.966249,
		0.965903, 0.043013, -0.255306,
		-0.035394, 0.998782, 0.034364,
		36.911278, 37.752453, 49.594482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676884, 37.362957, 49.751026>,  <36.936054, 37.053307, 49.570431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676884, 37.362957, 49.751026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.357845, 37.569786, 49.875267>,  <37.166424, 37.693882, 49.949814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.357845, 37.569786, 49.875267>,  <37.676884, 37.362957, 49.751026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357845, 37.569786, 49.875267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325379, -0.064771, 0.943363,
		0.507905, 0.853487, -0.116583,
		-0.797597, 0.517073, 0.310604,
		37.118565, 37.724907, 49.968449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921661, 37.621384, 50.410301>,  <37.676884, 37.362957, 49.751026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921661, 37.621384, 50.410301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.530037, 37.702560, 50.416725>,  <37.295063, 37.751266, 50.420578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.530037, 37.702560, 50.416725>,  <37.921661, 37.621384, 50.410301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530037, 37.702560, 50.416725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024433, -0.195444, 0.980410,
		0.202105, 0.959487, 0.196310,
		-0.979059, 0.202942, 0.016057,
		37.236320, 37.763443, 50.421543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957897, 37.977840, 50.961483>,  <37.921661, 37.621384, 50.410301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957897, 37.977840, 50.961483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.583458, 37.854050, 50.894608>,  <37.358795, 37.779774, 50.854485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.583458, 37.854050, 50.894608>,  <37.957897, 37.977840, 50.961483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583458, 37.854050, 50.894608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119332, -0.167701, 0.978589,
		-0.330887, 0.936002, 0.120054,
		-0.936095, -0.309476, -0.167185,
		37.302631, 37.761208, 50.844452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642418, 38.253059, 51.530560>,  <37.957897, 37.977840, 50.961483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642418, 38.253059, 51.530560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.439476, 37.938110, 51.390484>,  <37.317711, 37.749142, 51.306438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.439476, 37.938110, 51.390484>,  <37.642418, 38.253059, 51.530560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439476, 37.938110, 51.390484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200527, -0.287351, 0.936599,
		-0.838083, 0.545409, -0.012102,
		-0.507352, -0.787374, -0.350193,
		37.287270, 37.701897, 51.285427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092468, 38.252655, 51.966263>,  <37.642418, 38.253059, 51.530560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092468, 38.252655, 51.966263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.108067, 37.888184, 51.802197>,  <37.117424, 37.669502, 51.703758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.108067, 37.888184, 51.802197>,  <37.092468, 38.252655, 51.966263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108067, 37.888184, 51.802197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268703, -0.404921, 0.873978,
		-0.962433, 0.076133, -0.260625,
		0.038994, -0.911177, -0.410167,
		37.119766, 37.614830, 51.679146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382130, 37.839359, 52.149216>,  <37.092468, 38.252655, 51.966263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382130, 37.839359, 52.149216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.670986, 37.578979, 52.055595>,  <36.844299, 37.422752, 51.999424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.670986, 37.578979, 52.055595>,  <36.382130, 37.839359, 52.149216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670986, 37.578979, 52.055595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136433, -0.465725, 0.874349,
		-0.678163, -0.599467, -0.425128,
		0.722136, -0.650953, -0.234050,
		36.887627, 37.383694, 51.985382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199188, 37.217541, 52.417103>,  <36.382130, 37.839359, 52.149216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199188, 37.217541, 52.417103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.595901, 37.180153, 52.382175>,  <36.833931, 37.157719, 52.361221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.595901, 37.180153, 52.382175>,  <36.199188, 37.217541, 52.417103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595901, 37.180153, 52.382175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027171, -0.513107, 0.857894,
		-0.124989, -0.853220, -0.506353,
		0.991786, -0.093469, -0.087316,
		36.893436, 37.152111, 52.355980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197598, 37.094803, 53.184620>,  <36.199188, 37.217541, 52.417103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197598, 37.094803, 53.184620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.812748, 37.055031, 53.286156>,  <35.581837, 37.031166, 53.347076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.812748, 37.055031, 53.286156>,  <36.197598, 37.094803, 53.184620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812748, 37.055031, 53.286156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206515, -0.342020, -0.916719,
		0.177968, -0.934417, 0.308532,
		-0.962122, -0.099430, 0.253840,
		35.524113, 37.025204, 53.362309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976643, 36.517742, 52.755428>,  <36.197598, 37.094803, 53.184620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976643, 36.517742, 52.755428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.633274, 36.682899, 52.877167>,  <35.427254, 36.781994, 52.950211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.633274, 36.682899, 52.877167>,  <35.976643, 36.517742, 52.755428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633274, 36.682899, 52.877167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469293, -0.392676, -0.790929,
		-0.207056, -0.821783, 0.530849,
		-0.858424, 0.412890, 0.304351,
		35.375748, 36.806767, 52.968472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437534, 35.989525, 52.746120>,  <35.976643, 36.517742, 52.755428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437534, 35.989525, 52.746120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.234993, 36.334435, 52.749821>,  <35.113468, 36.541382, 52.752041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.234993, 36.334435, 52.749821>,  <35.437534, 35.989525, 52.746120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234993, 36.334435, 52.749821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466765, -0.265045, -0.843731,
		-0.725076, -0.431546, 0.536687,
		-0.506355, 0.862276, 0.009253,
		35.083088, 36.593117, 52.752598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723446, 35.836441, 52.699532>,  <35.437534, 35.989525, 52.746120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723446, 35.836441, 52.699532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.798927, 36.189327, 52.526978>,  <34.844215, 36.401058, 52.423447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.798927, 36.189327, 52.526978>,  <34.723446, 35.836441, 52.699532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798927, 36.189327, 52.526978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409206, -0.328684, -0.851186,
		-0.892716, 0.337143, 0.298985,
		0.188700, 0.882214, -0.431382,
		34.855537, 36.453991, 52.397564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046356, 36.138145, 52.464432>,  <34.723446, 35.836441, 52.699532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046356, 36.138145, 52.464432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.329876, 36.327675, 52.255398>,  <34.499989, 36.441391, 52.129978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.329876, 36.327675, 52.255398>,  <34.046356, 36.138145, 52.464432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329876, 36.327675, 52.255398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475945, -0.225566, -0.850057,
		-0.520654, 0.851241, 0.065633,
		0.708799, 0.473823, -0.522586,
		34.542515, 36.469822, 52.098621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687813, 36.508411, 51.957191>,  <34.046356, 36.138145, 52.464432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687813, 36.508411, 51.957191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.047951, 36.507660, 51.783123>,  <34.264034, 36.507210, 51.678680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.047951, 36.507660, 51.783123>,  <33.687813, 36.508411, 51.957191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047951, 36.507660, 51.783123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435168, 0.002994, -0.900344,
		0.002994, 0.999994, 0.001878,
		0.900344, -0.001878, -0.435174,
		34.318054, 36.507095, 51.652569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670395, 36.977608, 51.482708>,  <33.687813, 36.508411, 51.957191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670395, 36.977608, 51.482708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.999168, 36.785152, 51.360775>,  <34.196434, 36.669678, 51.287617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.999168, 36.785152, 51.360775>,  <33.670395, 36.977608, 51.482708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999168, 36.785152, 51.360775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203939, 0.251105, -0.946232,
		0.531815, 0.839911, 0.108269,
		0.821938, -0.481140, -0.304832,
		34.245750, 36.640812, 51.269325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910950, 37.358463, 50.929031>,  <33.670395, 36.977608, 51.482708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910950, 37.358463, 50.929031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.129002, 37.028385, 50.869858>,  <34.259834, 36.830338, 50.834354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.129002, 37.028385, 50.869858>,  <33.910950, 37.358463, 50.929031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129002, 37.028385, 50.869858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009510, 0.182533, -0.983154,
		0.838295, 0.534544, 0.107353,
		0.545134, -0.825193, -0.147933,
		34.292542, 36.780827, 50.825478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323433, 37.557873, 50.439110>,  <33.910950, 37.358463, 50.929031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323433, 37.557873, 50.439110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.340279, 37.159069, 50.413212>,  <34.350388, 36.919785, 50.397675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.340279, 37.159069, 50.413212>,  <34.323433, 37.557873, 50.439110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340279, 37.159069, 50.413212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003262, 0.064663, -0.997902,
		0.999107, 0.042241, -0.000529,
		0.042118, -0.997013, -0.064743,
		34.352913, 36.859966, 50.393787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773815, 37.465588, 49.950935>,  <34.323433, 37.557873, 50.439110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773815, 37.465588, 49.950935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.620018, 37.096699, 49.934532>,  <34.527740, 36.875366, 49.924690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.620018, 37.096699, 49.934532>,  <34.773815, 37.465588, 49.950935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620018, 37.096699, 49.934532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183902, -0.032986, -0.982391,
		0.904626, -0.385259, 0.182280,
		-0.384488, -0.922219, -0.041010,
		34.504673, 36.820034, 49.922230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308491, 36.947784, 49.621185>,  <34.773815, 37.465588, 49.950935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308491, 36.947784, 49.621185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.943611, 36.790707, 49.574379>,  <34.724686, 36.696461, 49.546295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.943611, 36.790707, 49.574379>,  <35.308491, 36.947784, 49.621185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943611, 36.790707, 49.574379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098134, 0.067907, -0.992854,
		0.397830, -0.917161, -0.023408,
		-0.912196, -0.392690, -0.117020,
		34.669952, 36.672901, 49.539272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416988, 36.556068, 49.031891>,  <35.308491, 36.947784, 49.621185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416988, 36.556068, 49.031891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.022579, 36.595646, 49.085503>,  <34.785934, 36.619392, 49.117668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.022579, 36.595646, 49.085503>,  <35.416988, 36.556068, 49.031891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022579, 36.595646, 49.085503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109872, 0.218540, -0.969623,
		-0.125227, -0.970799, -0.204615,
		-0.986025, 0.098942, 0.134030,
		34.726772, 36.625328, 49.125713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259357, 36.238892, 48.392635>,  <35.416988, 36.556068, 49.031891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259357, 36.238892, 48.392635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.935020, 36.434143, 48.521797>,  <34.740417, 36.551292, 48.599297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.935020, 36.434143, 48.521797>,  <35.259357, 36.238892, 48.392635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935020, 36.434143, 48.521797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206578, 0.277521, -0.938247,
		-0.547596, -0.827475, -0.124189,
		-0.810842, 0.488125, 0.322908,
		34.691769, 36.580582, 48.618671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611961, 36.021355, 48.012962>,  <35.259357, 36.238892, 48.392635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611961, 36.021355, 48.012962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.541645, 36.388615, 48.154999>,  <34.499454, 36.608971, 48.240223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.541645, 36.388615, 48.154999>,  <34.611961, 36.021355, 48.012962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541645, 36.388615, 48.154999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313567, 0.289700, -0.904295,
		-0.933152, -0.270313, 0.236977,
		-0.175790, 0.918153, 0.355095,
		34.488907, 36.664062, 48.261528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929443, 36.243507, 47.687611>,  <34.611961, 36.021355, 48.012962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929443, 36.243507, 47.687611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.130573, 36.566814, 47.810162>,  <34.251251, 36.760799, 47.883694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.130573, 36.566814, 47.810162>,  <33.929443, 36.243507, 47.687611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130573, 36.566814, 47.810162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211618, 0.458764, -0.862991,
		-0.838086, 0.369095, 0.401721,
		0.502821, 0.808272, 0.306377,
		34.281418, 36.809296, 47.902073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579845, 36.799595, 47.444782>,  <33.929443, 36.243507, 47.687611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579845, 36.799595, 47.444782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.938118, 36.957546, 47.526588>,  <34.153080, 37.052319, 47.575672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.938118, 36.957546, 47.526588>,  <33.579845, 36.799595, 47.444782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938118, 36.957546, 47.526588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025556, 0.504850, -0.862829,
		-0.443962, 0.767593, 0.462276,
		0.895681, 0.394877, 0.204518,
		34.206821, 37.076008, 47.587944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416733, 37.482349, 47.379639>,  <33.579845, 36.799595, 47.444782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416733, 37.482349, 47.379639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.809048, 37.425247, 47.326447>,  <34.044437, 37.390984, 47.294533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.809048, 37.425247, 47.326447>,  <33.416733, 37.482349, 47.379639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809048, 37.425247, 47.326447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065712, 0.400041, -0.914138,
		0.183697, 0.905311, 0.382973,
		0.980784, -0.142759, -0.132977,
		34.103283, 37.382420, 47.286552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658394, 38.066402, 47.133778>,  <33.416733, 37.482349, 47.379639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658394, 38.066402, 47.133778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.960297, 37.824135, 47.032974>,  <34.141438, 37.678776, 46.972492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.960297, 37.824135, 47.032974>,  <33.658394, 38.066402, 47.133778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960297, 37.824135, 47.032974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131755, 0.516289, -0.846219,
		0.642637, 0.605486, 0.469472,
		0.754757, -0.605667, -0.252011,
		34.186722, 37.642433, 46.957371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290260, 38.532307, 46.832794>,  <33.658394, 38.066402, 47.133778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290260, 38.532307, 46.832794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.336227, 38.159828, 46.694424>,  <34.363808, 37.936340, 46.611401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.336227, 38.159828, 46.694424>,  <34.290260, 38.532307, 46.832794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336227, 38.159828, 46.694424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133971, 0.359584, -0.923445,
		0.984299, 0.059779, 0.166077,
		0.114922, -0.931196, -0.345929,
		34.370705, 37.880470, 46.590645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723900, 38.605000, 46.320763>,  <34.290260, 38.532307, 46.832794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723900, 38.605000, 46.320763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.641071, 38.224403, 46.229733>,  <34.591373, 37.996048, 46.175114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.641071, 38.224403, 46.229733>,  <34.723900, 38.605000, 46.320763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641071, 38.224403, 46.229733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219505, 0.181505, -0.958579,
		0.953383, -0.248448, 0.171272,
		-0.207070, -0.951488, -0.227579,
		34.578949, 37.938957, 46.161457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212303, 38.385227, 45.795837>,  <34.723900, 38.605000, 46.320763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212303, 38.385227, 45.795837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.901985, 38.132847, 45.798599>,  <34.715794, 37.981419, 45.800259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.901985, 38.132847, 45.798599>,  <35.212303, 38.385227, 45.795837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901985, 38.132847, 45.798599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177074, 0.207188, -0.962142,
		0.605636, -0.747644, -0.272460,
		-0.775790, -0.630953, 0.006908,
		34.669247, 37.943562, 45.800671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.258476, 26.307495, 34.802227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.907150, 26.186192, 34.654392>,  <43.696354, 26.113409, 34.565693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.907150, 26.186192, 34.654392>,  <44.258476, 26.307495, 34.802227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.907150, 26.186192, 34.654392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302893, 0.951097, -0.060586,
		0.369884, 0.058731, -0.927220,
		-0.878317, -0.303258, -0.369585,
		43.643654, 26.095215, 34.543518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.127201, 26.735006, 34.323669>,  <44.258476, 26.307495, 34.802227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.127201, 26.735006, 34.323669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.770077, 26.568224, 34.391838>,  <43.555801, 26.468155, 34.432739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.770077, 26.568224, 34.391838>,  <44.127201, 26.735006, 34.323669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.770077, 26.568224, 34.391838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444109, 0.878037, -0.178376,
		-0.075265, -0.234942, -0.969091,
		-0.892806, -0.416956, 0.170425,
		43.502235, 26.443136, 34.442966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.681671, 26.915579, 33.719917>,  <44.127201, 26.735006, 34.323669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.681671, 26.915579, 33.719917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.463474, 26.839203, 34.046349>,  <43.332558, 26.793377, 34.242207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.463474, 26.839203, 34.046349>,  <43.681671, 26.915579, 33.719917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.463474, 26.839203, 34.046349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428963, 0.900109, -0.076128,
		-0.720024, -0.391594, -0.572905,
		-0.545488, -0.190941, 0.816079,
		43.299828, 26.781921, 34.291172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.004379, 26.940620, 33.496773>,  <43.681671, 26.915579, 33.719917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.004379, 26.940620, 33.496773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.022812, 26.996811, 33.892376>,  <43.033871, 27.030525, 34.129738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.022812, 26.996811, 33.892376>,  <43.004379, 26.940620, 33.496773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.022812, 26.996811, 33.892376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456341, 0.883677, -0.104253,
		-0.888611, -0.446521, 0.104828,
		0.046083, 0.140478, 0.989011,
		43.036636, 27.038954, 34.189079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.273533, 27.228523, 33.737850>,  <43.004379, 26.940620, 33.496773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.273533, 27.228523, 33.737850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.545990, 27.310341, 34.019051>,  <42.709465, 27.359432, 34.187771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.545990, 27.310341, 34.019051>,  <42.273533, 27.228523, 33.737850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.545990, 27.310341, 34.019051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441329, 0.880841, 0.171314,
		-0.584191, -0.426944, 0.690246,
		0.681138, 0.204546, 0.703002,
		42.750332, 27.371704, 34.229950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.840813, 27.685150, 34.237232>,  <42.273533, 27.228523, 33.737850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.840813, 27.685150, 34.237232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.207138, 27.757917, 34.380451>,  <42.426933, 27.801579, 34.466381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.207138, 27.757917, 34.380451>,  <41.840813, 27.685150, 34.237232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.207138, 27.757917, 34.380451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285993, 0.921319, 0.263400,
		-0.281960, -0.343624, 0.895780,
		0.915809, 0.181918, 0.358049,
		42.481880, 27.812492, 34.487865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675259, 27.839624, 34.943672>,  <41.840813, 27.685150, 34.237232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.675259, 27.839624, 34.943672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.041542, 27.968491, 34.847595>,  <42.261311, 28.045811, 34.789948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.041542, 27.968491, 34.847595>,  <41.675259, 27.839624, 34.943672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.041542, 27.968491, 34.847595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263094, 0.932444, 0.247649,
		0.303754, -0.163579, 0.938603,
		0.915705, 0.322165, -0.240197,
		42.316254, 28.065140, 34.775536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772762, 28.499350, 35.418827>,  <41.675259, 27.839624, 34.943672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.772762, 28.499350, 35.418827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.080719, 28.534765, 35.166027>,  <42.265491, 28.556015, 35.014347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.080719, 28.534765, 35.166027>,  <41.772762, 28.499350, 35.418827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.080719, 28.534765, 35.166027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119579, 0.992803, -0.006583,
		0.626870, 0.080642, 0.774939,
		0.769893, 0.088540, -0.632001,
		42.311687, 28.561327, 34.976425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.340885, 28.975891, 35.672493>,  <41.772762, 28.499350, 35.418827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.340885, 28.975891, 35.672493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.343552, 28.985941, 35.272629>,  <42.345154, 28.991970, 35.032711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.343552, 28.985941, 35.272629>,  <42.340885, 28.975891, 35.672493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.343552, 28.985941, 35.272629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096054, 0.995078, 0.024367,
		0.995354, 0.095858, 0.009051,
		0.006671, 0.025124, -0.999662,
		42.345554, 28.993479, 34.972729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.763931, 29.560585, 35.478096>,  <42.340885, 28.975891, 35.672493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.763931, 29.560585, 35.478096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.557686, 29.468666, 35.147923>,  <42.433941, 29.413515, 34.949818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.557686, 29.468666, 35.147923>,  <42.763931, 29.560585, 35.478096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.557686, 29.468666, 35.147923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173148, 0.971433, -0.162286,
		0.839146, 0.059247, -0.540669,
		-0.515609, -0.229797, -0.825433,
		42.403004, 29.399727, 34.900291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.051239, 29.885384, 35.025101>,  <42.763931, 29.560585, 35.478096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.051239, 29.885384, 35.025101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.700291, 29.818089, 34.845360>,  <42.489723, 29.777712, 34.737514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.700291, 29.818089, 34.845360>,  <43.051239, 29.885384, 35.025101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.700291, 29.818089, 34.845360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048644, 0.962878, -0.265518,
		0.477341, -0.211100, -0.852985,
		-0.877371, -0.168236, -0.449352,
		42.437080, 29.767618, 34.710556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.205463, 30.363338, 34.436939>,  <43.051239, 29.885384, 35.025101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.205463, 30.363338, 34.436939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.814342, 30.281872, 34.456638>,  <42.579670, 30.232992, 34.468456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.814342, 30.281872, 34.456638>,  <43.205463, 30.363338, 34.436939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.814342, 30.281872, 34.456638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209257, 0.936988, -0.279761,
		0.010835, -0.283855, -0.958806,
		-0.977801, -0.203668, 0.049246,
		42.521004, 30.220772, 34.471413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.921108, 30.527250, 33.757614>,  <43.205463, 30.363338, 34.436939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.921108, 30.527250, 33.757614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.618835, 30.525352, 34.019585>,  <42.437473, 30.524214, 34.176765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.618835, 30.525352, 34.019585>,  <42.921108, 30.527250, 33.757614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.618835, 30.525352, 34.019585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265199, 0.916546, -0.299355,
		-0.598849, -0.399902, -0.693872,
		-0.755678, -0.004746, 0.654926,
		42.392132, 30.523930, 34.216064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.364998, 30.600178, 33.376144>,  <42.921108, 30.527250, 33.757614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.364998, 30.600178, 33.376144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.267345, 30.710787, 33.747936>,  <42.208755, 30.777153, 33.971012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.267345, 30.710787, 33.747936>,  <42.364998, 30.600178, 33.376144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.267345, 30.710787, 33.747936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022749, 0.956586, -0.290561,
		-0.969476, -0.092079, -0.227239,
		-0.244128, 0.276523, 0.929482,
		42.194107, 30.793743, 34.026779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.875813, 31.073473, 33.241047>,  <42.364998, 30.600178, 33.376144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.875813, 31.073473, 33.241047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.978516, 31.169411, 33.615543>,  <42.040138, 31.226974, 33.840240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.978516, 31.169411, 33.615543>,  <41.875813, 31.073473, 33.241047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.978516, 31.169411, 33.615543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108931, 0.955363, -0.274618,
		-0.960318, 0.172495, 0.219168,
		0.256755, 0.239846, 0.936243,
		42.055542, 31.241365, 33.896416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400082, 31.548735, 33.471363>,  <41.875813, 31.073473, 33.241047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400082, 31.548735, 33.471363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.732430, 31.605206, 33.686665>,  <41.931839, 31.639088, 33.815845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.732430, 31.605206, 33.686665>,  <41.400082, 31.548735, 33.471363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.732430, 31.605206, 33.686665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113444, 0.989942, -0.084530,
		-0.544774, 0.009172, 0.838533,
		0.830874, 0.141176, 0.538254,
		41.981693, 31.647558, 33.848141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283005, 32.209629, 33.815582>,  <41.400082, 31.548735, 33.471363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.283005, 32.209629, 33.815582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.679131, 32.158810, 33.837997>,  <41.916805, 32.128319, 33.851444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.679131, 32.158810, 33.837997>,  <41.283005, 32.209629, 33.815582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.679131, 32.158810, 33.837997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123741, 0.990554, 0.059077,
		-0.063012, -0.051571, 0.996679,
		0.990312, -0.127052, 0.056035,
		41.976223, 32.120693, 33.854809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495045, 32.645767, 34.391956>,  <41.283005, 32.209629, 33.815582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495045, 32.645767, 34.391956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.825935, 32.575443, 34.178493>,  <42.024467, 32.533249, 34.050415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.825935, 32.575443, 34.178493>,  <41.495045, 32.645767, 34.391956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.825935, 32.575443, 34.178493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238516, 0.969840, 0.050211,
		0.508738, -0.168822, 0.844207,
		0.827222, -0.175812, -0.533661,
		42.074100, 32.522701, 34.018394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.085018, 33.098278, 34.737053>,  <41.495045, 32.645767, 34.391956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.085018, 33.098278, 34.737053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.199440, 33.017361, 34.362408>,  <42.268093, 32.968811, 34.137619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.199440, 33.017361, 34.362408>,  <42.085018, 33.098278, 34.737053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.199440, 33.017361, 34.362408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199554, 0.968607, -0.148256,
		0.937205, -0.144496, 0.317441,
		0.286053, -0.202292, -0.936617,
		42.285255, 32.956673, 34.081421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.890305, 33.374928, 34.583496>,  <42.085018, 33.098278, 34.737053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.890305, 33.374928, 34.583496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.711590, 33.336311, 34.227730>,  <42.604359, 33.313141, 34.014271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.711590, 33.336311, 34.227730>,  <42.890305, 33.374928, 34.583496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.711590, 33.336311, 34.227730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199211, 0.958466, -0.204104,
		0.872177, -0.268373, -0.409002,
		-0.446791, -0.096537, -0.889415,
		42.577553, 33.307350, 33.960907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.415249, 33.564690, 34.021774>,  <42.890305, 33.374928, 34.583496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.415249, 33.564690, 34.021774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.046516, 33.581764, 33.867683>,  <42.825275, 33.592010, 33.775230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.046516, 33.581764, 33.867683>,  <43.415249, 33.564690, 34.021774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.046516, 33.581764, 33.867683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195803, 0.909048, -0.367821,
		0.334489, -0.414498, -0.846350,
		-0.921834, 0.042686, -0.385227,
		42.769966, 33.594570, 33.752113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.902969, 34.039352, 34.347706>,  <43.415249, 33.564690, 34.021774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.902969, 34.039352, 34.347706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.240463, 34.251022, 34.311752>,  <44.442959, 34.378025, 34.290180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.240463, 34.251022, 34.311752>,  <43.902969, 34.039352, 34.347706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.240463, 34.251022, 34.311752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488931, -0.826808, -0.278092,
		-0.221477, 0.190689, -0.956339,
		0.843738, 0.529175, -0.089885,
		44.493584, 34.409775, 34.284786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.141369, 33.858128, 33.779789>,  <43.902969, 34.039352, 34.347706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.141369, 33.858128, 33.779789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.468418, 34.042744, 33.917469>,  <44.664646, 34.153515, 34.000076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.468418, 34.042744, 33.917469>,  <44.141369, 33.858128, 33.779789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.468418, 34.042744, 33.917469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564599, -0.759849, -0.322271,
		0.112800, 0.457832, -0.881854,
		0.817621, 0.461541, 0.344202,
		44.713703, 34.181206, 34.020729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.624073, 33.937740, 33.234089>,  <44.141369, 33.858128, 33.779789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.624073, 33.937740, 33.234089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.820881, 33.931053, 33.582260>,  <44.938965, 33.927040, 33.791161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.820881, 33.931053, 33.582260>,  <44.624073, 33.937740, 33.234089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.820881, 33.931053, 33.582260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634066, -0.678227, -0.371442,
		0.596556, 0.734663, -0.323097,
		0.492018, -0.016721, 0.870425,
		44.968487, 33.926037, 33.843388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.339439, 33.967968, 33.071926>,  <44.624073, 33.937740, 33.234089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.339439, 33.967968, 33.071926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.318253, 33.788231, 33.428642>,  <45.305542, 33.680389, 33.642670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.318253, 33.788231, 33.428642>,  <45.339439, 33.967968, 33.071926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.318253, 33.788231, 33.428642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575542, -0.743532, -0.340457,
		0.816055, 0.495228, 0.297999,
		-0.052968, -0.449342, 0.891788,
		45.302361, 33.653427, 33.696178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.121288, 33.864166, 33.287094>,  <45.339439, 33.967968, 33.071926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.121288, 33.864166, 33.287094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.895206, 33.614433, 33.502777>,  <45.759560, 33.464592, 33.632187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.895206, 33.614433, 33.502777>,  <46.121288, 33.864166, 33.287094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.895206, 33.614433, 33.502777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531320, -0.775509, -0.341007,
		0.631067, 0.093756, 0.770042,
		-0.565203, -0.624337, 0.539212,
		45.725647, 33.427132, 33.664539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.585506, 33.346516, 33.546017>,  <46.121288, 33.864166, 33.287094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.585506, 33.346516, 33.546017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.231121, 33.167496, 33.594616>,  <46.018490, 33.060081, 33.623775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.231121, 33.167496, 33.594616>,  <46.585506, 33.346516, 33.546017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.231121, 33.167496, 33.594616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411105, -0.879197, -0.240841,
		0.214608, -0.163430, 0.962930,
		-0.885966, -0.447552, 0.121496,
		45.965332, 33.033230, 33.631065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.562122, 32.736176, 34.081043>,  <46.585506, 33.346516, 33.546017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.562122, 32.736176, 34.081043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.280781, 32.682804, 33.801762>,  <46.111977, 32.650780, 33.634193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.280781, 32.682804, 33.801762>,  <46.562122, 32.736176, 34.081043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.280781, 32.682804, 33.801762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378734, -0.901544, -0.209233,
		-0.601547, -0.411599, 0.684636,
		-0.703350, -0.133432, -0.698208,
		46.069775, 32.642776, 33.592300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.538895, 32.058987, 34.099918>,  <46.562122, 32.736176, 34.081043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.538895, 32.058987, 34.099918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.322872, 32.120876, 33.769005>,  <46.193256, 32.158012, 33.570457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.322872, 32.120876, 33.769005>,  <46.538895, 32.058987, 34.099918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.322872, 32.120876, 33.769005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163629, -0.944896, -0.283544,
		-0.825567, -0.288498, 0.484982,
		-0.540060, 0.154728, -0.827282,
		46.160854, 32.167294, 33.520821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.282627, 31.471243, 34.071808>,  <46.538895, 32.058987, 34.099918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.282627, 31.471243, 34.071808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.242729, 31.621277, 33.703163>,  <46.218792, 31.711298, 33.481976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.242729, 31.621277, 33.703163>,  <46.282627, 31.471243, 34.071808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.242729, 31.621277, 33.703163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080877, -0.920107, -0.383227,
		-0.991721, -0.112761, 0.061436,
		-0.099741, 0.375085, -0.921609,
		46.212807, 31.733803, 33.426682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.726395, 31.125195, 33.737022>,  <46.282627, 31.471243, 34.071808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.726395, 31.125195, 33.737022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.957478, 31.270773, 33.444775>,  <46.096127, 31.358120, 33.269428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.957478, 31.270773, 33.444775>,  <45.726395, 31.125195, 33.737022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.957478, 31.270773, 33.444775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003044, -0.894127, -0.447804,
		-0.816239, 0.260923, -0.515435,
		0.577706, 0.363946, -0.730615,
		46.130791, 31.379957, 33.225590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.435120, 31.012581, 33.026314>,  <45.726395, 31.125195, 33.737022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.435120, 31.012581, 33.026314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.834091, 31.040176, 33.018650>,  <46.073475, 31.056734, 33.014053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.834091, 31.040176, 33.018650>,  <45.435120, 31.012581, 33.026314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.834091, 31.040176, 33.018650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051906, -0.881021, -0.470221,
		-0.049320, 0.468020, -0.882341,
		0.997433, 0.068990, -0.019159,
		46.133320, 31.060873, 33.012901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.530022, 30.744389, 32.351006>,  <45.435120, 31.012581, 33.026314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.530022, 30.744389, 32.351006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.882835, 30.735456, 32.539265>,  <46.094524, 30.730097, 32.652222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.882835, 30.735456, 32.539265>,  <45.530022, 30.744389, 32.351006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.882835, 30.735456, 32.539265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188067, -0.899173, -0.395118,
		0.432021, 0.437023, -0.788904,
		0.882037, -0.022332, 0.470651,
		46.147446, 30.728756, 32.680462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.990444, 30.442854, 31.848005>,  <45.530022, 30.744389, 32.351006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.990444, 30.442854, 31.848005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.198193, 30.387896, 32.185379>,  <46.322842, 30.354919, 32.387802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.198193, 30.387896, 32.185379>,  <45.990444, 30.442854, 31.848005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.198193, 30.387896, 32.185379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155950, -0.955176, -0.251631,
		0.840201, 0.262222, -0.474659,
		0.519366, -0.137398, 0.843434,
		46.354004, 30.346676, 32.438408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.596813, 30.123056, 31.576679>,  <45.990444, 30.442854, 31.848005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.596813, 30.123056, 31.576679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.561722, 30.032381, 31.964682>,  <46.540668, 29.977976, 32.197483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.561722, 30.032381, 31.964682>,  <46.596813, 30.123056, 31.576679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.561722, 30.032381, 31.964682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231505, -0.951740, -0.201483,
		0.968870, 0.206886, 0.135973,
		-0.087727, -0.226690, 0.970008,
		46.535404, 29.964375, 32.255684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.086338, 29.619949, 31.687162>,  <46.596813, 30.123056, 31.576679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.086338, 29.619949, 31.687162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.880234, 29.572498, 32.026676>,  <46.756573, 29.544027, 32.230385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.880234, 29.572498, 32.026676>,  <47.086338, 29.619949, 31.687162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.880234, 29.572498, 32.026676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222879, -0.974846, -0.000948,
		0.827548, 0.188688, 0.528735,
		-0.515256, -0.118628, 0.848786,
		46.725658, 29.536909, 32.281311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.487373, 29.111158, 32.151535>,  <47.086338, 29.619949, 31.687162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.487373, 29.111158, 32.151535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.097404, 29.114128, 32.240505>,  <46.863422, 29.115910, 32.293888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.097404, 29.114128, 32.240505>,  <47.487373, 29.111158, 32.151535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.097404, 29.114128, 32.240505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017307, -0.998946, -0.042522,
		0.221871, -0.045305, 0.974023,
		-0.974922, 0.007423, 0.222421,
		46.804928, 29.116356, 32.307232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.326630, 28.472904, 32.525928>,  <47.487373, 29.111158, 32.151535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.326630, 28.472904, 32.525928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.951645, 28.568634, 32.424828>,  <46.726654, 28.626072, 32.364166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.951645, 28.568634, 32.424828>,  <47.326630, 28.472904, 32.525928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.951645, 28.568634, 32.424828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195827, -0.962942, -0.185458,
		-0.287766, -0.124365, 0.949592,
		-0.937466, 0.239324, -0.252748,
		46.670406, 28.640430, 32.349003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.874950, 28.030016, 32.890255>,  <47.326630, 28.472904, 32.525928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.874950, 28.030016, 32.890255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.679455, 28.152121, 32.563343>,  <46.562157, 28.225384, 32.367195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.679455, 28.152121, 32.563343>,  <46.874950, 28.030016, 32.890255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.679455, 28.152121, 32.563343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275088, -0.942922, -0.187683,
		-0.827927, 0.133098, 0.544813,
		-0.488736, 0.305259, -0.817284,
		46.532833, 28.243698, 32.318157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.242962, 27.649776, 32.883354>,  <46.874950, 28.030016, 32.890255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.242962, 27.649776, 32.883354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.252914, 27.765026, 32.500446>,  <46.258884, 27.834175, 32.270702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.252914, 27.765026, 32.500446>,  <46.242962, 27.649776, 32.883354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.252914, 27.765026, 32.500446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476529, -0.838359, -0.264716,
		-0.878807, 0.462752, 0.116443,
		0.024877, 0.288123, -0.957270,
		46.260376, 27.851463, 32.213264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.573200, 27.368864, 32.580620>,  <46.242962, 27.649776, 32.883354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.573200, 27.368864, 32.580620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.778927, 27.469854, 32.252781>,  <45.902363, 27.530449, 32.056080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.778927, 27.469854, 32.252781>,  <45.573200, 27.368864, 32.580620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.778927, 27.469854, 32.252781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550327, -0.635800, -0.541201,
		-0.657740, 0.729392, -0.188055,
		0.514313, 0.252478, -0.819596,
		45.933220, 27.545597, 32.006901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.044975, 27.473618, 32.005428>,  <45.573200, 27.368864, 32.580620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.044975, 27.473618, 32.005428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.399796, 27.390860, 31.840345>,  <45.612690, 27.341204, 31.741295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.399796, 27.390860, 31.840345>,  <45.044975, 27.473618, 32.005428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.399796, 27.390860, 31.840345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434871, -0.674578, -0.596516,
		-0.154986, 0.708617, -0.688362,
		0.887055, -0.206897, -0.412707,
		45.665913, 27.328791, 31.716534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.751503, 38.130272, 41.080612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418736, 37.913853, 41.129906>,  <38.219074, 37.784000, 41.159481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418736, 37.913853, 41.129906>,  <38.751503, 38.130272, 41.080612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418736, 37.913853, 41.129906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018811, -0.249451, -0.968205,
		0.554582, -0.803147, 0.217700,
		-0.831917, -0.541044, 0.123233,
		38.169159, 37.751541, 41.166874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952152, 37.482376, 40.782089>,  <38.751503, 38.130272, 41.080612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952152, 37.482376, 40.782089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552948, 37.459419, 40.771580>,  <38.313427, 37.445644, 40.765274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552948, 37.459419, 40.771580>,  <38.952152, 37.482376, 40.782089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552948, 37.459419, 40.771580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047211, -0.402475, -0.914213,
		0.041894, -0.913630, 0.404382,
		-0.998006, -0.057391, -0.026272,
		38.253548, 37.442204, 40.763699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769348, 36.842632, 40.434494>,  <38.952152, 37.482376, 40.782089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769348, 36.842632, 40.434494> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458927, 37.093376, 40.406811>,  <38.272675, 37.243824, 40.390202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458927, 37.093376, 40.406811>,  <38.769348, 36.842632, 40.434494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458927, 37.093376, 40.406811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066397, -0.190335, -0.979471,
		-0.627168, -0.755522, 0.189331,
		-0.776049, 0.626864, -0.069208,
		38.226112, 37.281437, 40.386047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398636, 36.578831, 39.884277>,  <38.769348, 36.842632, 40.434494>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398636, 36.578831, 39.884277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204681, 36.925453, 39.931545>,  <38.088310, 37.133427, 39.959908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204681, 36.925453, 39.931545>,  <38.398636, 36.578831, 39.884277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204681, 36.925453, 39.931545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317697, -0.048632, -0.946944,
		-0.814834, -0.496703, 0.298884,
		-0.484885, 0.866557, 0.118174,
		38.059216, 37.185421, 39.966999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822880, 36.479298, 39.524597>,  <38.398636, 36.578831, 39.884277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822880, 36.479298, 39.524597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845512, 36.878082, 39.545979>,  <37.859093, 37.117355, 39.558807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845512, 36.878082, 39.545979>,  <37.822880, 36.479298, 39.524597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845512, 36.878082, 39.545979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318318, 0.068762, -0.945487,
		-0.946294, 0.036478, 0.321242,
		0.056579, 0.996966, 0.053457,
		37.862488, 37.177174, 39.562016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172470, 36.773075, 39.336983>,  <37.822880, 36.479298, 39.524597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172470, 36.773075, 39.336983> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426571, 37.072998, 39.262955>,  <37.579033, 37.252953, 39.218540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426571, 37.072998, 39.262955>,  <37.172470, 36.773075, 39.336983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426571, 37.072998, 39.262955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251077, -0.026111, -0.967615,
		-0.730354, 0.661145, 0.171672,
		0.635251, 0.749804, -0.185068,
		37.617146, 37.297939, 39.207436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818924, 37.349190, 39.093216>,  <37.172470, 36.773075, 39.336983>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818924, 37.349190, 39.093216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199047, 37.392460, 38.976456>,  <37.427120, 37.418423, 38.906399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199047, 37.392460, 38.976456>,  <36.818924, 37.349190, 39.093216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199047, 37.392460, 38.976456> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304551, 0.128883, -0.943736,
		-0.064465, 0.985742, 0.155423,
		0.950312, 0.108172, -0.291900,
		37.484142, 37.424911, 38.888885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681221, 37.661594, 38.557346>,  <36.818924, 37.349190, 39.093216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681221, 37.661594, 38.557346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077335, 37.616776, 38.524391>,  <37.315002, 37.589886, 38.504616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077335, 37.616776, 38.524391>,  <36.681221, 37.661594, 38.557346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077335, 37.616776, 38.524391> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083100, -0.001679, -0.996540,
		0.111519, 0.993702, -0.010974,
		0.990282, -0.112045, -0.082390,
		37.374420, 37.583160, 38.499676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008854, 38.216873, 38.000462>,  <36.681221, 37.661594, 38.557346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008854, 38.216873, 38.000462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234150, 37.889389, 38.045158>,  <37.369328, 37.692898, 38.071976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234150, 37.889389, 38.045158>,  <37.008854, 38.216873, 38.000462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234150, 37.889389, 38.045158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106299, -0.062314, -0.992380,
		0.819430, 0.570821, 0.051930,
		0.563236, -0.818706, 0.111740,
		37.403122, 37.643776, 38.078682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399765, 38.232189, 37.382442>,  <37.008854, 38.216873, 38.000462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399765, 38.232189, 37.382442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477276, 37.860069, 37.507011>,  <37.523785, 37.636795, 37.581753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477276, 37.860069, 37.507011>,  <37.399765, 38.232189, 37.382442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477276, 37.860069, 37.507011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028089, -0.312051, -0.949650,
		0.980642, 0.192772, -0.034339,
		0.193782, -0.930303, 0.311425,
		37.535412, 37.580978, 37.600437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984520, 38.033310, 37.061016>,  <37.399765, 38.232189, 37.382442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984520, 38.033310, 37.061016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811775, 37.685024, 37.155125>,  <37.708130, 37.476051, 37.211590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811775, 37.685024, 37.155125>,  <37.984520, 38.033310, 37.061016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811775, 37.685024, 37.155125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115367, -0.312034, -0.943041,
		0.894531, -0.380122, 0.235207,
		-0.431863, -0.870714, 0.235270,
		37.682217, 37.423809, 37.225704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374878, 37.582836, 36.789429>,  <37.984520, 38.033310, 37.061016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374878, 37.582836, 36.789429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046295, 37.363152, 36.850838>,  <37.849144, 37.231339, 36.887684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046295, 37.363152, 36.850838>,  <38.374878, 37.582836, 36.789429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046295, 37.363152, 36.850838> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012068, -0.285896, -0.958185,
		0.570141, -0.785256, 0.241480,
		-0.821459, -0.549214, 0.153524,
		37.799858, 37.198387, 36.896896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439869, 36.861534, 36.499012>,  <38.374878, 37.582836, 36.789429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439869, 36.861534, 36.499012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041042, 36.881084, 36.475430>,  <37.801746, 36.892815, 36.461281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041042, 36.881084, 36.475430>,  <38.439869, 36.861534, 36.499012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041042, 36.881084, 36.475430> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044672, -0.254028, -0.966165,
		-0.062200, -0.965961, 0.251098,
		-0.997064, 0.048879, -0.058952,
		37.741924, 36.895748, 36.457745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197681, 36.277843, 36.238800>,  <38.439869, 36.861534, 36.499012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197681, 36.277843, 36.238800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867352, 36.461052, 36.107201>,  <37.669155, 36.570976, 36.028240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867352, 36.461052, 36.107201>,  <38.197681, 36.277843, 36.238800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867352, 36.461052, 36.107201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109541, -0.442000, -0.890301,
		-0.553192, -0.771267, 0.314841,
		-0.825820, 0.458020, -0.328997,
		37.619606, 36.598457, 36.008503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872082, 35.651241, 35.909283>,  <38.197681, 36.277843, 36.238800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872082, 35.651241, 35.909283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724377, 36.002480, 35.787563>,  <37.635754, 36.213223, 35.714531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724377, 36.002480, 35.787563>,  <37.872082, 35.651241, 35.909283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724377, 36.002480, 35.787563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181835, -0.389379, -0.902951,
		-0.911364, -0.278089, 0.303449,
		-0.369258, 0.878095, -0.304300,
		37.613598, 36.265907, 35.696274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037045, 35.021702, 35.901913>,  <37.872082, 35.651241, 35.909283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037045, 35.021702, 35.901913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401581, 34.873085, 35.972813>,  <38.620300, 34.783913, 36.015354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401581, 34.873085, 35.972813>,  <38.037045, 35.021702, 35.901913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401581, 34.873085, 35.972813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220101, -0.075914, 0.972519,
		-0.347880, -0.925305, -0.150961,
		0.911337, -0.371546, 0.177252,
		38.674980, 34.761620, 36.025990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028290, 34.317680, 36.316776>,  <38.037045, 35.021702, 35.901913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028290, 34.317680, 36.316776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412605, 34.424160, 36.347824>,  <38.643196, 34.488049, 36.366451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412605, 34.424160, 36.347824>,  <38.028290, 34.317680, 36.316776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412605, 34.424160, 36.347824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055867, -0.088353, 0.994521,
		0.271598, -0.959860, -0.070017,
		0.960788, 0.266199, 0.077621,
		38.700840, 34.504021, 36.371109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376087, 33.801167, 36.781513>,  <38.028290, 34.317680, 36.316776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376087, 33.801167, 36.781513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602535, 34.130436, 36.798912>,  <38.738403, 34.327999, 36.809353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602535, 34.130436, 36.798912>,  <38.376087, 33.801167, 36.781513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602535, 34.130436, 36.798912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058451, -0.092722, 0.993975,
		0.822246, -0.560169, -0.100607,
		0.566123, 0.823172, 0.043498,
		38.772373, 34.377388, 36.811962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700344, 33.557491, 37.262157>,  <38.376087, 33.801167, 36.781513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700344, 33.557491, 37.262157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799099, 33.944702, 37.244404>,  <38.858353, 34.177029, 37.233753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799099, 33.944702, 37.244404>,  <38.700344, 33.557491, 37.262157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799099, 33.944702, 37.244404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091495, 0.022310, 0.995556,
		0.964715, -0.249852, -0.083061,
		0.246889, 0.968027, -0.044382,
		38.873165, 34.235111, 37.231091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324192, 33.692322, 37.702000>,  <38.700344, 33.557491, 37.262157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.324192, 33.692322, 37.702000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148296, 34.049370, 37.662273>,  <39.042759, 34.263599, 37.638439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148296, 34.049370, 37.662273>,  <39.324192, 33.692322, 37.702000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148296, 34.049370, 37.662273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093077, 0.064688, 0.993555,
		0.893290, 0.446148, 0.054636,
		-0.439739, 0.892618, -0.099311,
		39.016376, 34.317154, 37.632481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734005, 34.199574, 38.123013>,  <39.324192, 33.692322, 37.702000>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734005, 34.199574, 38.123013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352348, 34.311016, 38.079208>,  <39.123356, 34.377884, 38.052925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352348, 34.311016, 38.079208>,  <39.734005, 34.199574, 38.123013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352348, 34.311016, 38.079208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109124, 0.016937, 0.993884,
		0.278760, 0.960255, 0.014243,
		-0.954141, 0.278610, -0.109508,
		39.066105, 34.394600, 38.046356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710953, 34.694149, 38.553093>,  <39.734005, 34.199574, 38.123013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710953, 34.694149, 38.553093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325764, 34.605991, 38.490990>,  <39.094650, 34.553097, 38.453728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325764, 34.605991, 38.490990>,  <39.710953, 34.694149, 38.553093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325764, 34.605991, 38.490990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181785, 0.105547, 0.977658,
		-0.199081, 0.969684, -0.141703,
		-0.962975, -0.220393, -0.155261,
		39.036873, 34.539875, 38.444412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327377, 35.260532, 38.734715>,  <39.710953, 34.694149, 38.553093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327377, 35.260532, 38.734715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075962, 34.949665, 38.747040>,  <38.925114, 34.763145, 38.754433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075962, 34.949665, 38.747040>,  <39.327377, 35.260532, 38.734715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075962, 34.949665, 38.747040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139102, 0.151296, 0.978652,
		-0.765236, 0.610837, -0.203201,
		-0.628541, -0.777166, 0.030809,
		38.887402, 34.716515, 38.756283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789837, 35.520199, 39.128429>,  <39.327377, 35.260532, 38.734715>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789837, 35.520199, 39.128429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696114, 35.131351, 39.132050>,  <38.639881, 34.898041, 39.134224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696114, 35.131351, 39.132050>,  <38.789837, 35.520199, 39.128429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696114, 35.131351, 39.132050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346366, 0.092176, 0.933560,
		-0.908368, 0.215603, -0.358306,
		-0.234306, -0.972121, 0.009052,
		38.625820, 34.839714, 39.134766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100559, 35.478493, 39.386585>,  <38.789837, 35.520199, 39.128429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100559, 35.478493, 39.386585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250515, 35.111774, 39.441647>,  <38.340488, 34.891743, 39.474682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250515, 35.111774, 39.441647>,  <38.100559, 35.478493, 39.386585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250515, 35.111774, 39.441647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487622, -0.068719, 0.870346,
		-0.788469, -0.393404, -0.472811,
		0.374889, -0.916794, 0.137650,
		38.362980, 34.836735, 39.482941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521439, 35.198746, 39.789585>,  <38.100559, 35.478493, 39.386585>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521439, 35.198746, 39.789585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873554, 35.014748, 39.836040>,  <38.084824, 34.904350, 39.863914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873554, 35.014748, 39.836040>,  <37.521439, 35.198746, 39.789585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873554, 35.014748, 39.836040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214069, -0.166652, 0.962498,
		-0.423390, -0.872142, -0.245173,
		0.880293, -0.459996, 0.116139,
		38.137642, 34.876747, 39.870884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291946, 34.549179, 40.064674>,  <37.521439, 35.198746, 39.789585>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291946, 34.549179, 40.064674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676670, 34.602615, 40.160240>,  <37.907505, 34.634678, 40.217579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676670, 34.602615, 40.160240>,  <37.291946, 34.549179, 40.064674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676670, 34.602615, 40.160240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201210, -0.246690, 0.947976,
		0.185580, -0.959842, -0.210388,
		0.961808, 0.133593, 0.238910,
		37.965214, 34.642693, 40.231915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459538, 33.913563, 40.412388>,  <37.291946, 34.549179, 40.064674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459538, 33.913563, 40.412388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756882, 34.163280, 40.508453>,  <37.935287, 34.313110, 40.566093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756882, 34.163280, 40.508453>,  <37.459538, 33.913563, 40.412388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756882, 34.163280, 40.508453> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015865, -0.375401, 0.926727,
		0.668706, -0.685079, -0.288962,
		0.743358, 0.624292, 0.240164,
		37.979889, 34.350567, 40.580502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601620, 33.216888, 40.356503>,  <37.459538, 33.913563, 40.412388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601620, 33.216888, 40.356503> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335960, 32.920376, 40.317692>,  <37.176563, 32.742470, 40.294403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335960, 32.920376, 40.317692>,  <37.601620, 33.216888, 40.356503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335960, 32.920376, 40.317692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140522, 0.251253, -0.957667,
		0.734277, -0.622397, -0.271035,
		-0.664148, -0.741279, -0.097029,
		37.136715, 32.697990, 40.288582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784039, 32.679859, 39.700024>,  <37.601620, 33.216888, 40.356503>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784039, 32.679859, 39.700024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395847, 32.672230, 39.796196>,  <37.162933, 32.667652, 39.853897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395847, 32.672230, 39.796196>,  <37.784039, 32.679859, 39.700024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395847, 32.672230, 39.796196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239402, 0.197061, -0.950712,
		-0.029248, -0.980206, -0.195809,
		-0.970480, -0.019071, 0.240427,
		37.104702, 32.666508, 39.868324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565155, 32.703625, 39.026802>,  <37.784039, 32.679859, 39.700024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565155, 32.703625, 39.026802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208992, 32.720325, 39.208099>,  <36.995293, 32.730347, 39.316879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208992, 32.720325, 39.208099>,  <37.565155, 32.703625, 39.026802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208992, 32.720325, 39.208099> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449819, 0.071455, -0.890257,
		-0.069555, -0.996570, -0.044844,
		-0.890407, 0.041751, 0.453246,
		36.941872, 32.732849, 39.344074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980469, 32.208542, 38.736507>,  <37.565155, 32.703625, 39.026802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980469, 32.208542, 38.736507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763477, 32.501781, 38.900597>,  <36.633282, 32.677727, 38.999050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763477, 32.501781, 38.900597>,  <36.980469, 32.208542, 38.736507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763477, 32.501781, 38.900597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514642, 0.095938, -0.852021,
		-0.663970, -0.673323, 0.325238,
		-0.542483, 0.733097, 0.410221,
		36.600731, 32.721710, 39.023663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334637, 32.029499, 38.556309>,  <36.980469, 32.208542, 38.736507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334637, 32.029499, 38.556309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307941, 32.417255, 38.650814>,  <36.291924, 32.649910, 38.707516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307941, 32.417255, 38.650814>,  <36.334637, 32.029499, 38.556309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307941, 32.417255, 38.650814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478389, 0.176708, -0.860185,
		-0.875608, -0.170431, 0.451955,
		-0.066738, 0.969395, 0.236259,
		36.287918, 32.708073, 38.721691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677376, 32.180141, 38.585995>,  <36.334637, 32.029499, 38.556309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677376, 32.180141, 38.585995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837528, 32.545425, 38.555679>,  <35.933620, 32.764595, 38.537491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837528, 32.545425, 38.555679>,  <35.677376, 32.180141, 38.585995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837528, 32.545425, 38.555679> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717921, 0.261205, -0.645261,
		-0.569462, 0.312761, 0.760193,
		0.400379, 0.913210, -0.075791,
		35.957642, 32.819389, 38.532944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072414, 32.623459, 38.544239>,  <35.677376, 32.180141, 38.585995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072414, 32.623459, 38.544239> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370388, 32.843880, 38.393814>,  <35.549171, 32.976131, 38.303558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370388, 32.843880, 38.393814>,  <35.072414, 32.623459, 38.544239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370388, 32.843880, 38.393814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624086, 0.376372, -0.684734,
		-0.235785, 0.744773, 0.624274,
		0.744931, 0.551050, -0.376060,
		35.593868, 33.009193, 38.280994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923542, 33.445103, 38.544456>,  <35.072414, 32.623459, 38.544239>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923542, 33.445103, 38.544456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189522, 33.347279, 38.262169>,  <35.349110, 33.288586, 38.092796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189522, 33.347279, 38.262169>,  <34.923542, 33.445103, 38.544456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189522, 33.347279, 38.262169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619600, 0.346993, -0.704054,
		0.417061, 0.905421, 0.079203,
		0.664948, -0.244559, -0.705716,
		35.389008, 33.273911, 38.050453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594219, 33.840630, 37.961861>,  <34.923542, 33.445103, 38.544456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594219, 33.840630, 37.961861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890205, 33.628613, 37.796207>,  <35.067795, 33.501404, 37.696815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890205, 33.628613, 37.796207>,  <34.594219, 33.840630, 37.961861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890205, 33.628613, 37.796207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374377, 0.186975, -0.908230,
		0.558834, 0.827100, -0.060081,
		0.739964, -0.530043, -0.414135,
		35.112194, 33.469601, 37.671967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886002, 34.343826, 37.616486>,  <34.594219, 33.840630, 37.961861>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886002, 34.343826, 37.616486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958729, 33.978775, 37.470036>,  <35.002365, 33.759743, 37.382164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958729, 33.978775, 37.470036>,  <34.886002, 34.343826, 37.616486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958729, 33.978775, 37.470036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470864, 0.246067, -0.847194,
		0.863267, 0.326426, -0.384987,
		0.181814, -0.912632, -0.366124,
		35.013271, 33.704987, 37.360199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041534, 34.481567, 36.932652>,  <34.886002, 34.343826, 37.616486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041534, 34.481567, 36.932652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985058, 34.085960, 36.950104>,  <34.951172, 33.848595, 36.960575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985058, 34.085960, 36.950104>,  <35.041534, 34.481567, 36.932652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985058, 34.085960, 36.950104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423400, 0.020487, -0.905711,
		0.894872, -0.146358, -0.421643,
		-0.141196, -0.989019, 0.043634,
		34.942699, 33.789253, 36.963196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209805, 34.143684, 36.228317>,  <35.041534, 34.481567, 36.932652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209805, 34.143684, 36.228317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950336, 33.925896, 36.441025>,  <34.794655, 33.795223, 36.568649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950336, 33.925896, 36.441025>,  <35.209805, 34.143684, 36.228317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950336, 33.925896, 36.441025> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639292, 0.010687, -0.768890,
		0.412956, -0.838712, -0.355008,
		-0.648671, -0.544471, 0.531768,
		34.755733, 33.762554, 36.600555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.372799, 32.192303, 44.050217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.986767, 32.167019, 43.948532>,  <36.755146, 32.151848, 43.887520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.986767, 32.167019, 43.948532>,  <37.372799, 32.192303, 44.050217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986767, 32.167019, 43.948532> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261376, -0.167986, -0.950507,
		0.017374, -0.983761, 0.178640,
		-0.965080, -0.063206, -0.254213,
		36.697243, 32.148056, 43.872269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363579, 31.573879, 43.669468>,  <37.372799, 32.192303, 44.050217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363579, 31.573879, 43.669468> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.035431, 31.782104, 43.574799>,  <36.838543, 31.907040, 43.517998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.035431, 31.782104, 43.574799>,  <37.363579, 31.573879, 43.669468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035431, 31.782104, 43.574799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160206, -0.188078, -0.969000,
		-0.548938, -0.832851, 0.070896,
		-0.820367, 0.520563, -0.236671,
		36.789322, 31.938272, 43.503796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097500, 31.087540, 43.111156>,  <37.363579, 31.573879, 43.669468>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097500, 31.087540, 43.111156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.911926, 31.440453, 43.079296>,  <36.800583, 31.652201, 43.060181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.911926, 31.440453, 43.079296>,  <37.097500, 31.087540, 43.111156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911926, 31.440453, 43.079296> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072829, -0.051621, -0.996008,
		-0.882870, -0.467884, -0.040307,
		-0.463936, 0.882281, -0.079650,
		36.772747, 31.705137, 43.055401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560757, 31.041807, 42.619682>,  <37.097500, 31.087540, 43.111156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560757, 31.041807, 42.619682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.666264, 31.427631, 42.622494>,  <36.729568, 31.659126, 42.624180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.666264, 31.427631, 42.622494>,  <36.560757, 31.041807, 42.619682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666264, 31.427631, 42.622494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094685, -0.018641, -0.995333,
		-0.959929, 0.263199, -0.096246,
		0.263764, 0.964562, 0.007027,
		36.745392, 31.716999, 42.624603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251041, 31.316778, 42.009762>,  <36.560757, 31.041807, 42.619682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251041, 31.316778, 42.009762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.501350, 31.619570, 42.085018>,  <36.651535, 31.801245, 42.130173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.501350, 31.619570, 42.085018>,  <36.251041, 31.316778, 42.009762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501350, 31.619570, 42.085018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004229, 0.244493, -0.969642,
		-0.779996, 0.605978, 0.156198,
		0.625770, 0.756977, 0.188141,
		36.689083, 31.846663, 42.141460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954071, 31.854023, 41.667271>,  <36.251041, 31.316778, 42.009762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954071, 31.854023, 41.667271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.338303, 31.952379, 41.719154>,  <36.568840, 32.011395, 41.750286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.338303, 31.952379, 41.719154>,  <35.954071, 31.854023, 41.667271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338303, 31.952379, 41.719154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010585, 0.433890, -0.900903,
		-0.277805, 0.866762, 0.414183,
		0.960579, 0.245891, 0.129711,
		36.626476, 32.026146, 41.758068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052391, 32.578266, 41.333546>,  <35.954071, 31.854023, 41.667271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052391, 32.578266, 41.333546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.415371, 32.411762, 41.356380>,  <36.633160, 32.311859, 41.370083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.415371, 32.411762, 41.356380>,  <36.052391, 32.578266, 41.333546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415371, 32.411762, 41.356380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281965, 0.502605, -0.817241,
		0.311491, 0.757704, 0.573461,
		0.907452, -0.416260, 0.057089,
		36.687607, 32.286884, 41.373508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521175, 33.069534, 41.114910>,  <36.052391, 32.578266, 41.333546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521175, 33.069534, 41.114910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.726059, 32.727428, 41.083504>,  <36.848988, 32.522163, 41.064659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.726059, 32.727428, 41.083504>,  <36.521175, 33.069534, 41.114910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726059, 32.727428, 41.083504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374863, 0.304875, -0.875516,
		0.772736, 0.419014, 0.476767,
		0.512208, -0.855265, -0.078515,
		36.879723, 32.470848, 41.059948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189384, 33.280033, 40.948513>,  <36.521175, 33.069534, 41.114910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189384, 33.280033, 40.948513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.133205, 32.904423, 40.822975>,  <37.099499, 32.679054, 40.747654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.133205, 32.904423, 40.822975>,  <37.189384, 33.280033, 40.948513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133205, 32.904423, 40.822975> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029153, 0.312923, -0.949331,
		0.989658, -0.142483, -0.016575,
		-0.140451, -0.939030, -0.313840,
		37.091072, 32.622715, 40.728825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843052, 33.569073, 41.037708>,  <37.189384, 33.280033, 40.948513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843052, 33.569073, 41.037708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.984829, 33.943062, 41.032047>,  <38.069897, 34.167454, 41.028652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.984829, 33.943062, 41.032047>,  <37.843052, 33.569073, 41.037708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984829, 33.943062, 41.032047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118351, -0.029841, 0.992523,
		0.927558, -0.353467, -0.121232,
		0.354442, 0.934971, -0.014154,
		38.091160, 34.223553, 41.027802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471519, 33.478569, 41.290649>,  <37.843052, 33.569073, 41.037708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471519, 33.478569, 41.290649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.382202, 33.865322, 41.340099>,  <38.328609, 34.097374, 41.369770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.382202, 33.865322, 41.340099>,  <38.471519, 33.478569, 41.290649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382202, 33.865322, 41.340099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090621, -0.105689, 0.990261,
		0.970529, 0.232324, -0.064019,
		-0.223295, 0.966879, 0.123627,
		38.315212, 34.155384, 41.377186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050346, 33.728973, 41.681110>,  <38.471519, 33.478569, 41.290649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050346, 33.728973, 41.681110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.740009, 33.973476, 41.743633>,  <38.553806, 34.120178, 41.781147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.740009, 33.973476, 41.743633>,  <39.050346, 33.728973, 41.681110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740009, 33.973476, 41.743633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175116, -0.029387, 0.984109,
		0.606139, 0.790885, -0.084241,
		-0.775842, 0.611259, 0.156309,
		38.507256, 34.156853, 41.790527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350937, 34.273674, 42.110008>,  <39.050346, 33.728973, 41.681110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350937, 34.273674, 42.110008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.958778, 34.317436, 42.175560>,  <38.723484, 34.343693, 42.214890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.958778, 34.317436, 42.175560>,  <39.350937, 34.273674, 42.110008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958778, 34.317436, 42.175560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174159, 0.092155, 0.980396,
		0.092155, 0.989717, -0.109402,
		-0.980396, 0.109402, 0.163876,
		38.664661, 34.350258, 42.224724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328114, 34.711575, 42.602757>,  <39.350937, 34.273674, 42.110008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328114, 34.711575, 42.602757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.955605, 34.569241, 42.634037>,  <38.732101, 34.483841, 42.652805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.955605, 34.569241, 42.634037>,  <39.328114, 34.711575, 42.602757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955605, 34.569241, 42.634037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060487, 0.060669, 0.996323,
		-0.359275, 0.932576, -0.034976,
		-0.931269, -0.355839, 0.078206,
		38.676224, 34.462490, 42.657497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920685, 35.174908, 43.021412>,  <39.328114, 34.711575, 42.602757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920685, 35.174908, 43.021412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.785683, 34.799507, 43.050533>,  <38.704681, 34.574265, 43.068005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.785683, 34.799507, 43.050533>,  <38.920685, 35.174908, 43.021412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785683, 34.799507, 43.050533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140202, 0.026362, 0.989772,
		-0.930824, 0.344262, 0.122682,
		-0.337507, -0.938504, 0.072805,
		38.684429, 34.517956, 43.072376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578224, 35.241520, 43.558819>,  <38.920685, 35.174908, 43.021412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578224, 35.241520, 43.558819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.590469, 34.843552, 43.520473>,  <38.597816, 34.604771, 43.497467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.590469, 34.843552, 43.520473>,  <38.578224, 35.241520, 43.558819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590469, 34.843552, 43.520473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033790, -0.096883, 0.994722,
		-0.998960, -0.027207, -0.036584,
		0.030608, -0.994924, -0.095863,
		38.599651, 34.545074, 43.491714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006886, 35.060192, 43.864613>,  <38.578224, 35.241520, 43.558819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006886, 35.060192, 43.864613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.275963, 34.764301, 43.871449>,  <38.437408, 34.586769, 43.875549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.275963, 34.764301, 43.871449>,  <38.006886, 35.060192, 43.864613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275963, 34.764301, 43.871449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064544, 0.081671, 0.994567,
		-0.737100, -0.667937, 0.102684,
		0.672694, -0.739723, 0.017089,
		38.477772, 34.542385, 43.876575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793835, 34.663589, 44.411259>,  <38.006886, 35.060192, 43.864613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793835, 34.663589, 44.411259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.153503, 34.494518, 44.365936>,  <38.369305, 34.393078, 44.338741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.153503, 34.494518, 44.365936>,  <37.793835, 34.663589, 44.411259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153503, 34.494518, 44.365936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003294, -0.265454, 0.964118,
		-0.437587, -0.866533, -0.240081,
		0.899170, -0.422676, -0.113305,
		38.423256, 34.367714, 44.331944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725922, 34.031754, 44.712612>,  <37.793835, 34.663589, 44.411259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725922, 34.031754, 44.712612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.110184, 34.142601, 44.720104>,  <38.340740, 34.209110, 44.724598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.110184, 34.142601, 44.720104>,  <37.725922, 34.031754, 44.712612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110184, 34.142601, 44.720104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032911, -0.180520, 0.983021,
		0.275797, -0.943725, -0.182537,
		0.960653, 0.277122, 0.018728,
		38.398380, 34.225739, 44.725723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067432, 33.511967, 45.017994>,  <37.725922, 34.031754, 44.712612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067432, 33.511967, 45.017994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.323521, 33.816658, 45.057755>,  <38.477173, 33.999474, 45.081612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.323521, 33.816658, 45.057755>,  <38.067432, 33.511967, 45.017994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323521, 33.816658, 45.057755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160035, -0.258812, 0.952578,
		0.751334, -0.593955, -0.287601,
		0.640223, 0.761731, 0.099401,
		38.515587, 34.045177, 45.087574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471821, 33.214134, 45.641479>,  <38.067432, 33.511967, 45.017994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471821, 33.214134, 45.641479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.626572, 33.582119, 45.616196>,  <38.719421, 33.802910, 45.601025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.626572, 33.582119, 45.616196>,  <38.471821, 33.214134, 45.641479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626572, 33.582119, 45.616196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289473, -0.056081, 0.955542,
		0.875518, -0.387974, -0.288001,
		0.386876, 0.919963, -0.063208,
		38.742634, 33.858109, 45.597233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052174, 33.154686, 45.983921>,  <38.471821, 33.214134, 45.641479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052174, 33.154686, 45.983921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.941124, 33.538902, 45.990593>,  <38.874493, 33.769432, 45.994595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.941124, 33.538902, 45.990593>,  <39.052174, 33.154686, 45.983921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941124, 33.538902, 45.990593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216402, 0.045615, 0.975238,
		0.936000, 0.274359, -0.220527,
		-0.277624, 0.960545, 0.016676,
		38.857838, 33.827065, 45.995594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574306, 33.604538, 46.288624>,  <39.052174, 33.154686, 45.983921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574306, 33.604538, 46.288624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.242973, 33.826942, 46.316109>,  <39.044174, 33.960384, 46.332600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.242973, 33.826942, 46.316109>,  <39.574306, 33.604538, 46.288624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242973, 33.826942, 46.316109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261597, 0.275396, 0.925053,
		0.495415, 0.784225, -0.373570,
		-0.828330, 0.556010, 0.068716,
		38.994473, 33.993744, 46.336723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.651957, 35.924683, 47.296112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.944359, 35.683247, 47.168797>,  <31.119801, 35.538383, 47.092407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.944359, 35.683247, 47.168797>,  <30.651957, 35.924683, 47.296112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944359, 35.683247, 47.168797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184982, 0.273696, -0.943860,
		0.656822, 0.748844, 0.088419,
		0.731004, -0.603592, -0.318292,
		31.163660, 35.502171, 47.073307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883251, 36.276917, 46.713467>,  <30.651957, 35.924683, 47.296112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883251, 36.276917, 46.713467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.066990, 35.926548, 46.654465>,  <31.177233, 35.716328, 46.619064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.066990, 35.926548, 46.654465>,  <30.883251, 36.276917, 46.713467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066990, 35.926548, 46.654465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050594, 0.191596, -0.980169,
		0.886814, 0.442776, 0.132326,
		0.459349, -0.875922, -0.147508,
		31.204794, 35.663773, 46.610210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573009, 36.461525, 46.289722>,  <30.883251, 36.276917, 46.713467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573009, 36.461525, 46.289722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.466228, 36.080379, 46.232059>,  <31.402159, 35.851692, 46.197460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.466228, 36.080379, 46.232059>,  <31.573009, 36.461525, 46.289722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466228, 36.080379, 46.232059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156489, 0.104743, -0.982110,
		0.950919, -0.284738, 0.121152,
		-0.266954, -0.952866, -0.144160,
		31.386143, 35.794521, 46.188812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109489, 36.194744, 45.916229>,  <31.573009, 36.461525, 46.289722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109489, 36.194744, 45.916229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.782051, 35.976723, 45.843765>,  <31.585588, 35.845909, 45.800285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.782051, 35.976723, 45.843765>,  <32.109489, 36.194744, 45.916229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782051, 35.976723, 45.843765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213173, 0.004574, -0.977004,
		0.533349, -0.838388, 0.112446,
		-0.818594, -0.545054, -0.181161,
		31.536472, 35.813206, 45.789417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402958, 35.731304, 45.427422>,  <32.109489, 36.194744, 45.916229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402958, 35.731304, 45.427422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.008957, 35.678440, 45.383057>,  <31.772556, 35.646721, 45.356438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.008957, 35.678440, 45.383057>,  <32.402958, 35.731304, 45.427422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.008957, 35.678440, 45.383057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125702, -0.109392, -0.986018,
		0.118178, -0.985174, 0.124364,
		-0.985004, -0.132159, -0.110910,
		31.713455, 35.638794, 45.349785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327656, 35.169987, 44.876194>,  <32.402958, 35.731304, 45.427422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327656, 35.169987, 44.876194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.008717, 35.409672, 44.904995>,  <31.817354, 35.553482, 44.922276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.008717, 35.409672, 44.904995>,  <32.327656, 35.169987, 44.876194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.008717, 35.409672, 44.904995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090828, -0.001203, -0.995866,
		-0.596650, -0.800588, 0.055385,
		-0.797346, 0.599214, 0.071998,
		31.769512, 35.589436, 44.926594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813318, 34.881584, 44.407852>,  <32.327656, 35.169987, 44.876194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813318, 34.881584, 44.407852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.733654, 35.264523, 44.491589>,  <31.685856, 35.494286, 44.541832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.733654, 35.264523, 44.491589>,  <31.813318, 34.881584, 44.407852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733654, 35.264523, 44.491589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104874, 0.191576, -0.975859,
		-0.974339, -0.216306, 0.062246,
		-0.199160, 0.957345, 0.209345,
		31.673906, 35.551727, 44.554394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.504475, 35.116726, 43.787636>,  <31.813318, 34.881584, 44.407852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.504475, 35.116726, 43.787636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.566683, 35.480068, 43.942921>,  <31.604008, 35.698074, 44.036091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.566683, 35.480068, 43.942921>,  <31.504475, 35.116726, 43.787636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566683, 35.480068, 43.942921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018433, 0.390257, -0.920521,
		-0.987660, 0.150318, 0.043950,
		0.155523, 0.908352, 0.388212,
		31.613340, 35.752575, 44.059383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982044, 35.488216, 43.534252>,  <31.504475, 35.116726, 43.787636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982044, 35.488216, 43.534252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.267246, 35.748444, 43.638855>,  <31.438368, 35.904579, 43.701618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.267246, 35.748444, 43.638855>,  <30.982044, 35.488216, 43.534252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267246, 35.748444, 43.638855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123480, 0.483639, -0.866514,
		-0.690203, 0.585536, 0.425168,
		0.713003, 0.650570, 0.261507,
		31.481148, 35.943615, 43.717308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731720, 36.127262, 43.338627>,  <30.982044, 35.488216, 43.534252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.731720, 36.127262, 43.338627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.125317, 36.184528, 43.381084>,  <31.361475, 36.218887, 43.406559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.125317, 36.184528, 43.381084>,  <30.731720, 36.127262, 43.338627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.125317, 36.184528, 43.381084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036903, 0.419025, -0.907224,
		-0.174358, 0.896617, 0.407034,
		0.983991, 0.143161, 0.106148,
		31.420513, 36.227478, 43.412930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.830833, 36.725563, 43.136311>,  <30.731720, 36.127262, 43.338627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.830833, 36.725563, 43.136311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.192165, 36.557461, 43.101955>,  <31.408964, 36.456600, 43.081341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.192165, 36.557461, 43.101955>,  <30.830833, 36.725563, 43.136311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.192165, 36.557461, 43.101955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054283, 0.310631, -0.948979,
		0.425496, 0.852579, 0.303416,
		0.903331, -0.420258, -0.085892,
		31.463165, 36.431385, 43.076187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273954, 37.307728, 42.911514>,  <30.830833, 36.725563, 43.136311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273954, 37.307728, 42.911514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.434052, 36.957142, 42.804478>,  <31.530109, 36.746788, 42.740253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.434052, 36.957142, 42.804478>,  <31.273954, 37.307728, 42.911514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434052, 36.957142, 42.804478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044726, 0.310339, -0.949573,
		0.915317, 0.368091, 0.163412,
		0.400243, -0.876469, -0.267596,
		31.554125, 36.694202, 42.724197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811502, 37.510010, 42.550327>,  <31.273954, 37.307728, 42.911514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.811502, 37.510010, 42.550327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.733671, 37.126930, 42.465523>,  <31.686972, 36.897083, 42.414642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.733671, 37.126930, 42.465523>,  <31.811502, 37.510010, 42.550327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733671, 37.126930, 42.465523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043949, 0.224435, -0.973498,
		0.979902, -0.180104, -0.085760,
		-0.194578, -0.957701, -0.212009,
		31.675297, 36.839619, 42.401920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.416023, 37.136017, 42.211967>,  <31.811502, 37.510010, 42.550327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.416023, 37.136017, 42.211967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.086525, 36.952019, 42.079391>,  <31.888826, 36.841621, 41.999844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.086525, 36.952019, 42.079391>,  <32.416023, 37.136017, 42.211967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086525, 36.952019, 42.079391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145235, 0.393889, -0.907611,
		0.548046, -0.795776, -0.257656,
		-0.823743, -0.459992, -0.331444,
		31.839401, 36.814022, 41.979958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238453, 36.981918, 42.105896>,  <32.416023, 37.136017, 42.211967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238453, 36.981918, 42.105896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.490330, 37.279934, 42.017887>,  <33.641457, 37.458744, 41.965080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.490330, 37.279934, 42.017887>,  <33.238453, 36.981918, 42.105896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490330, 37.279934, 42.017887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093294, 0.208649, 0.973530,
		0.771225, -0.633548, 0.061877,
		0.629689, 0.745038, -0.220022,
		33.679237, 37.503445, 41.951881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743675, 36.808819, 42.505413>,  <33.238453, 36.981918, 42.105896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743675, 36.808819, 42.505413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.801201, 37.194592, 42.416695>,  <33.835716, 37.426056, 42.363464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.801201, 37.194592, 42.416695>,  <33.743675, 36.808819, 42.505413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801201, 37.194592, 42.416695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399254, 0.148534, 0.904729,
		0.905491, -0.218666, -0.363691,
		0.143813, 0.964429, -0.221800,
		33.844345, 37.483921, 42.350155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485287, 36.954205, 42.637722>,  <33.743675, 36.808819, 42.505413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485287, 36.954205, 42.637722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.279190, 37.297016, 42.635654>,  <34.155533, 37.502705, 42.634415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.279190, 37.297016, 42.635654>,  <34.485287, 36.954205, 42.637722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279190, 37.297016, 42.635654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408069, 0.250628, 0.877876,
		0.753662, 0.450206, -0.478861,
		-0.515241, 0.857030, -0.005174,
		34.124619, 37.554127, 42.634102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937531, 37.432533, 42.907352>,  <34.485287, 36.954205, 42.637722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937531, 37.432533, 42.907352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.564323, 37.564846, 42.963997>,  <34.340397, 37.644234, 42.997986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.564323, 37.564846, 42.963997>,  <34.937531, 37.432533, 42.907352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564323, 37.564846, 42.963997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222214, 0.220148, 0.949819,
		0.283008, 0.917669, -0.278908,
		-0.933021, 0.330783, 0.141615,
		34.284416, 37.664082, 43.006481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986027, 37.901627, 43.406921>,  <34.937531, 37.432533, 42.907352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986027, 37.901627, 43.406921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.588276, 37.933483, 43.434837>,  <34.349625, 37.952595, 43.451588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.588276, 37.933483, 43.434837>,  <34.986027, 37.901627, 43.406921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588276, 37.933483, 43.434837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084290, 0.196408, 0.976893,
		0.064091, 0.977283, -0.202017,
		-0.994378, 0.079638, 0.069787,
		34.289963, 37.957375, 43.455772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680805, 38.595425, 43.781887>,  <34.986027, 37.901627, 43.406921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680805, 38.595425, 43.781887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.394951, 38.318375, 43.821003>,  <34.223438, 38.152145, 43.844471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.394951, 38.318375, 43.821003>,  <34.680805, 38.595425, 43.781887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394951, 38.318375, 43.821003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030985, 0.108316, 0.993634,
		-0.698807, 0.713119, -0.055946,
		-0.714639, -0.692625, 0.097788,
		34.180561, 38.110588, 43.850338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277168, 38.913528, 44.317081>,  <34.680805, 38.595425, 43.781887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277168, 38.913528, 44.317081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.176971, 38.527264, 44.289494>,  <34.116852, 38.295506, 44.272942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.176971, 38.527264, 44.289494>,  <34.277168, 38.913528, 44.317081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176971, 38.527264, 44.289494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090200, -0.047649, 0.994783,
		-0.963908, 0.255405, -0.075167,
		-0.250491, -0.965659, -0.068966,
		34.101826, 38.237564, 44.268803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745079, 38.827942, 44.715958>,  <34.277168, 38.913528, 44.317081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745079, 38.827942, 44.715958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.918068, 38.470314, 44.669308>,  <34.021862, 38.255737, 44.641315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.918068, 38.470314, 44.669308>,  <33.745079, 38.827942, 44.715958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918068, 38.470314, 44.669308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062599, -0.099264, 0.993090,
		-0.899471, -0.436786, 0.013039,
		0.432473, -0.894072, -0.116627,
		34.047810, 38.202091, 44.634319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570309, 38.572010, 45.356705>,  <33.745079, 38.827942, 44.715958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570309, 38.572010, 45.356705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.844326, 38.312298, 45.224556>,  <34.008736, 38.156471, 45.145267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.844326, 38.312298, 45.224556>,  <33.570309, 38.572010, 45.356705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844326, 38.312298, 45.224556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192316, -0.276235, 0.941652,
		-0.702661, -0.708608, -0.064364,
		0.685042, -0.649284, -0.330376,
		34.049839, 38.117512, 45.125443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446339, 37.876713, 45.547630>,  <33.570309, 38.572010, 45.356705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446339, 37.876713, 45.547630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.840504, 37.851440, 45.484413>,  <34.077003, 37.836277, 45.446484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.840504, 37.851440, 45.484413>,  <33.446339, 37.876713, 45.547630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840504, 37.851440, 45.484413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130001, -0.319929, 0.938480,
		-0.109852, -0.945333, -0.307048,
		0.985410, -0.063177, -0.158039,
		34.136127, 37.832485, 45.437000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582790, 37.232407, 45.745884>,  <33.446339, 37.876713, 45.547630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582790, 37.232407, 45.745884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.928963, 37.432713, 45.752426>,  <34.136665, 37.552895, 45.756351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.928963, 37.432713, 45.752426>,  <33.582790, 37.232407, 45.745884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928963, 37.432713, 45.752426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176087, -0.334551, 0.925780,
		0.469067, -0.798319, -0.377708,
		0.865431, 0.500762, 0.016353,
		34.188591, 37.582943, 45.757332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105736, 36.778313, 45.869610>,  <33.582790, 37.232407, 45.745884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105736, 36.778313, 45.869610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.246517, 37.139931, 45.966621>,  <34.330986, 37.356903, 46.024830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.246517, 37.139931, 45.966621>,  <34.105736, 36.778313, 45.869610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246517, 37.139931, 45.966621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266582, -0.345195, 0.899874,
		0.897252, -0.252061, -0.362497,
		0.351956, 0.904049, 0.242532,
		34.352104, 37.411144, 46.039383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666695, 36.619633, 46.263813>,  <34.105736, 36.778313, 45.869610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666695, 36.619633, 46.263813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.596447, 37.001751, 46.358944>,  <34.554298, 37.231022, 46.416023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.596447, 37.001751, 46.358944>,  <34.666695, 36.619633, 46.263813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596447, 37.001751, 46.358944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158406, -0.211010, 0.964563,
		0.971630, 0.207068, -0.114268,
		-0.175619, 0.955300, 0.237825,
		34.543762, 37.288342, 46.430290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263577, 37.040195, 46.530891>,  <34.666695, 36.619633, 46.263813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263577, 37.040195, 46.530891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.932056, 37.200901, 46.686676>,  <34.733147, 37.297325, 46.780148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.932056, 37.200901, 46.686676>,  <35.263577, 37.040195, 46.530891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932056, 37.200901, 46.686676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361236, -0.147368, 0.920756,
		0.427322, 0.903807, -0.022994,
		-0.828797, 0.401766, 0.389461,
		34.683418, 37.321430, 46.803513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863182, 37.496754, 46.551159>,  <35.263577, 37.040195, 46.530891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863182, 37.496754, 46.551159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.261967, 37.480965, 46.524311>,  <36.501240, 37.471489, 46.508202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.261967, 37.480965, 46.524311>,  <35.863182, 37.496754, 46.551159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261967, 37.480965, 46.524311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065654, 0.037277, -0.997146,
		0.041866, 0.998525, 0.034572,
		0.996964, -0.039476, -0.067118,
		36.561054, 37.469120, 46.504177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073086, 38.008194, 46.004845>,  <35.863182, 37.496754, 46.551159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073086, 38.008194, 46.004845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.387634, 37.767693, 46.061577>,  <36.576363, 37.623390, 46.095615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.387634, 37.767693, 46.061577>,  <36.073086, 38.008194, 46.004845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387634, 37.767693, 46.061577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220810, 0.059148, -0.973522,
		0.576946, 0.796865, 0.179275,
		0.786369, -0.601255, 0.141830,
		36.623547, 37.587315, 46.104126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609825, 38.306438, 45.769688>,  <36.073086, 38.008194, 46.004845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609825, 38.306438, 45.769688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.736259, 37.927242, 45.754692>,  <36.812119, 37.699726, 45.745693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.736259, 37.927242, 45.754692>,  <36.609825, 38.306438, 45.769688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736259, 37.927242, 45.754692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356716, 0.155369, -0.921203,
		0.879117, 0.277802, 0.387273,
		0.316082, -0.947991, -0.037491,
		36.831085, 37.642845, 45.743446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324600, 38.323002, 45.500229>,  <36.609825, 38.306438, 45.769688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324600, 38.323002, 45.500229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.205120, 37.945011, 45.446873>,  <37.133430, 37.718216, 45.414860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.205120, 37.945011, 45.446873>,  <37.324600, 38.323002, 45.500229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205120, 37.945011, 45.446873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407155, 0.000232, -0.913359,
		0.863135, -0.327135, 0.384683,
		-0.298703, -0.944978, -0.133395,
		37.115509, 37.661518, 45.406853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933228, 37.993603, 45.332745>,  <37.324600, 38.323002, 45.500229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933228, 37.993603, 45.332745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.626842, 37.786186, 45.180740>,  <37.443012, 37.661736, 45.089539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.626842, 37.786186, 45.180740>,  <37.933228, 37.993603, 45.332745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626842, 37.786186, 45.180740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426211, 0.032933, -0.904024,
		0.481293, -0.854415, 0.195784,
		-0.765964, -0.518546, -0.380012,
		37.397053, 37.630623, 45.066738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140099, 37.427429, 44.965378>,  <37.933228, 37.993603, 45.332745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140099, 37.427429, 44.965378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.776043, 37.363789, 44.812359>,  <37.557610, 37.325603, 44.720547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.776043, 37.363789, 44.812359>,  <38.140099, 37.427429, 44.965378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776043, 37.363789, 44.812359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373113, 0.086640, -0.923732,
		0.180108, -0.983454, -0.019492,
		-0.910136, -0.159098, -0.382544,
		37.503002, 37.316059, 44.697594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175816, 36.875816, 44.528862>,  <38.140099, 37.427429, 44.965378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175816, 36.875816, 44.528862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.901684, 37.148640, 44.426785>,  <37.737206, 37.312332, 44.365540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.901684, 37.148640, 44.426785>,  <38.175816, 36.875816, 44.528862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901684, 37.148640, 44.426785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337486, -0.013057, -0.941240,
		-0.645309, -0.731185, -0.221235,
		-0.685332, 0.682054, -0.255191,
		37.696083, 37.353256, 44.350227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947994, 36.579857, 43.968910>,  <38.175816, 36.875816, 44.528862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947994, 36.579857, 43.968910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.826511, 36.959492, 43.935452>,  <37.753624, 37.187271, 43.915379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.826511, 36.959492, 43.935452>,  <37.947994, 36.579857, 43.968910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826511, 36.959492, 43.935452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242247, -0.007986, -0.970182,
		-0.921455, -0.314911, -0.227489,
		-0.303704, 0.949088, -0.083645,
		37.735401, 37.244217, 43.910358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483192, 36.658104, 43.304161>,  <37.947994, 36.579857, 43.968910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483192, 36.658104, 43.304161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.602436, 37.031670, 43.383083>,  <37.673985, 37.255810, 43.430439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.602436, 37.031670, 43.383083>,  <37.483192, 36.658104, 43.304161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602436, 37.031670, 43.383083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088845, 0.178662, -0.979891,
		-0.950387, 0.309647, -0.029712,
		0.298112, 0.933916, 0.197309,
		37.691868, 37.311844, 43.442276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052826, 37.026157, 42.949112>,  <37.483192, 36.658104, 43.304161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052826, 37.026157, 42.949112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.372932, 37.259289, 43.005527>,  <37.564995, 37.399166, 43.039379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.372932, 37.259289, 43.005527>,  <37.052826, 37.026157, 42.949112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372932, 37.259289, 43.005527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036017, 0.281499, -0.958885,
		-0.598567, 0.762280, 0.246265,
		0.800262, 0.582827, 0.141041,
		37.613010, 37.434135, 43.047840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883961, 37.715588, 42.747807>,  <37.052826, 37.026157, 42.949112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883961, 37.715588, 42.747807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.283680, 37.717518, 42.732910>,  <37.523510, 37.718678, 42.723972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.283680, 37.717518, 42.732910>,  <36.883961, 37.715588, 42.747807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283680, 37.717518, 42.732910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036530, 0.355040, -0.934137,
		0.008714, 0.934839, 0.354966,
		0.999295, 0.004827, -0.037244,
		37.583469, 37.718967, 42.721737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098225, 38.336658, 42.343838>,  <36.883961, 37.715588, 42.747807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098225, 38.336658, 42.343838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.399712, 38.075600, 42.312939>,  <37.580605, 37.918964, 42.294399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.399712, 38.075600, 42.312939>,  <37.098225, 38.336658, 42.343838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399712, 38.075600, 42.312939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041622, 0.164703, -0.985465,
		0.655883, 0.739544, 0.151304,
		0.753715, -0.652647, -0.077245,
		37.625828, 37.879807, 42.289764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528725, 38.583988, 41.869389>,  <37.098225, 38.336658, 42.343838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528725, 38.583988, 41.869389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.667351, 38.208981, 41.881733>,  <37.750526, 37.983974, 41.889141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.667351, 38.208981, 41.881733>,  <37.528725, 38.583988, 41.869389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667351, 38.208981, 41.881733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214942, 0.047346, -0.975478,
		0.913068, 0.344698, 0.217921,
		0.346563, -0.937519, 0.030860,
		37.771320, 37.927727, 41.890991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178104, 38.623936, 41.455956>,  <37.528725, 38.583988, 41.869389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178104, 38.623936, 41.455956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.077705, 38.238575, 41.493603>,  <38.017467, 38.007359, 41.516190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.077705, 38.238575, 41.493603>,  <38.178104, 38.623936, 41.455956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077705, 38.238575, 41.493603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172569, -0.140206, -0.974968,
		0.952482, -0.228469, 0.201444,
		-0.250993, -0.963402, 0.094117,
		38.002407, 37.949554, 41.521839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.669586, 42.438114, 33.144283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.445955, 42.544022, 32.830002>,  <29.311777, 42.607567, 32.641434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.445955, 42.544022, 32.830002>,  <29.669586, 42.438114, 33.144283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445955, 42.544022, 32.830002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739645, -0.587469, 0.328337,
		-0.374646, 0.764709, 0.524271,
		-0.559075, 0.264764, -0.785706,
		29.278233, 42.623451, 32.594292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.014042, 42.728024, 33.393936>,  <29.669586, 42.438114, 33.144283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.014042, 42.728024, 33.393936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.964750, 42.589848, 33.021812>,  <28.935175, 42.506943, 32.798538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.964750, 42.589848, 33.021812>,  <29.014042, 42.728024, 33.393936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.964750, 42.589848, 33.021812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836030, -0.468940, 0.284867,
		-0.534667, 0.812874, -0.231013,
		-0.123230, -0.345443, -0.930314,
		28.927782, 42.486214, 32.742718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.255768, 42.881748, 33.269676>,  <29.014042, 42.728024, 33.393936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.255768, 42.881748, 33.269676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.380684, 42.599392, 33.015373>,  <28.455633, 42.429977, 32.862789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.380684, 42.599392, 33.015373>,  <28.255768, 42.881748, 33.269676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.380684, 42.599392, 33.015373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829178, -0.529139, 0.180208,
		-0.463613, 0.470882, -0.750555,
		0.312292, -0.705891, -0.635761,
		28.474371, 42.387623, 32.824646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.716356, 42.811321, 32.984253>,  <28.255768, 42.881748, 33.269676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.716356, 42.811321, 32.984253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.911495, 42.473629, 32.895451>,  <28.028578, 42.271015, 32.842167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.911495, 42.473629, 32.895451>,  <27.716356, 42.811321, 32.984253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.911495, 42.473629, 32.895451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846567, -0.519587, 0.115559,
		-0.212911, 0.131571, -0.968173,
		0.487845, -0.844227, -0.222009,
		28.057848, 42.220360, 32.828846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.220261, 42.467781, 32.768139>,  <27.716356, 42.811321, 32.984253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.220261, 42.467781, 32.768139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.495417, 42.177902, 32.784206>,  <27.660511, 42.003975, 32.793846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.495417, 42.177902, 32.784206>,  <27.220261, 42.467781, 32.768139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.495417, 42.177902, 32.784206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717590, -0.670749, 0.187513,
		-0.108948, -0.157813, -0.981440,
		0.687892, -0.724700, 0.040168,
		27.701784, 41.960491, 32.796257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.961946, 41.943428, 32.418316>,  <27.220261, 42.467781, 32.768139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.961946, 41.943428, 32.418316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.237221, 41.768036, 32.649532>,  <27.402386, 41.662800, 32.788261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.237221, 41.768036, 32.649532>,  <26.961946, 41.943428, 32.418316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.237221, 41.768036, 32.649532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630388, -0.755788, 0.177189,
		0.359184, -0.486330, -0.796536,
		0.688185, -0.438484, 0.578044,
		27.443676, 41.636490, 32.822945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.061659, 41.272137, 32.206757>,  <26.961946, 41.943428, 32.418316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.061659, 41.272137, 32.206757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.195227, 41.235535, 32.582016>,  <27.275368, 41.213573, 32.807171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.195227, 41.235535, 32.582016>,  <27.061659, 41.272137, 32.206757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.195227, 41.235535, 32.582016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669089, -0.724054, 0.167527,
		0.663941, -0.683646, -0.303001,
		0.333918, -0.091507, 0.938150,
		27.295403, 41.208084, 32.863461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.345209, 40.651943, 32.297066>,  <27.061659, 41.272137, 32.206757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.345209, 40.651943, 32.297066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.273001, 40.736919, 32.681206>,  <27.229675, 40.787907, 32.911690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.273001, 40.736919, 32.681206>,  <27.345209, 40.651943, 32.297066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.273001, 40.736919, 32.681206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577432, -0.813313, 0.071374,
		0.796231, -0.541654, 0.269494,
		-0.180523, 0.212444, 0.960354,
		27.218843, 40.800652, 32.969311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.580090, 40.046009, 32.773079>,  <27.345209, 40.651943, 32.297066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.580090, 40.046009, 32.773079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.309544, 40.268837, 32.965828>,  <27.147217, 40.402534, 33.081478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.309544, 40.268837, 32.965828>,  <27.580090, 40.046009, 32.773079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.309544, 40.268837, 32.965828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540486, -0.819821, 0.189129,
		0.500408, -0.132526, 0.855587,
		-0.676363, 0.557074, 0.481873,
		27.106634, 40.435959, 33.110390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.577457, 39.786854, 33.464596>,  <27.580090, 40.046009, 32.773079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.577457, 39.786854, 33.464596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.230175, 39.971886, 33.392769>,  <27.021807, 40.082905, 33.349670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.230175, 39.971886, 33.392769>,  <27.577457, 39.786854, 33.464596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.230175, 39.971886, 33.392769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493329, -0.843584, 0.212116,
		-0.053363, 0.272747, 0.960605,
		-0.868204, 0.462575, -0.179570,
		26.969713, 40.110657, 33.338898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.036440, 39.743660, 34.056561>,  <27.577457, 39.786854, 33.464596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.036440, 39.743660, 34.056561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.816662, 39.846569, 33.738586>,  <26.684795, 39.908314, 33.547802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.816662, 39.846569, 33.738586>,  <27.036440, 39.743660, 34.056561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.816662, 39.846569, 33.738586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593546, -0.789805, 0.154635,
		-0.588060, 0.556794, 0.586657,
		-0.549444, 0.257273, -0.794935,
		26.651829, 39.923752, 33.500107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.385660, 39.816944, 34.265858>,  <27.036440, 39.743660, 34.056561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.385660, 39.816944, 34.265858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.307829, 39.787556, 33.874603>,  <26.261129, 39.769924, 33.639851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.307829, 39.787556, 33.874603>,  <26.385660, 39.816944, 34.265858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.307829, 39.787556, 33.874603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552170, -0.815979, 0.171131,
		-0.810708, 0.573394, 0.118205,
		-0.194578, -0.073468, -0.978132,
		26.249454, 39.765514, 33.581165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.740353, 40.018761, 34.324341>,  <26.385660, 39.816944, 34.265858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.740353, 40.018761, 34.324341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.810268, 39.798740, 33.997688>,  <25.852219, 39.666729, 33.801697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.810268, 39.798740, 33.997688>,  <25.740353, 40.018761, 34.324341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.810268, 39.798740, 33.997688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498456, -0.764700, 0.408381,
		-0.849111, 0.335676, -0.407837,
		0.174790, -0.550050, -0.816636,
		25.862705, 39.633724, 33.752697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.100573, 39.596630, 34.158543>,  <25.740353, 40.018761, 34.324341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.100573, 39.596630, 34.158543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.398138, 39.408710, 33.968433>,  <25.576677, 39.295959, 33.854370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.398138, 39.408710, 33.968433>,  <25.100573, 39.596630, 34.158543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.398138, 39.408710, 33.968433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395656, -0.882775, 0.253309,
		-0.538561, -0.000397, -0.842587,
		0.743914, -0.469797, -0.475271,
		25.621313, 39.267773, 33.825851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.723139, 39.060474, 33.907833>,  <25.100573, 39.596630, 34.158543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.723139, 39.060474, 33.907833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.107679, 38.956188, 33.872437>,  <25.338404, 38.893616, 33.851200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.107679, 38.956188, 33.872437>,  <24.723139, 39.060474, 33.907833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.107679, 38.956188, 33.872437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263366, -0.964498, -0.019538,
		-0.080254, 0.042088, -0.995886,
		0.961352, -0.260715, -0.088490,
		25.396086, 38.877975, 33.845890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.786278, 38.623810, 33.337173>,  <24.723139, 39.060474, 33.907833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.786278, 38.623810, 33.337173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.088455, 38.537384, 33.584599>,  <25.269762, 38.485527, 33.733055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.088455, 38.537384, 33.584599>,  <24.786278, 38.623810, 33.337173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.088455, 38.537384, 33.584599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322801, -0.944274, 0.064393,
		0.570179, -0.248318, -0.783093,
		0.755444, -0.216068, 0.618562,
		25.315088, 38.472565, 33.770168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.986790, 37.887920, 33.136150>,  <24.786278, 38.623810, 33.337173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.986790, 37.887920, 33.136150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.184303, 37.937706, 33.480404>,  <25.302813, 37.967579, 33.686954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.184303, 37.937706, 33.480404>,  <24.986790, 37.887920, 33.136150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.184303, 37.937706, 33.480404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021791, -0.987622, 0.155333,
		0.869311, -0.095455, -0.484961,
		0.493785, 0.124465, 0.860631,
		25.332439, 37.975044, 33.738594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.575191, 37.440689, 33.117104>,  <24.986790, 37.887920, 33.136150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.575191, 37.440689, 33.117104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.473791, 37.516705, 33.496498>,  <25.412951, 37.562313, 33.724133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.473791, 37.516705, 33.496498>,  <25.575191, 37.440689, 33.117104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.473791, 37.516705, 33.496498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017019, -0.979484, 0.200801,
		0.967185, 0.067045, 0.245066,
		-0.253502, 0.190041, 0.948484,
		25.397741, 37.573715, 33.781044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.972183, 36.918407, 33.484264>,  <25.575191, 37.440689, 33.117104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.972183, 36.918407, 33.484264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.706074, 37.047020, 33.753792>,  <25.546408, 37.124187, 33.915508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.706074, 37.047020, 33.753792>,  <25.972183, 36.918407, 33.484264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.706074, 37.047020, 33.753792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128603, -0.938376, 0.320797,
		0.735440, 0.126763, 0.665627,
		-0.665274, 0.321529, 0.673817,
		25.506491, 37.143478, 33.955936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.187820, 36.797485, 34.042747>,  <25.972183, 36.918407, 33.484264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.187820, 36.797485, 34.042747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.802231, 36.821918, 34.146305>,  <25.570877, 36.836578, 34.208439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.802231, 36.821918, 34.146305>,  <26.187820, 36.797485, 34.042747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.802231, 36.821918, 34.146305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044693, -0.922251, 0.384000,
		0.262216, 0.381737, 0.886296,
		-0.963974, 0.061079, 0.258890,
		25.513039, 36.840240, 34.223972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.152058, 37.558422, 34.365765>,  <26.187820, 36.797485, 34.042747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.152058, 37.558422, 34.365765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.525793, 37.416748, 34.381565>,  <26.750034, 37.331741, 34.391045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.525793, 37.416748, 34.381565>,  <26.152058, 37.558422, 34.365765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.525793, 37.416748, 34.381565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226046, 0.674676, 0.702649,
		-0.275523, -0.647582, 0.710439,
		0.934339, -0.354188, 0.039506,
		26.806095, 37.310493, 34.393417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.320017, 37.398979, 35.102730>,  <26.152058, 37.558422, 34.365765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.320017, 37.398979, 35.102730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.653837, 37.482132, 34.898647>,  <26.854130, 37.532024, 34.776199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.653837, 37.482132, 34.898647>,  <26.320017, 37.398979, 35.102730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.653837, 37.482132, 34.898647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319714, 0.571443, 0.755801,
		0.448670, -0.793875, 0.410436,
		0.834553, 0.207883, -0.510202,
		26.904203, 37.544498, 34.745586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.703568, 37.543327, 35.641582>,  <26.320017, 37.398979, 35.102730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.703568, 37.543327, 35.641582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.941771, 37.677773, 35.349720>,  <27.084692, 37.758438, 35.174603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.941771, 37.677773, 35.349720>,  <26.703568, 37.543327, 35.641582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.941771, 37.677773, 35.349720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460817, 0.601065, 0.652969,
		0.658042, -0.725086, 0.203053,
		0.595507, 0.336111, -0.729658,
		27.120422, 37.778606, 35.130821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342686, 37.646816, 35.962097>,  <26.703568, 37.543327, 35.641582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.342686, 37.646816, 35.962097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.352396, 37.852848, 35.619377>,  <27.358223, 37.976467, 35.413746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.352396, 37.852848, 35.619377>,  <27.342686, 37.646816, 35.962097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.352396, 37.852848, 35.619377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625616, 0.660659, 0.414889,
		0.779753, -0.546100, -0.306203,
		0.024275, 0.515077, -0.856800,
		27.359678, 38.007370, 35.362335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.964064, 37.715206, 35.751228>,  <27.342686, 37.646816, 35.962097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.964064, 37.715206, 35.751228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.787994, 38.039028, 35.595863>,  <27.682352, 38.233322, 35.502644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.787994, 38.039028, 35.595863>,  <27.964064, 37.715206, 35.751228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.787994, 38.039028, 35.595863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640638, 0.586245, 0.495883,
		0.629150, -0.030556, -0.776683,
		-0.440174, 0.809557, -0.388411,
		27.655943, 38.281895, 35.479340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.507786, 38.048069, 35.544048>,  <27.964064, 37.715206, 35.751228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.507786, 38.048069, 35.544048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.227627, 38.333157, 35.559391>,  <28.059532, 38.504211, 35.568596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.227627, 38.333157, 35.559391>,  <28.507786, 38.048069, 35.544048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.227627, 38.333157, 35.559391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684085, 0.654981, 0.320979,
		0.203644, 0.251054, -0.946309,
		-0.700398, 0.712721, 0.038359,
		28.017508, 38.546974, 35.570900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.822063, 38.527573, 35.283752>,  <28.507786, 38.048069, 35.544048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.822063, 38.527573, 35.283752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.517284, 38.724186, 35.452431>,  <28.334417, 38.842155, 35.553638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.517284, 38.724186, 35.452431>,  <28.822063, 38.527573, 35.283752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.517284, 38.724186, 35.452431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626401, 0.724704, 0.287099,
		-0.164486, 0.482905, -0.860085,
		-0.761949, 0.491535, 0.421696,
		28.288700, 38.871647, 35.578938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.913012, 39.211018, 35.027004>,  <28.822063, 38.527573, 35.283752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.913012, 39.211018, 35.027004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.689280, 39.221588, 35.358414>,  <28.555040, 39.227932, 35.557259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.689280, 39.221588, 35.358414>,  <28.913012, 39.211018, 35.027004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.689280, 39.221588, 35.358414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443149, 0.854214, 0.271916,
		-0.700550, 0.519250, -0.489499,
		-0.559329, 0.026430, 0.828524,
		28.521481, 39.229519, 35.606972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.550158, 39.822666, 35.077774>,  <28.913012, 39.211018, 35.027004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.550158, 39.822666, 35.077774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.542187, 39.717979, 35.463749>,  <28.537405, 39.655167, 35.695335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.542187, 39.717979, 35.463749>,  <28.550158, 39.822666, 35.077774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.542187, 39.717979, 35.463749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455020, 0.857011, 0.241843,
		-0.890258, 0.443885, 0.102012,
		-0.019925, -0.261720, 0.964938,
		28.536209, 39.639462, 35.753231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.146547, 40.317368, 35.423851>,  <28.550158, 39.822666, 35.077774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.146547, 40.317368, 35.423851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.383175, 40.141182, 35.693974>,  <28.525152, 40.035469, 35.856045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.383175, 40.141182, 35.693974>,  <28.146547, 40.317368, 35.423851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.383175, 40.141182, 35.693974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393615, 0.888762, 0.234882,
		-0.703641, 0.126861, 0.699139,
		0.591571, -0.440464, 0.675304,
		28.560646, 40.009041, 35.896564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.031904, 40.682281, 36.095612>,  <28.146547, 40.317368, 35.423851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.031904, 40.682281, 36.095612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.374569, 40.476658, 36.112911>,  <28.580168, 40.353283, 36.123291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.374569, 40.476658, 36.112911>,  <28.031904, 40.682281, 36.095612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.374569, 40.476658, 36.112911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495841, 0.843630, 0.205988,
		-0.142378, -0.155017, 0.977598,
		0.856663, -0.514061, 0.043251,
		28.631567, 40.322441, 36.125885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.268869, 40.863724, 36.736351>,  <28.031904, 40.682281, 36.095612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.268869, 40.863724, 36.736351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.592928, 40.752716, 36.529800>,  <28.787363, 40.686111, 36.405872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.592928, 40.752716, 36.529800>,  <28.268869, 40.863724, 36.736351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.592928, 40.752716, 36.529800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482886, 0.815355, 0.319401,
		0.332386, -0.508112, 0.794571,
		0.810148, -0.277522, -0.516373,
		28.835972, 40.669460, 36.374889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.879910, 41.087337, 37.174713>,  <28.268869, 40.863724, 36.736351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.879910, 41.087337, 37.174713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.038984, 41.032547, 36.811817>,  <29.134428, 40.999672, 36.594078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.038984, 41.032547, 36.811817>,  <28.879910, 41.087337, 37.174713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.038984, 41.032547, 36.811817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660929, 0.728614, 0.179707,
		0.636411, -0.671087, 0.380294,
		0.397686, -0.136980, -0.907239,
		29.158291, 40.991451, 36.539646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580704, 41.133392, 37.410416>,  <28.879910, 41.087337, 37.174713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580704, 41.133392, 37.410416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.597755, 41.162170, 37.011818>,  <29.607986, 41.179436, 36.772659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.597755, 41.162170, 37.011818>,  <29.580704, 41.133392, 37.410416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597755, 41.162170, 37.011818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824191, 0.561219, 0.075775,
		0.564705, -0.824535, -0.035369,
		0.042629, 0.071941, -0.996497,
		29.610544, 41.183754, 36.712868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261290, 41.300823, 37.245258>,  <29.580704, 41.133392, 37.410416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261290, 41.300823, 37.245258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.105875, 41.349525, 36.879917>,  <30.012627, 41.378746, 36.660713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.105875, 41.349525, 36.879917>,  <30.261290, 41.300823, 37.245258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.105875, 41.349525, 36.879917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745763, 0.623727, -0.234099,
		0.541181, -0.772102, -0.333140,
		-0.388537, 0.121753, -0.913354,
		29.989315, 41.386051, 36.605911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.755056, 41.080471, 36.725426>,  <30.261290, 41.300823, 37.245258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.755056, 41.080471, 36.725426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.504595, 41.341492, 36.554729>,  <30.354317, 41.498104, 36.452312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.504595, 41.341492, 36.554729>,  <30.755056, 41.080471, 36.725426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504595, 41.341492, 36.554729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773798, 0.452879, -0.442873,
		-0.095736, -0.607518, -0.788515,
		-0.626156, 0.652550, -0.426739,
		30.316748, 41.537258, 36.426708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785646, 41.058620, 35.968090>,  <30.755056, 41.080471, 36.725426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785646, 41.058620, 35.968090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.632008, 41.414143, 36.068092>,  <30.539825, 41.627457, 36.128094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.632008, 41.414143, 36.068092>,  <30.785646, 41.058620, 35.968090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.632008, 41.414143, 36.068092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629591, 0.450188, -0.633203,
		-0.675341, -0.085809, -0.732497,
		-0.384096, 0.888801, 0.250006,
		30.516779, 41.680782, 36.143093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.489702, 41.380806, 35.340012>,  <30.785646, 41.058620, 35.968090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.489702, 41.380806, 35.340012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.603966, 41.654568, 35.608337>,  <30.672523, 41.818825, 35.769333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.603966, 41.654568, 35.608337>,  <30.489702, 41.380806, 35.340012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603966, 41.654568, 35.608337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589143, 0.426674, -0.686193,
		-0.755851, 0.591223, -0.281327,
		0.285658, 0.684401, 0.670817,
		30.689663, 41.859886, 35.809582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696280, 41.957428, 34.908150>,  <30.489702, 41.380806, 35.340012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696280, 41.957428, 34.908150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.823854, 42.092823, 35.262257>,  <30.900400, 42.174061, 35.474720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.823854, 42.092823, 35.262257>,  <30.696280, 41.957428, 34.908150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823854, 42.092823, 35.262257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714090, 0.528336, -0.459278,
		-0.623181, 0.778644, -0.073205,
		0.318938, 0.338488, 0.885271,
		30.919537, 42.194370, 35.527840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807674, 42.544178, 34.714920>,  <30.696280, 41.957428, 34.908150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807674, 42.544178, 34.714920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.008917, 42.500633, 35.057858>,  <31.129663, 42.474506, 35.263618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.008917, 42.500633, 35.057858>,  <30.807674, 42.544178, 34.714920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.008917, 42.500633, 35.057858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704744, 0.625874, -0.334092,
		-0.500218, 0.772290, 0.391600,
		0.503108, -0.108859, 0.857340,
		31.159849, 42.467976, 35.315060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.000874, 43.204250, 34.939575>,  <30.807674, 42.544178, 34.714920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.000874, 43.204250, 34.939575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.248835, 42.950661, 35.124527>,  <31.397612, 42.798508, 35.235500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.248835, 42.950661, 35.124527>,  <31.000874, 43.204250, 34.939575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.248835, 42.950661, 35.124527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778462, 0.570903, -0.260896,
		-0.098574, 0.521676, 0.847430,
		0.619903, -0.633974, 0.462381,
		31.434805, 42.760468, 35.263241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455824, 43.689095, 35.090588>,  <31.000874, 43.204250, 34.939575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455824, 43.689095, 35.090588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.627918, 43.334110, 35.156696>,  <31.731174, 43.121120, 35.196362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.627918, 43.334110, 35.156696>,  <31.455824, 43.689095, 35.090588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627918, 43.334110, 35.156696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891232, 0.388474, -0.234081,
		0.143535, 0.248003, 0.958067,
		0.430237, -0.887458, 0.165269,
		31.756989, 43.067871, 35.206276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.780945, 34.125893, 46.767635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.382324, 34.157856, 46.758682>,  <39.143150, 34.177032, 46.753311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.382324, 34.157856, 46.758682>,  <39.780945, 34.125893, 46.767635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382324, 34.157856, 46.758682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010985, 0.140345, 0.990042,
		0.082251, 0.986873, -0.138984,
		-0.996551, 0.079905, -0.022384,
		39.083359, 34.181828, 46.751968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699551, 34.668350, 47.191833>,  <39.780945, 34.125893, 46.767635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699551, 34.668350, 47.191833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.364662, 34.451019, 47.166985>,  <39.163731, 34.320621, 47.152077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.364662, 34.451019, 47.166985>,  <39.699551, 34.668350, 47.191833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364662, 34.451019, 47.166985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161662, 0.137374, 0.977238,
		-0.522425, 0.828206, -0.202848,
		-0.837220, -0.543326, -0.062121,
		39.113495, 34.288021, 47.148350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227016, 35.076942, 47.476162>,  <39.699551, 34.668350, 47.191833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227016, 35.076942, 47.476162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.038555, 34.726696, 47.518719>,  <38.925480, 34.516548, 47.544254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.038555, 34.726696, 47.518719>,  <39.227016, 35.076942, 47.476162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038555, 34.726696, 47.518719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359529, 0.300784, 0.883328,
		-0.805455, 0.377929, -0.456522,
		-0.471150, -0.875614, 0.106391,
		38.897209, 34.464012, 47.550636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556885, 35.267921, 47.609802>,  <39.227016, 35.076942, 47.476162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556885, 35.267921, 47.609802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.615234, 34.900890, 47.757732>,  <38.650242, 34.680672, 47.846489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.615234, 34.900890, 47.757732>,  <38.556885, 35.267921, 47.609802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615234, 34.900890, 47.757732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335807, 0.305706, 0.890942,
		-0.930567, -0.254151, -0.263536,
		0.145870, -0.917579, 0.369826,
		38.658997, 34.625618, 47.868679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927601, 35.084007, 48.032715>,  <38.556885, 35.267921, 47.609802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927601, 35.084007, 48.032715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.224148, 34.851788, 48.167374>,  <38.402077, 34.712456, 48.248169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.224148, 34.851788, 48.167374>,  <37.927601, 35.084007, 48.032715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224148, 34.851788, 48.167374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112876, 0.386617, 0.915306,
		-0.661534, -0.716581, 0.221097,
		0.741371, -0.580550, 0.336645,
		38.446560, 34.677624, 48.268368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558304, 34.678082, 48.418171>,  <37.927601, 35.084007, 48.032715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558304, 34.678082, 48.418171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.927422, 34.614536, 48.558578>,  <38.148891, 34.576408, 48.642822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.927422, 34.614536, 48.558578>,  <37.558304, 34.678082, 48.418171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927422, 34.614536, 48.558578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347447, 0.050660, 0.936330,
		-0.166535, -0.985999, -0.008449,
		0.922793, -0.158868, 0.351020,
		38.204258, 34.566875, 48.663883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504944, 34.245453, 49.010769>,  <37.558304, 34.678082, 48.418171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504944, 34.245453, 49.010769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.886131, 34.354347, 49.064034>,  <38.114845, 34.419685, 49.095993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.886131, 34.354347, 49.064034>,  <37.504944, 34.245453, 49.010769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886131, 34.354347, 49.064034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157746, 0.070398, 0.984967,
		0.258770, -0.959652, 0.110032,
		0.952971, 0.272237, 0.133164,
		38.172024, 34.436016, 49.103981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845684, 33.776981, 49.558811>,  <37.504944, 34.245453, 49.010769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845684, 33.776981, 49.558811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.026299, 34.132957, 49.533115>,  <38.134666, 34.346542, 49.517696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.026299, 34.132957, 49.533115>,  <37.845684, 33.776981, 49.558811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026299, 34.132957, 49.533115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149533, 0.146459, 0.977849,
		0.879633, -0.431928, 0.199206,
		0.451536, 0.889937, -0.064243,
		38.161758, 34.399937, 49.513844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391926, 33.703011, 49.964291>,  <37.845684, 33.776981, 49.558811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391926, 33.703011, 49.964291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.289089, 34.089169, 49.946789>,  <38.227386, 34.320862, 49.936287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.289089, 34.089169, 49.946789>,  <38.391926, 33.703011, 49.964291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289089, 34.089169, 49.946789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044388, 0.033435, 0.998455,
		0.965367, 0.258636, 0.034256,
		-0.257091, 0.965396, -0.043758,
		38.211964, 34.378788, 49.933662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729694, 33.982555, 50.474403>,  <38.391926, 33.703011, 49.964291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729694, 33.982555, 50.474403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.466587, 34.278267, 50.416706>,  <38.308723, 34.455692, 50.382088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.466587, 34.278267, 50.416706>,  <38.729694, 33.982555, 50.474403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466587, 34.278267, 50.416706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006554, 0.185881, 0.982551,
		0.753191, 0.647237, -0.117421,
		-0.657770, 0.739278, -0.144246,
		38.269257, 34.500050, 50.373432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021439, 34.676777, 50.687328>,  <38.729694, 33.982555, 50.474403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021439, 34.676777, 50.687328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.623287, 34.714851, 50.692348>,  <38.384396, 34.737694, 50.695362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.623287, 34.714851, 50.692348>,  <39.021439, 34.676777, 50.687328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623287, 34.714851, 50.692348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032801, 0.214271, 0.976223,
		0.090230, 0.972126, -0.216403,
		-0.995381, 0.095183, 0.012553,
		38.324673, 34.743404, 50.696114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952438, 35.311848, 51.109528>,  <39.021439, 34.676777, 50.687328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952438, 35.311848, 51.109528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.619476, 35.090179, 51.109959>,  <38.419701, 34.957176, 51.110218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.619476, 35.090179, 51.109959>,  <38.952438, 35.311848, 51.109528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619476, 35.090179, 51.109959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131461, 0.199346, 0.971071,
		-0.538356, 0.808179, -0.238788,
		-0.832401, -0.554173, 0.001075,
		38.369755, 34.923927, 51.110283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641453, 35.438477, 51.817154>,  <38.952438, 35.311848, 51.109528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641453, 35.438477, 51.817154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.356853, 35.202152, 51.664989>,  <38.186092, 35.060360, 51.573692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.356853, 35.202152, 51.664989>,  <38.641453, 35.438477, 51.817154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356853, 35.202152, 51.664989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417417, -0.080131, 0.905175,
		-0.565268, 0.802823, -0.189600,
		-0.711502, -0.590808, -0.380407,
		38.143402, 35.024910, 51.550869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962654, 35.744324, 51.967548>,  <38.641453, 35.438477, 51.817154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962654, 35.744324, 51.967548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.970779, 35.346279, 51.928905>,  <37.975655, 35.107452, 51.905720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.970779, 35.346279, 51.928905>,  <37.962654, 35.744324, 51.967548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970779, 35.346279, 51.928905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254998, -0.098589, 0.961902,
		-0.966728, 0.005092, -0.255755,
		0.020317, -0.995115, -0.096607,
		37.976875, 35.047745, 51.899925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732399, 36.441658, 51.664871>,  <37.962654, 35.744324, 51.967548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732399, 36.441658, 51.664871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.458488, 36.715435, 51.764965>,  <37.294144, 36.879704, 51.825024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.458488, 36.715435, 51.764965>,  <37.732399, 36.441658, 51.664871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458488, 36.715435, 51.764965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083807, 0.415060, -0.905926,
		-0.723922, -0.599381, -0.341583,
		-0.684772, 0.684447, 0.250239,
		37.253056, 36.920769, 51.840038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125229, 36.381176, 51.185509>,  <37.732399, 36.441658, 51.664871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125229, 36.381176, 51.185509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.124229, 36.756691, 51.323303>,  <37.123631, 36.981998, 51.405979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.124229, 36.756691, 51.323303>,  <37.125229, 36.381176, 51.185509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124229, 36.756691, 51.323303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092068, 0.342808, -0.934883,
		-0.995750, -0.034048, 0.085577,
		-0.002494, 0.938788, 0.344486,
		37.123482, 37.038326, 51.426647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650043, 36.677357, 50.784519>,  <37.125229, 36.381176, 51.185509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650043, 36.677357, 50.784519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.838943, 36.990673, 50.946224>,  <36.952286, 37.178661, 51.043247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.838943, 36.990673, 50.946224>,  <36.650043, 36.677357, 50.784519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838943, 36.990673, 50.946224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256033, 0.560753, -0.787403,
		-0.843461, 0.268347, 0.465365,
		0.472252, 0.783292, 0.404267,
		36.980618, 37.225662, 51.067505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149216, 37.152454, 50.775944>,  <36.650043, 36.677357, 50.784519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149216, 37.152454, 50.775944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.487175, 37.364292, 50.806087>,  <36.689949, 37.491394, 50.824173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.487175, 37.364292, 50.806087>,  <36.149216, 37.152454, 50.775944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487175, 37.364292, 50.806087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242667, 0.505010, -0.828298,
		-0.476723, 0.681537, 0.555196,
		0.844895, 0.529597, 0.075363,
		36.740643, 37.523170, 50.828697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959087, 37.807602, 50.581299>,  <36.149216, 37.152454, 50.775944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959087, 37.807602, 50.581299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.352940, 37.799450, 50.511921>,  <36.589252, 37.794559, 50.470295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.352940, 37.799450, 50.511921>,  <35.959087, 37.807602, 50.581299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352940, 37.799450, 50.511921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153303, 0.374808, -0.914340,
		0.083642, 0.926879, 0.365924,
		0.984633, -0.020380, -0.173443,
		36.648331, 37.793335, 50.459888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109432, 38.490154, 50.283276>,  <35.959087, 37.807602, 50.581299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109432, 38.490154, 50.283276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.406860, 38.243465, 50.179928>,  <36.585320, 38.095451, 50.117920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.406860, 38.243465, 50.179928>,  <36.109432, 38.490154, 50.283276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406860, 38.243465, 50.179928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061814, 0.321350, -0.944941,
		0.665792, 0.718603, 0.200825,
		0.743572, -0.616721, -0.258372,
		36.629932, 38.058449, 50.102417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546967, 38.907356, 49.856014>,  <36.109432, 38.490154, 50.283276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546967, 38.907356, 49.856014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.646473, 38.532291, 49.758938>,  <36.706177, 38.307251, 49.700691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.646473, 38.532291, 49.758938>,  <36.546967, 38.907356, 49.856014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646473, 38.532291, 49.758938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012017, 0.247561, -0.968798,
		0.968490, 0.243918, 0.050317,
		0.248763, -0.937666, -0.242691,
		36.721104, 38.250992, 49.686131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977058, 39.028111, 49.356255>,  <36.546967, 38.907356, 49.856014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977058, 39.028111, 49.356255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.896900, 38.638161, 49.317360>,  <36.848804, 38.404190, 49.294022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.896900, 38.638161, 49.317360>,  <36.977058, 39.028111, 49.356255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896900, 38.638161, 49.317360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144937, 0.127657, -0.981171,
		0.968935, -0.182527, -0.166877,
		-0.200394, -0.974878, -0.097237,
		36.836781, 38.345695, 49.288189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402645, 38.723984, 48.772694>,  <36.977058, 39.028111, 49.356255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402645, 38.723984, 48.772694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.116165, 38.447403, 48.810551>,  <36.944279, 38.281456, 48.833263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.116165, 38.447403, 48.810551>,  <37.402645, 38.723984, 48.772694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116165, 38.447403, 48.810551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066109, -0.202214, -0.977108,
		0.694760, -0.693545, 0.190536,
		-0.716197, -0.691452, 0.094640,
		36.901306, 38.239967, 48.838943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593082, 38.119289, 48.439186>,  <37.402645, 38.723984, 48.772694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593082, 38.119289, 48.439186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.194687, 38.088860, 48.420330>,  <36.955650, 38.070602, 48.409016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.194687, 38.088860, 48.420330>,  <37.593082, 38.119289, 48.439186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194687, 38.088860, 48.420330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068571, -0.310166, -0.948206,
		0.057516, -0.947633, 0.314138,
		-0.995987, -0.076077, -0.047141,
		36.895889, 38.066036, 48.406189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347126, 37.359329, 48.333267>,  <37.593082, 38.119289, 48.439186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347126, 37.359329, 48.333267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.040504, 37.580296, 48.202286>,  <36.856529, 37.712875, 48.123699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.040504, 37.580296, 48.202286>,  <37.347126, 37.359329, 48.333267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040504, 37.580296, 48.202286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083410, -0.591235, -0.802175,
		-0.636739, -0.587598, 0.499292,
		-0.766554, 0.552422, -0.327451,
		36.810535, 37.746021, 48.104050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028473, 36.951897, 47.944599>,  <37.347126, 37.359329, 48.333267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028473, 36.951897, 47.944599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.872581, 37.294044, 47.808098>,  <36.779049, 37.499332, 47.726196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.872581, 37.294044, 47.808098>,  <37.028473, 36.951897, 47.944599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872581, 37.294044, 47.808098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192244, -0.286829, -0.938494,
		-0.900642, -0.431361, -0.052655,
		-0.389727, 0.855369, -0.341257,
		36.755665, 37.550655, 47.705719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533306, 36.779213, 47.529350>,  <37.028473, 36.951897, 47.944599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533306, 36.779213, 47.529350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.652565, 37.144005, 47.416634>,  <36.724121, 37.362881, 47.349003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.652565, 37.144005, 47.416634>,  <36.533306, 36.779213, 47.529350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652565, 37.144005, 47.416634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011781, -0.291678, -0.956444,
		-0.954446, 0.288485, -0.076220,
		0.298151, 0.911976, -0.281790,
		36.742012, 37.417599, 47.332096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090778, 36.918610, 47.048080>,  <36.533306, 36.779213, 47.529350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090778, 36.918610, 47.048080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.417397, 37.143551, 46.995918>,  <36.613369, 37.278515, 46.964622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.417397, 37.143551, 46.995918>,  <36.090778, 36.918610, 47.048080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417397, 37.143551, 46.995918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043643, -0.285380, -0.957420,
		-0.575626, 0.776089, -0.257569,
		0.816548, 0.562357, -0.130401,
		36.662361, 37.312260, 46.956799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417667, 37.351574, 47.190060>,  <36.090778, 36.918610, 47.048080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417667, 37.351574, 47.190060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.021614, 37.380096, 47.238312>,  <34.783981, 37.397209, 47.267262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.021614, 37.380096, 47.238312>,  <35.417667, 37.351574, 47.190060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021614, 37.380096, 47.238312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111099, -0.125173, 0.985895,
		0.085404, 0.989569, 0.116015,
		-0.990133, 0.071310, 0.120630,
		34.724575, 37.401489, 47.274502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290634, 37.706333, 47.851959>,  <35.417667, 37.351574, 47.190060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290634, 37.706333, 47.851959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.955494, 37.501328, 47.776760>,  <34.754410, 37.378326, 47.731640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.955494, 37.501328, 47.776760>,  <35.290634, 37.706333, 47.851959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955494, 37.501328, 47.776760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086462, -0.215448, 0.972680,
		-0.539014, 0.831212, 0.136200,
		-0.837847, -0.512512, -0.187998,
		34.704140, 37.347572, 47.720360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852406, 37.913898, 48.367863>,  <35.290634, 37.706333, 47.851959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852406, 37.913898, 48.367863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.698994, 37.572712, 48.226238>,  <34.606945, 37.368000, 48.141266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.698994, 37.572712, 48.226238>,  <34.852406, 37.913898, 48.367863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698994, 37.572712, 48.226238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330582, -0.231174, 0.915027,
		-0.862333, 0.467988, -0.193311,
		-0.383534, -0.852963, -0.354057,
		34.583935, 37.316822, 48.120022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166359, 37.823856, 48.638260>,  <34.852406, 37.913898, 48.367863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166359, 37.823856, 48.638260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.289257, 37.460644, 48.524364>,  <34.362995, 37.242718, 48.456028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.289257, 37.460644, 48.524364>,  <34.166359, 37.823856, 48.638260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289257, 37.460644, 48.524364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153378, -0.342551, 0.926895,
		-0.939188, -0.241114, -0.244520,
		0.307248, -0.908032, -0.284739,
		34.381432, 37.188232, 48.438942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654514, 37.328362, 48.981880>,  <34.166359, 37.823856, 48.638260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654514, 37.328362, 48.981880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.960423, 37.085079, 48.896832>,  <34.143967, 36.939110, 48.845802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.960423, 37.085079, 48.896832>,  <33.654514, 37.328362, 48.981880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960423, 37.085079, 48.896832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117814, -0.456452, 0.881913,
		-0.633440, -0.649411, -0.420737,
		0.764771, -0.608207, -0.212625,
		34.189854, 36.902618, 48.833042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394978, 36.641563, 49.167240>,  <33.654514, 37.328362, 48.981880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394978, 36.641563, 49.167240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.794846, 36.638340, 49.157486>,  <34.034767, 36.636406, 49.151634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.794846, 36.638340, 49.157486>,  <33.394978, 36.641563, 49.167240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794846, 36.638340, 49.157486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017576, -0.477662, 0.878368,
		-0.018722, -0.878507, -0.477363,
		0.999670, -0.008054, -0.024383,
		34.094746, 36.635925, 49.150169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539349, 36.067387, 49.361431>,  <33.394978, 36.641563, 49.167240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539349, 36.067387, 49.361431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.872528, 36.276325, 49.434483>,  <34.072433, 36.401688, 49.478313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.872528, 36.276325, 49.434483>,  <33.539349, 36.067387, 49.361431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872528, 36.276325, 49.434483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110754, -0.480737, 0.869842,
		0.542156, -0.704305, -0.458280,
		0.832947, 0.522346, 0.182629,
		34.122414, 36.433029, 49.489273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252171, 35.449802, 49.058319>,  <33.539349, 36.067387, 49.361431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252171, 35.449802, 49.058319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.981190, 35.184658, 49.185863>,  <32.818604, 35.025570, 49.262390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.981190, 35.184658, 49.185863>,  <33.252171, 35.449802, 49.058319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981190, 35.184658, 49.185863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381598, -0.053884, -0.922756,
		0.628845, -0.746797, -0.216445,
		-0.677449, -0.662865, 0.318861,
		32.777954, 34.985798, 49.281521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236996, 34.792141, 48.716518>,  <33.252171, 35.449802, 49.058319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236996, 34.792141, 48.716518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.869881, 34.810074, 48.874332>,  <32.649612, 34.820831, 48.969021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.869881, 34.810074, 48.874332>,  <33.236996, 34.792141, 48.716518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869881, 34.810074, 48.874332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396702, -0.146615, -0.906163,
		0.017223, -0.988177, 0.152345,
		-0.917786, 0.044829, 0.394537,
		32.594543, 34.823521, 48.992695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839790, 34.295361, 48.297974>,  <33.236996, 34.792141, 48.716518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839790, 34.295361, 48.297974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.589264, 34.551727, 48.475494>,  <32.438950, 34.705547, 48.582008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.589264, 34.551727, 48.475494>,  <32.839790, 34.295361, 48.297974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589264, 34.551727, 48.475494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517909, 0.083413, -0.851359,
		-0.582667, -0.763067, 0.279693,
		-0.626314, 0.640914, 0.443801,
		32.401371, 34.743999, 48.608635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301010, 34.090122, 48.039745>,  <32.839790, 34.295361, 48.297974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301010, 34.090122, 48.039745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.184326, 34.447960, 48.175156>,  <32.114315, 34.662663, 48.256401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.184326, 34.447960, 48.175156>,  <32.301010, 34.090122, 48.039745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.184326, 34.447960, 48.175156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538425, 0.138944, -0.831139,
		-0.790570, -0.424728, 0.441141,
		-0.291714, 0.894595, 0.338529,
		32.096813, 34.716339, 48.276714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.570204, 34.212337, 47.747826>,  <32.301010, 34.090122, 48.039745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.570204, 34.212337, 47.747826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.677614, 34.577492, 47.870815>,  <31.742062, 34.796585, 47.944607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.677614, 34.577492, 47.870815>,  <31.570204, 34.212337, 47.747826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677614, 34.577492, 47.870815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546180, 0.407217, -0.732025,
		-0.793460, 0.028634, 0.607948,
		0.268528, 0.912882, 0.307471,
		31.758173, 34.851357, 47.963055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013878, 34.568295, 47.959530>,  <31.570204, 34.212337, 47.747826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013878, 34.568295, 47.959530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.275568, 34.846474, 47.840637>,  <31.432583, 35.013382, 47.769302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.275568, 34.846474, 47.840637>,  <31.013878, 34.568295, 47.959530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275568, 34.846474, 47.840637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661978, 0.336501, -0.669741,
		-0.365749, 0.634921, 0.680516,
		0.654227, 0.695444, -0.297229,
		31.471836, 35.055107, 47.751469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684780, 35.348114, 47.920792>,  <31.013878, 34.568295, 47.959530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.684780, 35.348114, 47.920792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.007462, 35.337925, 47.684631>,  <31.201071, 35.331810, 47.542934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.007462, 35.337925, 47.684631>,  <30.684780, 35.348114, 47.920792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.007462, 35.337925, 47.684631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502418, 0.496436, -0.707903,
		0.311132, 0.867699, 0.387679,
		0.806705, -0.025474, -0.590405,
		31.249474, 35.330284, 47.507511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.702492, 32.545982, 50.654766> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.962959, 32.844715, 50.600765>,  <36.119240, 33.023956, 50.568367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.962959, 32.844715, 50.600765>,  <35.702492, 32.545982, 50.654766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962959, 32.844715, 50.600765> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114332, -0.079319, -0.990271,
		-0.750275, 0.660265, 0.033737,
		0.651165, 0.746833, -0.135000,
		36.158310, 33.068764, 50.560265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370190, 32.988400, 50.094238>,  <35.702492, 32.545982, 50.654766>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370190, 32.988400, 50.094238> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.740196, 33.138107, 50.068134>,  <35.962200, 33.227932, 50.052471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.740196, 33.138107, 50.068134>,  <35.370190, 32.988400, 50.094238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740196, 33.138107, 50.068134> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165302, 0.241828, -0.956135,
		-0.342069, 0.895233, 0.285563,
		0.925021, 0.374268, -0.065262,
		36.017704, 33.250389, 50.048557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438869, 33.681046, 49.641628>,  <35.370190, 32.988400, 50.094238>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438869, 33.681046, 49.641628> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.790596, 33.490639, 49.647362>,  <36.001633, 33.376396, 49.650803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.790596, 33.490639, 49.647362>,  <35.438869, 33.681046, 49.641628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790596, 33.490639, 49.647362> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044182, 0.051566, -0.997692,
		0.474180, 0.877923, 0.066375,
		0.879319, -0.476018, 0.014337,
		36.054390, 33.347832, 49.651665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698853, 34.044971, 49.109402>,  <35.438869, 33.681046, 49.641628>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698853, 34.044971, 49.109402> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.924301, 33.718880, 49.162674>,  <36.059570, 33.523224, 49.194637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.924301, 33.718880, 49.162674>,  <35.698853, 34.044971, 49.109402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924301, 33.718880, 49.162674> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100925, -0.092055, -0.990626,
		0.819847, 0.571775, 0.030393,
		0.563618, -0.815229, 0.133178,
		36.093388, 33.474312, 49.202629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337410, 34.152702, 48.772732>,  <35.698853, 34.044971, 49.109402>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337410, 34.152702, 48.772732> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.292892, 33.757591, 48.816372>,  <36.266182, 33.520523, 48.842556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.292892, 33.757591, 48.816372>,  <36.337410, 34.152702, 48.772732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292892, 33.757591, 48.816372> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282266, -0.136680, -0.949550,
		0.952859, -0.074886, 0.294028,
		-0.111296, -0.987781, 0.109099,
		36.259502, 33.461258, 48.849102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804394, 33.919498, 48.305229>,  <36.337410, 34.152702, 48.772732>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804394, 33.919498, 48.305229> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.563923, 33.607655, 48.375420>,  <36.419640, 33.420547, 48.417534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.563923, 33.607655, 48.375420>,  <36.804394, 33.919498, 48.305229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563923, 33.607655, 48.375420> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205288, -0.362891, -0.908937,
		0.772296, -0.510409, 0.378207,
		-0.601178, -0.779610, 0.175478,
		36.383568, 33.373772, 48.428062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039936, 33.308868, 47.898930>,  <36.804394, 33.919498, 48.305229>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039936, 33.308868, 47.898930> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.680027, 33.162846, 47.994549>,  <36.464081, 33.075230, 48.051918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.680027, 33.162846, 47.994549>,  <37.039936, 33.308868, 47.898930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680027, 33.162846, 47.994549> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058961, -0.441079, -0.895529,
		0.432358, -0.819866, 0.375347,
		-0.899772, -0.365059, 0.239045,
		36.410095, 33.053329, 48.066261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043587, 32.591564, 47.703251>,  <37.039936, 33.308868, 47.898930>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043587, 32.591564, 47.703251> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.663967, 32.715012, 47.728752>,  <36.436195, 32.789082, 47.744053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.663967, 32.715012, 47.728752>,  <37.043587, 32.591564, 47.703251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663967, 32.715012, 47.728752> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165119, -0.314657, -0.934733,
		-0.268412, -0.897634, 0.349583,
		-0.949047, 0.308616, 0.063759,
		36.379253, 32.807598, 47.747879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647957, 32.074459, 47.431072>,  <37.043587, 32.591564, 47.703251>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647957, 32.074459, 47.431072> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.397015, 32.384533, 47.401367>,  <36.246449, 32.570580, 47.383545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.397015, 32.384533, 47.401367>,  <36.647957, 32.074459, 47.431072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397015, 32.384533, 47.401367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200295, -0.252778, -0.946565,
		-0.752537, -0.578955, 0.313846,
		-0.627352, 0.775187, -0.074263,
		36.208809, 32.617088, 47.379089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002625, 31.715275, 47.266472>,  <36.647957, 32.074459, 47.431072>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002625, 31.715275, 47.266472> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.972317, 32.098545, 47.156086>,  <35.954132, 32.328506, 47.089855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.972317, 32.098545, 47.156086>,  <36.002625, 31.715275, 47.266472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972317, 32.098545, 47.156086> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112549, -0.283215, -0.952429,
		-0.990753, -0.041107, 0.129301,
		-0.075772, 0.958175, -0.275969,
		35.949585, 32.385998, 47.073296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564285, 31.714092, 46.713554>,  <36.002625, 31.715275, 47.266472>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564285, 31.714092, 46.713554> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.688915, 32.090130, 46.658207>,  <35.763691, 32.315754, 46.624996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.688915, 32.090130, 46.658207>,  <35.564285, 31.714092, 46.713554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688915, 32.090130, 46.658207> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039855, -0.132564, -0.990373,
		-0.949386, 0.314088, -0.003836,
		0.311573, 0.940093, -0.138373,
		35.782387, 32.372158, 46.616695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054829, 32.098454, 46.278553>,  <35.564285, 31.714092, 46.713554>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054829, 32.098454, 46.278553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.424683, 32.248886, 46.254517>,  <35.646595, 32.339146, 46.240093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.424683, 32.248886, 46.254517>,  <35.054829, 32.098454, 46.278553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424683, 32.248886, 46.254517> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014668, -0.192836, -0.981121,
		-0.380573, 0.906297, -0.183820,
		0.924634, 0.376085, -0.060095,
		35.702072, 32.361713, 46.236488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358353, 32.443031, 46.383968>,  <35.054829, 32.098454, 46.278553>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358353, 32.443031, 46.383968> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.965336, 32.382298, 46.340973>,  <33.729527, 32.345860, 46.315174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.965336, 32.382298, 46.340973>,  <34.358353, 32.443031, 46.383968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965336, 32.382298, 46.340973> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108892, 0.000925, 0.994053,
		-0.150830, 0.988406, -0.017442,
		-0.982544, -0.151833, -0.107490,
		33.670574, 32.336746, 46.308727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147957, 32.788166, 46.914696>,  <34.358353, 32.443031, 46.383968>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147957, 32.788166, 46.914696> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.834877, 32.552948, 46.833126>,  <33.647030, 32.411816, 46.784184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.834877, 32.552948, 46.833126>,  <34.147957, 32.788166, 46.914696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834877, 32.552948, 46.833126> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203960, -0.067220, 0.976669,
		-0.588037, 0.806028, -0.067326,
		-0.782696, -0.588049, -0.203926,
		33.600067, 32.376534, 46.771950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676254, 32.973869, 47.377701>,  <34.147957, 32.788166, 46.914696>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676254, 32.973869, 47.377701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.558567, 32.603142, 47.284367>,  <33.487953, 32.380707, 47.228367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.558567, 32.603142, 47.284367>,  <33.676254, 32.973869, 47.377701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558567, 32.603142, 47.284367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134289, -0.201635, 0.970211,
		-0.946256, 0.316792, -0.065136,
		-0.294221, -0.926815, -0.233340,
		33.470303, 32.325096, 47.214363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117123, 32.919357, 47.809971>,  <33.676254, 32.973869, 47.377701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117123, 32.919357, 47.809971> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.234898, 32.552525, 47.702442>,  <33.305565, 32.332424, 47.637924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.234898, 32.552525, 47.702442>,  <33.117123, 32.919357, 47.809971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234898, 32.552525, 47.702442> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040617, -0.293045, 0.955236,
		-0.954806, -0.270342, -0.123533,
		0.294441, -0.917082, -0.268820,
		33.323231, 32.277401, 47.621796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610729, 32.365761, 48.061665>,  <33.117123, 32.919357, 47.809971>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610729, 32.365761, 48.061665> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.964153, 32.186550, 48.007118>,  <33.176208, 32.079025, 47.974388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.964153, 32.186550, 48.007118>,  <32.610729, 32.365761, 48.061665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964153, 32.186550, 48.007118> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052928, -0.384851, 0.921460,
		-0.465319, -0.806946, -0.363752,
		0.883559, -0.448026, -0.136368,
		33.229221, 32.052143, 47.966209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482388, 31.746481, 48.448460>,  <32.610729, 32.365761, 48.061665>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482388, 31.746481, 48.448460> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.873669, 31.725283, 48.368141>,  <33.108437, 31.712563, 48.319950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.873669, 31.725283, 48.368141>,  <32.482388, 31.746481, 48.448460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873669, 31.725283, 48.368141> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179940, -0.266393, 0.946919,
		-0.103672, -0.962406, -0.251050,
		0.978199, -0.052995, -0.200793,
		33.167130, 31.709383, 48.307903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759525, 31.008324, 48.612869>,  <32.482388, 31.746481, 48.448460>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759525, 31.008324, 48.612869> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.051601, 31.280088, 48.641773>,  <33.226849, 31.443148, 48.659115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.051601, 31.280088, 48.641773>,  <32.759525, 31.008324, 48.612869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051601, 31.280088, 48.641773> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220933, -0.334869, 0.915998,
		0.646539, -0.652887, -0.394622,
		0.730189, 0.679413, 0.072261,
		33.270657, 31.483912, 48.663452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419052, 30.686779, 48.767792>,  <32.759525, 31.008324, 48.612869>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419052, 30.686779, 48.767792> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.385143, 31.054451, 48.921635>,  <33.364799, 31.275053, 49.013943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.385143, 31.054451, 48.921635>,  <33.419052, 30.686779, 48.767792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385143, 31.054451, 48.921635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075437, -0.378972, 0.922328,
		0.993541, 0.107201, -0.037214,
		-0.084771, 0.919178, 0.384611,
		33.359711, 31.330204, 49.037018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737236, 30.505213, 49.370491>,  <33.419052, 30.686779, 48.767792>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737236, 30.505213, 49.370491> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.645035, 30.889849, 49.430103>,  <33.589714, 31.120630, 49.465870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.645035, 30.889849, 49.430103>,  <33.737236, 30.505213, 49.370491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645035, 30.889849, 49.430103> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194585, -0.104512, 0.975302,
		0.953417, 0.253810, -0.163020,
		-0.230504, 0.961591, 0.149031,
		33.575882, 31.178326, 49.474812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050396, 30.526730, 50.008652>,  <33.737236, 30.505213, 49.370491>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050396, 30.526730, 50.008652> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.870735, 30.881639, 49.966682>,  <33.762939, 31.094585, 49.941502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.870735, 30.881639, 49.966682>,  <34.050396, 30.526730, 50.008652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870735, 30.881639, 49.966682> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022259, 0.128507, 0.991459,
		0.893178, 0.442980, -0.077469,
		-0.449152, 0.887274, -0.104919,
		33.735989, 31.147821, 49.935207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428444, 31.090923, 50.285736>,  <34.050396, 30.526730, 50.008652>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428444, 31.090923, 50.285736> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.051903, 31.225346, 50.297924>,  <33.825977, 31.306000, 50.305237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.051903, 31.225346, 50.297924>,  <34.428444, 31.090923, 50.285736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051903, 31.225346, 50.297924> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090790, 0.165269, 0.982061,
		0.324991, 0.927228, -0.186087,
		-0.941349, 0.336056, 0.030472,
		33.769497, 31.326162, 50.307064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403843, 31.676594, 50.694805>,  <34.428444, 31.090923, 50.285736>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403843, 31.676594, 50.694805> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.013592, 31.589054, 50.688541>,  <33.779442, 31.536530, 50.684784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.013592, 31.589054, 50.688541>,  <34.403843, 31.676594, 50.694805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013592, 31.589054, 50.688541> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132868, 0.532517, 0.835926,
		-0.174606, 0.817637, -0.548619,
		-0.975633, -0.218851, -0.015657,
		33.720901, 31.523399, 50.683846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968903, 32.264511, 50.815647>,  <34.403843, 31.676594, 50.694805>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968903, 32.264511, 50.815647> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.732018, 31.965536, 50.936062>,  <33.589886, 31.786152, 51.008312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.732018, 31.965536, 50.936062>,  <33.968903, 32.264511, 50.815647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732018, 31.965536, 50.936062> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161697, 0.476238, 0.864322,
		-0.789390, 0.463186, -0.402892,
		-0.592214, -0.747433, 0.301042,
		33.554352, 31.741306, 51.026375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602821, 32.574730, 51.291744>,  <33.968903, 32.264511, 50.815647>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602821, 32.574730, 51.291744> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.513721, 32.190842, 51.360237>,  <33.460262, 31.960508, 51.401333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.513721, 32.190842, 51.360237>,  <33.602821, 32.574730, 51.291744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513721, 32.190842, 51.360237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014837, 0.178962, 0.983744,
		-0.974762, 0.216590, -0.054103,
		-0.222751, -0.959719, 0.171232,
		33.446896, 31.902925, 51.411606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431751, 33.193954, 51.619820>,  <33.602821, 32.574730, 51.291744>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431751, 33.193954, 51.619820> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.393688, 33.553528, 51.790867>,  <33.370850, 33.769272, 51.893497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.393688, 33.553528, 51.790867>,  <33.431751, 33.193954, 51.619820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393688, 33.553528, 51.790867> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521925, 0.320739, -0.790393,
		-0.847667, -0.298399, 0.438656,
		-0.095158, 0.898935, 0.427621,
		33.365139, 33.823208, 51.919155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724602, 33.382576, 51.601883>,  <33.431751, 33.193954, 51.619820>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724602, 33.382576, 51.601883> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.918839, 33.732250, 51.600838>,  <33.035381, 33.942055, 51.600212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.918839, 33.732250, 51.600838>,  <32.724602, 33.382576, 51.601883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918839, 33.732250, 51.600838> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650713, 0.359461, -0.668850,
		-0.583757, 0.326488, 0.743393,
		0.485592, 0.874182, -0.002612,
		33.064518, 33.994503, 51.600056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252876, 34.058598, 51.415375>,  <32.724602, 33.382576, 51.601883>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252876, 34.058598, 51.415375> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.611279, 34.226727, 51.358109>,  <32.826321, 34.327606, 51.323750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.611279, 34.226727, 51.358109>,  <32.252876, 34.058598, 51.415375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611279, 34.226727, 51.358109> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316980, 0.379676, -0.869120,
		-0.310957, 0.824119, 0.473427,
		0.896007, 0.420327, -0.143166,
		32.880081, 34.352825, 51.315159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147202, 34.793983, 51.116627>,  <32.252876, 34.058598, 51.415375>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147202, 34.793983, 51.116627> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.532036, 34.726719, 51.030727>,  <32.762936, 34.686359, 50.979187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.532036, 34.726719, 51.030727>,  <32.147202, 34.793983, 51.116627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532036, 34.726719, 51.030727> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134404, 0.392810, -0.909745,
		0.237342, 0.904113, 0.355314,
		0.962083, -0.168165, -0.214747,
		32.820660, 34.676270, 50.966305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363049, 35.483219, 50.910103>,  <32.147202, 34.793983, 51.116627>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363049, 35.483219, 50.910103> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.610588, 35.208073, 50.758385>,  <32.759113, 35.042984, 50.667355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.610588, 35.208073, 50.758385>,  <32.363049, 35.483219, 50.910103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610588, 35.208073, 50.758385> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188067, 0.339070, -0.921771,
		0.762664, 0.641770, 0.080468,
		0.618850, -0.687868, -0.379293,
		32.796242, 35.001713, 50.644596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604340, 35.733990, 50.300919>,  <32.363049, 35.483219, 50.910103>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604340, 35.733990, 50.300919> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.688957, 35.346916, 50.246010>,  <32.739727, 35.114674, 50.213062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.688957, 35.346916, 50.246010>,  <32.604340, 35.733990, 50.300919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688957, 35.346916, 50.246010> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314872, 0.065490, -0.946872,
		0.925260, 0.243525, -0.290842,
		0.211539, -0.967681, -0.137275,
		32.752419, 35.056610, 50.204826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027565, 35.733540, 49.744419>,  <32.604340, 35.733990, 50.300919>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027565, 35.733540, 49.744419> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.870598, 35.365852, 49.757320>,  <32.776417, 35.145241, 49.765060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.870598, 35.365852, 49.757320>,  <33.027565, 35.733540, 49.744419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870598, 35.365852, 49.757320> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317123, 0.102300, -0.942851,
		0.863389, -0.380220, -0.331650,
		-0.392418, -0.919221, 0.032251,
		32.752872, 35.090088, 49.766994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847618, 35.689247, 49.899052>,  <33.027565, 35.733540, 49.744419>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847618, 35.689247, 49.899052> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.054813, 36.030979, 49.916046>,  <34.179131, 36.236019, 49.926243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.054813, 36.030979, 49.916046>,  <33.847618, 35.689247, 49.899052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054813, 36.030979, 49.916046> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254622, -0.201421, 0.945832,
		0.816610, -0.479114, -0.321865,
		0.517992, 0.854330, 0.042490,
		34.210213, 36.287277, 49.928795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403442, 35.526669, 50.311333>,  <33.847618, 35.689247, 49.899052>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403442, 35.526669, 50.311333> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.394047, 35.926220, 50.327744>,  <34.388409, 36.165951, 50.337589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.394047, 35.926220, 50.327744>,  <34.403442, 35.526669, 50.311333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394047, 35.926220, 50.327744> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283226, -0.032709, 0.958495,
		0.958766, 0.034133, -0.282141,
		-0.023488, 0.998882, 0.041027,
		34.387001, 36.225883, 50.340054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912685, 35.650078, 50.645882>,  <34.403442, 35.526669, 50.311333>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912685, 35.650078, 50.645882> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.711708, 35.992073, 50.697342>,  <34.591122, 36.197269, 50.728218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.711708, 35.992073, 50.697342>,  <34.912685, 35.650078, 50.645882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711708, 35.992073, 50.697342> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517375, 0.178096, 0.837022,
		0.692732, 0.487112, -0.531832,
		-0.502440, 0.854988, 0.128646,
		34.560974, 36.248569, 50.735935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349220, 36.049953, 50.889538>,  <34.912685, 35.650078, 50.645882>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349220, 36.049953, 50.889538> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.021835, 36.256657, 50.990002>,  <34.825405, 36.380680, 51.050278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.021835, 36.256657, 50.990002>,  <35.349220, 36.049953, 50.889538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021835, 36.256657, 50.990002> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401350, 0.201410, 0.893506,
		0.411142, 0.832102, -0.372248,
		-0.818462, 0.516759, 0.251156,
		34.776299, 36.411686, 51.065350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553886, 36.699654, 51.202995>,  <35.349220, 36.049953, 50.889538>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553886, 36.699654, 51.202995> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.182499, 36.633667, 51.336102>,  <34.959667, 36.594074, 51.415966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.182499, 36.633667, 51.336102>,  <35.553886, 36.699654, 51.202995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182499, 36.633667, 51.336102> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278606, 0.283150, 0.917717,
		-0.245614, 0.944782, -0.216936,
		-0.928468, -0.164964, 0.332768,
		34.903957, 36.584179, 51.435932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150181, 37.368591, 51.446995>,  <35.553886, 36.699654, 51.202995>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150181, 37.368591, 51.446995> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.968807, 37.075508, 51.649990>,  <34.859985, 36.899658, 51.771786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.968807, 37.075508, 51.649990>,  <35.150181, 37.368591, 51.446995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968807, 37.075508, 51.649990> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323025, 0.395581, 0.859750,
		-0.830696, 0.553768, 0.057313,
		-0.453430, -0.732705, 0.507489,
		34.832779, 36.855698, 51.802238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905323, 37.693108, 52.016289>,  <35.150181, 37.368591, 51.446995>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905323, 37.693108, 52.016289> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.874134, 37.309811, 52.126331>,  <34.855419, 37.079830, 52.192356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.874134, 37.309811, 52.126331>,  <34.905323, 37.693108, 52.016289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874134, 37.309811, 52.126331> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179181, 0.257987, 0.949388,
		-0.980721, 0.123323, 0.151583,
		-0.077975, -0.958245, 0.275110,
		34.850742, 37.022339, 52.208866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621811, 37.836967, 52.614750>,  <34.905323, 37.693108, 52.016289>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621811, 37.836967, 52.614750> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.778919, 37.470146, 52.642292>,  <34.873184, 37.250053, 52.658817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.778919, 37.470146, 52.642292>,  <34.621811, 37.836967, 52.614750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778919, 37.470146, 52.642292> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347383, 0.217274, 0.912204,
		-0.851501, -0.334369, 0.403909,
		0.392772, -0.917055, 0.068855,
		34.896751, 37.195030, 52.662949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355427, 37.625042, 53.221149>,  <34.621811, 37.836967, 52.614750>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355427, 37.625042, 53.221149> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.664944, 37.382469, 53.147953>,  <34.850655, 37.236927, 53.104034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.664944, 37.382469, 53.147953>,  <34.355427, 37.625042, 53.221149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664944, 37.382469, 53.147953> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423109, 0.279827, 0.861786,
		-0.471409, -0.744268, 0.473115,
		0.773790, -0.606434, -0.182994,
		34.897079, 37.200539, 53.093056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.133274, 36.902538, 37.141014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525963, 36.921856, 37.214653>,  <34.761578, 36.933445, 37.258835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525963, 36.921856, 37.214653>,  <34.133274, 36.902538, 37.141014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525963, 36.921856, 37.214653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177571, -0.115740, 0.977278,
		0.068507, -0.992105, -0.105048,
		0.981720, 0.048297, 0.184098,
		34.820480, 36.936344, 37.269882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313965, 36.368927, 37.584263>,  <34.133274, 36.902538, 37.141014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313965, 36.368927, 37.584263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610558, 36.632782, 37.633396>,  <34.788513, 36.791096, 37.662876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610558, 36.632782, 37.633396>,  <34.313965, 36.368927, 37.584263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610558, 36.632782, 37.633396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018587, -0.162806, 0.986483,
		0.670716, -0.733742, -0.108457,
		0.741481, 0.659634, 0.122835,
		34.833000, 36.830673, 37.670246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702038, 36.190079, 38.170284>,  <34.313965, 36.368927, 37.584263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702038, 36.190079, 38.170284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816433, 36.572159, 38.139797>,  <34.885071, 36.801407, 38.121506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816433, 36.572159, 38.139797>,  <34.702038, 36.190079, 38.170284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816433, 36.572159, 38.139797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052921, 0.095158, 0.994054,
		0.956771, -0.280252, 0.077763,
		0.285986, 0.955198, -0.076213,
		34.902229, 36.858719, 38.116932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050644, 36.296860, 38.778149>,  <34.702038, 36.190079, 38.170284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050644, 36.296860, 38.778149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990368, 36.667007, 38.639015>,  <34.954205, 36.889095, 38.555534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990368, 36.667007, 38.639015>,  <35.050644, 36.296860, 38.778149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990368, 36.667007, 38.639015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008893, 0.350566, 0.936496,
		0.988541, 0.144211, -0.044596,
		-0.150687, 0.925368, -0.347832,
		34.945160, 36.944618, 38.534664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521660, 36.793301, 38.987343>,  <35.050644, 36.296860, 38.778149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521660, 36.793301, 38.987343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172764, 36.983650, 38.942181>,  <34.963428, 37.097858, 38.915085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172764, 36.983650, 38.942181>,  <35.521660, 36.793301, 38.987343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172764, 36.983650, 38.942181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036030, 0.167705, 0.985179,
		0.487753, 0.863378, -0.129133,
		-0.872238, 0.475871, -0.112906,
		34.911091, 37.126411, 38.908310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566601, 37.301891, 39.535904>,  <35.521660, 36.793301, 38.987343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566601, 37.301891, 39.535904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184757, 37.342983, 39.424068>,  <34.955650, 37.367638, 39.356968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184757, 37.342983, 39.424068>,  <35.566601, 37.301891, 39.535904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184757, 37.342983, 39.424068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214113, 0.415859, 0.883865,
		0.207068, 0.903608, -0.374987,
		-0.954609, 0.102730, -0.279585,
		34.898373, 37.373802, 39.340195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395092, 37.878979, 39.989990>,  <35.566601, 37.301891, 39.535904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395092, 37.878979, 39.989990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036846, 37.733459, 39.887600>,  <34.821899, 37.646149, 39.826164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036846, 37.733459, 39.887600>,  <35.395092, 37.878979, 39.989990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036846, 37.733459, 39.887600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363417, 0.266578, 0.892673,
		-0.256513, 0.892518, -0.370961,
		-0.895617, -0.363796, -0.255975,
		34.768162, 37.624321, 39.810806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846771, 38.431793, 40.220615>,  <35.395092, 37.878979, 39.989990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846771, 38.431793, 40.220615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657307, 38.083828, 40.165630>,  <34.543629, 37.875050, 40.132637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657307, 38.083828, 40.165630>,  <34.846771, 38.431793, 40.220615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657307, 38.083828, 40.165630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582590, 0.192433, 0.789657,
		-0.660480, 0.454116, -0.597951,
		-0.473662, -0.869912, -0.137465,
		34.515209, 37.822853, 40.124390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090233, 38.493744, 40.295959>,  <34.846771, 38.431793, 40.220615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090233, 38.493744, 40.295959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137402, 38.101067, 40.355797>,  <34.165703, 37.865459, 40.391701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137402, 38.101067, 40.355797>,  <34.090233, 38.493744, 40.295959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137402, 38.101067, 40.355797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607329, 0.047888, 0.793006,
		-0.785650, -0.184363, -0.590562,
		0.117921, -0.981691, 0.149592,
		34.172779, 37.806561, 40.400673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476910, 38.319092, 40.605896>,  <34.090233, 38.493744, 40.295959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476910, 38.319092, 40.605896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699871, 37.996597, 40.685181>,  <33.833649, 37.803101, 40.732750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699871, 37.996597, 40.685181>,  <33.476910, 38.319092, 40.605896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699871, 37.996597, 40.685181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445095, -0.088654, 0.891084,
		-0.700851, -0.584915, -0.408267,
		0.557402, -0.806235, 0.198209,
		33.867092, 37.754726, 40.744644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068558, 37.786732, 40.837265>,  <33.476910, 38.319092, 40.605896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068558, 37.786732, 40.837265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438568, 37.709736, 40.968273>,  <33.660576, 37.663540, 41.046879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438568, 37.709736, 40.968273>,  <33.068558, 37.786732, 40.837265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438568, 37.709736, 40.968273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305664, 0.134822, 0.942546,
		-0.225587, -0.971993, 0.065877,
		0.925030, -0.192490, 0.327517,
		33.716076, 37.651989, 41.066528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953182, 37.262829, 41.412678>,  <33.068558, 37.786732, 40.837265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953182, 37.262829, 41.412678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316631, 37.419903, 41.469532>,  <33.534702, 37.514149, 41.503643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316631, 37.419903, 41.469532>,  <32.953182, 37.262829, 41.412678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316631, 37.419903, 41.469532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190956, 0.087992, 0.977647,
		0.371402, -0.915453, 0.154938,
		0.908623, 0.392687, 0.142131,
		33.589218, 37.537708, 41.512173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611473, 36.557972, 41.129692>,  <32.953182, 37.262829, 41.412678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611473, 36.557972, 41.129692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232933, 36.563328, 41.258839>,  <32.005810, 36.566540, 41.336327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232933, 36.563328, 41.258839>,  <32.611473, 36.557972, 41.129692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232933, 36.563328, 41.258839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322890, -0.078990, -0.943134,
		0.012879, -0.996785, 0.079075,
		-0.946349, 0.013386, 0.322869,
		31.949028, 36.567345, 41.355698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254375, 36.091595, 40.718449>,  <32.611473, 36.557972, 41.129692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254375, 36.091595, 40.718449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960167, 36.310352, 40.878410>,  <31.783644, 36.441605, 40.974388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960167, 36.310352, 40.878410>,  <32.254375, 36.091595, 40.718449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960167, 36.310352, 40.878410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515077, -0.067927, -0.854448,
		-0.440126, -0.834443, 0.331652,
		-0.735517, 0.546892, 0.399906,
		31.739511, 36.474419, 40.998383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.654531, 35.743038, 40.558224>,  <32.254375, 36.091595, 40.718449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.654531, 35.743038, 40.558224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.550350, 36.123985, 40.621662>,  <31.487841, 36.352554, 40.659725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.550350, 36.123985, 40.621662>,  <31.654531, 35.743038, 40.558224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.550350, 36.123985, 40.621662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481127, 0.014387, -0.876533,
		-0.837066, -0.304601, 0.454465,
		-0.260454, 0.952372, 0.158595,
		31.472214, 36.409698, 40.669239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.917116, 35.856663, 40.403374>,  <31.654531, 35.743038, 40.558224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.917116, 35.856663, 40.403374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076019, 36.222870, 40.378036>,  <31.171362, 36.442593, 40.362835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076019, 36.222870, 40.378036>,  <30.917116, 35.856663, 40.403374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076019, 36.222870, 40.378036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646347, 0.230123, -0.727516,
		-0.651476, 0.329957, 0.683160,
		0.397260, 0.915517, -0.063347,
		31.195198, 36.497524, 40.359032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.338116, 36.326099, 40.430664>,  <30.917116, 35.856663, 40.403374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.338116, 36.326099, 40.430664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.647459, 36.516750, 40.263458>,  <30.833065, 36.631142, 40.163136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.647459, 36.516750, 40.263458>,  <30.338116, 36.326099, 40.430664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.647459, 36.516750, 40.263458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616054, 0.409373, -0.672972,
		-0.149635, 0.777970, 0.610223,
		0.773360, 0.476631, -0.418015,
		30.879467, 36.659740, 40.138054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.074612, 37.047871, 40.296036>,  <30.338116, 36.326099, 40.430664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.074612, 37.047871, 40.296036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381289, 36.947571, 40.059628>,  <30.565294, 36.887390, 39.917782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381289, 36.947571, 40.059628>,  <30.074612, 37.047871, 40.296036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381289, 36.947571, 40.059628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534199, 0.261458, -0.803910,
		0.356111, 0.932074, 0.066505,
		0.766692, -0.250754, -0.591021,
		30.611296, 36.872345, 39.882320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.026087, 37.572437, 39.760143>,  <30.074612, 37.047871, 40.296036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.026087, 37.572437, 39.760143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.247648, 37.280315, 39.600220>,  <30.380585, 37.105042, 39.504265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.247648, 37.280315, 39.600220>,  <30.026087, 37.572437, 39.760143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.247648, 37.280315, 39.600220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440962, 0.149989, -0.884904,
		0.706216, 0.666453, -0.238957,
		0.553906, -0.730304, -0.399805,
		30.413820, 37.061226, 39.480278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077501, 37.752213, 39.098415>,  <30.026087, 37.572437, 39.760143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.077501, 37.752213, 39.098415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.214722, 37.378571, 39.058872>,  <30.297054, 37.154385, 39.035149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.214722, 37.378571, 39.058872>,  <30.077501, 37.752213, 39.098415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.214722, 37.378571, 39.058872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462912, -0.076550, -0.883093,
		0.817330, 0.348707, -0.458667,
		0.343051, -0.934101, -0.098854,
		30.317636, 37.098339, 39.029217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.435251, 37.718426, 38.498848>,  <30.077501, 37.752213, 39.098415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.435251, 37.718426, 38.498848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.300243, 37.350033, 38.576687>,  <30.219238, 37.128998, 38.623390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.300243, 37.350033, 38.576687>,  <30.435251, 37.718426, 38.498848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.300243, 37.350033, 38.576687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261105, -0.107014, -0.959360,
		0.904380, -0.374615, -0.204354,
		-0.337522, -0.920984, 0.194595,
		30.198986, 37.073738, 38.635067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.530573, 37.385208, 37.866104>,  <30.435251, 37.718426, 38.498848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.530573, 37.385208, 37.866104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.280920, 37.122997, 38.036160>,  <30.131128, 36.965672, 38.138191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.280920, 37.122997, 38.036160>,  <30.530573, 37.385208, 37.866104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.280920, 37.122997, 38.036160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272060, -0.327739, -0.904749,
		0.732424, -0.680345, 0.026209,
		-0.624131, -0.655529, 0.425138,
		30.093681, 36.926338, 38.163700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.649168, 36.888474, 37.483250>,  <30.530573, 37.385208, 37.866104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.649168, 36.888474, 37.483250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291941, 36.821617, 37.650337>,  <30.077604, 36.781502, 37.750591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291941, 36.821617, 37.650337>,  <30.649168, 36.888474, 37.483250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291941, 36.821617, 37.650337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348221, -0.331142, -0.876976,
		0.284907, -0.928659, 0.237529,
		-0.893068, -0.167144, 0.417724,
		30.024021, 36.771473, 37.775654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499161, 36.197876, 37.335445>,  <30.649168, 36.888474, 37.483250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499161, 36.197876, 37.335445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.157963, 36.395233, 37.403526>,  <29.953245, 36.513645, 37.444374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.157963, 36.395233, 37.403526>,  <30.499161, 36.197876, 37.335445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.157963, 36.395233, 37.403526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384897, -0.374416, -0.843603,
		-0.352484, -0.785107, 0.509276,
		-0.853000, 0.493376, 0.170210,
		29.902065, 36.543251, 37.454586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.004135, 35.787663, 37.230766>,  <30.499161, 36.197876, 37.335445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.004135, 35.787663, 37.230766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.797733, 36.130199, 37.222591>,  <29.673893, 36.335720, 37.217686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.797733, 36.130199, 37.222591>,  <30.004135, 35.787663, 37.230766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.797733, 36.130199, 37.222591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417133, -0.272048, -0.867173,
		-0.748158, -0.438938, 0.497587,
		-0.516002, 0.856343, -0.020439,
		29.642933, 36.387104, 37.216461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.441803, 35.678776, 36.736504>,  <30.004135, 35.787663, 37.230766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.441803, 35.678776, 36.736504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.505825, 35.364826, 36.497055>,  <30.544239, 35.176456, 36.353386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.505825, 35.364826, 36.497055>,  <30.441803, 35.678776, 36.736504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.505825, 35.364826, 36.497055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896879, 0.368932, -0.243920,
		0.412299, -0.497851, 0.762990,
		0.160056, -0.784877, -0.598623,
		30.553843, 35.129364, 36.317467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.144835, 35.372028, 36.787926>,  <30.441803, 35.678776, 36.736504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.144835, 35.372028, 36.787926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.978910, 35.321060, 36.427547>,  <30.879356, 35.290478, 36.211323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.978910, 35.321060, 36.427547>,  <31.144835, 35.372028, 36.787926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978910, 35.321060, 36.427547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655599, 0.644758, -0.393037,
		0.630970, -0.753692, -0.183915,
		-0.414810, -0.127420, -0.900942,
		30.854467, 35.282833, 36.157265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619837, 35.119572, 36.273533>,  <31.144835, 35.372028, 36.787926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619837, 35.119572, 36.273533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.351067, 35.355907, 36.094902>,  <31.189804, 35.497707, 35.987724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.351067, 35.355907, 36.094902>,  <31.619837, 35.119572, 36.273533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.351067, 35.355907, 36.094902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740295, 0.553642, -0.381372,
		0.021914, -0.586850, -0.809399,
		-0.671925, 0.590836, -0.446575,
		31.149488, 35.533157, 35.960930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120979, 34.692314, 36.363434>,  <31.619837, 35.119572, 36.273533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120979, 34.692314, 36.363434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348064, 34.389362, 36.234390>,  <32.484314, 34.207592, 36.156963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348064, 34.389362, 36.234390>,  <32.120979, 34.692314, 36.363434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348064, 34.389362, 36.234390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143475, -0.294861, 0.944707,
		-0.810630, -0.582606, -0.058730,
		0.567709, -0.757382, -0.322613,
		32.518375, 34.162148, 36.137608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815535, 33.978195, 36.385822>,  <32.120979, 34.692314, 36.363434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815535, 33.978195, 36.385822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212036, 33.960136, 36.435417>,  <32.449936, 33.949303, 36.465176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212036, 33.960136, 36.435417>,  <31.815535, 33.978195, 36.385822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212036, 33.960136, 36.435417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131735, -0.392343, 0.910336,
		0.007547, -0.918710, -0.394860,
		0.991256, -0.045147, 0.123988,
		32.509415, 33.946590, 36.472614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957762, 33.329357, 36.672722>,  <31.815535, 33.978195, 36.385822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957762, 33.329357, 36.672722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272312, 33.552124, 36.779644>,  <32.461044, 33.685783, 36.843796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272312, 33.552124, 36.779644>,  <31.957762, 33.329357, 36.672722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272312, 33.552124, 36.779644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065949, -0.354545, 0.932710,
		0.614218, -0.751090, -0.242077,
		0.786376, 0.556922, 0.267302,
		32.508224, 33.719200, 36.859833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430206, 32.889595, 37.047989>,  <31.957762, 33.329357, 36.672722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430206, 32.889595, 37.047989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508598, 33.263100, 37.167782>,  <32.555634, 33.487202, 37.239658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508598, 33.263100, 37.167782>,  <32.430206, 32.889595, 37.047989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508598, 33.263100, 37.167782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024690, -0.300608, 0.953428,
		0.980297, -0.194249, -0.035859,
		0.195982, 0.933757, 0.299481,
		32.567394, 33.543228, 37.257626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975075, 32.836254, 37.546551>,  <32.430206, 32.889595, 37.047989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975075, 32.836254, 37.546551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751125, 33.160400, 37.615658>,  <32.616756, 33.354889, 37.657124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751125, 33.160400, 37.615658>,  <32.975075, 32.836254, 37.546551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751125, 33.160400, 37.615658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058584, -0.246705, 0.967318,
		0.826501, 0.531459, 0.185599,
		-0.559878, 0.810363, 0.172767,
		32.583160, 33.403511, 37.667488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327660, 33.137520, 38.114639>,  <32.975075, 32.836254, 37.546551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327660, 33.137520, 38.114639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964859, 33.305862, 38.120804>,  <32.747181, 33.406868, 38.124500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964859, 33.305862, 38.120804>,  <33.327660, 33.137520, 38.114639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964859, 33.305862, 38.120804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019103, -0.077661, 0.996797,
		0.420704, 0.903797, 0.078478,
		-0.906997, 0.420856, 0.015407,
		32.692760, 33.432117, 38.125427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376812, 33.630898, 38.570358>,  <33.327660, 33.137520, 38.114639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376812, 33.630898, 38.570358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980286, 33.580154, 38.556541>,  <32.742371, 33.549709, 38.548252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980286, 33.580154, 38.556541>,  <33.376812, 33.630898, 38.570358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980286, 33.580154, 38.556541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036722, 0.014884, 0.999215,
		-0.126245, 0.991809, -0.019413,
		-0.991319, -0.126859, -0.034542,
		32.682888, 33.542095, 38.546177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125320, 34.200272, 39.044312>,  <33.376812, 33.630898, 38.570358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125320, 34.200272, 39.044312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838104, 33.921928, 39.038597>,  <32.665775, 33.754925, 39.035168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838104, 33.921928, 39.038597>,  <33.125320, 34.200272, 39.044312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838104, 33.921928, 39.038597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039395, 0.020138, 0.999021,
		-0.694887, 0.717899, -0.041873,
		-0.718039, -0.695856, -0.014288,
		32.622692, 33.713173, 39.034309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537949, 34.400513, 39.462372>,  <33.125320, 34.200272, 39.044312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537949, 34.400513, 39.462372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473858, 34.007675, 39.422729>,  <32.435402, 33.771973, 39.398945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473858, 34.007675, 39.422729>,  <32.537949, 34.400513, 39.462372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473858, 34.007675, 39.422729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158078, -0.073577, 0.984682,
		-0.974340, 0.173440, -0.143458,
		-0.160228, -0.982092, -0.099106,
		32.425789, 33.713047, 39.392998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.916176, 34.230518, 39.882690>,  <32.537949, 34.400513, 39.462372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.916176, 34.230518, 39.882690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104408, 33.884247, 39.814388>,  <32.217350, 33.676483, 39.773407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104408, 33.884247, 39.814388>,  <31.916176, 34.230518, 39.882690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104408, 33.884247, 39.814388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003984, -0.195610, 0.980674,
		-0.882347, -0.460807, -0.095500,
		0.470582, -0.865675, -0.170760,
		32.245583, 33.624546, 39.763161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602606, 33.789490, 40.345543>,  <31.916176, 34.230518, 39.882690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602606, 33.789490, 40.345543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.930407, 33.583302, 40.245373>,  <32.127087, 33.459591, 40.185272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.930407, 33.583302, 40.245373>,  <31.602606, 33.789490, 40.345543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.930407, 33.583302, 40.245373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085878, -0.321584, 0.942979,
		-0.566606, -0.794278, -0.219272,
		0.819502, -0.515467, -0.250422,
		32.176258, 33.428661, 40.170246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505898, 33.206882, 40.676880>,  <31.602606, 33.789490, 40.345543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505898, 33.206882, 40.676880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898573, 33.185371, 40.603786>,  <32.134178, 33.172462, 40.559933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898573, 33.185371, 40.603786>,  <31.505898, 33.206882, 40.676880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898573, 33.185371, 40.603786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154533, -0.336012, 0.929094,
		-0.111367, -0.940321, -0.321549,
		0.981691, -0.053780, -0.182731,
		32.193081, 33.169235, 40.548965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.791500, 32.481941, 40.850109>,  <31.505898, 33.206882, 40.676880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.791500, 32.481941, 40.850109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059975, 32.777691, 40.871380>,  <32.221062, 32.955143, 40.884144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059975, 32.777691, 40.871380>,  <31.791500, 32.481941, 40.850109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059975, 32.777691, 40.871380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119918, -0.179092, 0.976497,
		0.731523, -0.649036, -0.208869,
		0.671188, 0.739377, 0.053179,
		32.261330, 32.999504, 40.887333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533157, 32.189941, 41.029305>,  <31.791500, 32.481941, 40.850109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533157, 32.189941, 41.029305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541569, 32.574051, 41.140610>,  <32.546616, 32.804516, 41.207394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541569, 32.574051, 41.140610>,  <32.533157, 32.189941, 41.029305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541569, 32.574051, 41.140610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111033, -0.278846, 0.953896,
		0.993594, 0.010836, -0.112486,
		0.021030, 0.960275, 0.278263,
		32.547878, 32.862133, 41.224091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175018, 32.243832, 41.490105>,  <32.533157, 32.189941, 41.029305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175018, 32.243832, 41.490105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949429, 32.563908, 41.571720>,  <32.814075, 32.755955, 41.620689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949429, 32.563908, 41.571720>,  <33.175018, 32.243832, 41.490105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949429, 32.563908, 41.571720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129196, -0.158539, 0.978863,
		0.815623, 0.578414, -0.013970,
		-0.563974, 0.800189, 0.204038,
		32.780235, 32.803963, 41.632931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641151, 32.856018, 41.883286>,  <33.175018, 32.243832, 41.490105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641151, 32.856018, 41.883286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254463, 32.907875, 41.971512>,  <33.022449, 32.938988, 42.024448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254463, 32.907875, 41.971512>,  <33.641151, 32.856018, 41.883286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254463, 32.907875, 41.971512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205654, -0.119109, 0.971349,
		0.152199, 0.984381, 0.088484,
		-0.966717, 0.129641, 0.220570,
		32.964447, 32.946766, 42.037682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715302, 33.264931, 42.414970>,  <33.641151, 32.856018, 41.883286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715302, 33.264931, 42.414970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340538, 33.128567, 42.445892>,  <33.115681, 33.046749, 42.464447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340538, 33.128567, 42.445892>,  <33.715302, 33.264931, 42.414970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340538, 33.128567, 42.445892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127811, -0.128233, 0.983474,
		-0.325364, 0.931309, 0.163715,
		-0.936911, -0.340912, 0.077309,
		33.059464, 33.026295, 42.469086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437534, 33.651382, 42.898735>,  <33.715302, 33.264931, 42.414970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437534, 33.651382, 42.898735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188210, 33.338863, 42.885754>,  <33.038612, 33.151352, 42.877964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188210, 33.338863, 42.885754>,  <33.437534, 33.651382, 42.898735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188210, 33.338863, 42.885754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259984, -0.246196, 0.933700,
		-0.737487, 0.573552, 0.356582,
		-0.623315, -0.781297, -0.032452,
		33.001217, 33.104473, 42.876019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874569, 33.801315, 43.405079>,  <33.437534, 33.651382, 42.898735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874569, 33.801315, 43.405079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897453, 33.408264, 43.334461>,  <32.911182, 33.172432, 43.292091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897453, 33.408264, 43.334461>,  <32.874569, 33.801315, 43.405079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897453, 33.408264, 43.334461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262875, -0.155769, 0.952173,
		-0.963132, -0.100885, 0.249397,
		0.057212, -0.982628, -0.176546,
		32.914616, 33.113476, 43.281498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377789, 33.459087, 43.938053>,  <32.874569, 33.801315, 43.405079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377789, 33.459087, 43.938053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.625412, 33.164196, 43.829781>,  <32.773987, 32.987263, 43.764816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.625412, 33.164196, 43.829781>,  <32.377789, 33.459087, 43.938053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625412, 33.164196, 43.829781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048059, -0.308451, 0.950025,
		-0.783876, -0.601126, -0.155518,
		0.619055, -0.737228, -0.270677,
		32.811127, 32.943027, 43.748577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097095, 32.911610, 44.276802>,  <32.377789, 33.459087, 43.938053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097095, 32.911610, 44.276802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468071, 32.797573, 44.179993>,  <32.690659, 32.729149, 44.121906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468071, 32.797573, 44.179993>,  <32.097095, 32.911610, 44.276802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468071, 32.797573, 44.179993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191335, -0.194309, 0.962099,
		-0.321316, -0.938597, -0.125661,
		0.927441, -0.285094, -0.242021,
		32.746304, 32.712044, 44.107388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151440, 32.368015, 44.700890>,  <32.097095, 32.911610, 44.276802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151440, 32.368015, 44.700890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529472, 32.457134, 44.605232>,  <32.756290, 32.510605, 44.547840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529472, 32.457134, 44.605232>,  <32.151440, 32.368015, 44.700890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529472, 32.457134, 44.605232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287732, -0.220067, 0.932084,
		0.155035, -0.949702, -0.272086,
		0.945079, 0.222793, -0.239141,
		32.812996, 32.523972, 44.533489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519184, 31.800610, 44.921894>,  <32.151440, 32.368015, 44.700890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519184, 31.800610, 44.921894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775990, 32.105625, 44.890011>,  <32.930073, 32.288635, 44.870880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775990, 32.105625, 44.890011>,  <32.519184, 31.800610, 44.921894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775990, 32.105625, 44.890011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557848, -0.393278, 0.730847,
		0.525954, -0.513677, -0.677871,
		0.642011, 0.762541, -0.079708,
		32.968594, 32.334389, 44.866100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227249, 31.544758, 44.918938>,  <32.519184, 31.800610, 44.921894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227249, 31.544758, 44.918938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256329, 31.927885, 45.030148>,  <33.273777, 32.157761, 45.096874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256329, 31.927885, 45.030148>,  <33.227249, 31.544758, 44.918938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256329, 31.927885, 45.030148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546620, -0.271428, 0.792170,
		0.834219, 0.094383, -0.543296,
		0.072698, 0.957820, 0.278022,
		33.278137, 32.215233, 45.113556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897968, 31.580946, 45.079456>,  <33.227249, 31.544758, 44.918938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897968, 31.580946, 45.079456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713108, 31.890221, 45.253166>,  <33.602192, 32.075787, 45.357391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713108, 31.890221, 45.253166>,  <33.897968, 31.580946, 45.079456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713108, 31.890221, 45.253166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495493, -0.180999, 0.849544,
		0.735460, 0.607802, -0.299459,
		-0.462153, 0.773186, 0.434279,
		33.574463, 32.122177, 45.383450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351135, 32.100124, 45.303917>,  <33.897968, 31.580946, 45.079456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351135, 32.100124, 45.303917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021782, 32.084694, 45.530384>,  <33.824169, 32.075436, 45.666264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021782, 32.084694, 45.530384>,  <34.351135, 32.100124, 45.303917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021782, 32.084694, 45.530384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567435, -0.043198, 0.822284,
		-0.007266, 0.998321, 0.057460,
		-0.823386, -0.038580, 0.566168,
		33.774765, 32.073120, 45.700233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037113, 32.240120, 45.565144>,  <34.351135, 32.100124, 45.303917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037113, 32.240120, 45.565144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418720, 32.320763, 45.653873>,  <35.647686, 32.369148, 45.707111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418720, 32.320763, 45.653873>,  <35.037113, 32.240120, 45.565144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418720, 32.320763, 45.653873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215643, 0.052401, -0.975065,
		-0.208205, 0.978063, 0.006516,
		0.954017, 0.201609, 0.221822,
		35.704926, 32.381245, 45.720421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234978, 32.779930, 45.209259>,  <35.037113, 32.240120, 45.565144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234978, 32.779930, 45.209259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591427, 32.612541, 45.279434>,  <35.805298, 32.512108, 45.321541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591427, 32.612541, 45.279434>,  <35.234978, 32.779930, 45.209259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591427, 32.612541, 45.279434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301484, 0.257070, -0.918163,
		0.339124, 0.871090, 0.355243,
		0.891124, -0.418471, 0.175441,
		35.858765, 32.487000, 45.332066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785774, 33.127605, 44.777779>,  <35.234978, 32.779930, 45.209259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785774, 33.127605, 44.777779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969330, 32.790005, 44.888832>,  <36.079464, 32.587444, 44.955463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969330, 32.790005, 44.888832>,  <35.785774, 33.127605, 44.777779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969330, 32.790005, 44.888832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423654, -0.066813, -0.903356,
		0.780982, 0.532166, 0.326904,
		0.458894, -0.844000, 0.277634,
		36.106998, 32.536804, 44.972122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400333, 33.185402, 44.442207>,  <35.785774, 33.127605, 44.777779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400333, 33.185402, 44.442207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349403, 32.795048, 44.513123>,  <36.318844, 32.560833, 44.555672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349403, 32.795048, 44.513123>,  <36.400333, 33.185402, 44.442207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349403, 32.795048, 44.513123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273838, -0.206384, -0.939371,
		0.953310, -0.071061, 0.293514,
		-0.127329, -0.975887, 0.177288,
		36.311203, 32.502281, 44.566311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948387, 32.788822, 44.128517>,  <36.400333, 33.185402, 44.442207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948387, 32.788822, 44.128517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643665, 32.531036, 44.154793>,  <36.460831, 32.376366, 44.170559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643665, 32.531036, 44.154793>,  <36.948387, 32.788822, 44.128517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643665, 32.531036, 44.154793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242157, -0.377348, -0.893850,
		0.600845, -0.665032, 0.443528,
		-0.761804, -0.644469, 0.065686,
		36.415123, 32.337696, 44.174500>
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
