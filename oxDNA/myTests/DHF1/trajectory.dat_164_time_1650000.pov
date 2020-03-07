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
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.029159, 0.690765, 3.814904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.231911, 0.918251, 3.555786>,  <4.353562, 1.054743, 3.400316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.231911, 0.918251, 3.555786>,  <4.029159, 0.690765, 3.814904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.231911, 0.918251, 3.555786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510381, 0.803607, 0.306148,
		0.694682, 0.175441, 0.697593,
		0.506880, 0.568715, -0.647793,
		4.383975, 1.088865, 3.361448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.556741, 1.029095, 4.194996>,  <4.029159, 0.690765, 3.814904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.556741, 1.029095, 4.194996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.434776, 1.242844, 3.879662>,  <4.361598, 1.371093, 3.690461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.434776, 1.242844, 3.879662>,  <4.556741, 1.029095, 4.194996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.434776, 1.242844, 3.879662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219228, 0.766144, 0.604122,
		0.926805, 0.357029, -0.116456,
		-0.304911, 0.534373, -0.788337,
		4.343303, 1.403155, 3.643161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.973615, 1.700362, 4.163773>,  <4.556741, 1.029095, 4.194996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.973615, 1.700362, 4.163773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.613350, 1.716248, 3.990692>,  <4.397191, 1.725779, 3.886843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.613350, 1.716248, 3.990692>,  <4.973615, 1.700362, 4.163773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.613350, 1.716248, 3.990692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260887, 0.746927, 0.611586,
		0.347486, 0.663719, -0.662368,
		-0.900662, 0.039714, -0.432703,
		4.343152, 1.728162, 3.860881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.791158, 2.337306, 3.838148>,  <4.973615, 1.700362, 4.163773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.791158, 2.337306, 3.838148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.458061, 2.166748, 3.979416>,  <4.258204, 2.064413, 4.064177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.458061, 2.166748, 3.979416>,  <4.791158, 2.337306, 3.838148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.458061, 2.166748, 3.979416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156594, 0.793223, 0.588452,
		-0.531056, 0.434724, -0.727320,
		-0.832741, -0.426395, 0.353171,
		4.208239, 2.038830, 4.085367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.213066, 2.888499, 3.816133>,  <4.791158, 2.337306, 3.838148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.213066, 2.888499, 3.816133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.150108, 2.593086, 4.078369>,  <4.112334, 2.415839, 4.235711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.150108, 2.593086, 4.078369>,  <4.213066, 2.888499, 3.816133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.150108, 2.593086, 4.078369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235717, 0.672771, 0.701296,
		-0.958991, -0.044154, -0.279975,
		-0.157394, -0.738532, 0.655590,
		4.102890, 2.371527, 4.275046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.506349, 2.835870, 3.956976>,  <4.213066, 2.888499, 3.816133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.506349, 2.835870, 3.956976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.721642, 2.701080, 4.265976>,  <3.850817, 2.620207, 4.451376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.721642, 2.701080, 4.265976>,  <3.506349, 2.835870, 3.956976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.721642, 2.701080, 4.265976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307180, 0.775105, 0.552135,
		-0.784824, -0.534473, 0.313673,
		0.538230, -0.336974, 0.772500,
		3.883111, 2.599988, 4.497726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.102477, 2.708144, 4.497996>,  <3.506349, 2.835870, 3.956976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.102477, 2.708144, 4.497996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.451553, 2.758827, 4.686615>,  <3.660999, 2.789237, 4.799787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.451553, 2.758827, 4.686615>,  <3.102477, 2.708144, 4.497996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.451553, 2.758827, 4.686615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454542, 0.563541, 0.689792,
		-0.178335, -0.816313, 0.549390,
		0.872690, 0.126707, 0.471548,
		3.713360, 2.796839, 4.828079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.977672, 2.498332, 5.169912>,  <3.102477, 2.708144, 4.497996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.977672, 2.498332, 5.169912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.293488, 2.742943, 5.190544>,  <3.482977, 2.889709, 5.202923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.293488, 2.742943, 5.190544>,  <2.977672, 2.498332, 5.169912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.293488, 2.742943, 5.190544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378329, 0.418830, 0.825499,
		0.483210, -0.671280, 0.562042,
		0.789541, 0.611526, 0.051582,
		3.530349, 2.926401, 5.206018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.180455, 3.619673, 1.783099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.494194, 3.856270, 1.708336>,  <3.682438, 3.998228, 1.663478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.494194, 3.856270, 1.708336>,  <3.180455, 3.619673, 1.783099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.494194, 3.856270, 1.708336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118021, -0.438099, -0.891146,
		-0.608990, 0.676910, -0.413430,
		0.784348, 0.591492, -0.186908,
		3.729499, 4.033718, 1.652263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.104349, 3.841132, 1.092364>,  <3.180455, 3.619673, 1.783099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.104349, 3.841132, 1.092364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.490643, 3.871658, 1.191589>,  <3.722418, 3.889974, 1.251125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.490643, 3.871658, 1.191589>,  <3.104349, 3.841132, 1.092364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.490643, 3.871658, 1.191589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246068, -0.573151, -0.781632,
		0.082527, 0.815888, -0.572290,
		0.965733, 0.076317, 0.248064,
		3.780362, 3.894553, 1.266009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.477091, 4.161608, 0.500738>,  <3.104349, 3.841132, 1.092364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.477091, 4.161608, 0.500738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.693314, 3.907051, 0.720848>,  <3.823047, 3.754317, 0.852914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.693314, 3.907051, 0.720848>,  <3.477091, 4.161608, 0.500738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.693314, 3.907051, 0.720848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174914, -0.554765, -0.813413,
		0.822923, 0.535947, -0.188568,
		0.540557, -0.636393, 0.550274,
		3.855481, 3.716133, 0.885930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.997663, 3.909197, 0.023273>,  <3.477091, 4.161608, 0.500738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.997663, 3.909197, 0.023273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.944920, 3.649483, 0.322884>,  <3.913273, 3.493654, 0.502650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.944920, 3.649483, 0.322884>,  <3.997663, 3.909197, 0.023273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.944920, 3.649483, 0.322884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273003, -0.750189, -0.602234,
		0.952933, 0.125076, 0.276177,
		-0.131860, -0.649286, 0.749026,
		3.905362, 3.454697, 0.547591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.662320, 3.627712, 0.235508>,  <3.997663, 3.909197, 0.023273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.662320, 3.627712, 0.235508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.333431, 3.400375, 0.247765>,  <4.136098, 3.263973, 0.255119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.333431, 3.400375, 0.247765>,  <4.662320, 3.627712, 0.235508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.333431, 3.400375, 0.247765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457349, -0.691776, -0.558818,
		0.338798, -0.445458, 0.828724,
		-0.822221, -0.568343, 0.030643,
		4.086765, 3.229872, 0.256957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.929169, 2.971414, 0.193219>,  <4.662320, 3.627712, 0.235508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.929169, 2.971414, 0.193219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.545486, 2.886848, 0.118141>,  <4.315277, 2.836109, 0.073094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.545486, 2.886848, 0.118141>,  <4.929169, 2.971414, 0.193219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.545486, 2.886848, 0.118141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280963, -0.786593, -0.549847,
		-0.031393, -0.580151, 0.813904,
		-0.959205, -0.211415, -0.187695,
		4.257725, 2.823424, 0.061833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.735124, 2.310391, 0.435954>,  <4.929169, 2.971414, 0.193219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.735124, 2.310391, 0.435954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.499863, 2.413658, 0.129379>,  <4.358706, 2.475618, -0.054566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.499863, 2.413658, 0.129379>,  <4.735124, 2.310391, 0.435954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.499863, 2.413658, 0.129379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321203, -0.795168, -0.514331,
		-0.742230, -0.548687, 0.384756,
		-0.588153, 0.258167, -0.766438,
		4.323417, 2.491108, -0.100552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.324619, 1.693253, 0.315290>,  <4.735124, 2.310391, 0.435954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.324619, 1.693253, 0.315290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.378864, 1.951134, 0.014366>,  <4.411411, 2.105862, -0.166188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.378864, 1.951134, 0.014366>,  <4.324619, 1.693253, 0.315290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.378864, 1.951134, 0.014366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340240, -0.743449, -0.575778,
		-0.930508, -0.177882, -0.320175,
		0.135613, 0.644702, -0.752308,
		4.419548, 2.144544, -0.211326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
