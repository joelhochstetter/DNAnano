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
	<4.612436, 3.386741, 3.420877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.498129, 3.385666, 3.804195>,  <4.429544, 3.385021, 4.034186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.498129, 3.385666, 3.804195>,  <4.612436, 3.386741, 3.420877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.498129, 3.385666, 3.804195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027669, -0.999602, 0.005447,
		0.957899, 0.028072, 0.285729,
		-0.285768, -0.002688, 0.958295,
		4.412398, 3.384860, 4.091684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.083969, 3.099828, 3.785278>,  <4.612436, 3.386741, 3.420877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.083969, 3.099828, 3.785278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.742305, 3.027496, 3.980301>,  <4.537306, 2.984097, 4.097314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.742305, 3.027496, 3.980301>,  <5.083969, 3.099828, 3.785278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.742305, 3.027496, 3.980301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195610, -0.980458, -0.020946,
		0.481817, 0.077479, 0.872840,
		-0.854160, -0.180829, 0.487557,
		4.486057, 2.973248, 4.126568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.257511, 2.515457, 4.188770>,  <5.083969, 3.099828, 3.785278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.257511, 2.515457, 4.188770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.867169, 2.539608, 4.104805>,  <4.632965, 2.554099, 4.054426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.867169, 2.539608, 4.104805>,  <5.257511, 2.515457, 4.188770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.867169, 2.539608, 4.104805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039338, -0.993903, -0.103002,
		-0.214852, -0.092257, 0.972279,
		-0.975854, 0.060377, -0.209913,
		4.574413, 2.557721, 4.041831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.972358, 2.017962, 4.618392>,  <5.257511, 2.515457, 4.188770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.972358, 2.017962, 4.618392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.754020, 2.100067, 4.293449>,  <4.623017, 2.149330, 4.098484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.754020, 2.100067, 4.293449>,  <4.972358, 2.017962, 4.618392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.754020, 2.100067, 4.293449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210004, -0.972098, -0.104519,
		-0.811143, 0.113547, 0.573720,
		-0.545844, 0.205263, -0.812355,
		4.590266, 2.161646, 4.049743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.417090, 1.534317, 4.634537>,  <4.972358, 2.017962, 4.618392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.417090, 1.534317, 4.634537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.397988, 1.674526, 4.260403>,  <4.386527, 1.758651, 4.035922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.397988, 1.674526, 4.260403>,  <4.417090, 1.534317, 4.634537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.397988, 1.674526, 4.260403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370313, -0.875888, -0.309337,
		-0.927679, 0.331595, 0.171631,
		-0.047755, 0.350522, -0.935336,
		4.383662, 1.779683, 3.979802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.686907, 1.521263, 4.478795>,  <4.417090, 1.534317, 4.634537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.686907, 1.521263, 4.478795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.924131, 1.469501, 4.160919>,  <4.066466, 1.438445, 3.970194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.924131, 1.469501, 4.160919>,  <3.686907, 1.521263, 4.478795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.924131, 1.469501, 4.160919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460197, -0.864371, -0.202686,
		-0.660679, 0.485920, -0.572177,
		0.593062, -0.129403, -0.794690,
		4.102050, 1.430681, 3.922512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.262814, 1.363593, 3.963112>,  <3.686907, 1.521263, 4.478795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.262814, 1.363593, 3.963112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.597040, 1.228203, 3.790016>,  <3.797576, 1.146968, 3.686159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.597040, 1.228203, 3.790016>,  <3.262814, 1.363593, 3.963112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.597040, 1.228203, 3.790016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505009, -0.783347, -0.362398,
		-0.216322, 0.521345, -0.825472,
		0.835566, -0.338476, -0.432739,
		3.847710, 1.126660, 3.660194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.103443, 1.232903, 3.197938>,  <3.262814, 1.363593, 3.963112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.103443, 1.232903, 3.197938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.416404, 1.033459, 3.347195>,  <3.604180, 0.913792, 3.436749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.416404, 1.033459, 3.347195>,  <3.103443, 1.232903, 3.197938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.416404, 1.033459, 3.347195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449142, -0.866825, -0.216532,
		0.431413, 0.001822, -0.902153,
		0.782403, -0.498610, 0.373141,
		3.651125, 0.883876, 3.459137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.828069, -0.521425, 3.328395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.166359, -0.655678, 3.494335>,  <3.369333, -0.736229, 3.593899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.166359, -0.655678, 3.494335>,  <2.828069, -0.521425, 3.328395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.166359, -0.655678, 3.494335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321895, 0.940932, 0.105028,
		-0.425596, 0.044714, 0.903808,
		0.845726, -0.335631, 0.414850,
		3.420077, -0.756367, 3.618790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.016891, 0.003437, 3.678504>,  <2.828069, -0.521425, 3.328395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.016891, 0.003437, 3.678504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.333458, -0.239914, 3.654713>,  <3.523398, -0.385924, 3.640438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.333458, -0.239914, 3.654713>,  <3.016891, 0.003437, 3.678504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.333458, -0.239914, 3.654713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602235, 0.792684, -0.094688,
		0.104752, 0.039119, 0.993729,
		0.791416, -0.608377, -0.059477,
		3.570883, -0.422427, 3.636870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.556181, 0.322262, 4.096601>,  <3.016891, 0.003437, 3.678504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.556181, 0.322262, 4.096601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.697573, 0.078041, 3.813114>,  <3.782408, -0.068491, 3.643022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.697573, 0.078041, 3.813114>,  <3.556181, 0.322262, 4.096601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.697573, 0.078041, 3.813114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711730, 0.667183, -0.219788,
		0.607036, -0.426725, 0.670383,
		0.353479, -0.610551, -0.708717,
		3.803617, -0.105124, 3.600499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.282809, 0.170276, 4.212948>,  <3.556181, 0.322262, 4.096601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.282809, 0.170276, 4.212948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.147121, 0.204643, 3.838238>,  <4.065709, 0.225263, 3.613412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.147121, 0.204643, 3.838238>,  <4.282809, 0.170276, 4.212948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.147121, 0.204643, 3.838238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511689, 0.852469, -0.107105,
		0.789370, -0.515669, -0.333138,
		-0.339220, 0.085918, -0.936775,
		4.045355, 0.230419, 3.557205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.785505, 0.243122, 3.727605>,  <4.282809, 0.170276, 4.212948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.785505, 0.243122, 3.727605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.448519, 0.423523, 3.609726>,  <4.246327, 0.531763, 3.538998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.448519, 0.423523, 3.609726>,  <4.785505, 0.243122, 3.727605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.448519, 0.423523, 3.609726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508128, 0.846955, -0.156439,
		0.179042, -0.281539, -0.942698,
		-0.842467, 0.451002, -0.294699,
		4.195779, 0.558824, 3.521316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.941719, 0.769178, 3.197882>,  <4.785505, 0.243122, 3.727605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.941719, 0.769178, 3.197882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.585897, 0.897049, 3.328419>,  <4.372405, 0.973772, 3.406741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.585897, 0.897049, 3.328419>,  <4.941719, 0.769178, 3.197882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.585897, 0.897049, 3.328419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375356, 0.918647, 0.123270,
		-0.260387, 0.232150, -0.937179,
		-0.889554, 0.319678, 0.326343,
		4.319031, 0.992952, 3.426322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.732081, 1.401024, 2.781223>,  <4.941719, 0.769178, 3.197882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.732081, 1.401024, 2.781223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.529980, 1.419167, 3.125935>,  <4.408719, 1.430052, 3.332761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.529980, 1.419167, 3.125935>,  <4.732081, 1.401024, 2.781223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.529980, 1.419167, 3.125935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312897, 0.940292, 0.133961,
		-0.804248, 0.337333, -0.489277,
		-0.505253, 0.045355, 0.861778,
		4.378404, 1.432773, 3.384468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.360316, 1.933097, 2.729344>,  <4.732081, 1.401024, 2.781223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.360316, 1.933097, 2.729344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.387718, 1.887222, 3.125759>,  <4.404160, 1.859697, 3.363608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.387718, 1.887222, 3.125759>,  <4.360316, 1.933097, 2.729344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.387718, 1.887222, 3.125759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336765, 0.937723, 0.085238,
		-0.939093, 0.327907, 0.102861,
		0.068505, -0.114687, 0.991037,
		4.408269, 1.852816, 3.423070>
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
