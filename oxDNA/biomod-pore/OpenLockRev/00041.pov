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
	location <35, 92.5046, 58.4545>
	look_at <35, 26.874, 46.4577>
	direction <0, -65.6306, -11.9968>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 92.5046, 58.4545>;
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
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<40.920650, 32.232986, 49.965607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.675358, 32.476387, 50.167068>,  <40.528183, 32.622429, 50.287945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.675358, 32.476387, 50.167068>,  <40.920650, 32.232986, 49.965607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.675358, 32.476387, 50.167068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706256, 0.707942, 0.004598,
		-0.353762, 0.358530, -0.863892,
		-0.613233, 0.608502, 0.503657,
		40.491386, 32.658939, 50.318165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060177, 32.882729, 49.694199>,  <40.920650, 32.232986, 49.965607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.060177, 32.882729, 49.694199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.919933, 32.920746, 50.066872>,  <40.835789, 32.943558, 50.290478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.919933, 32.920746, 50.066872>,  <41.060177, 32.882729, 49.694199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.919933, 32.920746, 50.066872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731069, 0.649553, 0.208849,
		-0.585329, 0.754352, -0.297225,
		-0.350610, 0.095047, 0.931686,
		40.814751, 32.949261, 50.346378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083977, 33.535366, 49.743366>,  <41.060177, 32.882729, 49.694199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.083977, 33.535366, 49.743366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.077621, 33.417912, 50.125679>,  <41.073807, 33.347439, 50.355068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.077621, 33.417912, 50.125679>,  <41.083977, 33.535366, 49.743366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.077621, 33.417912, 50.125679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775441, 0.599843, 0.197180,
		-0.631220, 0.744287, 0.218169,
		-0.015891, -0.293641, 0.955784,
		41.072853, 33.329819, 50.412415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172642, 34.206474, 50.134563>,  <41.083977, 33.535366, 49.743366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.172642, 34.206474, 50.134563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259079, 33.888493, 50.361317>,  <41.310940, 33.697704, 50.497368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259079, 33.888493, 50.361317>,  <41.172642, 34.206474, 50.134563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259079, 33.888493, 50.361317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792411, 0.481995, 0.373853,
		-0.570429, 0.368415, 0.734085,
		0.216092, -0.794953, 0.566880,
		41.323906, 33.650005, 50.531380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.760700, 34.468887, 50.528355>,  <41.172642, 34.206474, 50.134563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.760700, 34.468887, 50.528355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.752609, 34.078228, 50.613903>,  <41.747753, 33.843830, 50.665234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.752609, 34.078228, 50.613903>,  <41.760700, 34.468887, 50.528355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.752609, 34.078228, 50.613903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970831, 0.031933, 0.237631,
		-0.238912, 0.212443, 0.947517,
		-0.020226, -0.976652, 0.213875,
		41.746540, 33.785233, 50.678066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988003, 34.444157, 51.155056>,  <41.760700, 34.468887, 50.528355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.988003, 34.444157, 51.155056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.050976, 34.095711, 50.968994>,  <42.088760, 33.886642, 50.857357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.050976, 34.095711, 50.968994>,  <41.988003, 34.444157, 51.155056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.050976, 34.095711, 50.968994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977426, 0.070246, 0.199256,
		-0.140900, -0.486028, 0.862511,
		0.157432, -0.871116, -0.465159,
		42.098206, 33.834377, 50.829445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.328888, 34.168823, 51.640903>,  <41.988003, 34.444157, 51.155056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.328888, 34.168823, 51.640903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.419529, 33.994534, 51.292469>,  <42.473915, 33.889961, 51.083408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.419529, 33.994534, 51.292469>,  <42.328888, 34.168823, 51.640903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.419529, 33.994534, 51.292469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973550, 0.074511, 0.215985,
		-0.029204, -0.896992, 0.441082,
		0.226602, -0.435722, -0.871090,
		42.487511, 33.863815, 51.031143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.867310, 33.677731, 51.749321>,  <42.328888, 34.168823, 51.640903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.867310, 33.677731, 51.749321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.902744, 33.740074, 51.355801>,  <42.924007, 33.777481, 51.119690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.902744, 33.740074, 51.355801>,  <42.867310, 33.677731, 51.749321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.902744, 33.740074, 51.355801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995791, 0.009445, 0.091165,
		0.023501, -0.987734, -0.154366,
		0.088589, 0.155858, -0.983799,
		42.929321, 33.786831, 51.060661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.392551, 33.280071, 51.477169>,  <42.867310, 33.677731, 51.749321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.392551, 33.280071, 51.477169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.374344, 33.527260, 51.163216>,  <43.363419, 33.675571, 50.974842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.374344, 33.527260, 51.163216>,  <43.392551, 33.280071, 51.477169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.374344, 33.527260, 51.163216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984798, 0.159607, 0.068547,
		0.167633, -0.769832, -0.615839,
		-0.045523, 0.617968, -0.784884,
		43.360687, 33.712650, 50.927750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.841751, 33.012856, 51.007866>,  <43.392551, 33.280071, 51.477169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.841751, 33.012856, 51.007866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.804863, 33.405350, 50.940136>,  <43.782730, 33.640846, 50.899498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.804863, 33.405350, 50.940136>,  <43.841751, 33.012856, 51.007866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.804863, 33.405350, 50.940136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986402, 0.113256, 0.119094,
		0.136036, -0.156037, -0.978339,
		-0.092220, 0.981237, -0.169322,
		43.777199, 33.699722, 50.889339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.428143, 33.246426, 50.561939>,  <43.841751, 33.012856, 51.007866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.428143, 33.246426, 50.561939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.279457, 33.597363, 50.683331>,  <44.190247, 33.807926, 50.756165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.279457, 33.597363, 50.683331>,  <44.428143, 33.246426, 50.561939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.279457, 33.597363, 50.683331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922357, 0.386102, 0.013530,
		-0.105304, 0.284947, -0.952741,
		-0.371710, 0.877343, 0.303481,
		44.167946, 33.860565, 50.774376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.887703, 33.656284, 50.199707>,  <44.428143, 33.246426, 50.561939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.887703, 33.656284, 50.199707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.705921, 33.867592, 50.486595>,  <44.596851, 33.994377, 50.658726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.705921, 33.867592, 50.486595>,  <44.887703, 33.656284, 50.199707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.705921, 33.867592, 50.486595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868087, 0.443199, 0.223606,
		-0.199746, 0.724226, -0.659999,
		-0.454452, 0.528272, 0.717218,
		44.569584, 34.026073, 50.701759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.025963, 34.389763, 50.136948>,  <44.887703, 33.656284, 50.199707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.025963, 34.389763, 50.136948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.933037, 34.317997, 50.519329>,  <44.877281, 34.274937, 50.748756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.933037, 34.317997, 50.519329>,  <45.025963, 34.389763, 50.136948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.933037, 34.317997, 50.519329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782124, 0.549802, 0.293258,
		-0.578199, 0.815799, 0.012600,
		-0.232312, -0.179416, 0.955950,
		44.863342, 34.264172, 50.806114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.020821, 35.098587, 50.469299>,  <45.025963, 34.389763, 50.136948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.020821, 35.098587, 50.469299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.088860, 34.809414, 50.737160>,  <45.129684, 34.635910, 50.897877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.088860, 34.809414, 50.737160>,  <45.020821, 35.098587, 50.469299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.088860, 34.809414, 50.737160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824334, 0.476738, 0.305277,
		-0.539943, 0.500089, 0.677032,
		0.170101, -0.722933, 0.669651,
		45.139889, 34.592533, 50.938057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.196686, 35.473660, 51.066490>,  <45.020821, 35.098587, 50.469299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.196686, 35.473660, 51.066490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.306374, 35.106640, 51.181667>,  <45.372185, 34.886429, 51.250774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.306374, 35.106640, 51.181667>,  <45.196686, 35.473660, 51.066490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.306374, 35.106640, 51.181667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870637, 0.364032, 0.330866,
		-0.408405, 0.159963, 0.898675,
		0.274220, -0.917547, 0.287942,
		45.388641, 34.831375, 51.268051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.338547, 35.541012, 51.781193>,  <45.196686, 35.473660, 51.066490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.338547, 35.541012, 51.781193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.534180, 35.210224, 51.670250>,  <45.651558, 35.011753, 51.603683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.534180, 35.210224, 51.670250>,  <45.338547, 35.541012, 51.781193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.534180, 35.210224, 51.670250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849914, 0.380347, 0.364668,
		-0.196077, -0.414080, 0.888871,
		0.489081, -0.826967, -0.277355,
		45.680904, 34.962135, 51.587044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.664310, 35.267517, 52.370304>,  <45.338547, 35.541012, 51.781193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.664310, 35.267517, 52.370304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.859432, 35.131561, 52.048676>,  <45.976505, 35.049988, 51.855698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.859432, 35.131561, 52.048676>,  <45.664310, 35.267517, 52.370304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.859432, 35.131561, 52.048676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871886, 0.235265, 0.429494,
		0.043190, -0.910565, 0.411105,
		0.487800, -0.339887, -0.804070,
		46.005772, 35.029594, 51.807453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.159420, 34.842468, 52.630054>,  <45.664310, 35.267517, 52.370304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.159420, 34.842468, 52.630054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.290600, 34.946758, 52.266853>,  <46.369308, 35.009335, 52.048931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.290600, 34.946758, 52.266853>,  <46.159420, 34.842468, 52.630054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.290600, 34.946758, 52.266853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901425, 0.201194, 0.383345,
		0.282634, -0.944215, -0.169048,
		0.327949, 0.260730, -0.908003,
		46.388985, 35.024979, 51.994453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.865543, 34.804115, 52.717476>,  <46.159420, 34.842468, 52.630054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.865543, 34.804115, 52.717476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.868423, 34.990147, 52.363380>,  <46.870152, 35.101765, 52.150921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.868423, 34.990147, 52.363380>,  <46.865543, 34.804115, 52.717476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.868423, 34.990147, 52.363380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933311, 0.314689, 0.172919,
		0.358996, -0.827450, -0.431797,
		0.007200, 0.465078, -0.885240,
		46.870583, 35.129669, 52.097809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.529785, 34.716698, 52.388435>,  <46.865543, 34.804115, 52.717476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.529785, 34.716698, 52.388435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.381626, 35.052010, 52.228394>,  <47.292732, 35.253197, 52.132366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.381626, 35.052010, 52.228394>,  <47.529785, 34.716698, 52.388435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.381626, 35.052010, 52.228394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861704, 0.470922, 0.188937,
		0.346803, -0.274794, -0.896781,
		-0.370395, 0.838284, -0.400109,
		47.270508, 35.303493, 52.108360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.931923, 34.829857, 51.834957>,  <47.529785, 34.716698, 52.388435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.931923, 34.829857, 51.834957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.751526, 35.161900, 51.966122>,  <47.643288, 35.361126, 52.044823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.751526, 35.161900, 51.966122>,  <47.931923, 34.829857, 51.834957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.751526, 35.161900, 51.966122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888020, 0.380443, 0.258230,
		0.089606, 0.407654, -0.908729,
		-0.450989, 0.830109, 0.327915,
		47.616230, 35.410931, 52.064495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.178373, 34.783428, 52.210487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.466530, 35.060604, 52.222298>,  <24.639423, 35.226910, 52.229385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.466530, 35.060604, 52.222298>,  <24.178373, 34.783428, 52.210487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.466530, 35.060604, 52.222298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481508, -0.469034, -0.740376,
		-0.499188, 0.547576, -0.671544,
		0.720389, 0.692941, 0.029526,
		24.682646, 35.268486, 52.231155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.384737, 34.992874, 51.470627>,  <24.178373, 34.783428, 52.210487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.384737, 34.992874, 51.470627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.696884, 35.087677, 51.702095>,  <24.884172, 35.144558, 51.840977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.696884, 35.087677, 51.702095>,  <24.384737, 34.992874, 51.470627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.696884, 35.087677, 51.702095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614340, -0.463243, -0.638743,
		0.116677, 0.853952, -0.507101,
		0.780367, 0.237006, 0.578667,
		24.930994, 35.158779, 51.875694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.881479, 35.136894, 50.976646>,  <24.384737, 34.992874, 51.470627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.881479, 35.136894, 50.976646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.094820, 35.083649, 51.310787>,  <25.222824, 35.051701, 51.511272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.094820, 35.083649, 51.310787>,  <24.881479, 35.136894, 50.976646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.094820, 35.083649, 51.310787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705644, -0.474575, -0.526160,
		0.466478, 0.870091, -0.159184,
		0.533352, -0.133115, 0.835354,
		25.254826, 35.043713, 51.561394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.615145, 35.247128, 50.767475>,  <24.881479, 35.136894, 50.976646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.615145, 35.247128, 50.767475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.668118, 35.049721, 51.111313>,  <25.699902, 34.931278, 51.317616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.668118, 35.049721, 51.111313>,  <25.615145, 35.247128, 50.767475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.668118, 35.049721, 51.111313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768552, -0.496525, -0.403474,
		0.625931, 0.714076, 0.313538,
		0.132431, -0.493517, 0.859595,
		25.707848, 34.901665, 51.369190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.298296, 35.294960, 51.090130>,  <25.615145, 35.247128, 50.767475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.298296, 35.294960, 51.090130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.141798, 34.965443, 51.254219>,  <26.047899, 34.767731, 51.352673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.141798, 34.965443, 51.254219>,  <26.298296, 35.294960, 51.090130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.141798, 34.965443, 51.254219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833435, -0.506209, -0.221672,
		0.390271, 0.255165, 0.884635,
		-0.391247, -0.823798, 0.410222,
		26.024424, 34.718304, 51.377285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.807692, 35.056942, 51.448784>,  <26.298296, 35.294960, 51.090130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.807692, 35.056942, 51.448784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.575607, 34.740818, 51.370022>,  <26.436356, 34.551144, 51.322765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.575607, 34.740818, 51.370022>,  <26.807692, 35.056942, 51.448784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.575607, 34.740818, 51.370022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809972, -0.534536, -0.241282,
		0.085436, -0.299479, 0.950270,
		-0.580213, -0.790306, -0.196901,
		26.401543, 34.503727, 51.310951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.077053, 34.550243, 51.826439>,  <26.807692, 35.056942, 51.448784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.077053, 34.550243, 51.826439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.840147, 34.370693, 51.558788>,  <26.698004, 34.262962, 51.398197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.840147, 34.370693, 51.558788>,  <27.077053, 34.550243, 51.826439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.840147, 34.370693, 51.558788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770590, -0.558166, -0.307639,
		-0.235395, -0.697829, 0.676480,
		-0.592267, -0.448872, -0.669129,
		26.662466, 34.236031, 51.358051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.329372, 33.835770, 51.851124>,  <27.077053, 34.550243, 51.826439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.329372, 33.835770, 51.851124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.130388, 33.838268, 51.504139>,  <27.010998, 33.839767, 51.295948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.130388, 33.838268, 51.504139>,  <27.329372, 33.835770, 51.851124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.130388, 33.838268, 51.504139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740848, -0.517173, -0.428576,
		-0.451305, -0.855859, 0.252647,
		-0.497462, 0.006246, -0.867463,
		26.981150, 33.840141, 51.243900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.293322, 33.129879, 51.668961>,  <27.329372, 33.835770, 51.851124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.293322, 33.129879, 51.668961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.233978, 33.343674, 51.336140>,  <27.198372, 33.471951, 51.136448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.233978, 33.343674, 51.336140>,  <27.293322, 33.129879, 51.668961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.233978, 33.343674, 51.336140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623573, -0.602463, -0.498191,
		-0.767558, -0.592758, -0.243910,
		-0.148360, 0.534487, -0.832053,
		27.189470, 33.504021, 51.086525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.109180, 32.599255, 51.128181>,  <27.293322, 33.129879, 51.668961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.109180, 32.599255, 51.128181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.217484, 32.926037, 50.924507>,  <27.282465, 33.122108, 50.802303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.217484, 32.926037, 50.924507>,  <27.109180, 32.599255, 51.128181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.217484, 32.926037, 50.924507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620729, -0.552456, -0.556316,
		-0.735789, -0.165436, -0.656693,
		0.270759, 0.816960, -0.509182,
		27.298712, 33.171124, 50.771751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.225998, 32.426403, 50.371510>,  <27.109180, 32.599255, 51.128181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.225998, 32.426403, 50.371510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.437906, 32.765160, 50.389957>,  <27.565050, 32.968414, 50.401028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.437906, 32.765160, 50.389957>,  <27.225998, 32.426403, 50.371510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.437906, 32.765160, 50.389957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777477, -0.463182, -0.425433,
		-0.338931, 0.261239, -0.903814,
		0.529770, 0.846887, 0.046121,
		27.596838, 33.019226, 50.403793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.551184, 32.558334, 49.605762>,  <27.225998, 32.426403, 50.371510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.551184, 32.558334, 49.605762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.750301, 32.704498, 49.920387>,  <27.869772, 32.792198, 50.109161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.750301, 32.704498, 49.920387>,  <27.551184, 32.558334, 49.605762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.750301, 32.704498, 49.920387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818309, -0.498364, -0.286364,
		0.287354, 0.786200, -0.547099,
		0.497794, 0.365408, 0.786561,
		27.899639, 32.814121, 50.156357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.213932, 32.717205, 49.350212>,  <27.551184, 32.558334, 49.605762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.213932, 32.717205, 49.350212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.294611, 32.727901, 49.741844>,  <28.343019, 32.734322, 49.976826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.294611, 32.727901, 49.741844>,  <28.213932, 32.717205, 49.350212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.294611, 32.727901, 49.741844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900472, -0.398317, -0.174625,
		0.385315, 0.916858, -0.104422,
		0.201699, 0.026743, 0.979082,
		28.355120, 32.735924, 50.035568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896879, 33.004715, 49.358429>,  <28.213932, 32.717205, 49.350212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.896879, 33.004715, 49.358429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.821821, 32.808025, 49.698544>,  <28.776787, 32.690010, 49.902615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.821821, 32.808025, 49.698544>,  <28.896879, 33.004715, 49.358429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.821821, 32.808025, 49.698544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931935, -0.362602, -0.004033,
		0.310300, 0.791658, 0.526299,
		-0.187644, -0.491728, 0.850290,
		28.765528, 32.660507, 49.953632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.457582, 33.180466, 49.645168>,  <28.896879, 33.004715, 49.358429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.457582, 33.180466, 49.645168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.345638, 32.875443, 49.878468>,  <29.278471, 32.692429, 50.018448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.345638, 32.875443, 49.878468>,  <29.457582, 33.180466, 49.645168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345638, 32.875443, 49.878468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957048, -0.269530, 0.106830,
		0.075739, 0.588094, 0.805239,
		-0.279862, -0.762561, 0.583248,
		29.261681, 32.646675, 50.053440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.754139, 33.239281, 50.292126>,  <29.457582, 33.180466, 49.645168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.754139, 33.239281, 50.292126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.660299, 32.851055, 50.270321>,  <29.603996, 32.618118, 50.257236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.660299, 32.851055, 50.270321>,  <29.754139, 33.239281, 50.292126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.660299, 32.851055, 50.270321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960447, -0.240077, 0.141086,
		-0.150020, -0.019259, 0.988495,
		-0.234598, -0.970563, -0.054513,
		29.589920, 32.559887, 50.253967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.247822, 32.960785, 50.688892>,  <29.754139, 33.239281, 50.292126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.247822, 32.960785, 50.688892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.127159, 32.667671, 50.444916>,  <30.054762, 32.491802, 50.298531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.127159, 32.667671, 50.444916>,  <30.247822, 32.960785, 50.688892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.127159, 32.667671, 50.444916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936081, -0.349076, -0.043574,
		-0.180986, -0.584100, 0.791246,
		-0.301657, -0.732784, -0.609943,
		30.036661, 32.447838, 50.261932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.464390, 32.254257, 50.950867>,  <30.247822, 32.960785, 50.688892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.464390, 32.254257, 50.950867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.432474, 32.242352, 50.552319>,  <30.413324, 32.235210, 50.313190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.432474, 32.242352, 50.552319>,  <30.464390, 32.254257, 50.950867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.432474, 32.242352, 50.552319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972409, -0.222141, -0.071234,
		-0.219215, -0.974560, 0.046663,
		-0.079787, -0.029760, -0.996368,
		30.408539, 32.233425, 50.253407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098089, 31.900661, 50.682732>,  <30.464390, 32.254257, 50.950867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098089, 31.900661, 50.682732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.950281, 32.040302, 50.338272>,  <30.861597, 32.124084, 50.131596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.950281, 32.040302, 50.338272>,  <31.098089, 31.900661, 50.682732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950281, 32.040302, 50.338272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871309, -0.191883, -0.451665,
		-0.322916, -0.917230, -0.233269,
		-0.369521, 0.349100, -0.861153,
		30.839424, 32.145031, 50.079926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343996, 31.462805, 50.261089>,  <31.098089, 31.900661, 50.682732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343996, 31.462805, 50.261089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.281815, 31.790762, 50.040684>,  <31.244505, 31.987535, 49.908440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.281815, 31.790762, 50.040684>,  <31.343996, 31.462805, 50.261089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281815, 31.790762, 50.040684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930248, -0.066174, -0.360914,
		-0.332373, -0.568682, -0.752416,
		-0.155455, 0.819892, -0.551010,
		31.235178, 32.036728, 49.875381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595842, 31.259645, 49.587635>,  <31.343996, 31.462805, 50.261089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595842, 31.259645, 49.587635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.588568, 31.659258, 49.603645>,  <31.584204, 31.899025, 49.613251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.588568, 31.659258, 49.603645>,  <31.595842, 31.259645, 49.587635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588568, 31.659258, 49.603645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903188, 0.033587, -0.427929,
		-0.428859, 0.028369, -0.902926,
		-0.018187, 0.999033, 0.040027,
		31.583111, 31.958967, 49.615654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.771706, 35.120632, 34.918911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.432840, 34.908104, 34.917755>,  <24.229521, 34.780586, 34.917061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.432840, 34.908104, 34.917755>,  <24.771706, 35.120632, 34.918911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.432840, 34.908104, 34.917755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375962, 0.603268, -0.703363,
		0.375456, -0.594778, -0.710825,
		-0.847163, -0.531325, -0.002887,
		24.178692, 34.748707, 34.916889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.793730, 34.464249, 34.486107>,  <24.771706, 35.120632, 34.918911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.793730, 34.464249, 34.486107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.076200, 34.260685, 34.289200>,  <25.245682, 34.138546, 34.171055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.076200, 34.260685, 34.289200>,  <24.793730, 34.464249, 34.486107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.076200, 34.260685, 34.289200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396129, -0.292291, 0.870430,
		-0.586854, -0.809678, -0.004815,
		0.706175, -0.508908, -0.492270,
		25.288054, 34.108013, 34.141518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.251148, 34.295044, 34.985210>,  <24.793730, 34.464249, 34.486107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.251148, 34.295044, 34.985210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.411890, 34.056396, 34.707344>,  <25.508335, 33.913208, 34.540623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.411890, 34.056396, 34.707344>,  <25.251148, 34.295044, 34.985210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.411890, 34.056396, 34.707344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638325, -0.361403, 0.679654,
		-0.656549, -0.716543, 0.235606,
		0.401852, -0.596619, -0.694666,
		25.532446, 33.877411, 34.498943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.181520, 33.640514, 35.232021>,  <25.251148, 34.295044, 34.985210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.181520, 33.640514, 35.232021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.487474, 33.668453, 34.975872>,  <25.671047, 33.685215, 34.822182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.487474, 33.668453, 34.975872>,  <25.181520, 33.640514, 35.232021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.487474, 33.668453, 34.975872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605625, -0.416677, 0.677937,
		-0.219479, -0.906367, -0.361008,
		0.764884, 0.069843, -0.640371,
		25.716940, 33.689407, 34.783760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.413338, 32.986580, 35.144562>,  <25.181520, 33.640514, 35.232021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.413338, 32.986580, 35.144562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.699419, 33.262627, 35.100327>,  <25.871067, 33.428253, 35.073784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.699419, 33.262627, 35.100327>,  <25.413338, 32.986580, 35.144562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.699419, 33.262627, 35.100327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578363, -0.495547, 0.648020,
		0.392405, -0.527426, -0.753552,
		0.715203, 0.690113, -0.110588,
		25.913980, 33.469662, 35.067150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.135189, 32.617554, 35.275433>,  <25.413338, 32.986580, 35.144562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.135189, 32.617554, 35.275433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.157270, 33.014484, 35.319672>,  <26.170519, 33.252644, 35.346214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.157270, 33.014484, 35.319672>,  <26.135189, 32.617554, 35.275433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.157270, 33.014484, 35.319672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723804, -0.116074, 0.680172,
		0.687794, 0.042505, -0.724661,
		0.055203, 0.992331, 0.110600,
		26.173832, 33.312183, 35.352852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.793085, 32.869713, 35.167984>,  <26.135189, 32.617554, 35.275433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.793085, 32.869713, 35.167984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.589169, 33.099548, 35.424099>,  <26.466820, 33.237450, 35.577766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.589169, 33.099548, 35.424099>,  <26.793085, 32.869713, 35.167984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.589169, 33.099548, 35.424099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713126, -0.134066, 0.688097,
		0.481213, 0.807388, -0.341408,
		-0.509789, 0.574588, 0.640284,
		26.436232, 33.271923, 35.616184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.209145, 33.454216, 35.314240>,  <26.793085, 32.869713, 35.167984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.209145, 33.454216, 35.314240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.987684, 33.348965, 35.630272>,  <26.854809, 33.285816, 35.819893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.987684, 33.348965, 35.630272>,  <27.209145, 33.454216, 35.314240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.987684, 33.348965, 35.630272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816471, 0.015150, 0.577187,
		-0.163843, 0.964642, 0.206448,
		-0.553652, -0.263127, 0.790085,
		26.821589, 33.270027, 35.867298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.439161, 33.784382, 35.890179>,  <27.209145, 33.454216, 35.314240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.439161, 33.784382, 35.890179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.246641, 33.470039, 36.045498>,  <27.131130, 33.281433, 36.138691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.246641, 33.470039, 36.045498>,  <27.439161, 33.784382, 35.890179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.246641, 33.470039, 36.045498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751092, -0.141360, 0.644886,
		-0.451899, 0.602034, 0.658288,
		-0.481299, -0.785858, 0.388303,
		27.102251, 33.234283, 36.161987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.448528, 33.848389, 36.654865>,  <27.439161, 33.784382, 35.890179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.448528, 33.848389, 36.654865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.403337, 33.459316, 36.573742>,  <27.376223, 33.225872, 36.525066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.403337, 33.459316, 36.573742>,  <27.448528, 33.848389, 36.654865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.403337, 33.459316, 36.573742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703474, -0.222451, 0.675012,
		-0.701685, -0.066409, 0.709386,
		-0.112976, -0.972679, -0.202807,
		27.369444, 33.167511, 36.512901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.368309, 33.426201, 37.290710>,  <27.448528, 33.848389, 36.654865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.368309, 33.426201, 37.290710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.547321, 33.237778, 36.986652>,  <27.654728, 33.124722, 36.804218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.547321, 33.237778, 36.986652>,  <27.368309, 33.426201, 37.290710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.547321, 33.237778, 36.986652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826949, -0.105563, 0.552279,
		-0.340400, -0.875761, 0.342303,
		0.447529, -0.471063, -0.760143,
		27.681580, 33.096458, 36.758610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.760870, 32.797134, 37.456249>,  <27.368309, 33.426201, 37.290710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.760870, 32.797134, 37.456249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.929996, 32.968430, 37.136791>,  <28.031473, 33.071205, 36.945114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.929996, 32.968430, 37.136791>,  <27.760870, 32.797134, 37.456249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.929996, 32.968430, 37.136791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862129, 0.081451, 0.500100,
		0.279212, -0.899988, -0.334757,
		0.422818, 0.428238, -0.798647,
		28.056841, 33.096901, 36.897198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.445446, 32.538933, 37.197262>,  <27.760870, 32.797134, 37.456249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.445446, 32.538933, 37.197262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.394329, 32.929611, 37.128288>,  <28.363659, 33.164017, 37.086903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.394329, 32.929611, 37.128288>,  <28.445446, 32.538933, 37.197262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.394329, 32.929611, 37.128288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752020, 0.208778, 0.625202,
		0.646633, -0.049779, -0.761175,
		-0.127795, 0.976695, -0.172438,
		28.355991, 33.222618, 37.076557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.139059, 33.005638, 37.065617>,  <28.445446, 32.538933, 37.197262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.139059, 33.005638, 37.065617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.872250, 33.266514, 37.209686>,  <28.712164, 33.423038, 37.296127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.872250, 33.266514, 37.209686>,  <29.139059, 33.005638, 37.065617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.872250, 33.266514, 37.209686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620890, 0.219407, 0.752566,
		0.411793, 0.725607, -0.551290,
		-0.667025, 0.652192, 0.360172,
		28.672142, 33.462170, 37.317738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.408817, 33.747307, 37.101551>,  <29.139059, 33.005638, 37.065617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.408817, 33.747307, 37.101551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.138044, 33.625629, 37.369648>,  <28.975580, 33.552624, 37.530506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.138044, 33.625629, 37.369648>,  <29.408817, 33.747307, 37.101551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138044, 33.625629, 37.369648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712027, -0.039906, 0.701017,
		-0.186497, 0.951774, 0.243607,
		-0.676932, -0.304192, 0.670247,
		28.934965, 33.534370, 37.570721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.423740, 34.302792, 37.680878>,  <29.408817, 33.747307, 37.101551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.423740, 34.302792, 37.680878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.349991, 33.928478, 37.801083>,  <29.305740, 33.703888, 37.873207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.349991, 33.928478, 37.801083>,  <29.423740, 34.302792, 37.680878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.349991, 33.928478, 37.801083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758113, 0.059189, 0.649432,
		-0.625516, 0.347565, 0.698519,
		-0.184375, -0.935786, 0.300517,
		29.294678, 33.647743, 37.891239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.612408, 34.242996, 38.452488>,  <29.423740, 34.302792, 37.680878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.612408, 34.242996, 38.452488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.560175, 33.855488, 38.368179>,  <29.528835, 33.622982, 38.317593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.560175, 33.855488, 38.368179>,  <29.612408, 34.242996, 38.452488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560175, 33.855488, 38.368179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514577, -0.247944, 0.820813,
		-0.847442, -0.001277, 0.530886,
		-0.130582, -0.968774, -0.210775,
		29.521000, 33.564857, 38.304947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.227055, 33.893288, 38.956966>,  <29.612408, 34.242996, 38.452488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.227055, 33.893288, 38.956966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.506744, 33.677570, 38.769249>,  <29.674559, 33.548138, 38.656616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.506744, 33.677570, 38.769249>,  <29.227055, 33.893288, 38.956966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.506744, 33.677570, 38.769249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559621, 0.004408, 0.828737,
		-0.444867, -0.842104, 0.304885,
		0.699227, -0.539298, -0.469298,
		29.716513, 33.515781, 38.628460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.469284, 33.320393, 39.310062>,  <29.227055, 33.893288, 38.956966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.469284, 33.320393, 39.310062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.777824, 33.453220, 39.092899>,  <29.962950, 33.532917, 38.962601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.777824, 33.453220, 39.092899>,  <29.469284, 33.320393, 39.310062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777824, 33.453220, 39.092899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501178, 0.208794, 0.839777,
		0.392221, -0.919855, -0.005373,
		0.771352, 0.332071, -0.542905,
		30.009230, 33.552841, 38.930027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129187, 33.152969, 39.629906>,  <29.469284, 33.320393, 39.310062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129187, 33.152969, 39.629906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.199499, 33.475616, 39.404171>,  <30.241688, 33.669205, 39.268730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.199499, 33.475616, 39.404171>,  <30.129187, 33.152969, 39.629906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.199499, 33.475616, 39.404171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589430, 0.372905, 0.716599,
		0.788463, -0.458601, -0.409892,
		0.175783, 0.806614, -0.564335,
		30.252234, 33.717602, 39.234871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.821596, 33.345772, 39.561543>,  <30.129187, 33.152969, 39.629906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.821596, 33.345772, 39.561543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.574062, 33.659901, 39.554459>,  <30.425541, 33.848377, 39.550209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.574062, 33.659901, 39.554459>,  <30.821596, 33.345772, 39.561543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574062, 33.659901, 39.554459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457136, 0.378373, 0.804898,
		0.638803, 0.490005, -0.593149,
		-0.618836, 0.785321, -0.017707,
		30.388412, 33.895496, 39.549145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259466, 33.976864, 39.614819>,  <30.821596, 33.345772, 39.561543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.259466, 33.976864, 39.614819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.890497, 34.023205, 39.762180>,  <30.669117, 34.051010, 39.850597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.890497, 34.023205, 39.762180>,  <31.259466, 33.976864, 39.614819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890497, 34.023205, 39.762180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358787, 0.609998, 0.706523,
		-0.142872, 0.783888, -0.604241,
		-0.922421, 0.115851, 0.368400,
		30.613771, 34.057961, 39.872700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968649, 34.695545, 39.597084>,  <31.259466, 33.976864, 39.614819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.968649, 34.695545, 39.597084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.885635, 34.446819, 39.899151>,  <30.835827, 34.297585, 40.080391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.885635, 34.446819, 39.899151>,  <30.968649, 34.695545, 39.597084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.885635, 34.446819, 39.899151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421693, 0.639694, 0.642625,
		-0.882669, 0.451814, 0.129458,
		-0.207534, -0.621817, 0.755165,
		30.823376, 34.260273, 40.125702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.594259, 34.993500, 40.183533>,  <30.968649, 34.695545, 39.597084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.594259, 34.993500, 40.183533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.827538, 34.694630, 40.311039>,  <30.967505, 34.515308, 40.387543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.827538, 34.694630, 40.311039>,  <30.594259, 34.993500, 40.183533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827538, 34.694630, 40.311039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600738, 0.660838, 0.449897,
		-0.546806, -0.070881, 0.834254,
		0.583195, -0.747174, 0.318769,
		31.002497, 34.470478, 40.406670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.471466, 34.997581, 40.923687>,  <30.594259, 34.993500, 40.183533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.471466, 34.997581, 40.923687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.826178, 34.903622, 40.764465>,  <31.039005, 34.847244, 40.668934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.826178, 34.903622, 40.764465>,  <30.471466, 34.997581, 40.923687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.826178, 34.903622, 40.764465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411533, 0.793308, 0.448668,
		0.210384, -0.561680, 0.800159,
		0.886780, -0.234899, -0.398049,
		31.092211, 34.833153, 40.645050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004623, 34.696796, 41.349670>,  <30.471466, 34.997581, 40.923687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004623, 34.696796, 41.349670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.158634, 34.933304, 41.066219>,  <31.251040, 35.075207, 40.896149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.158634, 34.933304, 41.066219>,  <31.004623, 34.696796, 41.349670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.158634, 34.933304, 41.066219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314944, 0.637556, 0.703087,
		0.867506, -0.493885, 0.059258,
		0.385025, 0.591269, -0.708630,
		31.274141, 35.110683, 40.853630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663877, 34.772758, 41.450539>,  <31.004623, 34.696796, 41.349670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663877, 34.772758, 41.450539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.550013, 35.109489, 41.267109>,  <31.481693, 35.311527, 41.157051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.550013, 35.109489, 41.267109>,  <31.663877, 34.772758, 41.450539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.550013, 35.109489, 41.267109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430955, 0.539678, 0.723205,
		0.856297, 0.008245, -0.516417,
		-0.284662, 0.841831, -0.458571,
		31.464615, 35.362038, 41.129536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265240, 35.297848, 41.280956>,  <31.663877, 34.772758, 41.450539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265240, 35.297848, 41.280956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.918911, 35.486980, 41.346409>,  <31.711113, 35.600460, 41.385681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.918911, 35.486980, 41.346409>,  <32.265240, 35.297848, 41.280956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918911, 35.486980, 41.346409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382257, 0.414091, 0.826080,
		0.322843, 0.777789, -0.539275,
		-0.865824, 0.472836, 0.163629,
		31.659164, 35.628830, 41.395496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.491112, 34.585915, 41.382751>,  <32.265240, 35.297848, 41.280956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.491112, 34.585915, 41.382751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.203983, 34.392776, 41.583385>,  <32.031704, 34.276894, 41.703766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.203983, 34.392776, 41.583385>,  <32.491112, 34.585915, 41.382751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203983, 34.392776, 41.583385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017655, 0.707581, 0.706412,
		-0.696000, 0.515935, -0.499395,
		-0.717825, -0.482845, 0.501585,
		31.988636, 34.247921, 41.733860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854290, 34.373882, 42.075523>,  <32.491112, 34.585915, 41.382751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854290, 34.373882, 42.075523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.785103, 34.329357, 42.466969>,  <32.743591, 34.302643, 42.701836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.785103, 34.329357, 42.466969>,  <32.854290, 34.373882, 42.075523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785103, 34.329357, 42.466969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736133, -0.674729, 0.053364,
		0.654362, 0.729623, 0.198646,
		-0.172968, -0.111311, 0.978617,
		32.733212, 34.295963, 42.760555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415020, 34.644173, 42.403976>,  <32.854290, 34.373882, 42.075523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415020, 34.644173, 42.403976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.272259, 34.329716, 42.605804>,  <33.186600, 34.141041, 42.726902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.272259, 34.329716, 42.605804>,  <33.415020, 34.644173, 42.403976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272259, 34.329716, 42.605804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910820, -0.412802, 0.001102,
		0.207422, 0.459967, 0.863369,
		-0.356907, -0.786146, 0.504571,
		33.165188, 34.093872, 42.757175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020393, 34.523510, 42.780571>,  <33.415020, 34.644173, 42.403976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020393, 34.523510, 42.780571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.770290, 34.212990, 42.812592>,  <33.620228, 34.026676, 42.831806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.770290, 34.212990, 42.812592>,  <34.020393, 34.523510, 42.780571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770290, 34.212990, 42.812592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776239, -0.629228, -0.039044,
		0.080683, 0.037729, 0.996025,
		-0.625254, -0.776304, 0.080055,
		33.582714, 33.980099, 42.836609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673538, 34.315025, 43.043610>,  <34.020393, 34.523510, 42.780571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673538, 34.315025, 43.043610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.391415, 34.196167, 43.301052>,  <34.222141, 34.124851, 43.455521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.391415, 34.196167, 43.301052>,  <34.673538, 34.315025, 43.043610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391415, 34.196167, 43.301052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537041, 0.368660, 0.758734,
		-0.462731, 0.880790, -0.100439,
		-0.705313, -0.297150, 0.643611,
		34.179821, 34.107021, 43.494137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473656, 34.887760, 43.660625>,  <34.673538, 34.315025, 43.043610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473656, 34.887760, 43.660625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.473591, 34.492634, 43.722885>,  <34.473553, 34.255558, 43.760242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.473591, 34.492634, 43.722885>,  <34.473656, 34.887760, 43.660625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473591, 34.492634, 43.722885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687328, 0.112947, 0.717512,
		-0.726348, 0.107103, 0.678932,
		-0.000164, -0.987812, 0.155654,
		34.473541, 34.196289, 43.769581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148239, 34.730373, 44.325123>,  <34.473656, 34.887760, 43.660625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148239, 34.730373, 44.325123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.436634, 34.483997, 44.198132>,  <34.609673, 34.336174, 44.121937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.436634, 34.483997, 44.198132>,  <34.148239, 34.730373, 44.325123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436634, 34.483997, 44.198132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533441, 0.200923, 0.821627,
		-0.442282, -0.761742, 0.473430,
		0.720991, -0.615937, -0.317480,
		34.652931, 34.299217, 44.102886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074562, 34.192986, 44.814018>,  <34.148239, 34.730373, 44.325123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074562, 34.192986, 44.814018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.303223, 34.425007, 45.046139>,  <34.440418, 34.564220, 45.185413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.303223, 34.425007, 45.046139>,  <34.074562, 34.192986, 44.814018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303223, 34.425007, 45.046139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722985, 0.021690, 0.690523,
		0.387955, -0.814288, 0.431770,
		0.571650, 0.580056, 0.580303,
		34.474716, 34.599022, 45.220230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852097, 33.867737, 45.373737>,  <34.074562, 34.192986, 44.814018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852097, 33.867737, 45.373737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.046013, 34.210484, 45.443882>,  <34.162365, 34.416130, 45.485970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.046013, 34.210484, 45.443882>,  <33.852097, 33.867737, 45.373737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046013, 34.210484, 45.443882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614311, 0.190875, 0.765630,
		0.622573, -0.478898, 0.618918,
		0.484795, 0.856868, 0.175359,
		34.191452, 34.467545, 45.496490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928856, 33.891453, 46.121216>,  <33.852097, 33.867737, 45.373737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928856, 33.891453, 46.121216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.961391, 34.267906, 45.989971>,  <33.980911, 34.493778, 45.911224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.961391, 34.267906, 45.989971>,  <33.928856, 33.891453, 46.121216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961391, 34.267906, 45.989971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536944, 0.318726, 0.781092,
		0.839688, 0.112649, 0.531258,
		0.081337, 0.941129, -0.328116,
		33.985794, 34.550243, 45.891537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530182, 33.889542, 46.794601>,  <33.928856, 33.891453, 46.121216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530182, 33.889542, 46.794601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.358082, 34.007584, 47.135845>,  <33.254822, 34.078411, 47.340591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.358082, 34.007584, 47.135845>,  <33.530182, 33.889542, 46.794601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358082, 34.007584, 47.135845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363415, -0.921713, 0.135557,
		0.826327, -0.251709, 0.503812,
		-0.430249, 0.295107, 0.853111,
		33.229008, 34.096115, 47.391777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553036, 33.227280, 47.230568>,  <33.530182, 33.889542, 46.794601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553036, 33.227280, 47.230568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.280350, 33.493702, 47.351650>,  <33.116737, 33.653553, 47.424301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.280350, 33.493702, 47.351650>,  <33.553036, 33.227280, 47.230568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280350, 33.493702, 47.351650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671269, -0.733986, 0.103258,
		0.290960, -0.132807, 0.947473,
		-0.681719, 0.666053, 0.302710,
		33.075832, 33.693520, 47.442463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276260, 33.067841, 47.850506>,  <33.553036, 33.227280, 47.230568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276260, 33.067841, 47.850506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.003330, 33.269970, 47.639194>,  <32.839573, 33.391247, 47.512409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.003330, 33.269970, 47.639194>,  <33.276260, 33.067841, 47.850506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003330, 33.269970, 47.639194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626111, -0.776979, 0.065481,
		-0.377373, 0.375442, 0.846542,
		-0.682330, 0.505319, -0.528279,
		32.798630, 33.421566, 47.480709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733448, 33.216957, 48.315712>,  <33.276260, 33.067841, 47.850506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733448, 33.216957, 48.315712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.741795, 32.948776, 48.612377>,  <32.746803, 32.787868, 48.790375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.741795, 32.948776, 48.612377>,  <32.733448, 33.216957, 48.315712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741795, 32.948776, 48.612377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975707, -0.148158, -0.161385,
		0.218084, 0.727012, 0.651071,
		0.020868, -0.670450, 0.741661,
		32.748055, 32.747643, 48.834877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198696, 33.479870, 48.795059>,  <32.733448, 33.216957, 48.315712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198696, 33.479870, 48.795059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.180965, 33.083809, 48.848186>,  <33.170326, 32.846172, 48.880062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.180965, 33.083809, 48.848186>,  <33.198696, 33.479870, 48.795059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180965, 33.083809, 48.848186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988741, -0.062500, -0.135962,
		0.142924, 0.125297, 0.981771,
		-0.044325, -0.990149, 0.132819,
		33.167667, 32.786766, 48.888031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910431, 33.393822, 48.969250>,  <33.198696, 33.479870, 48.795059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910431, 33.393822, 48.969250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.786674, 33.015705, 48.927872>,  <33.712421, 32.788834, 48.903046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.786674, 33.015705, 48.927872>,  <33.910431, 33.393822, 48.969250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786674, 33.015705, 48.927872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942933, -0.290882, -0.162065,
		0.123109, -0.147680, 0.981343,
		-0.309389, -0.945293, -0.103442,
		33.693859, 32.732117, 48.896839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363670, 33.032257, 49.328732>,  <33.910431, 33.393822, 48.969250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363670, 33.032257, 49.328732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.209705, 32.798103, 49.043308>,  <34.117325, 32.657612, 48.872055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.209705, 32.798103, 49.043308>,  <34.363670, 33.032257, 49.328732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209705, 32.798103, 49.043308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920849, -0.191405, -0.339708,
		0.062282, -0.787837, 0.612726,
		-0.384913, -0.585386, -0.713558,
		34.094231, 32.622486, 48.829239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760250, 32.425430, 49.345203>,  <34.363670, 33.032257, 49.328732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760250, 32.425430, 49.345203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.595058, 32.450825, 48.981792>,  <34.495945, 32.466061, 48.763744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.595058, 32.450825, 48.981792>,  <34.760250, 32.425430, 49.345203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595058, 32.450825, 48.981792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906838, -0.063610, -0.416652,
		-0.084244, -0.995954, -0.031305,
		-0.412975, 0.063489, -0.908527,
		34.471165, 32.469872, 48.709236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952785, 31.750092, 49.088291>,  <34.760250, 32.425430, 49.345203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952785, 31.750092, 49.088291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.858295, 31.987513, 48.780552>,  <34.801601, 32.129967, 48.595909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.858295, 31.987513, 48.780552>,  <34.952785, 31.750092, 49.088291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858295, 31.987513, 48.780552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753758, -0.387735, -0.530575,
		-0.613227, -0.705235, -0.355804,
		-0.236223, 0.593553, -0.769347,
		34.787430, 32.165577, 48.549747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149925, 31.365889, 48.466591>,  <34.952785, 31.750092, 49.088291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149925, 31.365889, 48.466591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.130516, 31.750162, 48.357243>,  <35.118870, 31.980726, 48.291634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.130516, 31.750162, 48.357243>,  <35.149925, 31.365889, 48.466591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130516, 31.750162, 48.357243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791299, -0.130044, -0.597439,
		-0.609501, -0.245308, -0.753879,
		-0.048519, 0.960683, -0.273374,
		35.115959, 32.038368, 48.275230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426994, 31.372648, 47.856243>,  <35.149925, 31.365889, 48.466591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426994, 31.372648, 47.856243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.427254, 31.756207, 47.969746>,  <35.427410, 31.986341, 48.037846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.427254, 31.756207, 47.969746>,  <35.426994, 31.372648, 47.856243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427254, 31.756207, 47.969746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857733, 0.145340, -0.493122,
		-0.514094, 0.243706, -0.822383,
		0.000651, 0.958897, 0.283753,
		35.427448, 32.043877, 48.054871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519886, 31.778770, 47.255562>,  <35.426994, 31.372648, 47.856243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519886, 31.778770, 47.255562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.611851, 32.048378, 47.536373>,  <35.667030, 32.210144, 47.704861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.611851, 32.048378, 47.536373>,  <35.519886, 31.778770, 47.255562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611851, 32.048378, 47.536373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852448, 0.208558, -0.479412,
		-0.469546, 0.708661, -0.526617,
		0.229910, 0.674020, 0.702024,
		35.680824, 32.250584, 47.746979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897007, 32.351513, 46.855709>,  <35.519886, 31.778770, 47.255562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897007, 32.351513, 46.855709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.008072, 32.412552, 47.235104>,  <36.074711, 32.449177, 47.462738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.008072, 32.412552, 47.235104>,  <35.897007, 32.351513, 46.855709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008072, 32.412552, 47.235104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922616, 0.232800, -0.307544,
		-0.267737, 0.960478, -0.076151,
		0.277661, 0.152599, 0.948482,
		36.091370, 32.458332, 47.519650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219704, 32.981113, 46.785744>,  <35.897007, 32.351513, 46.855709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219704, 32.981113, 46.785744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.355293, 32.805870, 47.118767>,  <36.436649, 32.700722, 47.318581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.355293, 32.805870, 47.118767>,  <36.219704, 32.981113, 46.785744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355293, 32.805870, 47.118767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937812, 0.086943, -0.336079,
		0.074855, 0.894707, 0.440337,
		0.338976, -0.438110, 0.832559,
		36.456985, 32.674438, 47.368534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739746, 33.396545, 46.990219>,  <36.219704, 32.981113, 46.785744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739746, 33.396545, 46.990219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.799610, 33.041054, 47.163548>,  <36.835529, 32.827759, 47.267544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.799610, 33.041054, 47.163548>,  <36.739746, 33.396545, 46.990219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799610, 33.041054, 47.163548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952219, 0.011546, -0.305196,
		0.266233, 0.458291, 0.847991,
		0.149660, -0.888727, 0.433320,
		36.844509, 32.774437, 47.293545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406727, 33.437958, 47.467258>,  <36.739746, 33.396545, 46.990219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406727, 33.437958, 47.467258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.328300, 33.065762, 47.343487>,  <37.281242, 32.842445, 47.269222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.328300, 33.065762, 47.343487>,  <37.406727, 33.437958, 47.467258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328300, 33.065762, 47.343487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978688, -0.166045, -0.120826,
		0.061047, -0.326529, 0.943214,
		-0.196070, -0.930488, -0.309433,
		37.269478, 32.786613, 47.250656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037281, 33.216938, 47.697948>,  <37.406727, 33.437958, 47.467258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037281, 33.216938, 47.697948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.899300, 32.984264, 47.403290>,  <37.816513, 32.844658, 47.226494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.899300, 32.984264, 47.403290>,  <38.037281, 33.216938, 47.697948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899300, 32.984264, 47.403290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938021, -0.241691, -0.248399,
		-0.033550, -0.776676, 0.629006,
		-0.344951, -0.581687, -0.736647,
		37.795815, 32.809757, 47.182297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827030, 32.981541, 47.618641>,  <38.037281, 33.216938, 47.697948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827030, 32.981541, 47.618641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.668392, 32.644341, 47.764004>,  <38.573208, 32.442020, 47.851219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.668392, 32.644341, 47.764004>,  <38.827030, 32.981541, 47.618641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668392, 32.644341, 47.764004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867399, -0.214516, 0.449001,
		-0.300552, 0.493289, 0.816293,
		-0.396595, -0.843000, 0.363405,
		38.549416, 32.391441, 47.873024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867519, 32.907158, 48.377739>,  <38.827030, 32.981541, 47.618641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867519, 32.907158, 48.377739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.859814, 32.537086, 48.226120>,  <38.855190, 32.315044, 48.135151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.859814, 32.537086, 48.226120>,  <38.867519, 32.907158, 48.377739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859814, 32.537086, 48.226120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918151, -0.166441, 0.359579,
		-0.395763, -0.341092, 0.852659,
		-0.019268, -0.925178, -0.379044,
		38.854034, 32.259533, 48.112408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186417, 32.466427, 48.873592>,  <38.867519, 32.907158, 48.377739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186417, 32.466427, 48.873592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.200478, 32.262592, 48.529713>,  <39.208916, 32.140289, 48.323383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.200478, 32.262592, 48.529713>,  <39.186417, 32.466427, 48.873592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200478, 32.262592, 48.529713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879791, -0.392272, 0.268497,
		-0.474059, -0.765794, 0.434544,
		0.035154, -0.509591, -0.859698,
		39.211025, 32.109715, 48.271805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312946, 31.848452, 49.323872>,  <39.186417, 32.466427, 48.873592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312946, 31.848452, 49.323872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.425362, 32.175694, 49.524563>,  <39.492809, 32.372040, 49.644978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.425362, 32.175694, 49.524563>,  <39.312946, 31.848452, 49.323872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425362, 32.175694, 49.524563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212467, -0.456782, 0.863833,
		0.935883, -0.349366, 0.045449,
		0.281034, 0.818103, 0.501723,
		39.509670, 32.421124, 49.675079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535847, 31.636744, 50.038059>,  <39.312946, 31.848452, 49.323872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535847, 31.636744, 50.038059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.425003, 32.021072, 50.040329>,  <39.358498, 32.251671, 50.041691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.425003, 32.021072, 50.040329>,  <39.535847, 31.636744, 50.038059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425003, 32.021072, 50.040329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346336, -0.105394, 0.932171,
		0.896250, 0.256344, 0.361973,
		-0.277106, 0.960823, 0.005678,
		39.341873, 32.309319, 50.042034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415829, 31.673935, 50.679176>,  <39.535847, 31.636744, 50.038059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415829, 31.673935, 50.679176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.291634, 32.048069, 50.611355>,  <39.217117, 32.272549, 50.570663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.291634, 32.048069, 50.611355>,  <39.415829, 31.673935, 50.679176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291634, 32.048069, 50.611355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417597, 0.026021, 0.908260,
		0.853938, 0.352809, 0.382514,
		-0.310489, 0.935334, -0.169552,
		39.198486, 32.328671, 50.560490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634300, 32.021549, 51.220001>,  <39.415829, 31.673935, 50.679176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634300, 32.021549, 51.220001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.333107, 32.239208, 51.071995>,  <39.152390, 32.369804, 50.983189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.333107, 32.239208, 51.071995>,  <39.634300, 32.021549, 51.220001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333107, 32.239208, 51.071995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390330, 0.083353, 0.916894,
		0.529768, 0.834838, 0.149634,
		-0.752986, 0.544148, -0.370020,
		39.107212, 32.402454, 50.960987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526337, 32.590466, 51.622406>,  <39.634300, 32.021549, 51.220001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526337, 32.590466, 51.622406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.176224, 32.594456, 51.429001>,  <38.966156, 32.596851, 51.312958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.176224, 32.594456, 51.429001>,  <39.526337, 32.590466, 51.622406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176224, 32.594456, 51.429001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468165, 0.233236, 0.852305,
		0.121278, 0.972369, -0.199474,
		-0.875279, 0.009979, -0.483515,
		38.913639, 32.597450, 51.283947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126820, 33.304016, 51.831409>,  <39.526337, 32.590466, 51.622406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126820, 33.304016, 51.831409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.873711, 33.035942, 51.676258>,  <38.721848, 32.875099, 51.583168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.873711, 33.035942, 51.676258>,  <39.126820, 33.304016, 51.831409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873711, 33.035942, 51.676258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686398, 0.253605, 0.681573,
		-0.358413, 0.697520, -0.620488,
		-0.632770, -0.670187, -0.387881,
		38.683880, 32.834885, 51.559895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508831, 33.701530, 51.845203>,  <39.126820, 33.304016, 51.831409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508831, 33.701530, 51.845203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.381062, 33.326794, 51.788216>,  <38.304398, 33.101952, 51.754021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.381062, 33.326794, 51.788216>,  <38.508831, 33.701530, 51.845203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381062, 33.326794, 51.788216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774871, 0.171684, 0.608358,
		-0.545474, 0.304723, -0.780770,
		-0.319426, -0.936839, -0.142472,
		38.285233, 33.045742, 51.745476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831825, 33.687435, 51.620655>,  <38.508831, 33.701530, 51.845203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831825, 33.687435, 51.620655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.878300, 33.349823, 51.830078>,  <37.906185, 33.147255, 51.955734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.878300, 33.349823, 51.830078>,  <37.831825, 33.687435, 51.620655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878300, 33.349823, 51.830078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777260, 0.250915, 0.576982,
		-0.618359, -0.473979, -0.626878,
		0.116184, -0.844029, 0.523561,
		37.913155, 33.096615, 51.987148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109852, 33.518513, 51.841549>,  <37.831825, 33.687435, 51.620655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109852, 33.518513, 51.841549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.326538, 33.253983, 52.049088>,  <37.456551, 33.095264, 52.173611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.326538, 33.253983, 52.049088>,  <37.109852, 33.518513, 51.841549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326538, 33.253983, 52.049088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678738, 0.019969, 0.734109,
		-0.495844, -0.749836, -0.438047,
		0.541713, -0.661323, 0.518844,
		37.489052, 33.055588, 52.204742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713642, 32.885166, 52.026646>,  <37.109852, 33.518513, 51.841549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713642, 32.885166, 52.026646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.990715, 32.916527, 52.313431>,  <37.156960, 32.935345, 52.485504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.990715, 32.916527, 52.313431>,  <36.713642, 32.885166, 52.026646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990715, 32.916527, 52.313431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706921, -0.123301, 0.696462,
		0.143009, -0.989267, -0.029982,
		0.692684, 0.078406, 0.716967,
		37.198521, 32.940048, 52.528522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357700, 32.475086, 52.531605>,  <36.713642, 32.885166, 52.026646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357700, 32.475086, 52.531605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.672615, 32.634216, 52.720036>,  <36.861565, 32.729694, 52.833092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.672615, 32.634216, 52.720036>,  <36.357700, 32.475086, 52.531605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672615, 32.634216, 52.720036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505669, -0.020571, 0.862482,
		0.352806, -0.917232, 0.184971,
		0.787291, 0.397823, 0.471073,
		36.908802, 32.753563, 52.861359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583260, 32.054008, 53.220158>,  <36.357700, 32.475086, 52.531605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583260, 32.054008, 53.220158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.659424, 32.446690, 53.220123>,  <36.705124, 32.682301, 53.220104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.659424, 32.446690, 53.220123>,  <36.583260, 32.054008, 53.220158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659424, 32.446690, 53.220123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621658, 0.120644, 0.773942,
		0.759793, -0.147314, 0.633257,
		0.190411, 0.981705, -0.000085,
		36.716549, 32.741199, 53.220097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445126, 32.169830, 53.871258>,  <36.583260, 32.054008, 53.220158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445126, 32.169830, 53.871258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.454411, 32.532833, 53.703499>,  <36.459980, 32.750633, 53.602844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.454411, 32.532833, 53.703499>,  <36.445126, 32.169830, 53.871258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454411, 32.532833, 53.703499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584381, 0.352696, 0.730825,
		0.811148, 0.228128, 0.538514,
		0.023210, 0.907504, -0.419402,
		36.461372, 32.805084, 53.577679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637989, 32.589920, 54.450947>,  <36.445126, 32.169830, 53.871258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637989, 32.589920, 54.450947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.455105, 32.812702, 54.173603>,  <36.345375, 32.946373, 54.007195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.455105, 32.812702, 54.173603>,  <36.637989, 32.589920, 54.450947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455105, 32.812702, 54.173603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608216, 0.372990, 0.700679,
		0.648867, 0.742074, 0.168216,
		-0.457213, 0.556959, -0.693363,
		36.317940, 32.979790, 53.965595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358368, 33.113331, 54.906845>,  <36.637989, 32.589920, 54.450947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358368, 33.113331, 54.906845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.214382, 33.183369, 54.540291>,  <36.127991, 33.225391, 54.320358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.214382, 33.183369, 54.540291>,  <36.358368, 33.113331, 54.906845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214382, 33.183369, 54.540291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771501, 0.496443, 0.397907,
		0.524605, 0.850227, -0.043618,
		-0.359966, 0.175093, -0.916388,
		36.106392, 33.235897, 54.265373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304363, 33.947819, 54.670238>,  <36.358368, 33.113331, 54.906845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304363, 33.947819, 54.670238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.013966, 33.742554, 54.487110>,  <35.839729, 33.619396, 54.377232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.013966, 33.742554, 54.487110>,  <36.304363, 33.947819, 54.670238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013966, 33.742554, 54.487110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659795, 0.707474, 0.253281,
		0.193924, 0.485949, -0.852201,
		-0.725992, -0.513160, -0.457823,
		35.796169, 33.588604, 54.349762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043072, 34.451546, 54.289028>,  <36.304363, 33.947819, 54.670238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043072, 34.451546, 54.289028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.772800, 34.159580, 54.330357>,  <35.610638, 33.984402, 54.355152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.772800, 34.159580, 54.330357>,  <36.043072, 34.451546, 54.289028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772800, 34.159580, 54.330357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732025, 0.680889, 0.023006,
		-0.087143, -0.060089, -0.994382,
		-0.675682, -0.729917, 0.103321,
		35.570095, 33.940605, 54.361351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444824, 34.679138, 53.895363>,  <36.043072, 34.451546, 54.289028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444824, 34.679138, 53.895363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.284985, 34.406208, 54.140228>,  <35.189079, 34.242451, 54.287148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.284985, 34.406208, 54.140228>,  <35.444824, 34.679138, 53.895363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284985, 34.406208, 54.140228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730098, 0.640718, 0.237566,
		-0.554324, -0.352010, -0.754197,
		-0.399602, -0.682326, 0.612167,
		35.165104, 34.201511, 54.323879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704151, 34.592068, 53.675190>,  <35.444824, 34.679138, 53.895363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704151, 34.592068, 53.675190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.758427, 34.499958, 54.060638>,  <34.790993, 34.444691, 54.291908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.758427, 34.499958, 54.060638>,  <34.704151, 34.592068, 53.675190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758427, 34.499958, 54.060638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880526, 0.417817, 0.223835,
		-0.454161, -0.878863, -0.146072,
		0.135689, -0.230277, 0.963619,
		34.799133, 34.430874, 54.349724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031227, 34.390434, 53.892937>,  <34.704151, 34.592068, 53.675190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031227, 34.390434, 53.892937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.226337, 34.486282, 54.228714>,  <34.343403, 34.543789, 54.430180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.226337, 34.486282, 54.228714>,  <34.031227, 34.390434, 53.892937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226337, 34.486282, 54.228714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794511, 0.520276, 0.313153,
		-0.361705, -0.819693, 0.444153,
		0.487772, 0.239616, 0.839442,
		34.372669, 34.558167, 54.480545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559406, 34.352184, 54.376183>,  <34.031227, 34.390434, 53.892937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559406, 34.352184, 54.376183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.837700, 34.592903, 54.533051>,  <34.004677, 34.737335, 54.627171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.837700, 34.592903, 54.533051>,  <33.559406, 34.352184, 54.376183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837700, 34.592903, 54.533051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718079, 0.596199, 0.359039,
		-0.017742, -0.531404, 0.846932,
		0.695735, 0.601794, 0.392168,
		34.046421, 34.773441, 54.650700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350494, 34.374844, 55.049484>,  <33.559406, 34.352184, 54.376183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350494, 34.374844, 55.049484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.609406, 34.679729, 55.052475>,  <33.764751, 34.862659, 55.054272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.609406, 34.679729, 55.052475>,  <33.350494, 34.374844, 55.049484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609406, 34.679729, 55.052475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683314, 0.575875, 0.448832,
		0.337797, -0.295633, 0.893585,
		0.647283, 0.762213, 0.007482,
		33.803589, 34.908394, 55.054718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321823, 34.723003, 55.720573>,  <33.350494, 34.374844, 55.049484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321823, 34.723003, 55.720573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.512714, 35.008003, 55.514816>,  <33.627247, 35.179005, 55.391361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.512714, 35.008003, 55.514816>,  <33.321823, 34.723003, 55.720573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512714, 35.008003, 55.514816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537114, 0.699778, 0.470977,
		0.695540, 0.051538, 0.716637,
		0.477213, 0.712499, -0.514405,
		33.655880, 35.221752, 55.360497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592842, 35.257416, 56.204628>,  <33.321823, 34.723003, 55.720573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592842, 35.257416, 56.204628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.548363, 35.435612, 55.849285>,  <33.521675, 35.542530, 55.636078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.548363, 35.435612, 55.849285>,  <33.592842, 35.257416, 56.204628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548363, 35.435612, 55.849285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402170, 0.797263, 0.450145,
		0.908787, 0.407325, 0.090509,
		-0.111196, 0.445486, -0.888357,
		33.515003, 35.569256, 55.582779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693569, 35.986118, 56.392948>,  <33.592842, 35.257416, 56.204628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693569, 35.986118, 56.392948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.545029, 35.980618, 56.021591>,  <33.455906, 35.977318, 55.798779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.545029, 35.980618, 56.021591>,  <33.693569, 35.986118, 56.392948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545029, 35.980618, 56.021591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466975, 0.866993, 0.173948,
		0.802517, 0.498131, -0.328379,
		-0.371351, -0.013749, -0.928391,
		33.433624, 35.976494, 55.743073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767063, 36.600468, 56.251503>,  <33.693569, 35.986118, 56.392948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767063, 36.600468, 56.251503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.480091, 36.462040, 56.009670>,  <33.307907, 36.378983, 55.864571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.480091, 36.462040, 56.009670>,  <33.767063, 36.600468, 56.251503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480091, 36.462040, 56.009670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536154, 0.828424, 0.162028,
		0.444778, 0.440394, -0.779888,
		-0.717434, -0.346074, -0.604584,
		33.264862, 36.358219, 55.828297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672066, 37.026577, 55.758224>,  <33.767063, 36.600468, 56.251503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672066, 37.026577, 55.758224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.325203, 36.831104, 55.796650>,  <33.117085, 36.713821, 55.819706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.325203, 36.831104, 55.796650>,  <33.672066, 37.026577, 55.758224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325203, 36.831104, 55.796650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461639, 0.861072, 0.213178,
		-0.186897, 0.140510, -0.972279,
		-0.867155, -0.488684, 0.096067,
		33.065056, 36.684498, 55.825470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172863, 37.545986, 55.421490>,  <33.672066, 37.026577, 55.758224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172863, 37.545986, 55.421490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.944962, 37.274433, 55.606747>,  <32.808220, 37.111500, 55.717899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.944962, 37.274433, 55.606747>,  <33.172863, 37.545986, 55.421490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944962, 37.274433, 55.606747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712444, 0.688932, 0.133406,
		-0.409640, -0.253953, -0.876187,
		-0.569754, -0.678882, 0.463141,
		32.774036, 37.070770, 55.745689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460197, 37.413712, 55.022873>,  <33.172863, 37.545986, 55.421490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460197, 37.413712, 55.022873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.435291, 37.328823, 55.412968>,  <32.420349, 37.277889, 55.647026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.435291, 37.328823, 55.412968>,  <32.460197, 37.413712, 55.022873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.435291, 37.328823, 55.412968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777573, 0.622897, 0.085904,
		-0.625703, -0.752970, -0.203796,
		-0.062261, -0.212217, 0.975237,
		32.416615, 37.265160, 55.705540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771391, 37.497269, 55.173019>,  <32.460197, 37.413712, 55.022873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771391, 37.497269, 55.173019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.935463, 37.494370, 55.537811>,  <32.033905, 37.492630, 55.756687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.935463, 37.494370, 55.537811>,  <31.771391, 37.497269, 55.173019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935463, 37.494370, 55.537811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776091, 0.522417, 0.353218,
		-0.478993, -0.852659, 0.208658,
		0.410181, -0.007252, 0.911975,
		32.058517, 37.492195, 55.811405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.229652, 37.338100, 55.689980>,  <31.771391, 37.497269, 55.173019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.229652, 37.338100, 55.689980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.521345, 37.516537, 55.897530>,  <31.696362, 37.623596, 56.022060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.521345, 37.516537, 55.897530>,  <31.229652, 37.338100, 55.689980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521345, 37.516537, 55.897530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669263, 0.622899, 0.405073,
		-0.142508, -0.642654, 0.752787,
		0.729231, 0.446086, 0.518872,
		31.740114, 37.650364, 56.053192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944056, 37.375057, 56.368805>,  <31.229652, 37.338100, 55.689980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944056, 37.375057, 56.368805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.232573, 37.651577, 56.351624>,  <31.405684, 37.817490, 56.341316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.232573, 37.651577, 56.351624>,  <30.944056, 37.375057, 56.368805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232573, 37.651577, 56.351624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535145, 0.595587, 0.599079,
		0.439724, -0.409125, 0.799537,
		0.721292, 0.691298, -0.042953,
		31.448959, 37.858967, 56.338737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100389, 37.482140, 57.102329>,  <30.944056, 37.375057, 56.368805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100389, 37.482140, 57.102329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.224751, 37.787037, 56.875233>,  <31.299368, 37.969975, 56.738976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.224751, 37.787037, 56.875233>,  <31.100389, 37.482140, 57.102329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.224751, 37.787037, 56.875233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487998, 0.640615, 0.592849,
		0.815596, 0.092736, 0.571142,
		0.310904, 0.762241, -0.567738,
		31.318022, 38.015709, 56.704910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345791, 38.027153, 57.573212>,  <31.100389, 37.482140, 57.102329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345791, 38.027153, 57.573212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.290920, 38.205238, 57.219269>,  <31.257998, 38.312092, 57.006905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.290920, 38.205238, 57.219269>,  <31.345791, 38.027153, 57.573212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.290920, 38.205238, 57.219269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597573, 0.675238, 0.432389,
		0.789993, 0.588079, 0.173422,
		-0.137177, 0.445216, -0.884853,
		31.249767, 38.338802, 56.953812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446548, 38.871387, 57.679718>,  <31.345791, 38.027153, 57.573212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446548, 38.871387, 57.679718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.233040, 38.774807, 57.355549>,  <31.104935, 38.716858, 57.161045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.233040, 38.774807, 57.355549>,  <31.446548, 38.871387, 57.679718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.233040, 38.774807, 57.355549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686604, 0.683178, 0.248682,
		0.493622, 0.689181, -0.530440,
		-0.533772, -0.241447, -0.810426,
		31.072908, 38.702374, 57.112419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.225233, 39.485630, 57.474350>,  <31.446548, 38.871387, 57.679718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.225233, 39.485630, 57.474350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.970314, 39.236061, 57.293430>,  <30.817362, 39.086319, 57.184879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.970314, 39.236061, 57.293430>,  <31.225233, 39.485630, 57.474350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970314, 39.236061, 57.293430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669250, 0.739085, -0.076534,
		0.382041, 0.253929, -0.888574,
		-0.637298, -0.623918, -0.452303,
		30.779125, 39.048885, 57.157738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.755753, 39.884159, 56.981159>,  <31.225233, 39.485630, 57.474350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.755753, 39.884159, 56.981159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.543859, 39.546074, 57.009418>,  <30.416723, 39.343224, 57.026375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.543859, 39.546074, 57.009418>,  <30.755753, 39.884159, 56.981159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.543859, 39.546074, 57.009418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840759, 0.534265, 0.087664,
		-0.111840, -0.012960, -0.993642,
		-0.529732, -0.845217, 0.070648,
		30.384939, 39.292507, 57.030613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129517, 40.076038, 56.675503>,  <30.755753, 39.884159, 56.981159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129517, 40.076038, 56.675503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.032928, 39.739342, 56.868649>,  <29.974976, 39.537323, 56.984535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.032928, 39.739342, 56.868649>,  <30.129517, 40.076038, 56.675503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.032928, 39.739342, 56.868649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874623, 0.404341, 0.267476,
		-0.420388, -0.357738, -0.833845,
		-0.241471, -0.841744, 0.482866,
		29.960487, 39.486820, 57.013508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480736, 39.815533, 56.389553>,  <30.129517, 40.076038, 56.675503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480736, 39.815533, 56.389553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.506124, 39.660206, 56.757290>,  <29.521358, 39.567009, 56.977932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.506124, 39.660206, 56.757290>,  <29.480736, 39.815533, 56.389553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.506124, 39.660206, 56.757290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969126, 0.195942, 0.149673,
		-0.238258, -0.900454, -0.363889,
		0.063472, -0.388315, 0.919338,
		29.525166, 39.543713, 57.033092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.918482, 39.380688, 56.436462>,  <29.480736, 39.815533, 56.389553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.918482, 39.380688, 56.436462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.039204, 39.464729, 56.808434>,  <29.111637, 39.515156, 57.031616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.039204, 39.464729, 56.808434>,  <28.918482, 39.380688, 56.436462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.039204, 39.464729, 56.808434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930719, 0.276294, 0.239633,
		-0.206587, -0.937826, 0.278934,
		0.301802, 0.210104, 0.929931,
		29.129744, 39.527760, 57.087414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.346699, 39.252941, 56.858845>,  <28.918482, 39.380688, 56.436462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.346699, 39.252941, 56.858845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.593637, 39.459202, 57.096497>,  <28.741800, 39.582958, 57.239086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.593637, 39.459202, 57.096497>,  <28.346699, 39.252941, 56.858845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.593637, 39.459202, 57.096497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777569, 0.514642, 0.361289,
		-0.119463, -0.685015, 0.718668,
		0.617345, 0.515653, 0.594127,
		28.778841, 39.613899, 57.274734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081757, 39.163414, 57.498783>,  <28.346699, 39.252941, 56.858845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.081757, 39.163414, 57.498783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.296999, 39.499908, 57.519783>,  <28.426146, 39.701805, 57.532383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.296999, 39.499908, 57.519783>,  <28.081757, 39.163414, 57.498783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.296999, 39.499908, 57.519783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803894, 0.493499, 0.331983,
		0.253367, -0.220850, 0.941823,
		0.538107, 0.841240, 0.052504,
		28.458431, 39.752281, 57.535534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.945101, 39.425240, 58.164005>,  <28.081757, 39.163414, 57.498783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.945101, 39.425240, 58.164005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.091831, 39.734432, 57.956955>,  <28.179869, 39.919949, 57.832726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.091831, 39.734432, 57.956955>,  <27.945101, 39.425240, 58.164005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.091831, 39.734432, 57.956955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731446, 0.583456, 0.352939,
		0.574826, 0.249145, 0.779424,
		0.366827, 0.772985, -0.517621,
		28.201878, 39.966328, 57.801666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.085243, 39.876984, 58.627979>,  <27.945101, 39.425240, 58.164005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.085243, 39.876984, 58.627979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.001682, 40.030495, 58.268185>,  <27.951546, 40.122601, 58.052307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.001682, 40.030495, 58.268185>,  <28.085243, 39.876984, 58.627979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.001682, 40.030495, 58.268185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716080, 0.566386, 0.407966,
		0.666025, 0.729328, 0.156499,
		-0.208902, 0.383781, -0.899484,
		27.939013, 40.145630, 57.998341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.864077, 40.520485, 58.736740>,  <28.085243, 39.876984, 58.627979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.864077, 40.520485, 58.736740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.736353, 40.455025, 58.363373>,  <27.659719, 40.415749, 58.139355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.736353, 40.455025, 58.363373>,  <27.864077, 40.520485, 58.736740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.736353, 40.455025, 58.363373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840248, 0.504358, 0.199011,
		0.438207, 0.847845, -0.298551,
		-0.319308, -0.163649, -0.933414,
		27.640560, 40.405930, 58.083347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.783852, 41.237312, 58.297432>,  <27.864077, 40.520485, 58.736740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.783852, 41.237312, 58.297432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.543980, 40.939571, 58.179905>,  <27.400057, 40.760929, 58.109386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.543980, 40.939571, 58.179905>,  <27.783852, 41.237312, 58.297432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.543980, 40.939571, 58.179905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798846, 0.578494, 0.164891,
		0.047237, 0.333598, -0.941531,
		-0.599678, -0.744350, -0.293820,
		27.364077, 40.716267, 58.091759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.563953, 41.341534, 57.558723>,  <27.783852, 41.237312, 58.297432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.563953, 41.341534, 57.558723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.362564, 41.197788, 57.873016>,  <27.241730, 41.111542, 58.061592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.362564, 41.197788, 57.873016>,  <27.563953, 41.341534, 57.558723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.362564, 41.197788, 57.873016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623095, 0.781015, -0.042058,
		-0.598555, -0.510761, -0.617135,
		-0.503473, -0.359360, 0.785733,
		27.211523, 41.089981, 58.108738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.765242, 41.313988, 57.458660>,  <27.563953, 41.341534, 57.558723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.765242, 41.313988, 57.458660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.879368, 41.373440, 57.837395>,  <26.947844, 41.409111, 58.064636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.879368, 41.373440, 57.837395>,  <26.765242, 41.313988, 57.458660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.879368, 41.373440, 57.837395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469713, 0.882814, 0.002961,
		-0.835443, -0.445588, 0.321694,
		0.285315, 0.148630, 0.946839,
		26.964962, 41.418030, 58.121445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.170351, 41.525261, 58.007221>,  <26.765242, 41.313988, 57.458660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.170351, 41.525261, 58.007221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.531366, 41.676052, 58.090462>,  <26.747976, 41.766525, 58.140408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.531366, 41.676052, 58.090462>,  <26.170351, 41.525261, 58.007221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.531366, 41.676052, 58.090462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369811, 0.926165, -0.073880,
		-0.220591, -0.010280, 0.975312,
		0.902541, 0.376979, 0.208105,
		26.802128, 41.789146, 58.152893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.655935, 41.331043, 57.542431>,  <26.170351, 41.525261, 58.007221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.655935, 41.331043, 57.542431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.514126, 41.386646, 57.172569>,  <25.429041, 41.420006, 56.950653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.514126, 41.386646, 57.172569>,  <25.655935, 41.331043, 57.542431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.514126, 41.386646, 57.172569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917071, 0.244663, -0.314833,
		0.182466, -0.959592, -0.214216,
		-0.354522, 0.139005, -0.924658,
		25.407768, 41.428349, 56.895172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.881956, 40.989731, 57.029461>,  <25.655935, 41.331043, 57.542431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.881956, 40.989731, 57.029461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.756348, 41.310402, 56.826012>,  <25.680983, 41.502804, 56.703941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.756348, 41.310402, 56.826012>,  <25.881956, 40.989731, 57.029461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.756348, 41.310402, 56.826012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851840, 0.001344, -0.523800,
		-0.419236, -0.597753, -0.683324,
		-0.314021, 0.801679, -0.508627,
		25.662142, 41.550907, 56.673424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.895084, 40.969383, 56.243164>,  <25.881956, 40.989731, 57.029461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.895084, 40.969383, 56.243164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.965857, 41.349506, 56.345619>,  <26.008320, 41.577579, 56.407093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.965857, 41.349506, 56.345619>,  <25.895084, 40.969383, 56.243164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.965857, 41.349506, 56.345619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893680, -0.046084, -0.446331,
		-0.412349, 0.307877, -0.857427,
		0.176929, 0.950310, 0.256141,
		26.018936, 41.634598, 56.422462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.172909, 41.178909, 55.602829>,  <25.895084, 40.969383, 56.243164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.172909, 41.178909, 55.602829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.255238, 41.462532, 55.872604>,  <26.304636, 41.632706, 56.034470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.255238, 41.462532, 55.872604>,  <26.172909, 41.178909, 55.602829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.255238, 41.462532, 55.872604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832937, 0.234824, -0.501072,
		-0.513665, 0.664898, -0.542272,
		0.205824, 0.709061, 0.674439,
		26.316984, 41.675251, 56.074936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.189425, 41.736176, 55.201221>,  <26.172909, 41.178909, 55.602829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.189425, 41.736176, 55.201221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.417213, 41.777901, 55.527367>,  <26.553886, 41.802937, 55.723053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.417213, 41.777901, 55.527367>,  <26.189425, 41.736176, 55.201221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.417213, 41.777901, 55.527367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804496, 0.132945, -0.578889,
		-0.168786, 0.985618, -0.008214,
		0.569472, 0.104317, 0.815365,
		26.588055, 41.809196, 55.771976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.655107, 42.389397, 55.167084>,  <26.189425, 41.736176, 55.201221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.655107, 42.389397, 55.167084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.819597, 42.135910, 55.429165>,  <26.918291, 41.983818, 55.586414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.819597, 42.135910, 55.429165>,  <26.655107, 42.389397, 55.167084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.819597, 42.135910, 55.429165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866077, 0.047476, -0.497652,
		0.284266, 0.772103, 0.568374,
		0.411223, -0.633721, 0.655205,
		26.942965, 41.945793, 55.625725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.309872, 42.706245, 55.297413>,  <26.655107, 42.389397, 55.167084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.309872, 42.706245, 55.297413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.326536, 42.321163, 55.404346>,  <27.336535, 42.090115, 55.468506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.326536, 42.321163, 55.404346>,  <27.309872, 42.706245, 55.297413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.326536, 42.321163, 55.404346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883151, -0.089646, -0.460444,
		0.467236, 0.255281, 0.846476,
		0.041659, -0.962702, 0.267337,
		27.339033, 42.032352, 55.484547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.033306, 42.625191, 55.439240>,  <27.309872, 42.706245, 55.297413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.033306, 42.625191, 55.439240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.873049, 42.267662, 55.358677>,  <27.776894, 42.053143, 55.310341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.873049, 42.267662, 55.358677>,  <28.033306, 42.625191, 55.439240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.873049, 42.267662, 55.358677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719342, -0.170709, -0.673354,
		0.567478, -0.414654, 0.711358,
		-0.400644, -0.893824, -0.201404,
		27.752855, 41.999516, 55.298256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562691, 42.257198, 55.394814>,  <28.033306, 42.625191, 55.439240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.562691, 42.257198, 55.394814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.280180, 42.045803, 55.206402>,  <28.110674, 41.918968, 55.093353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.280180, 42.045803, 55.206402>,  <28.562691, 42.257198, 55.394814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.280180, 42.045803, 55.206402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674621, -0.300736, -0.674125,
		0.214609, -0.793889, 0.568931,
		-0.706279, -0.528486, -0.471034,
		28.068296, 41.887257, 55.065090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.726294, 41.490292, 55.297928>,  <28.562691, 42.257198, 55.394814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.726294, 41.490292, 55.297928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.452993, 41.570251, 55.017010>,  <28.289013, 41.618229, 54.848461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.452993, 41.570251, 55.017010>,  <28.726294, 41.490292, 55.297928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.452993, 41.570251, 55.017010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504942, -0.565407, -0.652188,
		-0.527449, -0.800223, 0.285378,
		-0.683250, 0.199897, -0.702289,
		28.248018, 41.630222, 54.806324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.510670, 40.837376, 55.031521>,  <28.726294, 41.490292, 55.297928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.510670, 40.837376, 55.031521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.402359, 41.100491, 54.750381>,  <28.337374, 41.258358, 54.581696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.402359, 41.100491, 54.750381>,  <28.510670, 40.837376, 55.031521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.402359, 41.100491, 54.750381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524330, -0.511538, -0.680740,
		-0.807316, -0.552852, -0.206385,
		-0.270775, 0.657786, -0.702850,
		28.321127, 41.297825, 54.539528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248520, 40.417240, 54.487431>,  <28.510670, 40.837376, 55.031521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.248520, 40.417240, 54.487431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.320478, 40.775864, 54.325535>,  <28.363653, 40.991039, 54.228397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.320478, 40.775864, 54.325535>,  <28.248520, 40.417240, 54.487431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.320478, 40.775864, 54.325535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074305, -0.422666, -0.903234,
		-0.980875, 0.132415, -0.142656,
		0.179897, 0.896560, -0.404743,
		28.374447, 41.044830, 54.204113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.083139, 40.260571, 53.836411>,  <28.248520, 40.417240, 54.487431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.083139, 40.260571, 53.836411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.270123, 40.612041, 53.797600>,  <28.382313, 40.822922, 53.774315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.270123, 40.612041, 53.797600>,  <28.083139, 40.260571, 53.836411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.270123, 40.612041, 53.797600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191304, -0.207701, -0.959303,
		-0.863067, 0.429874, -0.265186,
		0.467459, 0.878674, -0.097023,
		28.410360, 40.875645, 53.768494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.874708, 40.427189, 53.222408>,  <28.083139, 40.260571, 53.836411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.874708, 40.427189, 53.222408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.211079, 40.623962, 53.312599>,  <28.412901, 40.742027, 53.366714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.211079, 40.623962, 53.312599>,  <27.874708, 40.427189, 53.222408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.211079, 40.623962, 53.312599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332149, -0.140264, -0.932740,
		-0.427222, 0.859258, -0.281348,
		0.840927, 0.491937, 0.225477,
		28.463356, 40.771542, 53.380241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.029068, 40.886181, 52.725346>,  <27.874708, 40.427189, 53.222408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.029068, 40.886181, 52.725346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.392502, 40.816391, 52.877155>,  <28.610561, 40.774517, 52.968239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.392502, 40.816391, 52.877155>,  <28.029068, 40.886181, 52.725346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.392502, 40.816391, 52.877155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343090, -0.206538, -0.916314,
		0.238256, 0.962757, -0.127798,
		0.908583, -0.174471, 0.379522,
		28.665077, 40.764050, 52.991013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.530216, 41.230099, 52.272858>,  <28.029068, 40.886181, 52.725346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.530216, 41.230099, 52.272858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.759140, 40.977863, 52.482552>,  <28.896494, 40.826523, 52.608368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.759140, 40.977863, 52.482552>,  <28.530216, 41.230099, 52.272858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.759140, 40.977863, 52.482552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504933, -0.232733, -0.831191,
		0.646144, 0.740402, 0.185208,
		0.572312, -0.630587, 0.524232,
		28.930834, 40.788689, 52.639820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.227388, 41.330517, 51.992977>,  <28.530216, 41.230099, 52.272858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.227388, 41.330517, 51.992977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.225973, 40.986118, 52.196419>,  <29.225124, 40.779480, 52.318485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.225973, 40.986118, 52.196419>,  <29.227388, 41.330517, 51.992977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.225973, 40.986118, 52.196419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539934, -0.429743, -0.723735,
		0.841700, 0.272051, 0.466401,
		-0.003540, -0.860993, 0.508604,
		29.224911, 40.727821, 52.348999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.933525, 41.134655, 52.173096>,  <29.227388, 41.330517, 51.992977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.933525, 41.134655, 52.173096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.759277, 40.775135, 52.192642>,  <29.654728, 40.559422, 52.204372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.759277, 40.775135, 52.192642>,  <29.933525, 41.134655, 52.173096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.759277, 40.775135, 52.192642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755762, -0.394703, -0.522526,
		0.488936, -0.190690, 0.851222,
		-0.435620, -0.898803, 0.048868,
		29.628592, 40.505493, 52.207302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.505028, 40.771168, 52.504051>,  <29.933525, 41.134655, 52.173096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.505028, 40.771168, 52.504051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.228470, 40.550583, 52.317348>,  <30.062534, 40.418232, 52.205326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.228470, 40.550583, 52.317348>,  <30.505028, 40.771168, 52.504051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.228470, 40.550583, 52.317348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717278, -0.446581, -0.534862,
		0.086507, -0.704599, 0.704313,
		-0.691396, -0.551458, -0.466760,
		30.021051, 40.385147, 52.177319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.559048, 39.987095, 52.682011>,  <30.505028, 40.771168, 52.504051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.559048, 39.987095, 52.682011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.467852, 40.114353, 52.313923>,  <30.413134, 40.190708, 52.093071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.467852, 40.114353, 52.313923>,  <30.559048, 39.987095, 52.682011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.467852, 40.114353, 52.313923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783142, -0.501657, -0.367464,
		-0.578541, -0.804441, -0.134779,
		-0.227991, 0.318144, -0.920220,
		30.399454, 40.209797, 52.037857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.325926, 39.445988, 52.233612>,  <30.559048, 39.987095, 52.682011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.325926, 39.445988, 52.233612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.485777, 39.745792, 52.022507>,  <30.581688, 39.925674, 51.895844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.485777, 39.745792, 52.022507>,  <30.325926, 39.445988, 52.233612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.485777, 39.745792, 52.022507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675734, -0.629904, -0.382889,
		-0.619420, -0.203616, -0.758195,
		0.399627, 0.749507, -0.527766,
		30.605665, 39.970646, 51.864178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563181, 39.044594, 51.676632>,  <30.325926, 39.445988, 52.233612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563181, 39.044594, 51.676632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.736750, 39.398273, 51.607468>,  <30.840891, 39.610481, 51.565971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.736750, 39.398273, 51.607468>,  <30.563181, 39.044594, 51.676632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.736750, 39.398273, 51.607468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797141, -0.466222, -0.383672,
		-0.419857, 0.028651, -0.907138,
		0.433920, 0.884204, -0.172908,
		30.866926, 39.663536, 51.555595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616007, 39.225433, 50.895412>,  <30.563181, 39.044594, 51.676632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616007, 39.225433, 50.895412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.905558, 39.392918, 51.114754>,  <31.079288, 39.493408, 51.246357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.905558, 39.392918, 51.114754>,  <30.616007, 39.225433, 50.895412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905558, 39.392918, 51.114754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689286, -0.473205, -0.548599,
		0.029779, 0.775087, -0.631152,
		0.723877, 0.418708, 0.548349,
		31.122721, 39.518532, 51.279259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097988, 39.268948, 50.467869>,  <30.616007, 39.225433, 50.895412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097988, 39.268948, 50.467869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.301319, 39.328438, 50.807159>,  <31.423319, 39.364132, 51.010735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.301319, 39.328438, 50.807159>,  <31.097988, 39.268948, 50.467869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.301319, 39.328438, 50.807159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786295, -0.481852, -0.386727,
		0.351200, 0.863538, -0.361884,
		0.508329, 0.148729, 0.848223,
		31.453817, 39.373058, 51.061626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715408, 39.480583, 50.272758>,  <31.097988, 39.268948, 50.467869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715408, 39.480583, 50.272758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.815420, 39.407387, 50.653076>,  <31.875427, 39.363468, 50.881268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.815420, 39.407387, 50.653076>,  <31.715408, 39.480583, 50.272758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815420, 39.407387, 50.653076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921222, -0.257324, -0.291778,
		0.298053, 0.948841, 0.104234,
		0.250029, -0.182988, 0.950789,
		31.890429, 39.352489, 50.938313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350830, 39.867794, 50.365143>,  <31.715408, 39.480583, 50.272758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350830, 39.867794, 50.365143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.307285, 39.551590, 50.606220>,  <32.281158, 39.361866, 50.750866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.307285, 39.551590, 50.606220>,  <32.350830, 39.867794, 50.365143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307285, 39.551590, 50.606220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895378, -0.341341, -0.285980,
		0.431795, 0.508504, 0.744968,
		-0.108866, -0.790512, 0.602693,
		32.274624, 39.314438, 50.787029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.122517, 39.764301, 50.761921>,  <32.350830, 39.867794, 50.365143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.122517, 39.764301, 50.761921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.904106, 39.429291, 50.769958>,  <32.773060, 39.228287, 50.774780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.904106, 39.429291, 50.769958>,  <33.122517, 39.764301, 50.761921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904106, 39.429291, 50.769958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835230, -0.546085, -0.064671,
		0.065136, -0.018530, 0.997704,
		-0.546030, -0.837525, 0.020093,
		32.740295, 39.178032, 50.775986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561771, 39.251717, 51.045776>,  <33.122517, 39.764301, 50.761921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561771, 39.251717, 51.045776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.287258, 39.000355, 50.899288>,  <33.122551, 38.849537, 50.811394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.287258, 39.000355, 50.899288>,  <33.561771, 39.251717, 51.045776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287258, 39.000355, 50.899288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696069, -0.713490, -0.080125,
		-0.210946, -0.309906, 0.927070,
		-0.686287, -0.628403, -0.366224,
		33.081371, 38.811832, 50.789421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513683, 38.662300, 51.519348>,  <33.561771, 39.251717, 51.045776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513683, 38.662300, 51.519348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.384472, 38.560265, 51.154800>,  <33.306946, 38.499043, 50.936073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.384472, 38.560265, 51.154800>,  <33.513683, 38.662300, 51.519348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384472, 38.560265, 51.154800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752856, -0.652786, -0.084131,
		-0.573465, -0.713303, 0.402910,
		-0.323025, -0.255087, -0.911364,
		33.287563, 38.483738, 50.881390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399025, 37.891468, 51.522640>,  <33.513683, 38.662300, 51.519348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399025, 37.891468, 51.522640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.444401, 37.975574, 51.134224>,  <33.471626, 38.026039, 50.901173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.444401, 37.975574, 51.134224>,  <33.399025, 37.891468, 51.522640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444401, 37.975574, 51.134224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635023, -0.767007, -0.091898,
		-0.764119, -0.606209, -0.220531,
		0.113439, 0.210263, -0.971041,
		33.478432, 38.038654, 50.842911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602894, 37.296219, 51.278896>,  <33.399025, 37.891468, 51.522640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602894, 37.296219, 51.278896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.696629, 37.543255, 50.978584>,  <33.752869, 37.691475, 50.798397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.696629, 37.543255, 50.978584>,  <33.602894, 37.296219, 51.278896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696629, 37.543255, 50.978584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767249, -0.591755, -0.247298,
		-0.597005, -0.518080, -0.612518,
		0.234340, 0.617591, -0.750777,
		33.766930, 37.728531, 50.753353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724625, 36.896423, 50.791988>,  <33.602894, 37.296219, 51.278896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724625, 36.896423, 50.791988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.895248, 37.238895, 50.675369>,  <33.997623, 37.444378, 50.605396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.895248, 37.238895, 50.675369>,  <33.724625, 36.896423, 50.791988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895248, 37.238895, 50.675369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725130, -0.516392, -0.455550,
		-0.540587, -0.017092, -0.841114,
		0.426559, 0.856182, -0.291549,
		34.023216, 37.495750, 50.587906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835182, 36.831169, 50.020878>,  <33.724625, 36.896423, 50.791988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835182, 36.831169, 50.020878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.092335, 37.109753, 50.148407>,  <34.246628, 37.276901, 50.224922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.092335, 37.109753, 50.148407>,  <33.835182, 36.831169, 50.020878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092335, 37.109753, 50.148407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729802, -0.430564, -0.531041,
		-0.232575, 0.574073, -0.785079,
		0.642883, 0.696459, 0.318821,
		34.285198, 37.318691, 50.244053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365009, 36.882481, 49.562588>,  <33.835182, 36.831169, 50.020878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365009, 36.882481, 49.562588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.561478, 37.066387, 49.858524>,  <34.679359, 37.176731, 50.036087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.561478, 37.066387, 49.858524>,  <34.365009, 36.882481, 49.562588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561478, 37.066387, 49.858524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870758, -0.236606, -0.431043,
		-0.023128, 0.855939, -0.516559,
		0.491167, 0.459768, 0.739844,
		34.708828, 37.204319, 50.080479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956371, 37.271992, 49.280273>,  <34.365009, 36.882481, 49.562588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956371, 37.271992, 49.280273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.041309, 37.195602, 49.663612>,  <35.092274, 37.149769, 49.893616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.041309, 37.195602, 49.663612>,  <34.956371, 37.271992, 49.280273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041309, 37.195602, 49.663612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957408, -0.155696, -0.243162,
		0.195650, 0.969168, 0.149782,
		0.212344, -0.190978, 0.958351,
		35.105011, 37.138309, 49.951118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625462, 37.490639, 49.352589>,  <34.956371, 37.271992, 49.280273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625462, 37.490639, 49.352589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.567417, 37.253906, 49.669746>,  <35.532589, 37.111866, 49.860043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.567417, 37.253906, 49.669746>,  <35.625462, 37.490639, 49.352589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567417, 37.253906, 49.669746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812392, -0.528703, -0.245952,
		0.564768, 0.608451, 0.557516,
		-0.145111, -0.591828, 0.792895,
		35.523884, 37.076359, 49.907616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274940, 37.373600, 49.675793>,  <35.625462, 37.490639, 49.352589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274940, 37.373600, 49.675793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.043274, 37.068871, 49.791859>,  <35.904274, 36.886032, 49.861500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.043274, 37.068871, 49.791859>,  <36.274940, 37.373600, 49.675793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043274, 37.068871, 49.791859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732474, -0.642548, -0.224974,
		0.357835, 0.082242, 0.930156,
		-0.579168, -0.761819, 0.290166,
		35.869522, 36.840324, 49.878910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758614, 37.060146, 50.091579>,  <36.274940, 37.373600, 49.675793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758614, 37.060146, 50.091579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.467564, 36.799351, 50.006271>,  <36.292934, 36.642876, 49.955086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.467564, 36.799351, 50.006271>,  <36.758614, 37.060146, 50.091579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467564, 36.799351, 50.006271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684875, -0.708084, -0.171941,
		-0.038909, -0.271170, 0.961745,
		-0.727621, -0.651985, -0.213268,
		36.249279, 36.603756, 49.942291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854034, 36.499695, 50.509571>,  <36.758614, 37.060146, 50.091579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854034, 36.499695, 50.509571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.633160, 36.380322, 50.198177>,  <36.500637, 36.308697, 50.011341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.633160, 36.380322, 50.198177>,  <36.854034, 36.499695, 50.509571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633160, 36.380322, 50.198177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645886, -0.743552, -0.173094,
		-0.527184, -0.598389, 0.603330,
		-0.552185, -0.298431, -0.778480,
		36.467503, 36.290791, 49.964634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747356, 35.742481, 50.613140>,  <36.854034, 36.499695, 50.509571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747356, 35.742481, 50.613140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.695930, 35.808849, 50.222050>,  <36.665073, 35.848671, 49.987396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.695930, 35.808849, 50.222050>,  <36.747356, 35.742481, 50.613140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695930, 35.808849, 50.222050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567729, -0.796048, -0.209740,
		-0.813114, -0.582048, 0.008149,
		-0.128566, 0.165916, -0.977723,
		36.657360, 35.858624, 49.928734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687531, 35.043919, 50.358662>,  <36.747356, 35.742481, 50.613140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687531, 35.043919, 50.358662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.773571, 35.269512, 50.039749>,  <36.825195, 35.404869, 49.848404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.773571, 35.269512, 50.039749>,  <36.687531, 35.043919, 50.358662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773571, 35.269512, 50.039749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573928, -0.733535, -0.364051,
		-0.790152, -0.379274, -0.481469,
		0.215099, 0.563984, -0.797280,
		36.838100, 35.438705, 49.800564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507690, 34.579048, 49.836716>,  <36.687531, 35.043919, 50.358662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507690, 34.579048, 49.836716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.733021, 34.852924, 49.651733>,  <36.868217, 35.017250, 49.540745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.733021, 34.852924, 49.651733>,  <36.507690, 34.579048, 49.836716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733021, 34.852924, 49.651733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447609, -0.723362, -0.525731,
		-0.694486, 0.089157, -0.713960,
		0.563325, 0.684688, -0.462458,
		36.902020, 35.058331, 49.512997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441795, 34.448776, 49.148708>,  <36.507690, 34.579048, 49.836716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441795, 34.448776, 49.148708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.793354, 34.638546, 49.168579>,  <37.004288, 34.752407, 49.180504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.793354, 34.638546, 49.168579>,  <36.441795, 34.448776, 49.148708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793354, 34.638546, 49.168579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381159, -0.635843, -0.671134,
		-0.286812, 0.608792, -0.739669,
		0.878895, 0.474421, 0.049679,
		37.057022, 34.780872, 49.183483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656609, 34.549831, 48.432686>,  <36.441795, 34.448776, 49.148708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656609, 34.549831, 48.432686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.979816, 34.564049, 48.667919>,  <37.173740, 34.572578, 48.809059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.979816, 34.564049, 48.667919>,  <36.656609, 34.549831, 48.432686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979816, 34.564049, 48.667919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524181, -0.499053, -0.690058,
		0.268960, 0.865842, -0.421874,
		0.808019, 0.035540, 0.588083,
		37.222221, 34.574711, 48.844345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037712, 34.263737, 48.531830>,  <36.656609, 34.549831, 48.432686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037712, 34.263737, 48.531830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.034721, 34.452553, 48.179211>,  <36.032925, 34.565842, 47.967640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.034721, 34.452553, 48.179211>,  <36.037712, 34.263737, 48.531830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034721, 34.452553, 48.179211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994698, 0.086915, 0.054978,
		0.102571, 0.877282, 0.468887,
		-0.007478, 0.472040, -0.881545,
		36.032478, 34.594166, 47.914745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422955, 34.582710, 48.739952>,  <36.037712, 34.263737, 48.531830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422955, 34.582710, 48.739952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.465218, 34.616177, 48.343601>,  <35.490574, 34.636257, 48.105789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.465218, 34.616177, 48.343601>,  <35.422955, 34.582710, 48.739952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465218, 34.616177, 48.343601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969270, 0.231280, -0.083824,
		0.222158, 0.969283, 0.105530,
		0.105656, 0.083665, -0.990877,
		35.496914, 34.641277, 48.046337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431892, 35.247890, 48.488750>,  <35.422955, 34.582710, 48.739952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431892, 35.247890, 48.488750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.286537, 34.987938, 48.221737>,  <35.199322, 34.831966, 48.061527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.286537, 34.987938, 48.221737>,  <35.431892, 35.247890, 48.488750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286537, 34.987938, 48.221737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907998, 0.407441, 0.097630,
		0.208532, 0.641598, -0.738151,
		-0.363392, -0.649880, -0.667534,
		35.177521, 34.792973, 48.021477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967449, 35.591408, 48.141884>,  <35.431892, 35.247890, 48.488750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967449, 35.591408, 48.141884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.835918, 35.236801, 48.011677>,  <34.757000, 35.024036, 47.933552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.835918, 35.236801, 48.011677>,  <34.967449, 35.591408, 48.141884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835918, 35.236801, 48.011677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926602, 0.369444, -0.070140,
		0.182440, 0.278560, -0.942932,
		-0.328822, -0.886519, -0.325515,
		34.737270, 34.970844, 47.914021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562984, 35.696926, 47.503384>,  <34.967449, 35.591408, 48.141884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562984, 35.696926, 47.503384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.461136, 35.354294, 47.682915>,  <34.400028, 35.148716, 47.790634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.461136, 35.354294, 47.682915>,  <34.562984, 35.696926, 47.503384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461136, 35.354294, 47.682915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961851, 0.272346, -0.025887,
		-0.100062, -0.438295, -0.893244,
		-0.254617, -0.856578, 0.448827,
		34.384750, 35.097321, 47.817562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058746, 35.393372, 47.020050>,  <34.562984, 35.696926, 47.503384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058746, 35.393372, 47.020050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.999287, 35.258827, 47.392021>,  <33.963612, 35.178101, 47.615204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.999287, 35.258827, 47.392021>,  <34.058746, 35.393372, 47.020050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999287, 35.258827, 47.392021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939090, 0.342674, -0.026168,
		-0.309859, -0.877174, -0.366816,
		-0.148652, -0.336365, 0.929926,
		33.954693, 35.157917, 47.670998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434902, 34.814232, 47.010357>,  <34.058746, 35.393372, 47.020050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434902, 34.814232, 47.010357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.465080, 34.971542, 47.376884>,  <33.483185, 35.065929, 47.596802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.465080, 34.971542, 47.376884>,  <33.434902, 34.814232, 47.010357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465080, 34.971542, 47.376884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988299, 0.151660, 0.016276,
		-0.132568, -0.906824, 0.400120,
		0.075442, 0.393280, 0.916318,
		33.487713, 35.089527, 47.651779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782143, 34.672428, 47.400852>,  <33.434902, 34.814232, 47.010357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782143, 34.672428, 47.400852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.959972, 34.958900, 47.616051>,  <33.066669, 35.130783, 47.745171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.959972, 34.958900, 47.616051>,  <32.782143, 34.672428, 47.400852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959972, 34.958900, 47.616051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894464, 0.387029, 0.223925,
		-0.047850, -0.580769, 0.812661,
		0.444573, 0.716181, 0.537997,
		33.093346, 35.173756, 47.777451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319824, 34.799023, 47.980507>,  <32.782143, 34.672428, 47.400852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319824, 34.799023, 47.980507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.516037, 35.141655, 48.044559>,  <32.633766, 35.347237, 48.082989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.516037, 35.141655, 48.044559>,  <32.319824, 34.799023, 47.980507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516037, 35.141655, 48.044559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846490, 0.512027, -0.145885,
		-0.206953, -0.063987, 0.976256,
		0.490535, 0.856583, 0.160130,
		32.663197, 35.398628, 48.092598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062725, 35.175694, 48.572571>,  <32.319824, 34.799023, 47.980507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062725, 35.175694, 48.572571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.242279, 35.461658, 48.358131>,  <32.350010, 35.633236, 48.229465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.242279, 35.461658, 48.358131>,  <32.062725, 35.175694, 48.572571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.242279, 35.461658, 48.358131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812107, 0.576676, 0.089033,
		0.372808, 0.395408, 0.839444,
		0.448883, 0.714911, -0.536103,
		32.376945, 35.676132, 48.197300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070343, 35.883057, 48.865768>,  <32.062725, 35.175694, 48.572571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070343, 35.883057, 48.865768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.107780, 35.986015, 48.481064>,  <32.130245, 36.047791, 48.250240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.107780, 35.986015, 48.481064>,  <32.070343, 35.883057, 48.865768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107780, 35.986015, 48.481064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785701, 0.612396, 0.087433,
		0.611485, 0.747476, 0.259551,
		0.093594, 0.257394, -0.961764,
		32.135860, 36.063232, 48.192535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.967978, 36.707211, 48.806644>,  <32.070343, 35.883057, 48.865768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.967978, 36.707211, 48.806644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.914236, 36.565422, 48.436501>,  <31.881990, 36.480347, 48.214413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.914236, 36.565422, 48.436501>,  <31.967978, 36.707211, 48.806644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914236, 36.565422, 48.436501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689238, 0.704370, -0.169749,
		0.711970, 0.614991, -0.338947,
		-0.134350, -0.354471, -0.925365,
		31.873930, 36.459080, 48.158890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072388, 37.298351, 48.336540>,  <31.967978, 36.707211, 48.806644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072388, 37.298351, 48.336540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.843132, 37.017292, 48.167873>,  <31.705578, 36.848656, 48.066673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.843132, 37.017292, 48.167873>,  <32.072388, 37.298351, 48.336540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843132, 37.017292, 48.167873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762889, 0.645382, -0.038497,
		0.299187, 0.299621, -0.905933,
		-0.573139, -0.702644, -0.421667,
		31.671190, 36.806499, 48.041374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830021, 37.600334, 47.794075>,  <32.072388, 37.298351, 48.336540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830021, 37.600334, 47.794075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.568964, 37.313114, 47.890785>,  <31.412329, 37.140781, 47.948811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.568964, 37.313114, 47.890785>,  <31.830021, 37.600334, 47.794075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568964, 37.313114, 47.890785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750706, 0.655992, -0.078200,
		-0.102452, -0.232541, -0.967175,
		-0.652644, -0.718052, 0.241777,
		31.373171, 37.097698, 47.963318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222658, 37.884335, 47.569515>,  <31.830021, 37.600334, 47.794075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222658, 37.884335, 47.569515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.083981, 37.578388, 47.786694>,  <31.000774, 37.394821, 47.917000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.083981, 37.578388, 47.786694>,  <31.222658, 37.884335, 47.569515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083981, 37.578388, 47.786694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855088, 0.495638, 0.152211,
		-0.385526, -0.411498, -0.825857,
		-0.346692, -0.764861, 0.542948,
		30.979973, 37.348930, 47.949577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.539810, 37.915020, 47.335518>,  <31.222658, 37.884335, 47.569515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.539810, 37.915020, 47.335518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.541759, 37.695667, 47.670002>,  <30.542929, 37.564056, 47.870693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.541759, 37.695667, 47.670002>,  <30.539810, 37.915020, 47.335518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.541759, 37.695667, 47.670002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975929, 0.179718, 0.123545,
		-0.218032, -0.816688, -0.534306,
		0.004874, -0.548382, 0.836214,
		30.543222, 37.531155, 47.920868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.994699, 37.502533, 47.285919>,  <30.539810, 37.915020, 47.335518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.994699, 37.502533, 47.285919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.097834, 37.557281, 47.668499>,  <30.159714, 37.590130, 47.898045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.097834, 37.557281, 47.668499>,  <29.994699, 37.502533, 47.285919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097834, 37.557281, 47.668499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950456, 0.213842, 0.225620,
		-0.173649, -0.967233, 0.185220,
		0.257835, 0.136865, 0.956446,
		30.175184, 37.598343, 47.955433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.432535, 37.180092, 47.644066>,  <29.994699, 37.502533, 47.285919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.432535, 37.180092, 47.644066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.625170, 37.418617, 47.900967>,  <29.740751, 37.561733, 48.055107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.625170, 37.418617, 47.900967>,  <29.432535, 37.180092, 47.644066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.625170, 37.418617, 47.900967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870510, 0.240669, 0.429291,
		0.101423, -0.765825, 0.635001,
		0.481586, 0.596314, 0.642249,
		29.769646, 37.597511, 48.093643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.232924, 36.948498, 48.343430>,  <29.432535, 37.180092, 47.644066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.232924, 36.948498, 48.343430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.362902, 37.323975, 48.389488>,  <29.440889, 37.549263, 48.417122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.362902, 37.323975, 48.389488>,  <29.232924, 36.948498, 48.343430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.362902, 37.323975, 48.389488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695732, 0.154802, 0.701423,
		0.640599, -0.308034, 0.703384,
		0.324947, 0.938697, 0.115143,
		29.460386, 37.605583, 48.424030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.259230, 37.070610, 48.983738>,  <29.232924, 36.948498, 48.343430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.259230, 37.070610, 48.983738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.317915, 37.454933, 48.889660>,  <29.353127, 37.685528, 48.833214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.317915, 37.454933, 48.889660>,  <29.259230, 37.070610, 48.983738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.317915, 37.454933, 48.889660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627012, 0.274228, 0.729146,
		0.765069, 0.040497, 0.642673,
		0.146711, 0.960812, -0.235196,
		29.361929, 37.743176, 48.819099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.434118, 37.448154, 49.559113>,  <29.259230, 37.070610, 48.983738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.434118, 37.448154, 49.559113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.299232, 37.731998, 49.311649>,  <29.218302, 37.902306, 49.163174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.299232, 37.731998, 49.311649>,  <29.434118, 37.448154, 49.559113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.299232, 37.731998, 49.311649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543773, 0.389625, 0.743306,
		0.768504, 0.587061, 0.254482,
		-0.337213, 0.709614, -0.618656,
		29.198069, 37.944881, 49.126053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617086, 38.148739, 49.872391>,  <29.434118, 37.448154, 49.559113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617086, 38.148739, 49.872391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.304094, 38.184704, 49.625931>,  <29.116299, 38.206284, 49.478054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.304094, 38.184704, 49.625931>,  <29.617086, 38.148739, 49.872391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.304094, 38.184704, 49.625931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468322, 0.567150, 0.677506,
		0.410368, 0.818691, -0.401674,
		-0.782478, 0.089915, -0.616152,
		29.069351, 38.211678, 49.441086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.365444, 38.810272, 50.042713>,  <29.617086, 38.148739, 49.872391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.365444, 38.810272, 50.042713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.060965, 38.670673, 49.824070>,  <28.878277, 38.586914, 49.692883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.060965, 38.670673, 49.824070>,  <29.365444, 38.810272, 50.042713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.060965, 38.670673, 49.824070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648502, 0.403261, 0.645620,
		-0.004896, 0.845920, -0.533288,
		-0.761197, -0.348999, -0.546607,
		28.832605, 38.565975, 49.660088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.897886, 39.420101, 49.835529>,  <29.365444, 38.810272, 50.042713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.897886, 39.420101, 49.835529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.682852, 39.082958, 49.825726>,  <28.553831, 38.880672, 49.819843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.682852, 39.082958, 49.825726>,  <28.897886, 39.420101, 49.835529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.682852, 39.082958, 49.825726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684156, 0.419009, 0.596960,
		-0.492883, 0.337682, -0.801896,
		-0.537584, -0.842854, -0.024505,
		28.521576, 38.830101, 49.818375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.223112, 39.682087, 49.761894>,  <28.897886, 39.420101, 49.835529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.223112, 39.682087, 49.761894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.230108, 39.335125, 49.960812>,  <28.234306, 39.126945, 50.080162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.230108, 39.335125, 49.960812>,  <28.223112, 39.682087, 49.761894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230108, 39.335125, 49.960812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641078, 0.371945, 0.671323,
		-0.767276, -0.330545, -0.549570,
		0.017493, -0.867408, 0.497290,
		28.235355, 39.074902, 50.109997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.525013, 39.641209, 49.935112>,  <28.223112, 39.682087, 49.761894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.525013, 39.641209, 49.935112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.695322, 39.377571, 50.183083>,  <27.797508, 39.219387, 50.331863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.695322, 39.377571, 50.183083>,  <27.525013, 39.641209, 49.935112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.695322, 39.377571, 50.183083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650879, 0.252832, 0.715844,
		-0.628548, -0.708284, -0.321343,
		0.425775, -0.659097, 0.619924,
		27.823055, 39.179840, 50.369061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.930996, 39.197067, 50.291283>,  <27.525013, 39.641209, 49.935112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.930996, 39.197067, 50.291283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.258987, 39.162205, 50.517570>,  <27.455782, 39.141289, 50.653343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.258987, 39.162205, 50.517570>,  <26.930996, 39.197067, 50.291283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.258987, 39.162205, 50.517570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555675, 0.115922, 0.823279,
		-0.137332, -0.989427, 0.046625,
		0.819979, -0.087154, 0.565719,
		27.504982, 39.136059, 50.687286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.723368, 38.762405, 50.819725>,  <26.930996, 39.197067, 50.291283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.723368, 38.762405, 50.819725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.062519, 38.911007, 50.971031>,  <27.266010, 39.000168, 51.061817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.062519, 38.911007, 50.971031>,  <26.723368, 38.762405, 50.819725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.062519, 38.911007, 50.971031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422024, 0.041038, 0.905656,
		0.320927, -0.927526, 0.191577,
		0.847881, 0.371500, 0.378267,
		27.316883, 39.022457, 51.084511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.818029, 38.334728, 51.366737>,  <26.723368, 38.762405, 50.819725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.818029, 38.334728, 51.366737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.019386, 38.675297, 51.425629>,  <27.140202, 38.879639, 51.460964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.019386, 38.675297, 51.425629>,  <26.818029, 38.334728, 51.366737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.019386, 38.675297, 51.425629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346986, 0.043144, 0.936878,
		0.791325, -0.522706, 0.317149,
		0.503394, 0.851421, 0.147231,
		27.170404, 38.930721, 51.469799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.275402, 38.263779, 51.978245>,  <26.818029, 38.334728, 51.366737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.275402, 38.263779, 51.978245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.232731, 38.660530, 51.950520>,  <27.207129, 38.898579, 51.933884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.232731, 38.660530, 51.950520>,  <27.275402, 38.263779, 51.978245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.232731, 38.660530, 51.950520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270148, 0.038175, 0.962062,
		0.956891, 0.121354, 0.263881,
		-0.106676, 0.991875, -0.069313,
		27.200727, 38.958092, 51.929726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.693970, 38.694996, 52.524384>,  <27.275402, 38.263779, 51.978245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.693970, 38.694996, 52.524384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.417656, 38.964573, 52.419601>,  <27.251867, 39.126320, 52.356731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.417656, 38.964573, 52.419601>,  <27.693970, 38.694996, 52.524384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.417656, 38.964573, 52.419601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225557, 0.143360, 0.963624,
		0.686978, 0.724744, 0.052981,
		-0.690786, 0.673939, -0.261957,
		27.210421, 39.166756, 52.341015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.766005, 39.196568, 53.097332>,  <27.693970, 38.694996, 52.524384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.766005, 39.196568, 53.097332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.414988, 39.280098, 52.924679>,  <27.204378, 39.330215, 52.821087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.414988, 39.280098, 52.924679>,  <27.766005, 39.196568, 53.097332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.414988, 39.280098, 52.924679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347833, 0.342379, 0.872805,
		0.330047, 0.916062, -0.227816,
		-0.877543, 0.208824, -0.431637,
		27.151724, 39.342747, 52.795189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.595459, 39.740337, 53.456585>,  <27.766005, 39.196568, 53.097332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.595459, 39.740337, 53.456585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.253309, 39.640739, 53.274891>,  <27.048019, 39.580982, 53.165874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.253309, 39.640739, 53.274891>,  <27.595459, 39.740337, 53.456585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.253309, 39.640739, 53.274891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515185, 0.317511, 0.796098,
		-0.054000, 0.914979, -0.399871,
		-0.855376, -0.248996, -0.454238,
		26.996696, 39.566040, 53.138618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.111446, 40.354572, 53.411915>,  <27.595459, 39.740337, 53.456585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.111446, 40.354572, 53.411915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.895155, 40.018520, 53.394951>,  <26.765381, 39.816891, 53.384773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.895155, 40.018520, 53.394951>,  <27.111446, 40.354572, 53.411915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.895155, 40.018520, 53.394951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507396, 0.285535, 0.813031,
		-0.670942, 0.461144, -0.580674,
		-0.540727, -0.840128, -0.042405,
		26.732937, 39.766483, 53.382229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.365805, 40.534332, 53.679119>,  <27.111446, 40.354572, 53.411915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.365805, 40.534332, 53.679119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.436878, 40.140953, 53.693260>,  <26.479523, 39.904926, 53.701744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.436878, 40.140953, 53.693260>,  <26.365805, 40.534332, 53.679119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.436878, 40.140953, 53.693260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488251, -0.056908, 0.870846,
		-0.854424, -0.171997, -0.490283,
		0.177684, -0.983453, 0.035354,
		26.490183, 39.845917, 53.703865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.731323, 40.257362, 53.972641>,  <26.365805, 40.534332, 53.679119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.731323, 40.257362, 53.972641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.002390, 39.967838, 54.024597>,  <26.165030, 39.794125, 54.055771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.002390, 39.967838, 54.024597>,  <25.731323, 40.257362, 53.972641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.002390, 39.967838, 54.024597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384625, -0.198326, 0.901515,
		-0.626763, -0.660886, -0.412793,
		0.677667, -0.723807, 0.129890,
		26.205690, 39.750698, 54.063564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.380260, 39.730297, 54.382599>,  <25.731323, 40.257362, 53.972641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.380260, 39.730297, 54.382599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.773985, 39.678944, 54.431011>,  <26.010220, 39.648132, 54.460056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.773985, 39.678944, 54.431011>,  <25.380260, 39.730297, 54.382599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.773985, 39.678944, 54.431011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142484, -0.173836, 0.974412,
		-0.104053, -0.976371, -0.189401,
		0.984313, -0.128377, 0.121029,
		26.069279, 39.640430, 54.467319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.403152, 39.138809, 54.841091>,  <25.380260, 39.730297, 54.382599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.403152, 39.138809, 54.841091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.760067, 39.317684, 54.865910>,  <25.974215, 39.425011, 54.880802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.760067, 39.317684, 54.865910>,  <25.403152, 39.138809, 54.841091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.760067, 39.317684, 54.865910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033756, -0.070962, 0.996908,
		0.450209, -0.891620, -0.048223,
		0.892285, 0.447189, 0.062045,
		26.027752, 39.451839, 54.884521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.916023, 38.618309, 55.242958>,  <25.403152, 39.138809, 54.841091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.916023, 38.618309, 55.242958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.013826, 39.006115, 55.249325>,  <26.072508, 39.238800, 55.253147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.013826, 39.006115, 55.249325>,  <25.916023, 38.618309, 55.242958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.013826, 39.006115, 55.249325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051906, -0.029482, 0.998217,
		0.968257, -0.243244, -0.057532,
		0.244507, 0.969517, 0.015920,
		26.087179, 39.296970, 55.254101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.280926, 38.803711, 55.655987>,  <25.916023, 38.618309, 55.242958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.280926, 38.803711, 55.655987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.101301, 38.488987, 55.825348>,  <24.993526, 38.300152, 55.926964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.101301, 38.488987, 55.825348>,  <25.280926, 38.803711, 55.655987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.101301, 38.488987, 55.825348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670109, -0.610018, -0.422885,
		0.591014, 0.093823, 0.801187,
		-0.449062, -0.786814, 0.423400,
		24.966583, 38.252941, 55.952370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.783642, 38.446781, 55.965664>,  <25.280926, 38.803711, 55.655987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.783642, 38.446781, 55.965664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.498531, 38.167667, 55.937252>,  <25.327465, 38.000198, 55.920204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.498531, 38.167667, 55.937252>,  <25.783642, 38.446781, 55.965664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.498531, 38.167667, 55.937252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618363, -0.577378, -0.533162,
		0.331022, -0.423947, 0.843027,
		-0.712777, -0.697785, -0.071028,
		25.284698, 37.958332, 55.915943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.084490, 37.714653, 56.176727>,  <25.783642, 38.446781, 55.965664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.084490, 37.714653, 56.176727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.777590, 37.671684, 55.923813>,  <25.593449, 37.645901, 55.772064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.777590, 37.671684, 55.923813>,  <26.084490, 37.714653, 56.176727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.777590, 37.671684, 55.923813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489531, -0.735026, -0.469145,
		-0.414348, -0.669475, 0.616538,
		-0.767252, -0.107425, -0.632285,
		25.547415, 37.639458, 55.734127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.962057, 36.976990, 56.192551>,  <26.084490, 37.714653, 56.176727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.962057, 36.976990, 56.192551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.767502, 37.107304, 55.868256>,  <25.650768, 37.185493, 55.673679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.767502, 37.107304, 55.868256>,  <25.962057, 36.976990, 56.192551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.767502, 37.107304, 55.868256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441502, -0.709074, -0.549809,
		-0.753991, -0.625362, 0.201050,
		-0.486389, 0.325787, -0.810734,
		25.621584, 37.205040, 55.625034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.851286, 36.371746, 55.653938>,  <25.962057, 36.976990, 56.192551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.851286, 36.371746, 55.653938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.746290, 36.655544, 55.392338>,  <25.683292, 36.825821, 55.235378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.746290, 36.655544, 55.392338>,  <25.851286, 36.371746, 55.653938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.746290, 36.655544, 55.392338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580699, -0.425149, -0.694289,
		-0.770641, -0.562023, -0.300404,
		-0.262489, 0.709492, -0.654004,
		25.667543, 36.868393, 55.196136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.870457, 36.065521, 55.075581>,  <25.851286, 36.371746, 55.653938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.870457, 36.065521, 55.075581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.905418, 36.454075, 54.987251>,  <25.926395, 36.687206, 54.934254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.905418, 36.454075, 54.987251>,  <25.870457, 36.065521, 55.075581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.905418, 36.454075, 54.987251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713041, -0.215809, -0.667082,
		-0.695653, -0.099152, -0.711503,
		0.087407, 0.971388, -0.220827,
		25.931641, 36.745491, 54.921001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.819881, 36.034866, 54.407703>,  <25.870457, 36.065521, 55.075581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.819881, 36.034866, 54.407703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.986881, 36.395367, 54.454086>,  <26.087082, 36.611668, 54.481915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.986881, 36.395367, 54.454086>,  <25.819881, 36.034866, 54.407703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.986881, 36.395367, 54.454086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537963, -0.142311, -0.830869,
		-0.732317, 0.409268, -0.544252,
		0.417502, 0.901247, 0.115954,
		26.112131, 36.665741, 54.488873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.719400, 36.407658, 53.793125>,  <25.819881, 36.034866, 54.407703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.719400, 36.407658, 53.793125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.044109, 36.570618, 53.960480>,  <26.238934, 36.668396, 54.060894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.044109, 36.570618, 53.960480>,  <25.719400, 36.407658, 53.793125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.044109, 36.570618, 53.960480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461256, -0.007916, -0.887232,
		-0.358149, 0.913214, -0.194343,
		0.811771, 0.407403, 0.418390,
		26.287642, 36.692837, 54.085999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.985846, 36.901779, 53.347866>,  <25.719400, 36.407658, 53.793125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.985846, 36.901779, 53.347866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.312704, 36.812630, 53.560505>,  <26.508820, 36.759140, 53.688087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.312704, 36.812630, 53.560505>,  <25.985846, 36.901779, 53.347866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.312704, 36.812630, 53.560505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518374, -0.119225, -0.846802,
		0.252108, 0.967530, 0.018106,
		0.817147, -0.222872, 0.531600,
		26.557848, 36.745770, 53.719986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.491449, 37.267689, 52.996616>,  <25.985846, 36.901779, 53.347866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.491449, 37.267689, 52.996616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.702490, 37.035927, 53.245110>,  <26.829115, 36.896870, 53.394203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.702490, 37.035927, 53.245110>,  <26.491449, 37.267689, 52.996616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.702490, 37.035927, 53.245110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700459, -0.117021, -0.704033,
		0.480617, 0.806596, 0.344109,
		0.527602, -0.579404, 0.621230,
		26.860771, 36.862106, 53.431477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.158400, 37.508430, 52.866673>,  <26.491449, 37.267689, 52.996616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.158400, 37.508430, 52.866673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.210085, 37.135445, 53.001621>,  <27.241096, 36.911655, 53.082592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.210085, 37.135445, 53.001621>,  <27.158400, 37.508430, 52.866673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.210085, 37.135445, 53.001621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717515, -0.146916, -0.680873,
		0.684453, 0.330049, 0.650070,
		0.129216, -0.932461, 0.337373,
		27.248850, 36.855705, 53.102833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.967052, 37.388458, 52.903507>,  <27.158400, 37.508430, 52.866673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.967052, 37.388458, 52.903507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.807537, 37.022339, 52.926090>,  <27.711828, 36.802666, 52.939640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.807537, 37.022339, 52.926090>,  <27.967052, 37.388458, 52.903507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.807537, 37.022339, 52.926090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710384, -0.347271, -0.612175,
		0.579932, -0.204020, 0.788704,
		-0.398790, -0.915303, 0.056461,
		27.687901, 36.747749, 52.943027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.406500, 36.988430, 53.123329>,  <27.967052, 37.388458, 52.903507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.406500, 36.988430, 53.123329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.147621, 36.764408, 52.916458>,  <27.992294, 36.629997, 52.792336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.147621, 36.764408, 52.916458>,  <28.406500, 36.988430, 53.123329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.147621, 36.764408, 52.916458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732182, -0.267801, -0.626252,
		0.212233, -0.783979, 0.583381,
		-0.647199, -0.560053, -0.517179,
		27.953461, 36.596394, 52.761303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.738523, 36.244991, 53.030170>,  <28.406500, 36.988430, 53.123329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.738523, 36.244991, 53.030170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.472242, 36.300068, 52.736809>,  <28.312473, 36.333115, 52.560791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.472242, 36.300068, 52.736809>,  <28.738523, 36.244991, 53.030170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.472242, 36.300068, 52.736809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674583, -0.309140, -0.670350,
		-0.319036, -0.940994, 0.112900,
		-0.665698, 0.137706, -0.733406,
		28.272532, 36.341377, 52.516788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.859985, 35.759285, 52.602283>,  <28.738523, 36.244991, 53.030170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.859985, 35.759285, 52.602283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.632111, 35.976196, 52.355255>,  <28.495386, 36.106342, 52.207039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.632111, 35.976196, 52.355255>,  <28.859985, 35.759285, 52.602283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.632111, 35.976196, 52.355255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574211, -0.274976, -0.771148,
		-0.587994, -0.793928, -0.154732,
		-0.569688, 0.542279, -0.617566,
		28.461205, 36.138882, 52.169987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.788153, 35.349777, 52.099281>,  <28.859985, 35.759285, 52.602283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.788153, 35.349777, 52.099281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.701786, 35.715088, 51.961117>,  <28.649967, 35.934273, 51.878220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.701786, 35.715088, 51.961117>,  <28.788153, 35.349777, 52.099281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.701786, 35.715088, 51.961117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443941, -0.223256, -0.867798,
		-0.869653, -0.340713, -0.357236,
		-0.215915, 0.913275, -0.345412,
		28.637012, 35.989071, 51.857494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.412058, 35.255684, 51.385296>,  <28.788153, 35.349777, 52.099281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.412058, 35.255684, 51.385296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.583202, 35.615486, 51.420681>,  <28.685890, 35.831367, 51.441914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.583202, 35.615486, 51.420681>,  <28.412058, 35.255684, 51.385296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.583202, 35.615486, 51.420681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536018, -0.173714, -0.826140,
		-0.727748, 0.400895, -0.556476,
		0.427863, 0.899503, 0.088466,
		28.711561, 35.885338, 51.447220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.200535, 35.579372, 50.852917>,  <28.412058, 35.255684, 51.385296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.200535, 35.579372, 50.852917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.526222, 35.791698, 50.946960>,  <28.721636, 35.919094, 51.003387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.526222, 35.791698, 50.946960>,  <28.200535, 35.579372, 50.852917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.526222, 35.791698, 50.946960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329226, -0.088615, -0.940084,
		-0.478180, 0.842840, -0.246911,
		0.814220, 0.530819, 0.235111,
		28.770489, 35.950943, 51.017494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.309002, 36.199661, 50.440552>,  <28.200535, 35.579372, 50.852917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.309002, 36.199661, 50.440552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.676470, 36.128616, 50.581688>,  <28.896950, 36.085991, 50.666370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.676470, 36.128616, 50.581688>,  <28.309002, 36.199661, 50.440552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676470, 36.128616, 50.581688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350106, -0.047594, -0.935500,
		0.182950, 0.982949, 0.018460,
		0.918670, -0.177613, 0.352844,
		28.952070, 36.075333, 50.687542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767923, 36.693554, 50.086262>,  <28.309002, 36.199661, 50.440552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767923, 36.693554, 50.086262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.991686, 36.389549, 50.218594>,  <29.125942, 36.207146, 50.297993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.991686, 36.389549, 50.218594>,  <28.767923, 36.693554, 50.086262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.991686, 36.389549, 50.218594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372027, -0.126454, -0.919568,
		0.740718, 0.637488, 0.212006,
		0.559404, -0.760012, 0.330829,
		29.159508, 36.161545, 50.317841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.315393, 36.704010, 49.702137>,  <28.767923, 36.693554, 50.086262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.315393, 36.704010, 49.702137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.356815, 36.334377, 49.849300>,  <29.381668, 36.112598, 49.937599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.356815, 36.334377, 49.849300>,  <29.315393, 36.704010, 49.702137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.356815, 36.334377, 49.849300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546413, -0.256224, -0.797359,
		0.831089, 0.283599, 0.478396,
		0.103554, -0.924079, 0.367907,
		29.387882, 36.057152, 49.959671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.976984, 36.530296, 49.746826>,  <29.315393, 36.704010, 49.702137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.976984, 36.530296, 49.746826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.816460, 36.163940, 49.742760>,  <29.720144, 35.944126, 49.740318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.816460, 36.163940, 49.742760>,  <29.976984, 36.530296, 49.746826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.816460, 36.163940, 49.742760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710505, -0.304275, -0.634507,
		0.578042, -0.261858, 0.772851,
		-0.401310, -0.915886, -0.010168,
		29.696066, 35.889175, 49.739708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.531395, 36.159866, 49.595383>,  <29.976984, 36.530296, 49.746826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.531395, 36.159866, 49.595383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.245028, 35.887272, 49.534683>,  <30.073206, 35.723713, 49.498264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.245028, 35.887272, 49.534683>,  <30.531395, 36.159866, 49.595383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.245028, 35.887272, 49.534683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648129, -0.567894, -0.507371,
		0.259590, -0.461591, 0.848261,
		-0.715920, -0.681491, -0.151751,
		30.030251, 35.682823, 49.489159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846344, 35.417049, 49.625217>,  <30.531395, 36.159866, 49.595383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846344, 35.417049, 49.625217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.506956, 35.345146, 49.426105>,  <30.303324, 35.302006, 49.306641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.506956, 35.345146, 49.426105>,  <30.846344, 35.417049, 49.625217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.506956, 35.345146, 49.426105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475558, -0.671703, -0.568032,
		-0.232250, -0.718681, 0.655406,
		-0.848472, -0.179758, -0.497777,
		30.252415, 35.291218, 49.276772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855499, 34.653328, 49.521255>,  <30.846344, 35.417049, 49.625217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855499, 34.653328, 49.521255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.584911, 34.796787, 49.263958>,  <30.422558, 34.882862, 49.109581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.584911, 34.796787, 49.263958>,  <30.855499, 34.653328, 49.521255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.584911, 34.796787, 49.263958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334693, -0.628300, -0.702296,
		-0.656021, -0.690374, 0.304993,
		-0.676474, 0.358642, -0.643241,
		30.381969, 34.904381, 49.070984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.488346, 34.080482, 49.348476>,  <30.855499, 34.653328, 49.521255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.488346, 34.080482, 49.348476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.455074, 34.350098, 49.054878>,  <30.435110, 34.511868, 48.878719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.455074, 34.350098, 49.054878>,  <30.488346, 34.080482, 49.348476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455074, 34.350098, 49.054878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258596, -0.696719, -0.669112,
		-0.962397, -0.245467, -0.116350,
		-0.083182, 0.674039, -0.733997,
		30.430120, 34.552311, 48.834679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.971390, 33.803116, 48.894810>,  <30.488346, 34.080482, 49.348476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.971390, 33.803116, 48.894810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.168001, 34.055275, 48.654476>,  <30.285969, 34.206570, 48.510277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.168001, 34.055275, 48.654476>,  <29.971390, 33.803116, 48.894810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.168001, 34.055275, 48.654476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047665, -0.708372, -0.704228,
		-0.869556, 0.317509, -0.378233,
		0.491528, 0.630395, -0.600835,
		30.315460, 34.244392, 48.474224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.852463, 33.560730, 48.196629>,  <29.971390, 33.803116, 48.894810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.852463, 33.560730, 48.196629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.171019, 33.792767, 48.128204>,  <30.362152, 33.931988, 48.087151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.171019, 33.792767, 48.128204>,  <29.852463, 33.560730, 48.196629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.171019, 33.792767, 48.128204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325436, -0.649439, -0.687256,
		-0.509762, 0.491654, -0.705988,
		0.796388, 0.580091, -0.171057,
		30.409935, 33.966793, 48.076889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915905, 33.493275, 47.494831>,  <29.852463, 33.560730, 48.196629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915905, 33.493275, 47.494831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.274872, 33.592705, 47.640629>,  <30.490252, 33.652363, 47.728107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.274872, 33.592705, 47.640629>,  <29.915905, 33.493275, 47.494831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.274872, 33.592705, 47.640629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405603, -0.789893, -0.459952,
		0.173579, 0.560608, -0.809685,
		0.897417, 0.248572, 0.364493,
		30.544096, 33.667278, 47.749977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.340151, 33.311874, 46.999493>,  <29.915905, 33.493275, 47.494831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.340151, 33.311874, 46.999493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.609629, 33.327305, 47.294693>,  <30.771317, 33.336563, 47.471813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.609629, 33.327305, 47.294693>,  <30.340151, 33.311874, 46.999493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.609629, 33.327305, 47.294693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545124, -0.700211, -0.461025,
		0.498972, 0.712893, -0.492759,
		0.673697, 0.038576, 0.738001,
		30.811737, 33.338879, 47.516094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986071, 33.317108, 46.726688>,  <30.340151, 33.311874, 46.999493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.986071, 33.317108, 46.726688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.044788, 33.155392, 47.087799>,  <31.080019, 33.058361, 47.304466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.044788, 33.155392, 47.087799>,  <30.986071, 33.317108, 46.726688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044788, 33.155392, 47.087799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572092, -0.709832, -0.410913,
		0.806946, 0.576789, 0.127093,
		0.146796, -0.404293, 0.902772,
		31.088827, 33.034103, 47.358631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795925, 33.202785, 46.760845>,  <30.986071, 33.317108, 46.726688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795925, 33.202785, 46.760845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.610615, 32.963444, 47.022331>,  <31.499428, 32.819839, 47.179222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.610615, 32.963444, 47.022331>,  <31.795925, 33.202785, 46.760845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610615, 32.963444, 47.022331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638976, -0.736662, -0.221446,
		0.614073, 0.315119, 0.723612,
		-0.463276, -0.598355, 0.653718,
		31.471632, 32.783936, 47.218445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403160, 32.947327, 47.088184>,  <31.795925, 33.202785, 46.760845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403160, 32.947327, 47.088184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.074341, 32.721561, 47.118317>,  <31.877050, 32.586102, 47.136398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.074341, 32.721561, 47.118317>,  <32.403160, 32.947327, 47.088184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074341, 32.721561, 47.118317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547122, -0.819573, -0.170171,
		0.157790, -0.098671, 0.982531,
		-0.822046, -0.564416, 0.075335,
		31.827726, 32.552238, 47.140919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512280, 32.521118, 47.639381>,  <32.403160, 32.947327, 47.088184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512280, 32.521118, 47.639381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.218060, 32.349323, 47.429810>,  <32.041527, 32.246246, 47.304066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.218060, 32.349323, 47.429810>,  <32.512280, 32.521118, 47.639381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218060, 32.349323, 47.429810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505171, -0.863017, -0.001760,
		-0.451405, -0.265970, 0.851759,
		-0.735551, -0.429489, -0.523931,
		31.997395, 32.220478, 47.272629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572392, 31.922506, 47.989304>,  <32.512280, 32.521118, 47.639381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572392, 31.922506, 47.989304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.365623, 31.856546, 47.653305>,  <32.241562, 31.816971, 47.451706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.365623, 31.856546, 47.653305>,  <32.572392, 31.922506, 47.989304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365623, 31.856546, 47.653305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388202, -0.919726, -0.058342,
		-0.762947, -0.356248, 0.539443,
		-0.516924, -0.164901, -0.839998,
		32.210545, 31.807076, 47.401306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303608, 31.239622, 48.107906>,  <32.572392, 31.922506, 47.989304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303608, 31.239622, 48.107906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.320744, 31.338600, 47.720726>,  <32.331024, 31.397987, 47.488419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.320744, 31.338600, 47.720726>,  <32.303608, 31.239622, 48.107906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320744, 31.338600, 47.720726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476394, -0.856667, -0.197916,
		-0.878188, -0.452650, -0.154578,
		0.042836, 0.247447, -0.967954,
		32.333595, 31.412834, 47.430340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046280, 30.674805, 47.836159>,  <32.303608, 31.239622, 48.107906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046280, 30.674805, 47.836159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.252384, 30.866982, 47.552277>,  <32.376045, 30.982286, 47.381947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.252384, 30.866982, 47.552277>,  <32.046280, 30.674805, 47.836159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252384, 30.866982, 47.552277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607015, -0.789167, -0.093530,
		-0.605014, -0.382611, -0.698260,
		0.515258, 0.480441, -0.709708,
		32.406963, 31.011114, 47.339363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115128, 30.191242, 47.257690>,  <32.046280, 30.674805, 47.836159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115128, 30.191242, 47.257690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.401291, 30.470663, 47.263592>,  <32.572990, 30.638315, 47.267132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.401291, 30.470663, 47.263592>,  <32.115128, 30.191242, 47.257690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401291, 30.470663, 47.263592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696469, -0.711271, -0.094997,
		-0.055868, 0.078235, -0.995368,
		0.715409, 0.698550, 0.014751,
		32.615913, 30.680227, 47.268017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640194, 29.863426, 46.820175>,  <32.115128, 30.191242, 47.257690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640194, 29.863426, 46.820175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.822037, 30.176041, 46.991074>,  <32.931145, 30.363609, 47.093613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.822037, 30.176041, 46.991074>,  <32.640194, 29.863426, 46.820175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822037, 30.176041, 46.991074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875636, -0.479974, -0.053731,
		0.163072, 0.398535, -0.902540,
		0.454609, 0.781534, 0.427242,
		32.958420, 30.410501, 47.119247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269600, 29.967506, 46.373371>,  <32.640194, 29.863426, 46.820175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269600, 29.967506, 46.373371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.312000, 30.119007, 46.741135>,  <33.337440, 30.209908, 46.961792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.312000, 30.119007, 46.741135>,  <33.269600, 29.967506, 46.373371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312000, 30.119007, 46.741135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835616, -0.535112, 0.124101,
		0.538989, 0.755116, -0.373216,
		0.106002, 0.378754, 0.919407,
		33.343800, 30.232634, 47.016956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909180, 29.896746, 46.421661>,  <33.269600, 29.967506, 46.373371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909180, 29.896746, 46.421661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.818279, 29.965746, 46.805035>,  <33.763737, 30.007145, 47.035061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.818279, 29.965746, 46.805035>,  <33.909180, 29.896746, 46.421661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818279, 29.965746, 46.805035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654549, -0.701664, 0.281484,
		0.721056, 0.691312, 0.046547,
		-0.227253, 0.172499, 0.958436,
		33.750103, 30.017496, 47.092567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445328, 29.958858, 46.766560>,  <33.909180, 29.896746, 46.421661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445328, 29.958858, 46.766560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.164974, 29.809603, 47.009716>,  <33.996761, 29.720049, 47.155609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.164974, 29.809603, 47.009716>,  <34.445328, 29.958858, 46.766560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164974, 29.809603, 47.009716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614008, -0.749334, 0.247978,
		0.362982, 0.547052, 0.754306,
		-0.700885, -0.373138, 0.607889,
		33.954708, 29.697660, 47.192081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773891, 29.881752, 47.440472>,  <34.445328, 29.958858, 46.766560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773891, 29.881752, 47.440472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.473114, 29.621067, 47.480186>,  <34.292648, 29.464657, 47.504017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.473114, 29.621067, 47.480186>,  <34.773891, 29.881752, 47.440472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473114, 29.621067, 47.480186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650808, -0.709869, 0.269323,
		-0.105039, 0.267132, 0.957918,
		-0.751941, -0.651710, 0.099287,
		34.247532, 29.425554, 47.509972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690842, 29.757542, 48.166290>,  <34.773891, 29.881752, 47.440472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690842, 29.757542, 48.166290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.613693, 29.473587, 47.895332>,  <34.567406, 29.303215, 47.732758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.613693, 29.473587, 47.895332>,  <34.690842, 29.757542, 48.166290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613693, 29.473587, 47.895332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685175, -0.591606, 0.424898,
		-0.702381, -0.382186, 0.600496,
		-0.192866, -0.709885, -0.677397,
		34.555832, 29.260622, 47.692112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989868, 29.137079, 48.124813>,  <34.690842, 29.757542, 48.166290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989868, 29.137079, 48.124813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.774460, 28.913818, 48.377308>,  <34.645214, 28.779861, 48.528805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.774460, 28.913818, 48.377308>,  <34.989868, 29.137079, 48.124813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774460, 28.913818, 48.377308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026636, -0.760047, -0.649322,
		0.842191, -0.332860, 0.424169,
		-0.538522, -0.558151, 0.631238,
		34.612904, 28.746372, 48.566681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205482, 28.423002, 48.506168>,  <34.989868, 29.137079, 48.124813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205482, 28.423002, 48.506168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.820168, 28.429455, 48.398975>,  <34.588978, 28.433327, 48.334660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.820168, 28.429455, 48.398975>,  <35.205482, 28.423002, 48.506168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820168, 28.429455, 48.398975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191513, -0.658243, -0.728038,
		-0.188139, -0.752633, 0.630989,
		-0.963289, 0.016130, -0.267980,
		34.531181, 28.434294, 48.318581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659561, 28.948200, 48.223774>,  <35.205482, 28.423002, 48.506168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659561, 28.948200, 48.223774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.520294, 29.268034, 48.028042>,  <35.436733, 29.459934, 47.910603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.520294, 29.268034, 48.028042>,  <35.659561, 28.948200, 48.223774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520294, 29.268034, 48.028042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528527, 0.598547, 0.601997,
		0.774234, -0.049028, -0.630997,
		-0.348166, 0.799586, -0.489328,
		35.415844, 29.507910, 47.881245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259285, 29.326550, 47.954197>,  <35.659561, 28.948200, 48.223774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259285, 29.326550, 47.954197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.938622, 29.560093, 48.005505>,  <35.746223, 29.700220, 48.036289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.938622, 29.560093, 48.005505>,  <36.259285, 29.326550, 47.954197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938622, 29.560093, 48.005505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582260, 0.714068, 0.388690,
		0.135347, 0.386283, -0.912396,
		-0.801657, 0.583860, 0.128270,
		35.698124, 29.735250, 48.043987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413464, 29.982138, 47.629650>,  <36.259285, 29.326550, 47.954197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413464, 29.982138, 47.629650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.118820, 30.065746, 47.886932>,  <35.942036, 30.115911, 48.041302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.118820, 30.065746, 47.886932>,  <36.413464, 29.982138, 47.629650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118820, 30.065746, 47.886932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467168, 0.844945, 0.260427,
		-0.489043, 0.492320, -0.720041,
		-0.736608, 0.209020, 0.643210,
		35.897839, 30.128452, 48.079895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190002, 30.620934, 47.445969>,  <36.413464, 29.982138, 47.629650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190002, 30.620934, 47.445969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.111336, 30.542807, 47.830296>,  <36.064137, 30.495930, 48.060890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.111336, 30.542807, 47.830296>,  <36.190002, 30.620934, 47.445969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111336, 30.542807, 47.830296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487013, 0.831058, 0.268627,
		-0.850964, 0.520762, -0.068322,
		-0.196671, -0.195318, 0.960818,
		36.052334, 30.484211, 48.118542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102364, 31.217028, 47.704147>,  <36.190002, 30.620934, 47.445969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102364, 31.217028, 47.704147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.161362, 30.986099, 48.025379>,  <36.196762, 30.847542, 48.218121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.161362, 30.986099, 48.025379>,  <36.102364, 31.217028, 47.704147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161362, 30.986099, 48.025379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698964, 0.635324, 0.328348,
		-0.699781, 0.512897, 0.497236,
		0.147497, -0.577322, 0.803084,
		36.205612, 30.812902, 48.266304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153664, 31.734228, 48.199608>,  <36.102364, 31.217028, 47.704147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153664, 31.734228, 48.199608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.294933, 31.396809, 48.361446>,  <36.379696, 31.194357, 48.458549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.294933, 31.396809, 48.361446>,  <36.153664, 31.734228, 48.199608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294933, 31.396809, 48.361446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791047, 0.500151, 0.352269,
		-0.499514, 0.195641, 0.843926,
		0.353172, -0.843549, 0.404593,
		36.400887, 31.143744, 48.482822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363728, 31.894667, 48.857304>,  <36.153664, 31.734228, 48.199608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363728, 31.894667, 48.857304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.558041, 31.555346, 48.773022>,  <36.674629, 31.351753, 48.722454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.558041, 31.555346, 48.773022>,  <36.363728, 31.894667, 48.857304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558041, 31.555346, 48.773022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870674, 0.448370, 0.202217,
		-0.077070, -0.281686, 0.956407,
		0.485786, -0.848303, -0.210700,
		36.703777, 31.300856, 48.709812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774544, 31.854904, 49.394638>,  <36.363728, 31.894667, 48.857304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774544, 31.854904, 49.394638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.922249, 31.569757, 49.156155>,  <37.010872, 31.398670, 49.013065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.922249, 31.569757, 49.156155>,  <36.774544, 31.854904, 49.394638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922249, 31.569757, 49.156155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911373, 0.152296, 0.382368,
		-0.181775, -0.684566, 0.705923,
		0.369265, -0.712865, -0.596211,
		37.033028, 31.355898, 48.977291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003716, 31.399164, 49.829617>,  <36.774544, 31.854904, 49.394638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003716, 31.399164, 49.829617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.195889, 31.363609, 49.480610>,  <37.311192, 31.342276, 49.271206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.195889, 31.363609, 49.480610>,  <37.003716, 31.399164, 49.829617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195889, 31.363609, 49.480610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875443, 0.108465, 0.470994,
		0.052771, -0.990118, 0.129928,
		0.480433, -0.088889, -0.872515,
		37.340019, 31.336943, 49.218857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523956, 30.934578, 49.992886>,  <37.003716, 31.399164, 49.829617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523956, 30.934578, 49.992886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.657993, 31.100288, 49.654400>,  <37.738415, 31.199715, 49.451309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.657993, 31.100288, 49.654400>,  <37.523956, 30.934578, 49.992886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657993, 31.100288, 49.654400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882761, 0.175866, 0.435665,
		0.329306, -0.892999, -0.306774,
		0.335097, 0.414275, -0.846219,
		37.758522, 31.224571, 49.400536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079781, 30.581207, 49.804825>,  <37.523956, 30.934578, 49.992886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079781, 30.581207, 49.804825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.136391, 30.942297, 49.642315>,  <38.170357, 31.158951, 49.544807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.136391, 30.942297, 49.642315>,  <38.079781, 30.581207, 49.804825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136391, 30.942297, 49.642315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926988, 0.023161, 0.374375,
		0.347367, -0.429596, -0.833536,
		0.141524, 0.902724, -0.406276,
		38.178848, 31.213114, 49.520432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767826, 30.620193, 49.477325>,  <38.079781, 30.581207, 49.804825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767826, 30.620193, 49.477325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.647251, 30.989805, 49.571392>,  <38.574905, 31.211573, 49.627834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.647251, 30.989805, 49.571392>,  <38.767826, 30.620193, 49.477325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647251, 30.989805, 49.571392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822687, 0.127373, 0.554042,
		0.481996, 0.360481, -0.798582,
		-0.301439, 0.924029, 0.235169,
		38.556820, 31.267014, 49.641941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054188, 30.512074, 48.780579>,  <38.767826, 30.620193, 49.477325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054188, 30.512074, 48.780579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.344372, 30.477985, 48.507393>,  <39.518482, 30.457533, 48.343483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.344372, 30.477985, 48.507393>,  <39.054188, 30.512074, 48.780579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344372, 30.477985, 48.507393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343450, -0.904752, -0.251926,
		-0.596444, 0.417327, -0.685633,
		0.725463, -0.085221, -0.682965,
		39.562012, 30.452419, 48.302502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821777, 30.169653, 48.044468>,  <39.054188, 30.512074, 48.780579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821777, 30.169653, 48.044468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.210972, 30.113218, 48.117558>,  <39.444489, 30.079357, 48.161411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.210972, 30.113218, 48.117558>,  <38.821777, 30.169653, 48.044468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210972, 30.113218, 48.117558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053691, -0.908109, -0.415278,
		0.224521, 0.394250, -0.891155,
		0.972989, -0.141085, 0.182722,
		39.502869, 30.070892, 48.172375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175488, 30.018221, 47.426914>,  <38.821777, 30.169653, 48.044468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175488, 30.018221, 47.426914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.339790, 29.863224, 47.757038>,  <39.438370, 29.770226, 47.955112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.339790, 29.863224, 47.757038>,  <39.175488, 30.018221, 47.426914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339790, 29.863224, 47.757038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019097, -0.908650, -0.417121,
		0.911546, 0.155573, -0.380632,
		0.410754, -0.387494, 0.825305,
		39.463017, 29.746975, 48.004631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912296, 29.587379, 47.390755>,  <39.175488, 30.018221, 47.426914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912296, 29.587379, 47.390755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.664864, 29.426138, 47.660530>,  <39.516403, 29.329393, 47.822395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.664864, 29.426138, 47.660530>,  <39.912296, 29.587379, 47.390755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664864, 29.426138, 47.660530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070057, -0.883244, -0.463652,
		0.782590, -0.239558, 0.574599,
		-0.618583, -0.403104, 0.674435,
		39.479290, 29.305206, 47.862862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164295, 29.005617, 47.710529>,  <39.912296, 29.587379, 47.390755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164295, 29.005617, 47.710529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.769726, 28.947649, 47.741447>,  <39.532986, 28.912868, 47.759998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.769726, 28.947649, 47.741447>,  <40.164295, 29.005617, 47.710529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769726, 28.947649, 47.741447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107549, -0.925600, -0.362903,
		0.124134, -0.349662, 0.928616,
		-0.986420, -0.144920, 0.077293,
		39.473801, 28.904173, 47.764637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584545, 28.698566, 47.211456>,  <40.164295, 29.005617, 47.710529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584545, 28.698566, 47.211456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.336014, 28.943342, 47.015709>,  <40.186897, 29.090208, 46.898262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.336014, 28.943342, 47.015709>,  <40.584545, 28.698566, 47.211456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336014, 28.943342, 47.015709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354124, 0.776433, 0.521294,
		0.698963, 0.150596, -0.699122,
		-0.621326, 0.611941, -0.489369,
		40.149616, 29.126925, 46.868896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609177, 29.266361, 46.564823>,  <40.584545, 28.698566, 47.211456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.609177, 29.266361, 46.564823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.993046, 29.378778, 46.567383>,  <41.223366, 29.446228, 46.568920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.993046, 29.378778, 46.567383>,  <40.609177, 29.266361, 46.564823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.993046, 29.378778, 46.567383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075348, 0.235226, 0.969016,
		0.270835, -0.930420, 0.246917,
		0.959673, 0.281048, 0.006398,
		41.280949, 29.463091, 46.569302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260860, 30.075624, 46.580578>,  <40.609177, 29.266361, 46.564823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.260860, 30.075624, 46.580578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.399765, 30.388203, 46.787941>,  <40.483109, 30.575750, 46.912361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.399765, 30.388203, 46.787941>,  <40.260860, 30.075624, 46.580578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399765, 30.388203, 46.787941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927990, -0.206738, -0.309991,
		-0.135067, 0.588728, -0.796967,
		0.347264, 0.781447, 0.518410,
		40.503944, 30.622637, 46.943462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.662613, 30.552752, 46.134888>,  <40.260860, 30.075624, 46.580578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.662613, 30.552752, 46.134888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.784023, 30.577837, 46.515190>,  <40.856869, 30.592888, 46.743370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.784023, 30.577837, 46.515190>,  <40.662613, 30.552752, 46.134888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784023, 30.577837, 46.515190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951090, 0.040221, -0.306284,
		-0.057450, 0.997221, -0.047440,
		0.303524, 0.062715, 0.950758,
		40.875080, 30.596651, 46.800419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242256, 31.104832, 46.154972>,  <40.662613, 30.552752, 46.134888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242256, 31.104832, 46.154972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.255413, 30.826372, 46.441830>,  <41.263306, 30.659296, 46.613945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.255413, 30.826372, 46.441830>,  <41.242256, 31.104832, 46.154972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.255413, 30.826372, 46.441830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941068, -0.220091, -0.256811,
		0.336616, 0.683327, 0.647884,
		0.032892, -0.696149, 0.717143,
		41.265282, 30.617527, 46.656971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700027, 31.627520, 46.028130>,  <41.242256, 31.104832, 46.154972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700027, 31.627520, 46.028130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.720245, 31.914646, 45.750370>,  <40.732376, 32.086922, 45.583714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.720245, 31.914646, 45.750370>,  <40.700027, 31.627520, 46.028130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720245, 31.914646, 45.750370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941309, -0.266581, -0.207058,
		-0.333742, -0.643175, -0.689161,
		0.050543, 0.717817, -0.694395,
		40.735409, 32.129990, 45.542053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.958588, 31.282442, 45.493671>,  <40.700027, 31.627520, 46.028130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.958588, 31.282442, 45.493671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.006466, 31.672068, 45.416866>,  <41.035194, 31.905844, 45.370785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.006466, 31.672068, 45.416866>,  <40.958588, 31.282442, 45.493671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.006466, 31.672068, 45.416866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873762, -0.195182, -0.445471,
		-0.471395, -0.114451, -0.874464,
		0.119695, 0.974066, -0.192011,
		41.042374, 31.964287, 45.359264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854546, 31.608206, 44.835777>,  <40.958588, 31.282442, 45.493671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.854546, 31.608206, 44.835777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.153370, 31.755096, 45.057423>,  <41.332664, 31.843231, 45.190411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.153370, 31.755096, 45.057423>,  <40.854546, 31.608206, 44.835777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.153370, 31.755096, 45.057423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659890, -0.309040, -0.684864,
		-0.080257, 0.877291, -0.473201,
		0.747063, 0.367226, 0.554113,
		41.377487, 31.865265, 45.223656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596561, 32.161983, 44.353310>,  <40.854546, 31.608206, 44.835777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596561, 32.161983, 44.353310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.277012, 32.268650, 44.568974>,  <40.085281, 32.332649, 44.698372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.277012, 32.268650, 44.568974>,  <40.596561, 32.161983, 44.353310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277012, 32.268650, 44.568974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309795, -0.585917, 0.748818,
		0.515589, 0.765238, 0.385460,
		-0.798871, 0.266669, 0.539159,
		40.037350, 32.348652, 44.730721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146717, 32.097630, 43.737247>,  <40.596561, 32.161983, 44.353310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146717, 32.097630, 43.737247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.762337, 32.157391, 43.644070>,  <39.531708, 32.193245, 43.588165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.762337, 32.157391, 43.644070>,  <40.146717, 32.097630, 43.737247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762337, 32.157391, 43.644070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275818, 0.585491, -0.762315,
		0.022494, -0.796794, -0.603833,
		-0.960946, 0.149400, -0.232940,
		39.474052, 32.202209, 43.574188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949665, 31.938940, 43.058254>,  <40.146717, 32.097630, 43.737247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949665, 31.938940, 43.058254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.739117, 32.251076, 43.193314>,  <39.612789, 32.438358, 43.274349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.739117, 32.251076, 43.193314>,  <39.949665, 31.938940, 43.058254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739117, 32.251076, 43.193314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358367, 0.563728, -0.744167,
		-0.771042, -0.270708, -0.576378,
		-0.526372, 0.780339, 0.337645,
		39.581203, 32.485176, 43.294605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562881, 31.911489, 42.345615>,  <39.949665, 31.938940, 43.058254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562881, 31.911489, 42.345615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.776356, 32.176781, 42.555496>,  <39.904442, 32.335957, 42.681423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.776356, 32.176781, 42.555496>,  <39.562881, 31.911489, 42.345615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776356, 32.176781, 42.555496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320802, 0.415298, -0.851242,
		-0.782473, 0.622621, 0.008875,
		0.533687, 0.663227, 0.524698,
		39.936462, 32.375748, 42.712906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401890, 32.703030, 42.143032>,  <39.562881, 31.911489, 42.345615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401890, 32.703030, 42.143032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.772755, 32.648304, 42.282543>,  <39.995274, 32.615467, 42.366249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.772755, 32.648304, 42.282543>,  <39.401890, 32.703030, 42.143032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772755, 32.648304, 42.282543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373602, 0.407428, -0.833321,
		-0.028093, 0.902931, 0.428867,
		0.927164, -0.136815, 0.348782,
		40.050903, 32.607258, 42.387177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816792, 33.382370, 41.985596>,  <39.401890, 32.703030, 42.143032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816792, 33.382370, 41.985596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.021687, 33.039143, 41.970955>,  <40.144623, 32.833206, 41.962170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.021687, 33.039143, 41.970955>,  <39.816792, 33.382370, 41.985596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021687, 33.039143, 41.970955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402734, 0.277625, -0.872198,
		0.758564, 0.432031, 0.487781,
		0.512236, -0.858064, -0.036603,
		40.175358, 32.781723, 41.959972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.545696, 33.579983, 42.071659>,  <39.816792, 33.382370, 41.985596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.545696, 33.579983, 42.071659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.491714, 33.236458, 41.873981>,  <40.459324, 33.030342, 41.755375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.491714, 33.236458, 41.873981>,  <40.545696, 33.579983, 42.071659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491714, 33.236458, 41.873981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567649, 0.341783, -0.748973,
		0.812134, -0.381604, 0.441380,
		-0.134955, -0.858815, -0.494191,
		40.451229, 32.978813, 41.725723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139629, 33.188911, 41.887627>,  <40.545696, 33.579983, 42.071659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139629, 33.188911, 41.887627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.883625, 33.041283, 41.618057>,  <40.730022, 32.952705, 41.456314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.883625, 33.041283, 41.618057>,  <41.139629, 33.188911, 41.887627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883625, 33.041283, 41.618057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716682, 0.029502, -0.696776,
		0.277040, -0.928934, 0.245624,
		-0.640012, -0.369068, -0.673924,
		40.691620, 32.930561, 41.415878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463490, 32.613869, 41.490322>,  <41.139629, 33.188911, 41.887627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463490, 32.613869, 41.490322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.203407, 32.816914, 41.264206>,  <41.047356, 32.938740, 41.128536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.203407, 32.816914, 41.264206>,  <41.463490, 32.613869, 41.490322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.203407, 32.816914, 41.264206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701464, 0.115277, -0.703321,
		-0.291851, -0.853837, -0.431027,
		-0.650209, 0.507615, -0.565292,
		41.008343, 32.969196, 41.094620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.432991, 32.359947, 40.779198>,  <41.463490, 32.613869, 41.490322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.432991, 32.359947, 40.779198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.319756, 32.743229, 40.795685>,  <41.251816, 32.973198, 40.805576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.319756, 32.743229, 40.795685>,  <41.432991, 32.359947, 40.779198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.319756, 32.743229, 40.795685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782973, 0.255714, -0.567066,
		-0.553908, -0.128255, -0.822640,
		-0.283089, 0.958207, 0.041222,
		41.234829, 33.030689, 40.808052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.331928, 32.622135, 40.044792>,  <41.432991, 32.359947, 40.779198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.331928, 32.622135, 40.044792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.461502, 32.874771, 40.326546>,  <41.539246, 33.026352, 40.495598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.461502, 32.874771, 40.326546>,  <41.331928, 32.622135, 40.044792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461502, 32.874771, 40.326546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735211, 0.300526, -0.607576,
		-0.595427, 0.714684, -0.367005,
		0.323930, 0.631594, 0.704385,
		41.558681, 33.064251, 40.537861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.356285, 33.338379, 39.807945>,  <41.331928, 32.622135, 40.044792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.356285, 33.338379, 39.807945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.634659, 33.236092, 40.076359>,  <41.801682, 33.174721, 40.237408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.634659, 33.236092, 40.076359>,  <41.356285, 33.338379, 39.807945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.634659, 33.236092, 40.076359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715903, 0.320235, -0.620429,
		-0.056237, 0.912173, 0.405928,
		0.695931, -0.255714, 0.671037,
		41.843437, 33.159378, 40.277672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.887577, 33.893372, 39.829105>,  <41.356285, 33.338379, 39.807945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.887577, 33.893372, 39.829105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.029560, 33.533585, 39.931057>,  <42.114750, 33.317711, 39.992229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.029560, 33.533585, 39.931057>,  <41.887577, 33.893372, 39.829105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.029560, 33.533585, 39.931057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617011, 0.020571, -0.786685,
		0.702353, 0.436506, 0.562283,
		0.354960, -0.899466, 0.254881,
		42.136047, 33.263744, 40.007523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.529865, 33.633846, 39.789635>,  <41.887577, 33.893372, 39.829105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.529865, 33.633846, 39.789635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.438328, 33.269936, 39.651112>,  <42.383408, 33.051590, 39.567997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.438328, 33.269936, 39.651112>,  <42.529865, 33.633846, 39.789635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.438328, 33.269936, 39.651112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941050, -0.115712, -0.317860,
		0.249111, -0.398634, 0.882630,
		-0.228841, -0.909781, -0.346309,
		42.369675, 32.997002, 39.547218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.778797, 33.040825, 40.130951>,  <42.529865, 33.633846, 39.789635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.778797, 33.040825, 40.130951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.726467, 32.923878, 39.752026>,  <42.695068, 32.853710, 39.524670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.726467, 32.923878, 39.752026>,  <42.778797, 33.040825, 40.130951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.726467, 32.923878, 39.752026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942725, -0.332428, -0.027591,
		-0.306847, -0.896667, 0.319112,
		-0.130822, -0.292369, -0.947315,
		42.687222, 32.836166, 39.467831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.992298, 32.343246, 40.077175>,  <42.778797, 33.040825, 40.130951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.992298, 32.343246, 40.077175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.038784, 32.602882, 39.776463>,  <43.066673, 32.758663, 39.596035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.038784, 32.602882, 39.776463>,  <42.992298, 32.343246, 40.077175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.038784, 32.602882, 39.776463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992207, -0.110120, 0.058300,
		-0.044944, -0.752701, -0.656827,
		0.116212, 0.649088, -0.751784,
		43.073647, 32.797607, 39.550926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.357952, 32.078381, 39.536972>,  <42.992298, 32.343246, 40.077175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.357952, 32.078381, 39.536972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.389763, 32.476669, 39.555756>,  <43.408848, 32.715645, 39.567024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.389763, 32.476669, 39.555756>,  <43.357952, 32.078381, 39.536972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.389763, 32.476669, 39.555756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996168, -0.081103, 0.032748,
		0.036416, 0.044171, -0.998360,
		0.079523, 0.995727, 0.046956,
		43.413620, 32.775387, 39.569843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.797588, 32.330486, 38.958103>,  <43.357952, 32.078381, 39.536972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.797588, 32.330486, 38.958103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.811115, 32.583206, 39.267860>,  <43.819229, 32.734840, 39.453712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.811115, 32.583206, 39.267860>,  <43.797588, 32.330486, 38.958103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.811115, 32.583206, 39.267860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998534, 0.011422, -0.052918,
		-0.042279, 0.775044, -0.630491,
		0.033813, 0.631804, 0.774391,
		43.821259, 32.772747, 39.500179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.206894, 32.913212, 38.698433>,  <43.797588, 32.330486, 38.958103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.206894, 32.913212, 38.698433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.218250, 32.878456, 39.096760>,  <44.225063, 32.857605, 39.335754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.218250, 32.878456, 39.096760>,  <44.206894, 32.913212, 38.698433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.218250, 32.878456, 39.096760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993088, 0.115956, -0.018192,
		-0.113890, 0.989447, 0.089578,
		0.028387, -0.086887, 0.995814,
		44.226765, 32.852390, 39.395504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.866589, 33.134972, 38.747036>,  <44.206894, 32.913212, 38.698433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.866589, 33.134972, 38.747036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.735451, 32.981308, 39.092274>,  <44.656769, 32.889111, 39.299416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.735451, 32.981308, 39.092274>,  <44.866589, 33.134972, 38.747036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.735451, 32.981308, 39.092274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912855, -0.364130, 0.184676,
		0.243335, 0.848429, 0.470060,
		-0.327848, -0.384158, 0.863098,
		44.637096, 32.866062, 39.351204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.805912, 33.799004, 38.303211>,  <44.866589, 33.134972, 38.747036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.805912, 33.799004, 38.303211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.957760, 33.509521, 38.072685>,  <45.048870, 33.335831, 37.934368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.957760, 33.509521, 38.072685>,  <44.805912, 33.799004, 38.303211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.957760, 33.509521, 38.072685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848615, 0.520483, -0.094605,
		0.368427, -0.453154, 0.811735,
		0.379624, -0.723705, -0.576313,
		45.071648, 33.292412, 37.899792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.545437, 33.631012, 38.533810>,  <44.805912, 33.799004, 38.303211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.545437, 33.631012, 38.533810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.479939, 33.540653, 38.149693>,  <45.440639, 33.486439, 37.919224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.479939, 33.540653, 38.149693>,  <45.545437, 33.631012, 38.533810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.479939, 33.540653, 38.149693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804662, 0.532560, -0.262486,
		0.570707, -0.815690, 0.094567,
		-0.163745, -0.225897, -0.960291,
		45.430817, 33.472885, 37.861607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.209141, 33.420708, 38.216492>,  <45.545437, 33.631012, 38.533810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.209141, 33.420708, 38.216492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.960648, 33.569099, 37.940392>,  <45.811550, 33.658134, 37.774731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.960648, 33.569099, 37.940392>,  <46.209141, 33.420708, 38.216492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.960648, 33.569099, 37.940392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719972, 0.617961, -0.315855,
		0.309370, -0.693179, -0.650994,
		-0.621233, 0.370981, -0.690248,
		45.774277, 33.680393, 37.733318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.610489, 33.399410, 37.517315>,  <46.209141, 33.420708, 38.216492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.610489, 33.399410, 37.517315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.336826, 33.691097, 37.512039>,  <46.172626, 33.866108, 37.508873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.336826, 33.691097, 37.512039>,  <46.610489, 33.399410, 37.517315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.336826, 33.691097, 37.512039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721526, 0.674087, -0.158139,
		-0.106428, -0.117706, -0.987329,
		-0.684159, 0.729214, -0.013187,
		46.131580, 33.909863, 37.508083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.530876, 33.732002, 36.818909>,  <46.610489, 33.399410, 37.517315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.530876, 33.732002, 36.818909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.448879, 33.976063, 37.125034>,  <46.399681, 34.122498, 37.308708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.448879, 33.976063, 37.125034>,  <46.530876, 33.732002, 36.818909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.448879, 33.976063, 37.125034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920208, 0.386538, -0.061684,
		-0.333458, 0.691599, -0.640700,
		-0.204994, 0.610147, 0.765309,
		46.387383, 34.159107, 37.354626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.777550, 34.177032, 36.231754>,  <46.530876, 33.732002, 36.818909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.777550, 34.177032, 36.231754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.606758, 33.817940, 36.275158>,  <46.504284, 33.602486, 36.301201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.606758, 33.817940, 36.275158>,  <46.777550, 34.177032, 36.231754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.606758, 33.817940, 36.275158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890084, -0.438409, -0.124692,
		0.159510, 0.043340, 0.986244,
		-0.426975, -0.897730, 0.108507,
		46.478664, 33.548622, 36.307709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.495895, 34.467670, 35.604836>,  <46.777550, 34.177032, 36.231754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.495895, 34.467670, 35.604836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.716270, 34.788975, 35.695381>,  <46.848495, 34.981758, 35.749710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.716270, 34.788975, 35.695381>,  <46.495895, 34.467670, 35.604836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.716270, 34.788975, 35.695381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833508, -0.516095, -0.197255,
		-0.041622, 0.297352, -0.953860,
		0.550937, 0.803260, 0.226365,
		46.881550, 35.029953, 35.763290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.068993, 34.341015, 35.273327>,  <46.495895, 34.467670, 35.604836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.068993, 34.341015, 35.273327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.235748, 34.675087, 35.416813>,  <47.335800, 34.875530, 35.502907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.235748, 34.675087, 35.416813>,  <47.068993, 34.341015, 35.273327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.235748, 34.675087, 35.416813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907074, -0.356862, -0.223309,
		-0.058490, 0.418478, -0.906342,
		0.416889, 0.835180, 0.358717,
		47.360813, 34.925640, 35.524429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.530682, 34.676716, 34.703144>,  <47.068993, 34.341015, 35.273327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.530682, 34.676716, 34.703144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.670704, 34.769871, 35.066071>,  <47.754719, 34.825764, 35.283825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.670704, 34.769871, 35.066071>,  <47.530682, 34.676716, 34.703144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.670704, 34.769871, 35.066071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926160, -0.231139, -0.297997,
		0.140316, 0.944637, -0.296603,
		0.350056, 0.232888, 0.907317,
		47.775719, 34.839737, 35.338264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<31.218012, 33.126511, 56.530312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.544655, 33.342106, 56.612915>,  <31.740641, 33.471462, 56.662476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.544655, 33.342106, 56.612915>,  <31.218012, 33.126511, 56.530312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544655, 33.342106, 56.612915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565382, -0.674937, -0.474134,
		-0.116175, 0.503935, -0.855893,
		0.816607, 0.538989, 0.206505,
		31.789637, 33.503803, 56.674866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578001, 33.189838, 55.956161>,  <31.218012, 33.126511, 56.530312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578001, 33.189838, 55.956161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.870918, 33.294296, 56.207733>,  <32.046669, 33.356972, 56.358677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.870918, 33.294296, 56.207733>,  <31.578001, 33.189838, 55.956161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870918, 33.294296, 56.207733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657693, -0.510713, -0.553726,
		0.176599, 0.819131, -0.545744,
		0.732293, 0.261144, 0.628928,
		32.090607, 33.372639, 56.396412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101551, 33.592899, 55.532448>,  <31.578001, 33.189838, 55.956161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101551, 33.592899, 55.532448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.255451, 33.414425, 55.855656>,  <32.347790, 33.307343, 56.049580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.255451, 33.414425, 55.855656>,  <32.101551, 33.592899, 55.532448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255451, 33.414425, 55.855656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692258, -0.439547, -0.572344,
		0.610531, 0.779564, 0.139758,
		0.384749, -0.446182, 0.808016,
		32.370876, 33.280571, 56.098061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787273, 33.578896, 55.413067>,  <32.101551, 33.592899, 55.532448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787273, 33.578896, 55.413067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.807629, 33.300739, 55.699799>,  <32.819839, 33.133846, 55.871838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.807629, 33.300739, 55.699799>,  <32.787273, 33.578896, 55.413067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807629, 33.300739, 55.699799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736446, -0.458685, -0.497248,
		0.674580, 0.553207, 0.488778,
		0.050885, -0.695392, 0.716827,
		32.822895, 33.092121, 55.914848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464588, 33.494064, 55.561581>,  <32.787273, 33.578896, 55.413067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464588, 33.494064, 55.561581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.271156, 33.164913, 55.680927>,  <33.155098, 32.967422, 55.752537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.271156, 33.164913, 55.680927>,  <33.464588, 33.494064, 55.561581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271156, 33.164913, 55.680927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733830, -0.566948, -0.374252,
		0.477122, 0.037970, 0.878016,
		-0.483579, -0.822878, 0.298367,
		33.126083, 32.918049, 55.770439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971432, 33.052197, 55.638821>,  <33.464588, 33.494064, 55.561581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971432, 33.052197, 55.638821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.666504, 32.793793, 55.623154>,  <33.483547, 32.638752, 55.613754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.666504, 32.793793, 55.623154>,  <33.971432, 33.052197, 55.638821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666504, 32.793793, 55.623154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582121, -0.657969, -0.477715,
		0.282837, -0.386974, 0.877641,
		-0.762324, -0.646010, -0.039168,
		33.437805, 32.599991, 55.611404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300362, 32.381542, 55.670177>,  <33.971432, 33.052197, 55.638821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300362, 32.381542, 55.670177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.938126, 32.316292, 55.513565>,  <33.720783, 32.277142, 55.419598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.938126, 32.316292, 55.513565>,  <34.300362, 32.381542, 55.670177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938126, 32.316292, 55.513565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391503, -0.676629, -0.623618,
		-0.163190, -0.718027, 0.676613,
		-0.905590, -0.163128, -0.391529,
		33.666447, 32.267353, 55.396107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342632, 31.666311, 55.460785>,  <34.300362, 32.381542, 55.670177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342632, 31.666311, 55.460785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.046978, 31.838083, 55.253223>,  <33.869587, 31.941147, 55.128685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.046978, 31.838083, 55.253223>,  <34.342632, 31.666311, 55.460785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046978, 31.838083, 55.253223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241770, -0.549910, -0.799466,
		-0.628669, -0.716371, 0.302635,
		-0.739136, 0.429432, -0.518908,
		33.825237, 31.966913, 55.097549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071999, 31.154734, 55.056587>,  <34.342632, 31.666311, 55.460785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071999, 31.154734, 55.056587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.951683, 31.492262, 54.878826>,  <33.879494, 31.694778, 54.772167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.951683, 31.492262, 54.878826>,  <34.071999, 31.154734, 55.056587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951683, 31.492262, 54.878826> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357271, -0.332350, -0.872869,
		-0.884241, -0.421324, -0.201505,
		-0.300790, 0.843819, -0.444404,
		33.861446, 31.745407, 54.745506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595467, 30.893890, 54.419132>,  <34.071999, 31.154734, 55.056587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595467, 30.893890, 54.419132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.736401, 31.260674, 54.344250>,  <33.820961, 31.480743, 54.299320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.736401, 31.260674, 54.344250>,  <33.595467, 30.893890, 54.419132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736401, 31.260674, 54.344250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384769, -0.324273, -0.864176,
		-0.853119, 0.232452, -0.467071,
		0.352338, 0.916959, -0.187203,
		33.842102, 31.535761, 54.288090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536488, 31.045530, 53.683361>,  <33.595467, 30.893890, 54.419132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536488, 31.045530, 53.683361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.814087, 31.306561, 53.805023>,  <33.980644, 31.463179, 53.878021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.814087, 31.306561, 53.805023>,  <33.536488, 31.045530, 53.683361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814087, 31.306561, 53.805023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541808, -0.195154, -0.817532,
		-0.474145, 0.732160, -0.489008,
		0.693996, 0.652577, 0.304159,
		34.022285, 31.502333, 53.896271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694508, 31.393457, 53.128136>,  <33.536488, 31.045530, 53.683361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694508, 31.393457, 53.128136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.017193, 31.450409, 53.357548>,  <34.210804, 31.484581, 53.495193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.017193, 31.450409, 53.357548>,  <33.694508, 31.393457, 53.128136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017193, 31.450409, 53.357548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589443, -0.262873, -0.763842,
		0.042009, 0.954267, -0.295989,
		0.806717, 0.142380, 0.573529,
		34.259209, 31.493122, 53.529606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138248, 31.802536, 52.770473>,  <33.694508, 31.393457, 53.128136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138248, 31.802536, 52.770473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.390507, 31.653616, 53.042847>,  <34.541862, 31.564264, 53.206272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.390507, 31.653616, 53.042847>,  <34.138248, 31.802536, 52.770473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390507, 31.653616, 53.042847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683572, -0.148938, -0.714525,
		0.367436, 0.916084, 0.160567,
		0.630650, -0.372302, 0.680934,
		34.579700, 31.541925, 53.247128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743076, 32.031166, 52.366478>,  <34.138248, 31.802536, 52.770473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743076, 32.031166, 52.366478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.836929, 31.790775, 52.672096>,  <34.893242, 31.646540, 52.855469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.836929, 31.790775, 52.672096>,  <34.743076, 32.031166, 52.366478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836929, 31.790775, 52.672096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732573, -0.407328, -0.545363,
		0.638970, 0.687684, 0.344686,
		0.234637, -0.600978, 0.764049,
		34.907322, 31.610481, 52.901310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397827, 32.100384, 52.399574>,  <34.743076, 32.031166, 52.366478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397827, 32.100384, 52.399574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.310196, 31.741135, 52.552090>,  <35.257618, 31.525585, 52.643600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.310196, 31.741135, 52.552090>,  <35.397827, 32.100384, 52.399574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310196, 31.741135, 52.552090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597334, -0.432448, -0.675412,
		0.771489, 0.079786, 0.631220,
		-0.219081, -0.898122, 0.381287,
		35.244473, 31.471699, 52.666477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085350, 31.793434, 52.457794>,  <35.397827, 32.100384, 52.399574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085350, 31.793434, 52.457794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.804653, 31.508812, 52.471909>,  <35.636234, 31.338039, 52.480377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.804653, 31.508812, 52.471909>,  <36.085350, 31.793434, 52.457794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804653, 31.508812, 52.471909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499903, -0.527092, -0.687220,
		0.507594, -0.464612, 0.725592,
		-0.701744, -0.711554, 0.035288,
		35.594131, 31.295345, 52.482494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499771, 31.234600, 52.489799>,  <36.085350, 31.793434, 52.457794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499771, 31.234600, 52.489799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.136967, 31.100742, 52.387543>,  <35.919285, 31.020428, 52.326191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.136967, 31.100742, 52.387543>,  <36.499771, 31.234600, 52.489799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136967, 31.100742, 52.387543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403150, -0.514602, -0.756740,
		0.121688, -0.789429, 0.601660,
		-0.907007, -0.334645, -0.255637,
		35.864864, 31.000349, 52.310852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542892, 30.510927, 52.256443>,  <36.499771, 31.234600, 52.489799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542892, 30.510927, 52.256443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.211620, 30.655464, 52.085072>,  <36.012859, 30.742188, 51.982246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.211620, 30.655464, 52.085072>,  <36.542892, 30.510927, 52.256443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211620, 30.655464, 52.085072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251593, -0.443383, -0.860298,
		-0.500829, -0.820267, 0.276285,
		-0.828174, 0.361351, -0.428433,
		35.963165, 30.763868, 51.956543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141171, 29.848915, 52.030025>,  <36.542892, 30.510927, 52.256443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141171, 29.848915, 52.030025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.024536, 30.157379, 51.803650>,  <35.954556, 30.342457, 51.667824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.024536, 30.157379, 51.803650>,  <36.141171, 29.848915, 52.030025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024536, 30.157379, 51.803650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202723, -0.528391, -0.824443,
		-0.934816, -0.355126, -0.002260,
		-0.291587, 0.771161, -0.565940,
		35.937061, 30.388727, 51.633869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686859, 29.570576, 51.435272>,  <36.141171, 29.848915, 52.030025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686859, 29.570576, 51.435272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.814968, 29.934484, 51.329636>,  <35.891834, 30.152830, 51.266254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.814968, 29.934484, 51.329636>,  <35.686859, 29.570576, 51.435272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814968, 29.934484, 51.329636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296232, -0.360973, -0.884277,
		-0.899819, 0.204976, -0.385112,
		0.320271, 0.909771, -0.264090,
		35.911049, 30.207417, 51.250408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429878, 29.663824, 50.772160>,  <35.686859, 29.570576, 51.435272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429878, 29.663824, 50.772160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.743073, 29.908527, 50.817204>,  <35.930988, 30.055349, 50.844231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.743073, 29.908527, 50.817204>,  <35.429878, 29.663824, 50.772160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743073, 29.908527, 50.817204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354728, -0.290430, -0.888717,
		-0.510975, 0.735801, -0.444411,
		0.782990, 0.611757, 0.112607,
		35.977970, 30.092054, 50.850986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556461, 30.051798, 50.124260>,  <35.429878, 29.663824, 50.772160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556461, 30.051798, 50.124260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.876320, 30.014067, 50.361465>,  <36.068233, 29.991428, 50.503788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.876320, 30.014067, 50.361465>,  <35.556461, 30.051798, 50.124260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876320, 30.014067, 50.361465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534546, -0.338065, -0.774579,
		0.273540, 0.936384, -0.219911,
		0.799648, -0.094326, 0.593015,
		36.116215, 29.985769, 50.539371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782372, 29.903324, 50.218853>,  <35.556461, 30.051798, 50.124260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782372, 29.903324, 50.218853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.596996, 29.824139, 49.873360>,  <34.485771, 29.776627, 49.666065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.596996, 29.824139, 49.873360>,  <34.782372, 29.903324, 50.218853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596996, 29.824139, 49.873360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885565, 0.068706, 0.459406,
		-0.031603, 0.977798, -0.207151,
		-0.463439, -0.197965, -0.863733,
		34.457966, 29.764750, 49.614239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248512, 30.490564, 49.998215>,  <34.782372, 29.903324, 50.218853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248512, 30.490564, 49.998215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.137878, 30.135345, 49.851315>,  <34.071499, 29.922215, 49.763172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.137878, 30.135345, 49.851315>,  <34.248512, 30.490564, 49.998215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137878, 30.135345, 49.851315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862176, 0.060516, 0.502980,
		-0.424445, 0.455755, -0.782390,
		-0.276583, -0.888046, -0.367255,
		34.054905, 29.868931, 49.741138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593781, 30.601742, 49.768265>,  <34.248512, 30.490564, 49.998215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593781, 30.601742, 49.768265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.635826, 30.205492, 49.803177>,  <33.661053, 29.967743, 49.824123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.635826, 30.205492, 49.803177>,  <33.593781, 30.601742, 49.768265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635826, 30.205492, 49.803177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931349, -0.067292, 0.357855,
		-0.348626, -0.118901, -0.929689,
		0.105110, -0.990623, 0.087279,
		33.667358, 29.908304, 49.829361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949749, 30.353464, 49.465797>,  <33.593781, 30.601742, 49.768265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949749, 30.353464, 49.465797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.119576, 30.092325, 49.716728>,  <33.221470, 29.935642, 49.867287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.119576, 30.092325, 49.716728>,  <32.949749, 30.353464, 49.465797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119576, 30.092325, 49.716728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771438, 0.101853, 0.628100,
		-0.473949, -0.750610, -0.460388,
		0.424566, -0.652848, 0.627322,
		33.246944, 29.896471, 49.904926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418835, 29.997660, 49.729046>,  <32.949749, 30.353464, 49.465797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418835, 29.997660, 49.729046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.711205, 29.898657, 49.983444>,  <32.886627, 29.839256, 50.136082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.711205, 29.898657, 49.983444>,  <32.418835, 29.997660, 49.729046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711205, 29.898657, 49.983444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675342, -0.128074, 0.726299,
		-0.098312, -0.960383, -0.260767,
		0.730922, -0.247511, 0.635996,
		32.930481, 29.824406, 50.174244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200478, 29.367649, 50.162094>,  <32.418835, 29.997660, 49.729046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200478, 29.367649, 50.162094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.508091, 29.491711, 50.385662>,  <32.692657, 29.566147, 50.519802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.508091, 29.491711, 50.385662>,  <32.200478, 29.367649, 50.162094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508091, 29.491711, 50.385662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573069, -0.052815, 0.817803,
		0.283166, -0.949218, 0.137124,
		0.769031, 0.310155, 0.558923,
		32.738800, 29.584757, 50.553337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257168, 28.839302, 50.716419>,  <32.200478, 29.367649, 50.162094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.257168, 28.839302, 50.716419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.439674, 29.158855, 50.873188>,  <32.549179, 29.350588, 50.967251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.439674, 29.158855, 50.873188>,  <32.257168, 28.839302, 50.716419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439674, 29.158855, 50.873188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564020, -0.081024, 0.821777,
		0.688258, -0.596005, 0.413617,
		0.456270, 0.798882, 0.391924,
		32.576557, 29.398520, 50.990765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488426, 28.617151, 51.335735>,  <32.257168, 28.839302, 50.716419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488426, 28.617151, 51.335735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.428101, 29.011889, 51.359047>,  <32.391907, 29.248732, 51.373032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.428101, 29.011889, 51.359047>,  <32.488426, 28.617151, 51.335735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428101, 29.011889, 51.359047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459162, -0.122130, 0.879917,
		0.875458, 0.105943, 0.471540,
		-0.150811, 0.986844, 0.058275,
		32.382858, 29.307941, 51.376530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532970, 28.844612, 52.154106>,  <32.488426, 28.617151, 51.335735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532970, 28.844612, 52.154106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.388649, 29.161884, 51.957867>,  <32.302055, 29.352247, 51.840122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.388649, 29.161884, 51.957867>,  <32.532970, 28.844612, 52.154106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388649, 29.161884, 51.957867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392886, 0.347815, 0.851273,
		0.845851, 0.499888, 0.186138,
		-0.360799, 0.793181, -0.490599,
		32.280411, 29.399839, 51.810688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664932, 29.318901, 52.615559>,  <32.532970, 28.844612, 52.154106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664932, 29.318901, 52.615559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.385094, 29.464314, 52.369499>,  <32.217190, 29.551561, 52.221863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.385094, 29.464314, 52.369499>,  <32.664932, 29.318901, 52.615559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385094, 29.464314, 52.369499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535962, 0.302375, 0.788235,
		0.472553, 0.881144, -0.016702,
		-0.699598, 0.363532, -0.615148,
		32.175213, 29.573374, 52.184956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520683, 29.978706, 52.795906>,  <32.664932, 29.318901, 52.615559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520683, 29.978706, 52.795906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.186760, 29.867279, 52.605961>,  <31.986406, 29.800423, 52.491993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.186760, 29.867279, 52.605961>,  <32.520683, 29.978706, 52.795906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186760, 29.867279, 52.605961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550428, 0.439916, 0.709579,
		0.011233, 0.853740, -0.520578,
		-0.834807, -0.278570, -0.474864,
		31.936317, 29.783709, 52.463501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095619, 30.596018, 52.785637>,  <32.520683, 29.978706, 52.795906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095619, 30.596018, 52.785637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.849804, 30.288145, 52.716423>,  <31.702316, 30.103422, 52.674896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.849804, 30.288145, 52.716423>,  <32.095619, 30.596018, 52.785637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849804, 30.288145, 52.716423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609360, 0.323822, 0.723754,
		-0.501027, 0.550211, -0.668012,
		-0.614534, -0.769680, -0.173033,
		31.665443, 30.057241, 52.664513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.416697, 30.820385, 52.533150>,  <32.095619, 30.596018, 52.785637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.416697, 30.820385, 52.533150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.374310, 30.469732, 52.720886>,  <31.348877, 30.259340, 52.833530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.374310, 30.469732, 52.720886>,  <31.416697, 30.820385, 52.533150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374310, 30.469732, 52.720886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628536, 0.424803, 0.651525,
		-0.770528, -0.225959, -0.596011,
		-0.105969, -0.876633, 0.469346,
		31.342520, 30.206743, 52.861691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.705738, 30.769899, 52.655502>,  <31.416697, 30.820385, 52.533150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.705738, 30.769899, 52.655502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.875027, 30.535030, 52.931507>,  <30.976601, 30.394110, 53.097111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.875027, 30.535030, 52.931507>,  <30.705738, 30.769899, 52.655502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.875027, 30.535030, 52.931507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471446, 0.507633, 0.721143,
		-0.773706, -0.630506, -0.061977,
		0.423224, -0.587171, 0.690008,
		31.001993, 30.358879, 53.138508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.193480, 30.455679, 53.112766>,  <30.705738, 30.769899, 52.655502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.193480, 30.455679, 53.112766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.538033, 30.476883, 53.314838>,  <30.744764, 30.489605, 53.436081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.538033, 30.476883, 53.314838>,  <30.193480, 30.455679, 53.112766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.538033, 30.476883, 53.314838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432205, 0.598996, 0.674094,
		-0.266868, -0.798995, 0.538876,
		0.861383, 0.053011, 0.505183,
		30.796448, 30.492786, 53.466393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957670, 30.539661, 53.819050>,  <30.193480, 30.455679, 53.112766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957670, 30.539661, 53.819050> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.344872, 30.632940, 53.856113>,  <30.577192, 30.688908, 53.878353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.344872, 30.632940, 53.856113>,  <29.957670, 30.539661, 53.819050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344872, 30.632940, 53.856113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221191, 0.618589, 0.753937,
		0.118495, -0.750311, 0.650378,
		0.968005, 0.233196, 0.092662,
		30.635273, 30.702900, 53.883911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063992, 30.608871, 54.499054>,  <29.957670, 30.539661, 53.819050>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063992, 30.608871, 54.499054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.363724, 30.814455, 54.332035>,  <30.543564, 30.937805, 54.231823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.363724, 30.814455, 54.332035>,  <30.063992, 30.608871, 54.499054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.363724, 30.814455, 54.332035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181852, 0.766028, 0.616548,
		0.636737, -0.386066, 0.667473,
		0.749330, 0.513960, -0.417551,
		30.588524, 30.968643, 54.206768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.579926, 30.721413, 55.054855>,  <30.063992, 30.608871, 54.499054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.579926, 30.721413, 55.054855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.585863, 31.002716, 54.770546>,  <30.589426, 31.171499, 54.599960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.585863, 31.002716, 54.770546>,  <30.579926, 30.721413, 55.054855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585863, 31.002716, 54.770546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087218, 0.709057, 0.699736,
		0.996079, 0.051607, 0.071861,
		0.014842, 0.703260, -0.710778,
		30.590315, 31.213694, 54.557312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<30.895945, 31.374847, 55.344086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.758167, 31.551910, 55.012928>,  <30.675501, 31.658148, 54.814232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.758167, 31.551910, 55.012928>,  <30.895945, 31.374847, 55.344086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.758167, 31.551910, 55.012928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442083, 0.701487, 0.558999,
		0.828203, 0.558543, -0.045932,
		-0.344445, 0.442658, -0.827896,
		30.654833, 31.684708, 54.764561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997555, 32.192684, 55.386925>,  <30.895945, 31.374847, 55.344086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997555, 32.192684, 55.386925> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682793, 32.118420, 55.151531>,  <30.493935, 32.073860, 55.010296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682793, 32.118420, 55.151531>,  <30.997555, 32.192684, 55.386925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682793, 32.118420, 55.151531> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505989, 0.740004, 0.443135,
		0.353205, 0.646471, -0.676256,
		-0.786906, -0.185660, -0.588480,
		30.446720, 32.062721, 54.974987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.799810, 32.852833, 55.120750>,  <30.997555, 32.192684, 55.386925>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.799810, 32.852833, 55.120750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.488523, 32.602867, 55.095894>,  <30.301752, 32.452888, 55.080978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.488523, 32.602867, 55.095894>,  <30.799810, 32.852833, 55.120750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488523, 32.602867, 55.095894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607213, 0.723525, 0.328336,
		-0.160219, 0.293252, -0.942514,
		-0.778217, -0.624913, -0.062144,
		30.255058, 32.415394, 55.077251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.178169, 33.288036, 54.906837>,  <30.799810, 32.852833, 55.120750>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.178169, 33.288036, 54.906837> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.011875, 32.944267, 55.025871>,  <29.912098, 32.738007, 55.097290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.011875, 32.944267, 55.025871>,  <30.178169, 33.288036, 54.906837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.011875, 32.944267, 55.025871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744751, 0.509502, 0.430992,
		-0.522023, -0.042447, -0.851874,
		-0.415737, -0.859422, 0.297584,
		29.887154, 32.686440, 55.115147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472504, 33.270111, 54.625584>,  <30.178169, 33.288036, 54.906837>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472504, 33.270111, 54.625584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.514549, 33.024811, 54.938728>,  <29.539776, 32.877628, 55.126614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.514549, 33.024811, 54.938728>,  <29.472504, 33.270111, 54.625584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.514549, 33.024811, 54.938728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633659, 0.565414, 0.528000,
		-0.766438, -0.551566, -0.329162,
		0.105114, -0.613255, 0.782860,
		29.546083, 32.840836, 55.173588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.832788, 33.381184, 54.986301>,  <29.472504, 33.270111, 54.625584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.832788, 33.381184, 54.986301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.055746, 33.180584, 55.250969>,  <29.189522, 33.060223, 55.409771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.055746, 33.180584, 55.250969>,  <28.832788, 33.381184, 54.986301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.055746, 33.180584, 55.250969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576266, 0.340026, 0.743169,
		-0.597686, -0.795535, -0.099471,
		0.557395, -0.501504, 0.661668,
		29.222965, 33.030132, 55.449471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.431799, 32.973892, 55.436474>,  <28.832788, 33.381184, 54.986301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.431799, 32.973892, 55.436474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.765175, 33.024609, 55.651623>,  <28.965200, 33.055038, 55.780712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.765175, 33.024609, 55.651623>,  <28.431799, 32.973892, 55.436474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.765175, 33.024609, 55.651623> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550907, 0.267044, 0.790689,
		-0.043382, -0.955307, 0.292415,
		0.833438, 0.126792, 0.537870,
		29.015207, 33.062645, 55.812984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.219625, 32.790718, 56.087135>,  <28.431799, 32.973892, 55.436474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.219625, 32.790718, 56.087135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555992, 32.998383, 56.148232>,  <28.757812, 33.122982, 56.184887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555992, 32.998383, 56.148232>,  <28.219625, 32.790718, 56.087135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.555992, 32.998383, 56.148232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355590, 0.317331, 0.879123,
		0.407944, -0.793578, 0.451459,
		0.840915, 0.519167, 0.152735,
		28.808268, 33.154133, 56.194054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.314148, 32.680485, 56.752640>,  <28.219625, 32.790718, 56.087135>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.314148, 32.680485, 56.752640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.531067, 33.005013, 56.665295>,  <28.661219, 33.199730, 56.612888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.531067, 33.005013, 56.665295>,  <28.314148, 32.680485, 56.752640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.531067, 33.005013, 56.665295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263863, 0.411200, 0.872520,
		0.797679, -0.415547, 0.437068,
		0.542296, 0.811317, -0.218359,
		28.693756, 33.248409, 56.599789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.754868, 32.834591, 57.244267>,  <28.314148, 32.680485, 56.752640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.754868, 32.834591, 57.244267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.640112, 33.182205, 57.083038>,  <28.571259, 33.390774, 56.986301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.640112, 33.182205, 57.083038>,  <28.754868, 32.834591, 57.244267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.640112, 33.182205, 57.083038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258593, 0.334886, 0.906080,
		0.922402, 0.364174, 0.128653,
		-0.286887, 0.869039, -0.403072,
		28.554047, 33.442917, 56.962116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888992, 33.278023, 57.798378>,  <28.754868, 32.834591, 57.244267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.888992, 33.278023, 57.798378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.734331, 33.528049, 57.527145>,  <28.641535, 33.678066, 57.364407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.734331, 33.528049, 57.527145>,  <28.888992, 33.278023, 57.798378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.734331, 33.528049, 57.527145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414425, 0.539078, 0.733244,
		0.823864, 0.564525, 0.050606,
		-0.386653, 0.625065, -0.678080,
		28.618336, 33.715569, 57.323723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.056023, 33.991161, 58.023720>,  <28.888992, 33.278023, 57.798378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.056023, 33.991161, 58.023720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.734272, 34.003773, 57.786407>,  <28.541222, 34.011337, 57.644020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.734272, 34.003773, 57.786407>,  <29.056023, 33.991161, 58.023720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.734272, 34.003773, 57.786407> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451337, 0.616964, 0.644710,
		0.386360, 0.786360, -0.482042,
		-0.804376, 0.031526, -0.593283,
		28.492960, 34.013229, 57.608421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.714567, 34.525673, 58.237122>,  <29.056023, 33.991161, 58.023720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.714567, 34.525673, 58.237122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.425961, 34.368885, 58.008816>,  <28.252796, 34.274815, 57.871834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.425961, 34.368885, 58.008816>,  <28.714567, 34.525673, 58.237122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.425961, 34.368885, 58.008816> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674931, 0.582128, 0.453426,
		0.154530, 0.712383, -0.684567,
		-0.721518, -0.391967, -0.570765,
		28.209505, 34.251293, 57.837585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.251143, 35.091579, 58.017220>,  <28.714567, 34.525673, 58.237122>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.251143, 35.091579, 58.017220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.016989, 34.767883, 57.997402>,  <27.876495, 34.573666, 57.985512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.016989, 34.767883, 57.997402>,  <28.251143, 35.091579, 58.017220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.016989, 34.767883, 57.997402> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765323, 0.531382, 0.363199,
		-0.267587, 0.250531, -0.930393,
		-0.585387, -0.809239, -0.049546,
		27.841373, 34.525112, 57.982540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.625603, 35.151344, 57.439987>,  <28.251143, 35.091579, 58.017220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.625603, 35.151344, 57.439987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.497816, 34.881393, 57.706066>,  <27.421144, 34.719425, 57.865711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.497816, 34.881393, 57.706066>,  <27.625603, 35.151344, 57.439987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.497816, 34.881393, 57.706066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869512, 0.487821, 0.077327,
		-0.376682, -0.553692, -0.742655,
		-0.319467, -0.674875, 0.665195,
		27.401976, 34.678932, 57.905624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.884342, 35.231049, 57.292049>,  <27.625603, 35.151344, 57.439987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.884342, 35.231049, 57.292049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.903574, 34.983150, 57.605381>,  <26.915113, 34.834412, 57.793381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.903574, 34.983150, 57.605381>,  <26.884342, 35.231049, 57.292049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.903574, 34.983150, 57.605381> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956322, 0.197820, 0.215212,
		-0.288335, -0.759458, -0.583169,
		0.048082, -0.619750, 0.783325,
		26.917999, 34.797226, 57.840378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.217352, 34.845142, 57.347267>,  <26.884342, 35.231049, 57.292049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.217352, 34.845142, 57.347267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.374489, 34.839443, 57.715065>,  <26.468771, 34.836025, 57.935745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.374489, 34.839443, 57.715065>,  <26.217352, 34.845142, 57.347267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.374489, 34.839443, 57.715065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883976, 0.269776, 0.381848,
		-0.253496, -0.962818, 0.093389,
		0.392844, -0.014244, 0.919495,
		26.492342, 34.835171, 57.990913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.789351, 34.461819, 57.803055>,  <26.217352, 34.845142, 57.347267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.789351, 34.461819, 57.803055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.006643, 34.742004, 57.988205>,  <26.137020, 34.910114, 58.099297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.006643, 34.742004, 57.988205>,  <25.789351, 34.461819, 57.803055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.006643, 34.742004, 57.988205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836165, 0.401687, 0.373464,
		0.075665, -0.589918, 0.803910,
		0.543233, 0.700460, 0.462875,
		26.169613, 34.952141, 58.127068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.278229, 34.718193, 58.168316>,  <25.789351, 34.461819, 57.803055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.278229, 34.718193, 58.168316> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.551126, 34.996849, 58.257072>,  <25.714865, 35.164043, 58.310326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.551126, 34.996849, 58.257072>,  <25.278229, 34.718193, 58.168316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.551126, 34.996849, 58.257072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705585, 0.547844, 0.449463,
		0.191549, -0.463209, 0.865301,
		0.682246, 0.696638, 0.221894,
		25.755800, 35.205841, 58.323639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.217310, 34.961735, 58.939259>,  <25.278229, 34.718193, 58.168316>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.217310, 34.961735, 58.939259> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.423771, 35.261944, 58.774185>,  <25.547647, 35.442070, 58.675140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.423771, 35.261944, 58.774185>,  <25.217310, 34.961735, 58.939259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.423771, 35.261944, 58.774185> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723602, 0.639894, 0.258717,
		0.458245, 0.165079, 0.873362,
		0.516151, 0.750522, -0.412680,
		25.578615, 35.487099, 58.650383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.206640, 35.452591, 59.400082>,  <25.217310, 34.961735, 58.939259>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.206640, 35.452591, 59.400082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.262295, 35.637779, 59.049927>,  <25.295687, 35.748890, 58.839832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.262295, 35.637779, 59.049927>,  <25.206640, 35.452591, 59.400082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.262295, 35.637779, 59.049927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557183, 0.767382, 0.317288,
		0.818650, 0.443606, 0.364727,
		0.139134, 0.462967, -0.875387,
		25.304035, 35.776669, 58.787312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.288174, 36.110546, 59.568581>,  <25.206640, 35.452591, 59.400082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.288174, 36.110546, 59.568581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.210135, 36.142387, 59.177563>,  <25.163311, 36.161491, 58.942951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.210135, 36.142387, 59.177563>,  <25.288174, 36.110546, 59.568581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.210135, 36.142387, 59.177563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445240, 0.880893, 0.160592,
		0.873899, 0.466574, -0.136416,
		-0.195096, 0.079603, -0.977548,
		25.151606, 36.166267, 58.884296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.514799, 36.828011, 59.217384>,  <25.288174, 36.110546, 59.568581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.514799, 36.828011, 59.217384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.195656, 36.647358, 59.057659>,  <25.004169, 36.538967, 58.961823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.195656, 36.647358, 59.057659>,  <25.514799, 36.828011, 59.217384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.195656, 36.647358, 59.057659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540642, 0.829091, 0.142525,
		0.266698, 0.329600, -0.905669,
		-0.797859, -0.451632, -0.399313,
		24.956299, 36.511868, 58.937866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.621002, 37.472775, 59.612774>,  <25.514799, 36.828011, 59.217384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.621002, 37.472775, 59.612774> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.295305, 37.566334, 59.825302>,  <25.099886, 37.622467, 59.952820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.295305, 37.566334, 59.825302>,  <25.621002, 37.472775, 59.612774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.295305, 37.566334, 59.825302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574723, 0.195742, 0.794593,
		0.081849, 0.952354, -0.293807,
		-0.814244, 0.233895, 0.531319,
		25.051031, 37.636501, 59.984699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.994841, 37.613358, 58.918072>,  <25.621002, 37.472775, 59.612774>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.994841, 37.613358, 58.918072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.102602, 37.846184, 59.224957>,  <26.167259, 37.985882, 59.409088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.102602, 37.846184, 59.224957>,  <25.994841, 37.613358, 58.918072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.102602, 37.846184, 59.224957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723360, 0.403616, -0.560219,
		-0.635746, 0.705896, -0.312310,
		0.269403, 0.582070, 0.767214,
		26.183422, 38.020805, 59.455120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.204952, 38.294933, 58.564987>,  <25.994841, 37.613358, 58.918072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.204952, 38.294933, 58.564987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.381760, 38.240253, 58.919598>,  <26.487844, 38.207447, 59.132366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.381760, 38.240253, 58.919598>,  <26.204952, 38.294933, 58.564987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.381760, 38.240253, 58.919598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894220, -0.010697, -0.447500,
		0.070654, 0.990555, 0.117508,
		0.442016, -0.136696, 0.886530,
		26.514364, 38.199245, 59.185558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.742489, 38.549942, 58.438698>,  <26.204952, 38.294933, 58.564987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.742489, 38.549942, 58.438698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.833672, 38.329029, 58.759453>,  <26.888382, 38.196484, 58.951904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.833672, 38.329029, 58.759453>,  <26.742489, 38.549942, 58.438698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.833672, 38.329029, 58.759453> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856325, -0.278248, -0.435069,
		0.463403, 0.785853, 0.409503,
		0.227957, -0.552280, 0.801887,
		26.902060, 38.163345, 59.000019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.429550, 38.659340, 58.319710>,  <26.742489, 38.549942, 58.438698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.429550, 38.659340, 58.319710> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.401144, 38.357597, 58.580757>,  <27.384100, 38.176552, 58.737385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.401144, 38.357597, 58.580757>,  <27.429550, 38.659340, 58.319710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.401144, 38.357597, 58.580757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882019, -0.353040, -0.312097,
		0.465831, 0.553455, 0.690427,
		-0.071016, -0.754354, 0.652615,
		27.379839, 38.131290, 58.776543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.079578, 38.654728, 58.541149>,  <27.429550, 38.659340, 58.319710>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.079578, 38.654728, 58.541149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.923008, 38.297424, 58.629570>,  <27.829065, 38.083042, 58.682621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.923008, 38.297424, 58.629570>,  <28.079578, 38.654728, 58.541149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.923008, 38.297424, 58.629570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880180, -0.433518, -0.193251,
		0.268454, 0.118921, 0.955924,
		-0.391428, -0.893264, 0.221052,
		27.805580, 38.029446, 58.695885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.503786, 38.326237, 59.082794>,  <28.079578, 38.654728, 58.541149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.503786, 38.326237, 59.082794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.313993, 38.054855, 58.858452>,  <28.200117, 37.892025, 58.723846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.313993, 38.054855, 58.858452>,  <28.503786, 38.326237, 59.082794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.313993, 38.054855, 58.858452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878683, -0.326866, -0.347957,
		0.052748, -0.657916, 0.751242,
		-0.474482, -0.678458, -0.560858,
		28.171648, 37.851318, 58.690193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.859715, 37.664776, 59.249542>,  <28.503786, 38.326237, 59.082794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.859715, 37.664776, 59.249542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.675060, 37.584736, 58.903858>,  <28.564268, 37.536713, 58.696449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.675060, 37.584736, 58.903858>,  <28.859715, 37.664776, 59.249542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.675060, 37.584736, 58.903858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837874, -0.418285, -0.350719,
		-0.291306, -0.886001, 0.360754,
		-0.461635, -0.200100, -0.864206,
		28.536570, 37.524704, 58.644596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.029463, 37.003273, 59.182117>,  <28.859715, 37.664776, 59.249542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.029463, 37.003273, 59.182117> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925182, 37.125622, 58.815842>,  <28.862614, 37.199032, 58.596077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925182, 37.125622, 58.815842>,  <29.029463, 37.003273, 59.182117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.925182, 37.125622, 58.815842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713642, -0.577731, -0.396159,
		-0.650192, -0.756751, -0.067664,
		-0.260702, 0.305868, -0.915685,
		28.846972, 37.217381, 58.541138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.920828, 36.377296, 58.755844>,  <29.029463, 37.003273, 59.182117>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.920828, 36.377296, 58.755844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.023087, 36.677563, 58.512157>,  <29.084442, 36.857723, 58.365944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.023087, 36.677563, 58.512157>,  <28.920828, 36.377296, 58.755844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.023087, 36.677563, 58.512157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574181, -0.624872, -0.529009,
		-0.777792, -0.214561, -0.590764,
		0.255647, 0.750665, -0.609218,
		29.099781, 36.902763, 58.329391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.746931, 36.122074, 58.047485>,  <28.920828, 36.377296, 58.755844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.746931, 36.122074, 58.047485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.006416, 36.420498, 57.987392>,  <29.162107, 36.599552, 57.951336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.006416, 36.420498, 57.987392>,  <28.746931, 36.122074, 58.047485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.006416, 36.420498, 57.987392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533210, -0.586425, -0.609748,
		-0.543009, 0.315445, -0.778226,
		0.648713, 0.746056, -0.150236,
		29.201031, 36.644314, 57.942322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.857355, 36.067432, 57.344151>,  <28.746931, 36.122074, 58.047485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.857355, 36.067432, 57.344151> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.162661, 36.280956, 57.489742>,  <29.345844, 36.409069, 57.577095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.162661, 36.280956, 57.489742>,  <28.857355, 36.067432, 57.344151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.162661, 36.280956, 57.489742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618773, -0.441888, -0.649504,
		-0.185874, 0.720961, -0.667583,
		0.763263, 0.533808, 0.363976,
		29.391640, 36.441097, 57.598934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.322002, 36.207977, 56.692730>,  <28.857355, 36.067432, 57.344151>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.322002, 36.207977, 56.692730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545879, 36.274021, 57.017563>,  <29.680206, 36.313648, 57.212463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545879, 36.274021, 57.017563>,  <29.322002, 36.207977, 56.692730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.545879, 36.274021, 57.017563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725815, -0.570577, -0.384232,
		0.399918, 0.804476, -0.439185,
		0.559694, 0.165106, 0.812085,
		29.713787, 36.323555, 57.261189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.992502, 36.188416, 56.378277>,  <29.322002, 36.207977, 56.692730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.992502, 36.188416, 56.378277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020224, 36.131721, 56.773266>,  <30.036858, 36.097706, 57.010262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020224, 36.131721, 56.773266>,  <29.992502, 36.188416, 56.378277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020224, 36.131721, 56.773266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808612, -0.571733, -0.138813,
		0.584247, 0.808105, 0.074984,
		0.069305, -0.141734, 0.987476,
		30.041016, 36.089203, 57.069508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696758, 36.344860, 56.568726>,  <29.992502, 36.188416, 56.378277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696758, 36.344860, 56.568726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542271, 36.101192, 56.845783>,  <30.449577, 35.954994, 57.012016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542271, 36.101192, 56.845783>,  <30.696758, 36.344860, 56.568726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.542271, 36.101192, 56.845783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743087, -0.650364, -0.157633,
		0.546494, 0.453812, 0.703846,
		-0.386220, -0.609165, 0.692641,
		30.426405, 35.918442, 57.053577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240868, 36.069077, 56.895668>,  <30.696758, 36.344860, 56.568726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240868, 36.069077, 56.895668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953545, 35.813274, 57.005260>,  <30.781151, 35.659794, 57.071014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953545, 35.813274, 57.005260>,  <31.240868, 36.069077, 56.895668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.953545, 35.813274, 57.005260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643040, -0.760594, -0.089424,
		0.265576, 0.111948, 0.957568,
		-0.718310, -0.639504, 0.273983,
		30.738052, 35.621422, 57.087456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656544, 35.618515, 57.247028>,  <31.240868, 36.069077, 56.895668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.656544, 35.618515, 57.247028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302662, 35.438602, 57.198048>,  <31.090332, 35.330654, 57.168659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302662, 35.438602, 57.198048>,  <31.656544, 35.618515, 57.247028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.302662, 35.438602, 57.198048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438696, -0.892179, 0.107531,
		-0.157614, 0.041414, 0.986632,
		-0.884706, -0.449780, -0.122452,
		31.037251, 35.303669, 57.161312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683254, 35.229538, 57.826008>,  <31.656544, 35.618515, 57.247028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683254, 35.229538, 57.826008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455091, 35.075096, 57.536026>,  <31.318193, 34.982433, 57.362038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455091, 35.075096, 57.536026>,  <31.683254, 35.229538, 57.826008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.455091, 35.075096, 57.536026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636754, -0.765392, -0.093373,
		-0.518823, -0.514879, 0.682438,
		-0.570409, -0.386101, -0.724955,
		31.283970, 34.959267, 57.318539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646702, 34.592518, 58.003277>,  <31.683254, 35.229538, 57.826008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646702, 34.592518, 58.003277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493950, 34.577587, 57.633892>,  <31.402298, 34.568630, 57.412262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493950, 34.577587, 57.633892>,  <31.646702, 34.592518, 58.003277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493950, 34.577587, 57.633892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421000, -0.896523, -0.137861,
		-0.822755, -0.441422, 0.358080,
		-0.381881, -0.037326, -0.923457,
		31.379385, 34.566391, 57.356853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.569365, 33.875145, 57.940544>,  <31.646702, 34.592518, 58.003277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.569365, 33.875145, 57.940544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580326, 34.076801, 57.595268>,  <31.586903, 34.197796, 57.388103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580326, 34.076801, 57.595268>,  <31.569365, 33.875145, 57.940544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580326, 34.076801, 57.595268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544899, -0.731475, -0.409916,
		-0.838054, -0.459115, -0.294751,
		0.027405, 0.504141, -0.863186,
		31.588547, 34.228043, 57.336311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.231874, 33.417969, 57.427105>,  <31.569365, 33.875145, 57.940544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.231874, 33.417969, 57.427105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487198, 33.654015, 57.229389>,  <31.640392, 33.795643, 57.110760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487198, 33.654015, 57.229389>,  <31.231874, 33.417969, 57.427105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487198, 33.654015, 57.229389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514113, -0.804724, -0.296829,
		-0.572928, -0.064650, -0.817052,
		0.638311, 0.590119, -0.494287,
		31.678692, 33.831051, 57.081104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<46.813389, 36.462299, 52.387493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.067543, 36.193512, 52.235313>,  <47.220036, 36.032242, 52.144005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.067543, 36.193512, 52.235313>,  <46.813389, 36.462299, 52.387493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.067543, 36.193512, 52.235313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770522, -0.519324, -0.369592,
		0.050775, 0.527980, -0.847737,
		0.635388, -0.671966, -0.380452,
		47.258160, 35.991920, 52.121178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.636444, 36.337852, 51.635292>,  <46.813389, 36.462299, 52.387493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.636444, 36.337852, 51.635292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.842327, 36.020737, 51.765865>,  <46.965858, 35.830467, 51.844208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.842327, 36.020737, 51.765865>,  <46.636444, 36.337852, 51.635292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.842327, 36.020737, 51.765865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723865, -0.605867, -0.330066,
		0.459448, -0.066404, -0.885719,
		0.514710, -0.792790, 0.326432,
		46.996738, 35.782898, 51.863796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.718204, 35.884819, 51.004177>,  <46.636444, 36.337852, 51.635292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.718204, 35.884819, 51.004177> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.751152, 35.676960, 51.344337>,  <46.770920, 35.552246, 51.548435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.751152, 35.676960, 51.344337>,  <46.718204, 35.884819, 51.004177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.751152, 35.676960, 51.344337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766809, -0.578083, -0.278970,
		0.636568, -0.629116, -0.446088,
		0.082371, -0.519648, 0.850400,
		46.775864, 35.521065, 51.599457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.795170, 35.193886, 50.791561>,  <46.718204, 35.884819, 51.004177>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.795170, 35.193886, 50.791561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.671726, 35.156570, 51.170200>,  <46.597660, 35.134182, 51.397385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.671726, 35.156570, 51.170200>,  <46.795170, 35.193886, 50.791561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.671726, 35.156570, 51.170200> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615538, -0.739122, -0.273518,
		0.725170, -0.667081, 0.170682,
		-0.308614, -0.093286, 0.946602,
		46.579144, 35.128586, 51.454182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.720127, 34.425400, 50.927406>,  <46.795170, 35.193886, 50.791561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.720127, 34.425400, 50.927406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.483437, 34.621769, 51.183170>,  <46.341423, 34.739590, 51.336628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.483437, 34.621769, 51.183170>,  <46.720127, 34.425400, 50.927406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.483437, 34.621769, 51.183170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754597, -0.616380, -0.225076,
		0.283626, -0.615684, 0.735180,
		-0.591726, 0.490927, 0.639415,
		46.305920, 34.769047, 51.374996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.328602, 33.897736, 51.230541>,  <46.720127, 34.425400, 50.927406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.328602, 33.897736, 51.230541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.128578, 34.228973, 51.331898>,  <46.008564, 34.427715, 51.392712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.128578, 34.228973, 51.331898>,  <46.328602, 33.897736, 51.230541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.128578, 34.228973, 51.331898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858545, -0.512350, -0.019925,
		0.113324, -0.227509, 0.967159,
		-0.500058, 0.828092, 0.253388,
		45.978561, 34.477402, 51.407913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.817802, 33.709988, 51.707352>,  <46.328602, 33.897736, 51.230541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.817802, 33.709988, 51.707352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.664165, 34.062447, 51.597042>,  <45.571983, 34.273922, 51.530857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.664165, 34.062447, 51.597042>,  <45.817802, 33.709988, 51.707352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.664165, 34.062447, 51.597042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913012, -0.406930, -0.028584,
		-0.137409, 0.240808, 0.960797,
		-0.384094, 0.881147, -0.275776,
		45.548939, 34.326790, 51.514309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.136814, 33.725201, 51.994629>,  <45.817802, 33.709988, 51.707352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.136814, 33.725201, 51.994629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.143959, 33.992607, 51.697239>,  <45.148247, 34.153053, 51.518803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.143959, 33.992607, 51.697239>,  <45.136814, 33.725201, 51.994629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.143959, 33.992607, 51.697239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971711, -0.163533, -0.170396,
		-0.235496, 0.725492, 0.646686,
		0.017867, 0.668520, -0.743479,
		45.149319, 34.193165, 51.474194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.516556, 33.937645, 52.024124>,  <45.136814, 33.725201, 51.994629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.516556, 33.937645, 52.024124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.622337, 34.080414, 51.665756>,  <44.685806, 34.166077, 51.450737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.622337, 34.080414, 51.665756>,  <44.516556, 33.937645, 52.024124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.622337, 34.080414, 51.665756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932595, -0.141958, -0.331833,
		-0.245623, 0.923283, 0.295325,
		0.264452, 0.356925, -0.895918,
		44.701672, 34.187492, 51.396980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.008099, 34.480953, 51.805614>,  <44.516556, 33.937645, 52.024124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.008099, 34.480953, 51.805614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.180473, 34.340462, 51.473125>,  <44.283897, 34.256168, 51.273632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.180473, 34.340462, 51.473125>,  <44.008099, 34.480953, 51.805614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.180473, 34.340462, 51.473125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899577, -0.094642, -0.426384,
		0.071090, 0.931494, -0.356742,
		0.430937, -0.351229, -0.831223,
		44.309753, 34.235092, 51.223759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.742439, 34.981426, 51.264130>,  <44.008099, 34.480953, 51.805614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.742439, 34.981426, 51.264130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.871189, 34.638073, 51.104343>,  <43.948437, 34.432060, 51.008472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.871189, 34.638073, 51.104343>,  <43.742439, 34.981426, 51.264130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.871189, 34.638073, 51.104343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857411, -0.085327, -0.507509,
		0.401553, 0.505861, -0.763453,
		0.321872, -0.858384, -0.399468,
		43.967751, 34.380558, 50.984505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.540119, 34.928104, 50.589657>,  <43.742439, 34.981426, 51.264130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.540119, 34.928104, 50.589657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.607449, 34.543137, 50.674908>,  <43.647846, 34.312157, 50.726059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.607449, 34.543137, 50.674908>,  <43.540119, 34.928104, 50.589657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.607449, 34.543137, 50.674908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918470, -0.231630, -0.320563,
		0.357882, -0.141793, -0.922939,
		0.168327, -0.962415, 0.213128,
		43.657948, 34.254414, 50.738846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.383541, 34.562344, 49.967659>,  <43.540119, 34.928104, 50.589657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.383541, 34.562344, 49.967659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.363689, 34.314266, 50.280807>,  <43.351780, 34.165421, 50.468697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.363689, 34.314266, 50.280807>,  <43.383541, 34.562344, 49.967659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.363689, 34.314266, 50.280807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962101, -0.180752, -0.204183,
		0.268140, -0.763337, -0.587722,
		-0.049628, -0.620197, 0.782874,
		43.348801, 34.128208, 50.515671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.062309, 33.937077, 49.783234>,  <43.383541, 34.562344, 49.967659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.062309, 33.937077, 49.783234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.019119, 33.907349, 50.179783>,  <42.993206, 33.889511, 50.417713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.019119, 33.907349, 50.179783>,  <43.062309, 33.937077, 49.783234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.019119, 33.907349, 50.179783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948141, -0.292169, -0.125166,
		0.298951, -0.953475, -0.038920,
		-0.107971, -0.074320, 0.991372,
		42.986729, 33.885052, 50.477196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.810501, 33.358391, 49.894352>,  <43.062309, 33.937077, 49.783234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.810501, 33.358391, 49.894352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.712101, 33.530521, 50.241753>,  <42.653061, 33.633801, 50.450195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.712101, 33.530521, 50.241753>,  <42.810501, 33.358391, 49.894352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.712101, 33.530521, 50.241753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872664, -0.488294, -0.005243,
		0.421830, -0.759203, 0.495651,
		-0.246004, 0.430325, 0.868506,
		42.638298, 33.659618, 50.502304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.360527, 32.774799, 50.088593>,  <42.810501, 33.358391, 49.894352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.360527, 32.774799, 50.088593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.289307, 33.087368, 50.327816>,  <42.246574, 33.274910, 50.471352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.289307, 33.087368, 50.327816>,  <42.360527, 32.774799, 50.088593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.289307, 33.087368, 50.327816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934974, -0.323835, 0.144758,
		0.306791, -0.533399, 0.788267,
		-0.178055, 0.781420, 0.598063,
		42.235889, 33.321793, 50.507236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.024902, 32.569557, 50.738773>,  <42.360527, 32.774799, 50.088593>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.024902, 32.569557, 50.738773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.948055, 32.962105, 50.739731>,  <41.901947, 33.197632, 50.740307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.948055, 32.962105, 50.739731>,  <42.024902, 32.569557, 50.738773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.948055, 32.962105, 50.739731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969224, -0.190121, 0.156397,
		0.153938, 0.027725, 0.987692,
		-0.192117, 0.981369, 0.002395,
		41.890419, 33.256516, 50.740448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.695415, 32.809715, 51.401585>,  <42.024902, 32.569557, 50.738773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.695415, 32.809715, 51.401585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.578743, 33.040569, 51.096470>,  <41.508739, 33.179081, 50.913403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.578743, 33.040569, 51.096470>,  <41.695415, 32.809715, 51.401585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.578743, 33.040569, 51.096470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956504, -0.179876, 0.229662,
		-0.004662, 0.796595, 0.604496,
		-0.291681, 0.577132, -0.762784,
		41.491238, 33.213711, 50.867634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970844, 32.899830, 51.621578>,  <41.695415, 32.809715, 51.401585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.970844, 32.899830, 51.621578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.996311, 33.037014, 51.246700>,  <41.011589, 33.119324, 51.021774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.996311, 33.037014, 51.246700>,  <40.970844, 32.899830, 51.621578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.996311, 33.037014, 51.246700> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938894, -0.297728, -0.172731,
		-0.338267, 0.890920, 0.303047,
		0.063664, 0.342958, -0.937191,
		41.015411, 33.139900, 50.965542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298679, 33.248085, 51.489944>,  <40.970844, 32.899830, 51.621578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298679, 33.248085, 51.489944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.470234, 33.159557, 51.139614>,  <40.573166, 33.106441, 50.929417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.470234, 33.159557, 51.139614>,  <40.298679, 33.248085, 51.489944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470234, 33.159557, 51.139614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879208, -0.324951, -0.348424,
		-0.207487, 0.919469, -0.333955,
		0.428884, -0.221323, -0.875828,
		40.598900, 33.093159, 50.876865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764595, 33.519402, 50.971764>,  <40.298679, 33.248085, 51.489944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764595, 33.519402, 50.971764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.990795, 33.249474, 50.782101>,  <40.126514, 33.087517, 50.668304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.990795, 33.249474, 50.782101>,  <39.764595, 33.519402, 50.971764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990795, 33.249474, 50.782101> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824188, -0.441273, -0.354953,
		0.030298, 0.591520, -0.805721,
		0.565505, -0.674820, -0.474154,
		40.160446, 33.047028, 50.639854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523769, 33.514355, 50.265003>,  <39.764595, 33.519402, 50.971764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523769, 33.514355, 50.265003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.689541, 33.156528, 50.331932>,  <39.789005, 32.941833, 50.372089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.689541, 33.156528, 50.331932>,  <39.523769, 33.514355, 50.265003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689541, 33.156528, 50.331932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807169, -0.446230, -0.386466,
		0.420385, 0.025105, -0.906998,
		0.414432, -0.894566, 0.167324,
		39.813869, 32.888157, 50.382130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421082, 33.021503, 49.754673>,  <39.523769, 33.514355, 50.265003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421082, 33.021503, 49.754673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.503193, 32.761585, 50.047417>,  <39.552460, 32.605633, 50.223064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.503193, 32.761585, 50.047417>,  <39.421082, 33.021503, 49.754673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503193, 32.761585, 50.047417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696580, -0.622285, -0.357123,
		0.687485, -0.436490, -0.580380,
		0.205281, -0.649798, 0.731862,
		39.564777, 32.566647, 50.266975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824024, 32.623310, 49.549927>,  <39.421082, 33.021503, 49.754673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824024, 32.623310, 49.549927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.758522, 32.287685, 49.757450>,  <38.719219, 32.086311, 49.881962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.758522, 32.287685, 49.757450>,  <38.824024, 32.623310, 49.549927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758522, 32.287685, 49.757450> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764109, 0.440516, 0.471258,
		-0.623956, -0.319252, -0.713272,
		-0.163757, -0.839061, 0.518806,
		38.709396, 32.035969, 49.913094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143879, 32.168823, 49.611446>,  <38.824024, 32.623310, 49.549927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143879, 32.168823, 49.611446> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.360378, 32.180382, 49.947590>,  <38.490280, 32.187317, 50.149277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.360378, 32.180382, 49.947590>,  <38.143879, 32.168823, 49.611446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360378, 32.180382, 49.947590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661946, 0.630943, 0.404646,
		-0.518529, -0.775291, 0.360626,
		0.541253, 0.028894, 0.840363,
		38.522755, 32.189049, 50.199699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289845, 32.309715, 48.922520>,  <38.143879, 32.168823, 49.611446>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289845, 32.309715, 48.922520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.306602, 31.933161, 49.056404>,  <38.316658, 31.707228, 49.136734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.306602, 31.933161, 49.056404>,  <38.289845, 32.309715, 48.922520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306602, 31.933161, 49.056404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858465, -0.205305, -0.469986,
		0.511158, -0.267644, -0.816752,
		0.041894, -0.941391, 0.334707,
		38.319172, 31.650743, 49.156815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234043, 31.858122, 48.337524>,  <38.289845, 32.309715, 48.922520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234043, 31.858122, 48.337524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.080914, 31.660648, 48.649864>,  <37.989037, 31.542164, 48.837269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.080914, 31.660648, 48.649864>,  <38.234043, 31.858122, 48.337524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080914, 31.660648, 48.649864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821007, -0.205705, -0.532572,
		0.423546, -0.844963, -0.326568,
		-0.382827, -0.493683, 0.780846,
		37.966064, 31.512543, 48.884117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017143, 31.255644, 48.101242>,  <38.234043, 31.858122, 48.337524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017143, 31.255644, 48.101242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.803230, 31.281919, 48.438217>,  <37.674885, 31.297686, 48.640400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.803230, 31.281919, 48.438217>,  <38.017143, 31.255644, 48.101242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803230, 31.281919, 48.438217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780417, -0.420643, -0.462611,
		0.323976, -0.904845, 0.276216,
		-0.534779, 0.065688, 0.842435,
		37.642796, 31.301626, 48.690948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694195, 30.655920, 48.136936>,  <38.017143, 31.255644, 48.101242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694195, 30.655920, 48.136936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.472061, 30.888514, 48.374752>,  <37.338779, 31.028070, 48.517441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.472061, 30.888514, 48.374752>,  <37.694195, 30.655920, 48.136936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472061, 30.888514, 48.374752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823789, -0.482561, -0.297499,
		0.113911, -0.654988, 0.747004,
		-0.555334, 0.581485, 0.594542,
		37.305462, 31.062960, 48.553116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189060, 30.142984, 48.402103>,  <37.694195, 30.655920, 48.136936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189060, 30.142984, 48.402103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.037971, 30.489521, 48.532810>,  <36.947319, 30.697443, 48.611237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.037971, 30.489521, 48.532810>,  <37.189060, 30.142984, 48.402103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037971, 30.489521, 48.532810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923260, -0.325690, -0.203755,
		-0.070095, -0.378658, 0.922879,
		-0.377726, 0.866339, 0.326771,
		36.924652, 30.749422, 48.630840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867973, 30.014549, 48.927532>,  <37.189060, 30.142984, 48.402103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867973, 30.014549, 48.927532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.721252, 30.373308, 48.828712>,  <36.633221, 30.588564, 48.769421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.721252, 30.373308, 48.828712>,  <36.867973, 30.014549, 48.927532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721252, 30.373308, 48.828712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883164, -0.419170, -0.210516,
		-0.292366, 0.140967, 0.945859,
		-0.366800, 0.896897, -0.247048,
		36.611214, 30.642378, 48.754597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263813, 30.065491, 49.332951>,  <36.867973, 30.014549, 48.927532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263813, 30.065491, 49.332951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.250729, 30.296217, 49.006462>,  <36.242878, 30.434652, 48.810570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.250729, 30.296217, 49.006462>,  <36.263813, 30.065491, 49.332951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250729, 30.296217, 49.006462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820176, -0.482194, -0.307896,
		-0.571175, 0.659373, 0.488862,
		-0.032708, 0.576816, -0.816219,
		36.240917, 30.469261, 48.761597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592125, 30.236557, 49.325600>,  <36.263813, 30.065491, 49.332951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592125, 30.236557, 49.325600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.739044, 30.309286, 48.960735>,  <35.827194, 30.352924, 48.741817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.739044, 30.309286, 48.960735>,  <35.592125, 30.236557, 49.325600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739044, 30.309286, 48.960735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788819, -0.458723, -0.409070,
		-0.492806, 0.869778, -0.025062,
		0.367296, 0.181823, -0.912159,
		35.849232, 30.363832, 48.687088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985889, 30.506784, 48.926483>,  <35.592125, 30.236557, 49.325600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985889, 30.506784, 48.926483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.260826, 30.372021, 48.669098>,  <35.425789, 30.291162, 48.514668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.260826, 30.372021, 48.669098>,  <34.985889, 30.506784, 48.926483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260826, 30.372021, 48.669098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692293, -0.571910, -0.440057,
		-0.219745, 0.747938, -0.626340,
		0.687345, -0.336910, -0.643466,
		35.467030, 30.270948, 48.476059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672962, 30.513670, 48.185516>,  <34.985889, 30.506784, 48.926483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672962, 30.513670, 48.185516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.967758, 30.243324, 48.182648>,  <35.144638, 30.081118, 48.180927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.967758, 30.243324, 48.182648>,  <34.672962, 30.513670, 48.185516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967758, 30.243324, 48.182648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610378, -0.660955, -0.436551,
		0.290312, 0.326109, -0.899651,
		0.736992, -0.675863, -0.007167,
		35.188854, 30.040565, 48.180496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.853516, 29.057993, 52.468765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.078115, 29.385643, 52.515671>,  <31.212875, 29.582233, 52.543816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.078115, 29.385643, 52.515671>,  <30.853516, 29.057993, 52.468765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078115, 29.385643, 52.515671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453972, -0.186456, -0.871288,
		-0.691831, 0.542462, -0.476556,
		0.561497, 0.819127, 0.117267,
		31.246565, 29.631382, 52.550850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.902620, 29.355301, 51.843002>,  <30.853516, 29.057993, 52.468765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.902620, 29.355301, 51.843002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.227926, 29.502071, 52.023655>,  <31.423109, 29.590134, 52.132046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.227926, 29.502071, 52.023655>,  <30.902620, 29.355301, 51.843002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.227926, 29.502071, 52.023655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508430, -0.070579, -0.858206,
		-0.283024, 0.927568, -0.243956,
		0.813263, 0.366927, 0.451628,
		31.471905, 29.612150, 52.159142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.197899, 29.834078, 51.384247>,  <30.902620, 29.355301, 51.843002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.197899, 29.834078, 51.384247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.505482, 29.746147, 51.624374>,  <31.690031, 29.693388, 51.768452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.505482, 29.746147, 51.624374>,  <31.197899, 29.834078, 51.384247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505482, 29.746147, 51.624374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557638, -0.228589, -0.797989,
		0.312647, 0.948379, -0.053190,
		0.768955, -0.219828, 0.600320,
		31.736168, 29.680199, 51.804470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.708979, 30.423725, 51.290848>,  <31.197899, 29.834078, 51.384247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.708979, 30.423725, 51.290848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.869562, 30.092735, 51.447880>,  <31.965912, 29.894142, 51.542099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.869562, 30.092735, 51.447880>,  <31.708979, 30.423725, 51.290848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.869562, 30.092735, 51.447880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728428, 0.028650, -0.684523,
		0.555177, 0.560773, 0.614257,
		0.401461, -0.827474, 0.392577,
		31.990000, 29.844494, 51.565655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354462, 30.593727, 51.462921>,  <31.708979, 30.423725, 51.290848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354462, 30.593727, 51.462921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.371891, 30.195707, 51.427189>,  <32.382347, 29.956896, 51.405750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.371891, 30.195707, 51.427189>,  <32.354462, 30.593727, 51.462921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371891, 30.195707, 51.427189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719556, 0.093288, -0.688140,
		0.693066, -0.034300, 0.720058,
		0.043570, -0.995048, -0.089335,
		32.384960, 29.897192, 51.400387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051872, 30.517136, 51.412434>,  <32.354462, 30.593727, 51.462921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051872, 30.517136, 51.412434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.913052, 30.160419, 51.296322>,  <32.829758, 29.946390, 51.226654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.913052, 30.160419, 51.296322>,  <33.051872, 30.517136, 51.412434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913052, 30.160419, 51.296322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610946, 0.019849, -0.791424,
		0.711546, -0.452012, 0.537947,
		-0.347056, -0.891791, -0.290278,
		32.808933, 29.892881, 51.209240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577602, 30.119427, 51.361813>,  <33.051872, 30.517136, 51.412434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577602, 30.119427, 51.361813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.308765, 29.965027, 51.109051>,  <33.147465, 29.872387, 50.957394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.308765, 29.965027, 51.109051>,  <33.577602, 30.119427, 51.361813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308765, 29.965027, 51.109051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720780, -0.145551, -0.677710,
		0.169624, -0.910943, 0.376046,
		-0.672089, -0.386002, -0.631901,
		33.107140, 29.849226, 50.919479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800686, 29.481136, 51.041889>,  <33.577602, 30.119427, 51.361813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800686, 29.481136, 51.041889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.527382, 29.581457, 50.767590>,  <33.363400, 29.641649, 50.603008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.527382, 29.581457, 50.767590>,  <33.800686, 29.481136, 51.041889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527382, 29.581457, 50.767590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629249, -0.274165, -0.727241,
		-0.370403, -0.928402, 0.029508,
		-0.683262, 0.250805, -0.685748,
		33.322403, 29.656698, 50.561867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709190, 28.868298, 50.568916>,  <33.800686, 29.481136, 51.041889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709190, 28.868298, 50.568916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.574955, 29.191803, 50.375721>,  <33.494415, 29.385906, 50.259804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.574955, 29.191803, 50.375721>,  <33.709190, 28.868298, 50.568916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574955, 29.191803, 50.375721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677090, -0.149379, -0.720579,
		-0.654929, -0.568844, -0.497478,
		-0.335584, 0.808766, -0.482992,
		33.474281, 29.434433, 50.230824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675053, 28.645975, 49.877293>,  <33.709190, 28.868298, 50.568916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675053, 28.645975, 49.877293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.701359, 29.044689, 49.895603>,  <33.717140, 29.283918, 49.906590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.701359, 29.044689, 49.895603>,  <33.675053, 28.645975, 49.877293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701359, 29.044689, 49.895603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732832, -0.017110, -0.680194,
		-0.677224, 0.078279, -0.731601,
		0.065763, 0.996785, 0.045778,
		33.721088, 29.343725, 49.909336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787056, 28.722071, 49.156906>,  <33.675053, 28.645975, 49.877293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787056, 28.722071, 49.156906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.861378, 29.074987, 49.329899>,  <33.905972, 29.286737, 49.433693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.861378, 29.074987, 49.329899>,  <33.787056, 28.722071, 49.156906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861378, 29.074987, 49.329899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713200, 0.181664, -0.677011,
		-0.675886, 0.434238, -0.595495,
		0.185804, 0.882290, 0.432483,
		33.917118, 29.339674, 49.459644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832188, 29.203829, 48.552364>,  <33.787056, 28.722071, 49.156906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832188, 29.203829, 48.552364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.023331, 29.367674, 48.863201>,  <34.138016, 29.465981, 49.049702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.023331, 29.367674, 48.863201>,  <33.832188, 29.203829, 48.552364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023331, 29.367674, 48.863201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769677, 0.231122, -0.595130,
		-0.423375, 0.882496, -0.204827,
		0.477860, 0.409613, 0.777089,
		34.166687, 29.490559, 49.096329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233414, 29.414013, 48.069111>,  <33.832188, 29.203829, 48.552364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233414, 29.414013, 48.069111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.549183, 29.583303, 47.891262>,  <33.738644, 29.684877, 47.784554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.549183, 29.583303, 47.891262>,  <33.233414, 29.414013, 48.069111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549183, 29.583303, 47.891262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583623, 0.741964, -0.329959,
		0.190244, 0.519969, 0.832730,
		0.789425, 0.423228, -0.444620,
		33.786011, 29.710272, 47.757877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368462, 30.071421, 48.342747>,  <33.233414, 29.414013, 48.069111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368462, 30.071421, 48.342747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.481247, 30.070431, 47.958977>,  <33.548920, 30.069836, 47.728714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.481247, 30.070431, 47.958977>,  <33.368462, 30.071421, 48.342747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481247, 30.070431, 47.958977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628320, 0.755243, -0.186607,
		0.725059, 0.655440, 0.211395,
		0.281964, -0.002477, -0.959422,
		33.565838, 30.069687, 47.671150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322636, 30.841047, 48.173298>,  <33.368462, 30.071421, 48.342747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322636, 30.841047, 48.173298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.370060, 30.644466, 47.828178>,  <33.398514, 30.526518, 47.621105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.370060, 30.644466, 47.828178>,  <33.322636, 30.841047, 48.173298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370060, 30.644466, 47.828178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506326, 0.717546, -0.478290,
		0.854153, 0.493562, -0.163764,
		0.118558, -0.491451, -0.862798,
		33.405628, 30.497030, 47.569340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727055, 31.257317, 47.714447>,  <33.322636, 30.841047, 48.173298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727055, 31.257317, 47.714447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.479252, 31.008554, 47.522846>,  <33.330570, 30.859297, 47.407887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.479252, 31.008554, 47.522846>,  <33.727055, 31.257317, 47.714447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479252, 31.008554, 47.522846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435868, 0.780014, -0.448996,
		0.652864, -0.069372, -0.754292,
		-0.619506, -0.621905, -0.479006,
		33.293400, 30.821983, 47.379143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513680, 31.575249, 47.033577>,  <33.727055, 31.257317, 47.714447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513680, 31.575249, 47.033577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.241203, 31.293814, 47.114517>,  <33.077717, 31.124952, 47.163082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.241203, 31.293814, 47.114517>,  <33.513680, 31.575249, 47.033577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241203, 31.293814, 47.114517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731685, 0.644873, -0.220854,
		0.024898, -0.298502, -0.954084,
		-0.681189, -0.703588, 0.202353,
		33.036846, 31.082737, 47.175224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070343, 31.534513, 46.368141>,  <33.513680, 31.575249, 47.033577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070343, 31.534513, 46.368141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.879543, 31.380421, 46.684132>,  <32.765064, 31.287966, 46.873726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.879543, 31.380421, 46.684132>,  <33.070343, 31.534513, 46.368141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879543, 31.380421, 46.684132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689830, 0.721056, -0.064906,
		-0.544615, -0.575912, -0.609689,
		-0.477000, -0.385233, 0.789979,
		32.736443, 31.264851, 46.921124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336510, 31.484806, 46.110706>,  <33.070343, 31.534513, 46.368141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336510, 31.484806, 46.110706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.344597, 31.482866, 46.510620>,  <32.349449, 31.481703, 46.750568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.344597, 31.482866, 46.510620>,  <32.336510, 31.484806, 46.110706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344597, 31.482866, 46.510620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826444, 0.562684, 0.019443,
		-0.562656, -0.826658, 0.007367,
		0.020218, -0.004851, 0.999784,
		32.350662, 31.481411, 46.810555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632206, 31.416668, 46.292538>,  <32.336510, 31.484806, 46.110706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.632206, 31.416668, 46.292538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.813112, 31.548615, 46.623993>,  <31.921656, 31.627783, 46.822865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.813112, 31.548615, 46.623993>,  <31.632206, 31.416668, 46.292538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813112, 31.548615, 46.623993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772516, 0.609208, 0.179122,
		-0.445727, -0.721149, 0.530351,
		0.452267, 0.329865, 0.828640,
		31.948793, 31.647573, 46.872585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017338, 31.540768, 46.722462>,  <31.632206, 31.416668, 46.292538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017338, 31.540768, 46.722462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.311844, 31.765358, 46.873543>,  <31.488546, 31.900112, 46.964191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.311844, 31.765358, 46.873543>,  <31.017338, 31.540768, 46.722462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311844, 31.765358, 46.873543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676681, 0.607264, 0.416334,
		0.004396, -0.562117, 0.827046,
		0.736264, 0.561476, 0.377704,
		31.532722, 31.933802, 46.986855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686026, 31.952496, 47.307903>,  <31.017338, 31.540768, 46.722462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686026, 31.952496, 47.307903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.054327, 32.102131, 47.263599>,  <31.275309, 32.191914, 47.237019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.054327, 32.102131, 47.263599>,  <30.686026, 31.952496, 47.307903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.054327, 32.102131, 47.263599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265324, 0.808548, 0.525218,
		0.286030, -0.454211, 0.843729,
		0.920755, 0.374090, -0.110755,
		31.330553, 32.214359, 47.230373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.901936, 32.021969, 48.106888>,  <30.686026, 31.952496, 47.307903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.901936, 32.021969, 48.106888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.080845, 32.264805, 47.844166>,  <31.188190, 32.410507, 47.686535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.080845, 32.264805, 47.844166>,  <30.901936, 32.021969, 48.106888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.080845, 32.264805, 47.844166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312383, 0.794139, 0.521306,
		0.838072, -0.027992, 0.544841,
		0.447272, 0.607091, -0.656802,
		31.215027, 32.446934, 47.647125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337061, 32.541920, 48.496666>,  <30.901936, 32.021969, 48.106888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.337061, 32.541920, 48.496666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.239256, 32.690395, 48.138351>,  <31.180573, 32.779480, 47.923363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.239256, 32.690395, 48.138351>,  <31.337061, 32.541920, 48.496666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239256, 32.690395, 48.138351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388058, 0.809160, 0.441215,
		0.888608, 0.455501, -0.053810,
		-0.244515, 0.371186, -0.895787,
		31.165901, 32.801750, 47.869614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672398, 33.228497, 48.471245>,  <31.337061, 32.541920, 48.496666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672398, 33.228497, 48.471245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.406952, 33.283630, 48.177139>,  <31.247684, 33.316711, 48.000675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.406952, 33.283630, 48.177139>,  <31.672398, 33.228497, 48.471245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406952, 33.283630, 48.177139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213399, 0.907160, 0.362658,
		0.716992, 0.397570, -0.572591,
		-0.663614, 0.137832, -0.735268,
		31.207869, 33.324982, 47.956558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731672, 33.909473, 48.183212>,  <31.672398, 33.228497, 48.471245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731672, 33.909473, 48.183212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.357487, 33.814556, 48.078449>,  <31.132975, 33.757607, 48.015591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.357487, 33.814556, 48.078449>,  <31.731672, 33.909473, 48.183212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357487, 33.814556, 48.078449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335100, 0.831046, 0.443927,
		0.112318, 0.503044, -0.856931,
		-0.935464, -0.237297, -0.261912,
		31.076847, 33.743366, 47.999874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550821, 34.580837, 47.915092>,  <31.731672, 33.909473, 48.183212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550821, 34.580837, 47.915092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.193068, 34.408791, 47.964207>,  <30.978416, 34.305561, 47.993675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.193068, 34.408791, 47.964207>,  <31.550821, 34.580837, 47.915092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193068, 34.408791, 47.964207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380042, 0.875469, 0.298533,
		-0.235897, 0.220341, -0.946469,
		-0.894383, -0.430121, 0.122782,
		30.924753, 34.279755, 48.001041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.892673, 35.141647, 47.692043>,  <31.550821, 34.580837, 47.915092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.892673, 35.141647, 47.692043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.737789, 34.869713, 47.941170>,  <30.644859, 34.706554, 48.090645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.737789, 34.869713, 47.941170>,  <30.892673, 35.141647, 47.692043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737789, 34.869713, 47.941170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622648, 0.691012, 0.367168,
		-0.679984, -0.245621, -0.690863,
		-0.387210, -0.679833, 0.622813,
		30.621626, 34.665764, 48.128014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217577, 35.698887, 47.390171>,  <30.892673, 35.141647, 47.692043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217577, 35.698887, 47.390171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.328562, 36.044716, 47.557755>,  <31.395153, 36.252213, 47.658306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.328562, 36.044716, 47.557755>,  <31.217577, 35.698887, 47.390171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328562, 36.044716, 47.557755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935806, -0.341909, 0.085824,
		0.217448, 0.368253, -0.903939,
		0.277460, 0.864574, 0.418961,
		31.411800, 36.304089, 47.683441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688742, 36.040859, 46.946053>,  <31.217577, 35.698887, 47.390171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688742, 36.040859, 46.946053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.753387, 36.159519, 47.322536>,  <31.792175, 36.230717, 47.548428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.753387, 36.159519, 47.322536>,  <31.688742, 36.040859, 46.946053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753387, 36.159519, 47.322536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934663, -0.352068, -0.049525,
		0.316679, 0.887720, -0.334167,
		0.161614, 0.296650, 0.941212,
		31.801872, 36.248516, 47.604900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343338, 36.348133, 46.990532>,  <31.688742, 36.040859, 46.946053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343338, 36.348133, 46.990532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.277119, 36.236477, 47.368881>,  <32.237389, 36.169483, 47.595890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.277119, 36.236477, 47.368881>,  <32.343338, 36.348133, 46.990532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277119, 36.236477, 47.368881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901921, -0.430807, 0.030715,
		0.398914, 0.858187, 0.323084,
		-0.165546, -0.279144, 0.945872,
		32.227455, 36.152733, 47.652641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001091, 36.560211, 47.477882>,  <32.343338, 36.348133, 46.990532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001091, 36.560211, 47.477882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.799625, 36.274723, 47.672581>,  <32.678745, 36.103428, 47.789398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.799625, 36.274723, 47.672581>,  <33.001091, 36.560211, 47.477882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799625, 36.274723, 47.672581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859478, -0.470914, 0.198840,
		0.087298, 0.518495, 0.850613,
		-0.503663, -0.713725, 0.486745,
		32.648525, 36.060604, 47.818604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430916, 36.426914, 48.039120>,  <33.001091, 36.560211, 47.477882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430916, 36.426914, 48.039120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.190178, 36.107487, 48.042431>,  <33.045734, 35.915829, 48.044418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.190178, 36.107487, 48.042431>,  <33.430916, 36.426914, 48.039120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190178, 36.107487, 48.042431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794826, -0.597956, 0.103443,
		-0.077659, 0.068833, 0.994601,
		-0.601848, -0.798568, 0.008274,
		33.009624, 35.867916, 48.044914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649410, 36.023720, 48.639336>,  <33.430916, 36.426914, 48.039120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649410, 36.023720, 48.639336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.477646, 35.769833, 48.382359>,  <33.374588, 35.617500, 48.228172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.477646, 35.769833, 48.382359>,  <33.649410, 36.023720, 48.639336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477646, 35.769833, 48.382359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804493, -0.592080, 0.047237,
		-0.410362, -0.496560, 0.764873,
		-0.429411, -0.634719, -0.642447,
		33.348824, 35.579418, 48.189625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898693, 35.379879, 48.837490>,  <33.649410, 36.023720, 48.639336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898693, 35.379879, 48.837490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.735535, 35.266960, 48.490173>,  <33.637642, 35.199207, 48.281784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.735535, 35.266960, 48.490173>,  <33.898693, 35.379879, 48.837490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735535, 35.266960, 48.490173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786154, -0.592212, -0.176768,
		-0.464312, -0.754714, 0.463487,
		-0.407892, -0.282297, -0.868293,
		33.613167, 35.182270, 48.229687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872887, 34.606411, 48.823944>,  <33.898693, 35.379879, 48.837490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872887, 34.606411, 48.823944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.893173, 34.772442, 48.460594>,  <33.905346, 34.872059, 48.242584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.893173, 34.772442, 48.460594>,  <33.872887, 34.606411, 48.823944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893173, 34.772442, 48.460594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864169, -0.474178, -0.168426,
		-0.500639, -0.776446, -0.382742,
		0.050714, 0.415074, -0.908373,
		33.908386, 34.896965, 48.188084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880337, 34.024254, 48.292610>,  <33.872887, 34.606411, 48.823944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880337, 34.024254, 48.292610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.029499, 34.346432, 48.108349>,  <34.118996, 34.539738, 47.997791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.029499, 34.346432, 48.108349>,  <33.880337, 34.024254, 48.292610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029499, 34.346432, 48.108349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868111, -0.478143, -0.133273,
		-0.327603, -0.350202, -0.877516,
		0.372906, 0.805443, -0.460655,
		34.141373, 34.588066, 47.970154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214127, 33.818920, 47.650928>,  <33.880337, 34.024254, 48.292610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214127, 33.818920, 47.650928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.385139, 34.168152, 47.744694>,  <34.487747, 34.377689, 47.800953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.385139, 34.168152, 47.744694>,  <34.214127, 33.818920, 47.650928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385139, 34.168152, 47.744694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896634, -0.376514, -0.232988,
		-0.115156, 0.309795, -0.943804,
		0.427534, 0.873077, 0.234416,
		34.513401, 34.430077, 47.815018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743732, 33.949333, 47.095573>,  <34.214127, 33.818920, 47.650928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743732, 33.949333, 47.095573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.858086, 34.186306, 47.396851>,  <34.926697, 34.328491, 47.577618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.858086, 34.186306, 47.396851>,  <34.743732, 33.949333, 47.095573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858086, 34.186306, 47.396851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949421, -0.068566, -0.306427,
		-0.129895, 0.802696, -0.582072,
		0.285878, 0.592434, 0.753190,
		34.943848, 34.364037, 47.622807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124569, 34.480412, 46.810623>,  <34.743732, 33.949333, 47.095573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124569, 34.480412, 46.810623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.239143, 34.436573, 47.191349>,  <35.307888, 34.410271, 47.419785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.239143, 34.436573, 47.191349>,  <35.124569, 34.480412, 46.810623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239143, 34.436573, 47.191349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951938, -0.079940, -0.295676,
		0.108493, 0.990756, 0.081432,
		0.286433, -0.109597, 0.951811,
		35.325073, 34.403694, 47.476891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.568176, 38.948986, 51.357571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.217842, 38.968674, 51.165535>,  <28.007641, 38.980488, 51.050312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.217842, 38.968674, 51.165535>,  <28.568176, 38.948986, 51.357571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.217842, 38.968674, 51.165535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433741, -0.355897, -0.827771,
		-0.211605, -0.933228, 0.290360,
		-0.875838, 0.049220, -0.480089,
		27.955091, 38.983440, 51.021507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.297201, 38.222767, 51.094902>,  <28.568176, 38.948986, 51.357571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.297201, 38.222767, 51.094902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.163551, 38.516323, 50.858337>,  <28.083363, 38.692455, 50.716400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.163551, 38.516323, 50.858337>,  <28.297201, 38.222767, 51.094902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.163551, 38.516323, 50.858337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357048, -0.482154, -0.800028,
		-0.872284, -0.478469, -0.100936,
		-0.334122, 0.733890, -0.591412,
		28.063314, 38.736488, 50.680912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.959501, 37.932327, 50.485645>,  <28.297201, 38.222767, 51.094902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.959501, 37.932327, 50.485645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.071356, 38.300381, 50.375980>,  <28.138468, 38.521214, 50.310181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.071356, 38.300381, 50.375980>,  <27.959501, 37.932327, 50.485645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.071356, 38.300381, 50.375980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510759, -0.384362, -0.769020,
		-0.812975, 0.075016, -0.577446,
		0.279637, 0.920130, -0.274162,
		28.155247, 38.576420, 50.293732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.903633, 37.739456, 49.727211>,  <27.959501, 37.932327, 50.485645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.903633, 37.739456, 49.727211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.089664, 38.093163, 49.744049>,  <28.201283, 38.305386, 49.754154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.089664, 38.093163, 49.744049>,  <27.903633, 37.739456, 49.727211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.089664, 38.093163, 49.744049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570537, -0.263034, -0.778011,
		-0.676897, 0.385855, -0.626839,
		0.465079, 0.884268, 0.042097,
		28.229189, 38.358444, 49.756680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.788746, 38.012508, 49.093155>,  <27.903633, 37.739456, 49.727211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.788746, 38.012508, 49.093155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.114731, 38.176311, 49.257175>,  <28.310322, 38.274593, 49.355587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.114731, 38.176311, 49.257175>,  <27.788746, 38.012508, 49.093155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.114731, 38.176311, 49.257175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534374, -0.257237, -0.805155,
		-0.224238, 0.875290, -0.428469,
		0.814961, 0.409508, 0.410050,
		28.359219, 38.299164, 49.380192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.092649, 38.354412, 48.528584>,  <27.788746, 38.012508, 49.093155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.092649, 38.354412, 48.528584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.379545, 38.299728, 48.801899>,  <28.551682, 38.266918, 48.965889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.379545, 38.299728, 48.801899>,  <28.092649, 38.354412, 48.528584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.379545, 38.299728, 48.801899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643253, -0.247158, -0.724665,
		0.267948, 0.959283, -0.089333,
		0.717238, -0.136709, 0.683287,
		28.594717, 38.258717, 49.006886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.655794, 38.765240, 48.314262>,  <28.092649, 38.354412, 48.528584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.655794, 38.765240, 48.314262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.816675, 38.506248, 48.573189>,  <28.913204, 38.350853, 48.728542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.816675, 38.506248, 48.573189>,  <28.655794, 38.765240, 48.314262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.816675, 38.506248, 48.573189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743380, -0.181763, -0.643699,
		0.534436, 0.740095, 0.408214,
		0.402200, -0.647474, 0.647312,
		28.937336, 38.312008, 48.767384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.314396, 38.889576, 48.228302>,  <28.655794, 38.765240, 48.314262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.314396, 38.889576, 48.228302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.312662, 38.542889, 48.427811>,  <29.311621, 38.334877, 48.547516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.312662, 38.542889, 48.427811>,  <29.314396, 38.889576, 48.228302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.312662, 38.542889, 48.427811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863911, -0.254448, -0.434641,
		0.503625, 0.429014, 0.749873,
		-0.004336, -0.866720, 0.498776,
		29.311361, 38.282871, 48.577442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.980713, 38.773769, 48.595085>,  <29.314396, 38.889576, 48.228302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.980713, 38.773769, 48.595085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.794062, 38.426765, 48.526161>,  <29.682072, 38.218563, 48.484806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.794062, 38.426765, 48.526161>,  <29.980713, 38.773769, 48.595085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.794062, 38.426765, 48.526161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868612, -0.412778, -0.274095,
		0.166652, -0.277574, 0.946140,
		-0.466627, -0.867506, -0.172314,
		29.654074, 38.166515, 48.474468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259090, 38.353184, 49.002350>,  <29.980713, 38.773769, 48.595085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.259090, 38.353184, 49.002350> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.114628, 38.117691, 48.713085>,  <30.027950, 37.976395, 48.539528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.114628, 38.117691, 48.713085>,  <30.259090, 38.353184, 49.002350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114628, 38.117691, 48.713085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912707, -0.382127, -0.144723,
		-0.191136, -0.712301, 0.675347,
		-0.361155, -0.588733, -0.723161,
		30.006281, 37.941071, 48.496136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537865, 37.742435, 49.208084>,  <30.259090, 38.353184, 49.002350>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.537865, 37.742435, 49.208084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.416945, 37.711151, 48.828083>,  <30.344393, 37.692383, 48.600082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.416945, 37.711151, 48.828083>,  <30.537865, 37.742435, 49.208084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.416945, 37.711151, 48.828083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780762, -0.592055, -0.199705,
		-0.546833, -0.802094, 0.240040,
		-0.302299, -0.078208, -0.950000,
		30.326254, 37.687687, 48.543083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.536390, 37.002449, 49.103527>,  <30.537865, 37.742435, 49.208084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.536390, 37.002449, 49.103527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.548265, 37.199463, 48.755611>,  <30.555389, 37.317673, 48.546864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.548265, 37.199463, 48.755611>,  <30.536390, 37.002449, 49.103527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.548265, 37.199463, 48.755611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794618, -0.539518, -0.278394,
		-0.606384, -0.682882, -0.407395,
		0.029686, 0.492537, -0.869785,
		30.557171, 37.347225, 48.494675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528111, 36.403725, 48.735764>,  <30.536390, 37.002449, 49.103527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.528111, 36.403725, 48.735764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.666199, 36.685802, 48.488049>,  <30.749052, 36.855049, 48.339420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.666199, 36.685802, 48.488049>,  <30.528111, 36.403725, 48.735764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.666199, 36.685802, 48.488049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686960, -0.639459, -0.345222,
		-0.639459, -0.306248, -0.705199,
		0.345222, 0.705199, -0.619287,
		30.769766, 36.897362, 48.302261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586885, 36.117001, 48.168545>,  <30.528111, 36.403725, 48.735764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586885, 36.117001, 48.168545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.837883, 36.419308, 48.093636>,  <30.988482, 36.600693, 48.048691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.837883, 36.419308, 48.093636>,  <30.586885, 36.117001, 48.168545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837883, 36.419308, 48.093636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716859, -0.654641, -0.239914,
		-0.303913, 0.016299, -0.952561,
		0.627495, 0.755764, -0.187270,
		31.026131, 36.646038, 48.037457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.258631, 35.474308, 47.945824>,  <30.586885, 36.117001, 48.168545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.258631, 35.474308, 47.945824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.306982, 35.175941, 48.207817>,  <30.335993, 34.996922, 48.365013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.306982, 35.175941, 48.207817>,  <30.258631, 35.474308, 47.945824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.306982, 35.175941, 48.207817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679999, 0.418471, 0.602066,
		-0.723180, -0.518164, -0.456637,
		0.120879, -0.745914, 0.654981,
		30.343246, 34.952168, 48.404312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611490, 35.442417, 48.193188>,  <30.258631, 35.474308, 47.945824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611490, 35.442417, 48.193188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.829325, 35.251461, 48.469021>,  <29.960026, 35.136887, 48.634521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.829325, 35.251461, 48.469021>,  <29.611490, 35.442417, 48.193188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.829325, 35.251461, 48.469021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554159, 0.412350, 0.723101,
		-0.629551, -0.775929, -0.039991,
		0.544585, -0.477391, 0.689583,
		29.992701, 35.108246, 48.675896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.158581, 35.098564, 48.636848>,  <29.611490, 35.442417, 48.193188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.158581, 35.098564, 48.636848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.503149, 35.179718, 48.823093>,  <29.709890, 35.228409, 48.934841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.503149, 35.179718, 48.823093>,  <29.158581, 35.098564, 48.636848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.503149, 35.179718, 48.823093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505564, 0.430249, 0.747858,
		-0.048601, -0.879616, 0.473195,
		0.861419, 0.202884, 0.465613,
		29.761576, 35.240582, 48.962776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.965263, 34.959965, 49.273735>,  <29.158581, 35.098564, 48.636848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.965263, 34.959965, 49.273735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.298641, 35.166759, 49.351803>,  <29.498669, 35.290836, 49.398643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.298641, 35.166759, 49.351803>,  <28.965263, 34.959965, 49.273735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.298641, 35.166759, 49.351803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449438, 0.428671, 0.783739,
		0.321517, -0.740922, 0.589628,
		0.833446, 0.516987, 0.195173,
		29.548676, 35.321857, 49.410355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.205494, 34.704941, 49.925877>,  <28.965263, 34.959965, 49.273735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.205494, 34.704941, 49.925877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.343388, 35.074215, 49.857891>,  <29.426125, 35.295780, 49.817101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.343388, 35.074215, 49.857891>,  <29.205494, 34.704941, 49.925877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.343388, 35.074215, 49.857891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357355, 0.296495, 0.885657,
		0.868018, -0.244582, 0.432117,
		0.344736, 0.923185, -0.169961,
		29.446808, 35.351170, 49.806904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756128, 34.864910, 50.416874>,  <29.205494, 34.704941, 49.925877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756128, 34.864910, 50.416874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.631342, 35.226704, 50.300545>,  <29.556469, 35.443779, 50.230747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.631342, 35.226704, 50.300545>,  <29.756128, 34.864910, 50.416874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631342, 35.226704, 50.300545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227277, 0.226171, 0.947202,
		0.922508, 0.361595, 0.135011,
		-0.311968, 0.904486, -0.290827,
		29.537752, 35.498051, 50.213295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029636, 35.351654, 50.878395>,  <29.756128, 34.864910, 50.416874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029636, 35.351654, 50.878395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.760208, 35.584808, 50.696602>,  <29.598551, 35.724701, 50.587528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.760208, 35.584808, 50.696602>,  <30.029636, 35.351654, 50.878395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.760208, 35.584808, 50.696602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222558, 0.426407, 0.876724,
		0.704820, 0.691683, -0.157490,
		-0.673570, 0.582882, -0.454480,
		29.558138, 35.759674, 50.560257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.101564, 35.983093, 51.261982>,  <30.029636, 35.351654, 50.878395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.101564, 35.983093, 51.261982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.751123, 36.012440, 51.071377>,  <29.540859, 36.030048, 50.957012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.751123, 36.012440, 51.071377>,  <30.101564, 35.983093, 51.261982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.751123, 36.012440, 51.071377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413190, 0.395040, 0.820498,
		0.248438, 0.915730, -0.315781,
		-0.876101, 0.073365, -0.476514,
		29.488293, 36.034451, 50.928421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.810461, 36.616009, 51.490421>,  <30.101564, 35.983093, 51.261982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.810461, 36.616009, 51.490421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.497967, 36.423412, 51.331505>,  <29.310471, 36.307854, 51.236156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.497967, 36.423412, 51.331505>,  <29.810461, 36.616009, 51.490421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.497967, 36.423412, 51.331505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603512, 0.419945, 0.677805,
		-0.159514, 0.769296, -0.618659,
		-0.781235, -0.481488, -0.397292,
		29.263596, 36.278965, 51.212318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.251345, 37.082432, 51.357620>,  <29.810461, 36.616009, 51.490421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.251345, 37.082432, 51.357620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.074823, 36.724728, 51.387402>,  <28.968910, 36.510105, 51.405270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.074823, 36.724728, 51.387402>,  <29.251345, 37.082432, 51.357620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.074823, 36.724728, 51.387402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640214, 0.371898, 0.672174,
		-0.628791, 0.248963, -0.736640,
		-0.441301, -0.894265, 0.074456,
		28.942432, 36.456448, 51.409737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.527702, 37.216923, 51.300880>,  <29.251345, 37.082432, 51.357620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.527702, 37.216923, 51.300880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.532267, 36.843163, 51.443302>,  <28.535006, 36.618908, 51.528755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.532267, 36.843163, 51.443302>,  <28.527702, 37.216923, 51.300880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.532267, 36.843163, 51.443302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794188, 0.207883, 0.571007,
		-0.607565, -0.289289, -0.739714,
		0.011412, -0.934396, 0.356052,
		28.535690, 36.562843, 51.550117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.805883, 36.959606, 51.437912>,  <28.527702, 37.216923, 51.300880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.805883, 36.959606, 51.437912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.009785, 36.696480, 51.659695>,  <28.132126, 36.538605, 51.792767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.009785, 36.696480, 51.659695>,  <27.805883, 36.959606, 51.437912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.009785, 36.696480, 51.659695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776771, -0.074867, 0.625317,
		-0.369836, -0.749445, -0.549139,
		0.509753, -0.657820, 0.554459,
		28.162710, 36.499134, 51.826031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.260750, 36.448902, 51.658577>,  <27.805883, 36.959606, 51.437912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.260750, 36.448902, 51.658577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.554665, 36.431618, 51.929344>,  <27.731014, 36.421249, 52.091805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.554665, 36.431618, 51.929344>,  <27.260750, 36.448902, 51.658577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.554665, 36.431618, 51.929344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677775, -0.085925, 0.730232,
		0.026618, -0.995365, -0.092417,
		0.734787, -0.043201, 0.676920,
		27.775101, 36.418655, 52.132420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.098692, 35.884930, 52.074245>,  <27.260750, 36.448902, 51.658577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.098692, 35.884930, 52.074245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.353125, 36.106594, 52.289024>,  <27.505785, 36.239594, 52.417892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.353125, 36.106594, 52.289024>,  <27.098692, 35.884930, 52.074245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.353125, 36.106594, 52.289024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558383, -0.149688, 0.815967,
		0.532550, -0.818841, 0.214220,
		0.636081, 0.554160, 0.536943,
		27.543949, 36.272842, 52.450108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.518295, 37.434254, 57.012699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.364784, 37.434895, 56.643330>,  <32.272678, 37.435280, 56.421707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.364784, 37.434895, 56.643330>,  <32.518295, 37.434254, 57.012699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364784, 37.434895, 56.643330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403180, -0.899357, -0.169125,
		-0.830757, -0.437213, 0.344512,
		-0.383783, 0.001602, -0.923422,
		32.249649, 37.435375, 56.366302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207371, 36.778309, 56.914181>,  <32.518295, 37.434254, 57.012699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207371, 36.778309, 56.914181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.274632, 36.918934, 56.545803>,  <32.314987, 37.003307, 56.324776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.274632, 36.918934, 56.545803>,  <32.207371, 36.778309, 56.914181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274632, 36.918934, 56.545803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491296, -0.839832, -0.230891,
		-0.854607, -0.413629, -0.313940,
		0.168153, 0.351558, -0.920941,
		32.325077, 37.024403, 56.269520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027100, 36.263710, 56.410923>,  <32.207371, 36.778309, 56.914181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027100, 36.263710, 56.410923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.252533, 36.510639, 56.191368>,  <32.387794, 36.658798, 56.059635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.252533, 36.510639, 56.191368>,  <32.027100, 36.263710, 56.410923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252533, 36.510639, 56.191368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461907, -0.786388, -0.410165,
		-0.684847, -0.022374, -0.728343,
		0.563584, 0.617327, -0.548890,
		32.421608, 36.695839, 56.026703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989311, 35.949612, 55.711720>,  <32.027100, 36.263710, 56.410923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989311, 35.949612, 55.711720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.305988, 36.189922, 55.756062>,  <32.495995, 36.334110, 55.782669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.305988, 36.189922, 55.756062>,  <31.989311, 35.949612, 55.711720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305988, 36.189922, 55.756062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591595, -0.708637, -0.384511,
		-0.152446, 0.369998, -0.916440,
		0.791691, 0.600778, 0.110860,
		32.543495, 36.370155, 55.789318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337826, 35.964062, 55.031475>,  <31.989311, 35.949612, 55.711720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337826, 35.964062, 55.031475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.637413, 36.087173, 55.266193>,  <32.817165, 36.161041, 55.407024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.637413, 36.087173, 55.266193>,  <32.337826, 35.964062, 55.031475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637413, 36.087173, 55.266193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614248, -0.654613, -0.440659,
		0.248498, 0.690475, -0.679333,
		0.748964, 0.307776, 0.586793,
		32.862103, 36.179504, 55.442230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883286, 36.108070, 54.600105>,  <32.337826, 35.964062, 55.031475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883286, 36.108070, 54.600105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.020103, 36.026924, 54.967113>,  <33.102192, 35.978237, 55.187321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.020103, 36.026924, 54.967113>,  <32.883286, 36.108070, 54.600105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020103, 36.026924, 54.967113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759712, -0.514949, -0.397070,
		0.553032, 0.832869, -0.022012,
		0.342043, -0.202869, 0.917524,
		33.122715, 35.966064, 55.242371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599541, 36.049522, 54.359417>,  <32.883286, 36.108070, 54.600105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599541, 36.049522, 54.359417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.545425, 35.910130, 54.730415>,  <33.512955, 35.826492, 54.953014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.545425, 35.910130, 54.730415>,  <33.599541, 36.049522, 54.359417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545425, 35.910130, 54.730415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733881, -0.664165, -0.142494,
		0.665669, 0.661395, 0.345603,
		-0.135293, -0.348485, 0.927499,
		33.504837, 35.805584, 55.008663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222404, 36.167923, 54.642162>,  <33.599541, 36.049522, 54.359417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222404, 36.167923, 54.642162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.044548, 35.873383, 54.846157>,  <33.937836, 35.696659, 54.968552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.044548, 35.873383, 54.846157>,  <34.222404, 36.167923, 54.642162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044548, 35.873383, 54.846157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816017, -0.567783, -0.108350,
		0.369343, 0.367978, 0.853334,
		-0.444638, -0.736353, 0.509982,
		33.911156, 35.652477, 54.999153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734844, 35.879063, 55.077602>,  <34.222404, 36.167923, 54.642162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734844, 35.879063, 55.077602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.455288, 35.593025, 55.071945>,  <34.287556, 35.421402, 55.068550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.455288, 35.593025, 55.071945>,  <34.734844, 35.879063, 55.077602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455288, 35.593025, 55.071945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689437, -0.668285, -0.279415,
		0.190354, -0.205032, 0.960066,
		-0.698887, -0.715093, -0.014146,
		34.245621, 35.378498, 55.067703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081955, 35.314461, 55.340305>,  <34.734844, 35.879063, 55.077602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081955, 35.314461, 55.340305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.776878, 35.148426, 55.141907>,  <34.593834, 35.048805, 55.022869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.776878, 35.148426, 55.141907>,  <35.081955, 35.314461, 55.340305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776878, 35.148426, 55.141907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551664, -0.817806, -0.163890,
		-0.337602, -0.398621, 0.852717,
		-0.762688, -0.415084, -0.495997,
		34.548073, 35.023903, 54.993107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949818, 34.702843, 55.677067>,  <35.081955, 35.314461, 55.340305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949818, 34.702843, 55.677067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.811558, 34.676247, 55.302666>,  <34.728603, 34.660290, 55.078026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.811558, 34.676247, 55.302666>,  <34.949818, 34.702843, 55.677067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811558, 34.676247, 55.302666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526881, -0.839157, -0.134956,
		-0.776482, -0.539811, 0.325085,
		-0.345648, -0.066490, -0.936006,
		34.707863, 34.656300, 55.021866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944424, 33.973164, 55.561428>,  <34.949818, 34.702843, 55.677067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944424, 33.973164, 55.561428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.918732, 34.131115, 55.194832>,  <34.903316, 34.225883, 54.974876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.918732, 34.131115, 55.194832>,  <34.944424, 33.973164, 55.561428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918732, 34.131115, 55.194832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442824, -0.811736, -0.380778,
		-0.894305, -0.430299, -0.122723,
		-0.064230, 0.394876, -0.916486,
		34.899464, 34.249577, 54.919888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632332, 33.376930, 55.125832>,  <34.944424, 33.973164, 55.561428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632332, 33.376930, 55.125832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.815468, 33.637486, 54.883816>,  <34.925350, 33.793819, 54.738605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.815468, 33.637486, 54.883816>,  <34.632332, 33.376930, 55.125832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815468, 33.637486, 54.883816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516381, -0.748838, -0.415442,
		-0.723692, -0.122225, -0.679214,
		0.457844, 0.651385, -0.605043,
		34.952820, 33.832901, 54.702301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574928, 33.072021, 54.448620>,  <34.632332, 33.376930, 55.125832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574928, 33.072021, 54.448620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.879803, 33.330963, 54.447289>,  <35.062725, 33.486328, 54.446491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.879803, 33.330963, 54.447289>,  <34.574928, 33.072021, 54.448620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879803, 33.330963, 54.447289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623138, -0.735047, -0.267216,
		-0.175425, 0.201597, -0.963631,
		0.762184, 0.647352, -0.003323,
		35.108459, 33.525169, 54.446293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152996, 32.733791, 54.002388>,  <34.574928, 33.072021, 54.448620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152996, 32.733791, 54.002388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.073780, 32.360825, 54.123299>,  <34.026249, 32.137043, 54.195843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.073780, 32.360825, 54.123299>,  <34.152996, 32.733791, 54.002388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073780, 32.360825, 54.123299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570116, 0.360428, 0.738281,
		-0.797337, -0.026119, -0.602969,
		-0.198044, -0.932421, 0.302274,
		34.014366, 32.081097, 54.213982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469990, 32.852287, 54.274551>,  <34.152996, 32.733791, 54.002388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469990, 32.852287, 54.274551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.561916, 32.480236, 54.389122>,  <33.617073, 32.257004, 54.457863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.561916, 32.480236, 54.389122>,  <33.469990, 32.852287, 54.274551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561916, 32.480236, 54.389122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514435, 0.133728, 0.847038,
		-0.826159, -0.342013, -0.447759,
		0.229820, -0.930131, 0.286424,
		33.630863, 32.201195, 54.475048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784271, 32.446342, 54.438576>,  <33.469990, 32.852287, 54.274551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784271, 32.446342, 54.438576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.105659, 32.310841, 54.634403>,  <33.298492, 32.229542, 54.751900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.105659, 32.310841, 54.634403>,  <32.784271, 32.446342, 54.438576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105659, 32.310841, 54.634403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475643, 0.129295, 0.870084,
		-0.358040, -0.931950, -0.057240,
		0.803474, -0.338751, 0.489568,
		33.346703, 32.209217, 54.781273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494507, 32.061966, 54.915161>,  <32.784271, 32.446342, 54.438576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494507, 32.061966, 54.915161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.860710, 32.104736, 55.070293>,  <33.080433, 32.130398, 55.163372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.860710, 32.104736, 55.070293>,  <32.494507, 32.061966, 54.915161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860710, 32.104736, 55.070293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393210, 0.441579, 0.806470,
		-0.085028, -0.890829, 0.446312,
		0.915509, 0.106922, 0.387829,
		33.135365, 32.136814, 55.186642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422409, 31.819195, 55.541492>,  <32.494507, 32.061966, 54.915161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422409, 31.819195, 55.541492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.743473, 32.057201, 55.557976>,  <32.936111, 32.200005, 55.567867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.743473, 32.057201, 55.557976>,  <32.422409, 31.819195, 55.541492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743473, 32.057201, 55.557976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445076, 0.551531, 0.705493,
		0.397051, -0.584610, 0.707517,
		0.802657, 0.595016, 0.041210,
		32.984268, 32.235706, 55.570339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693752, 31.846460, 56.297932>,  <32.422409, 31.819195, 55.541492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693752, 31.846460, 56.297932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.787212, 32.178116, 56.094780>,  <32.843288, 32.377110, 55.972889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.787212, 32.178116, 56.094780>,  <32.693752, 31.846460, 56.297932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787212, 32.178116, 56.094780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384585, 0.558546, 0.734930,
		0.893031, 0.023609, 0.449376,
		0.233646, 0.829138, -0.507878,
		32.857307, 32.426857, 55.942417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696186, 32.268429, 56.799553>,  <32.693752, 31.846460, 56.297932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696186, 32.268429, 56.799553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.701500, 32.513458, 56.483433>,  <32.704689, 32.660477, 56.293762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.701500, 32.513458, 56.483433>,  <32.696186, 32.268429, 56.799553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701500, 32.513458, 56.483433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325700, 0.749915, 0.575801,
		0.945380, 0.249750, 0.209479,
		0.013285, 0.612578, -0.790298,
		32.705486, 32.697231, 56.246342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017170, 32.776363, 57.098663>,  <32.696186, 32.268429, 56.799553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017170, 32.776363, 57.098663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.822987, 32.926533, 56.782845>,  <32.706474, 33.016636, 56.593353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.822987, 32.926533, 56.782845>,  <33.017170, 32.776363, 57.098663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822987, 32.926533, 56.782845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438918, 0.676382, 0.591489,
		0.756094, 0.633691, -0.163577,
		-0.485462, 0.375424, -0.789546,
		32.677349, 33.039162, 56.545982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912598, 33.495140, 57.312359>,  <33.017170, 32.776363, 57.098663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912598, 33.495140, 57.312359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.674934, 33.504208, 56.990749>,  <32.532337, 33.509647, 56.797783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.674934, 33.504208, 56.990749>,  <32.912598, 33.495140, 57.312359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674934, 33.504208, 56.990749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435886, 0.831027, 0.345541,
		0.676002, 0.555771, -0.483880,
		-0.594159, 0.022670, -0.804028,
		32.496685, 33.511009, 56.749542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876122, 34.118580, 57.015587>,  <32.912598, 33.495140, 57.312359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876122, 34.118580, 57.015587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.539265, 33.960247, 56.869102>,  <32.337151, 33.865246, 56.781212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.539265, 33.960247, 56.869102>,  <32.876122, 34.118580, 57.015587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539265, 33.960247, 56.869102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505468, 0.816033, 0.280343,
		0.187874, 0.421198, -0.887296,
		-0.842143, -0.395831, -0.366214,
		32.286621, 33.841499, 56.759239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536011, 34.612686, 56.589581>,  <32.876122, 34.118580, 57.015587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536011, 34.612686, 56.589581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.255131, 34.370598, 56.739578>,  <32.086601, 34.225346, 56.829575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.255131, 34.370598, 56.739578>,  <32.536011, 34.612686, 56.589581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255131, 34.370598, 56.739578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569439, 0.793563, 0.214467,
		-0.427381, -0.062936, -0.901878,
		-0.702200, -0.605224, 0.374992,
		32.044472, 34.189030, 56.852077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868549, 34.710308, 56.195530>,  <32.536011, 34.612686, 56.589581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868549, 34.710308, 56.195530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.768381, 34.568653, 56.555946>,  <31.708281, 34.483658, 56.772198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.768381, 34.568653, 56.555946>,  <31.868549, 34.710308, 56.195530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.768381, 34.568653, 56.555946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558952, 0.812797, 0.164112,
		-0.790482, -0.462541, -0.401491,
		-0.250422, -0.354142, 0.901040,
		31.693254, 34.462410, 56.826260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.159544, 34.741058, 56.125347>,  <31.868549, 34.710308, 56.195530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.159544, 34.741058, 56.125347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.238468, 34.681538, 56.512939>,  <31.285822, 34.645824, 56.745495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.238468, 34.681538, 56.512939>,  <31.159544, 34.741058, 56.125347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238468, 34.681538, 56.512939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743292, 0.621763, 0.246835,
		-0.639207, -0.768940, 0.012076,
		0.197310, -0.148802, 0.968982,
		31.297661, 34.636898, 56.803635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.561810, 34.380947, 56.398373>,  <31.159544, 34.741058, 56.125347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.561810, 34.380947, 56.398373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.749529, 34.565311, 56.699654>,  <30.862160, 34.675930, 56.880424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.749529, 34.565311, 56.699654>,  <30.561810, 34.380947, 56.398373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.749529, 34.565311, 56.699654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842974, 0.487858, 0.226690,
		-0.262973, -0.741318, 0.617489,
		0.469297, 0.460914, 0.753206,
		30.890318, 34.703587, 56.925617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.946587, 33.806042, 56.391884>,  <30.561810, 34.380947, 56.398373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.946587, 33.806042, 56.391884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.607355, 33.597984, 56.351460>,  <29.403816, 33.473148, 56.327206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.607355, 33.597984, 56.351460>,  <29.946587, 33.806042, 56.391884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.607355, 33.597984, 56.351460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462007, -0.632491, -0.621695,
		0.259448, -0.573939, 0.776711,
		-0.848078, -0.520144, -0.101065,
		29.352932, 33.441940, 56.321140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.072741, 33.119591, 56.543373>,  <29.946587, 33.806042, 56.391884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.072741, 33.119591, 56.543373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.758690, 33.111141, 56.295784>,  <29.570259, 33.106071, 56.147232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.758690, 33.111141, 56.295784>,  <30.072741, 33.119591, 56.543373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.758690, 33.111141, 56.295784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525521, -0.551566, -0.647768,
		-0.327724, -0.833864, 0.444149,
		-0.785127, -0.021120, -0.618974,
		29.523151, 33.104805, 56.110092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.008760, 32.433235, 56.371086>,  <30.072741, 33.119591, 56.543373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.008760, 32.433235, 56.371086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.781719, 32.606331, 56.090923>,  <29.645494, 32.710186, 55.922825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.781719, 32.606331, 56.090923>,  <30.008760, 32.433235, 56.371086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.781719, 32.606331, 56.090923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238649, -0.727722, -0.643015,
		-0.787955, -0.532128, 0.309785,
		-0.567603, 0.432737, -0.700404,
		29.611439, 32.736153, 55.880802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.591000, 31.952763, 56.135056>,  <30.008760, 32.433235, 56.371086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.591000, 31.952763, 56.135056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.592497, 32.233986, 55.850605>,  <29.593395, 32.402721, 55.679935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.592497, 32.233986, 55.850605>,  <29.591000, 31.952763, 56.135056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.592497, 32.233986, 55.850605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351338, -0.666717, -0.657305,
		-0.936241, -0.247384, -0.249507,
		0.003744, 0.703057, -0.711123,
		29.593620, 32.444904, 55.637268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.350489, 31.598740, 55.593246>,  <29.591000, 31.952763, 56.135056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.350489, 31.598740, 55.593246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.526011, 31.926701, 55.446163>,  <29.631323, 32.123478, 55.357914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.526011, 31.926701, 55.446163>,  <29.350489, 31.598740, 55.593246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526011, 31.926701, 55.446163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281432, -0.514019, -0.810297,
		-0.853374, 0.252077, -0.456300,
		0.438804, 0.819904, -0.367708,
		29.657652, 32.172672, 55.335850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153692, 31.657520, 54.927139>,  <29.350489, 31.598740, 55.593246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.153692, 31.657520, 54.927139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.475428, 31.895182, 54.925407>,  <29.668468, 32.037781, 54.924366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.475428, 31.895182, 54.925407>,  <29.153692, 31.657520, 54.927139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.475428, 31.895182, 54.925407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389437, -0.532679, -0.751393,
		-0.448751, 0.602687, -0.659841,
		0.804339, 0.594155, -0.004332,
		29.716730, 32.073429, 54.924107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.475599, 31.803217, 54.178013>,  <29.153692, 31.657520, 54.927139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.475599, 31.803217, 54.178013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.780293, 31.886375, 54.423466>,  <29.963108, 31.936272, 54.570736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.780293, 31.886375, 54.423466>,  <29.475599, 31.803217, 54.178013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.780293, 31.886375, 54.423466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612862, -0.538421, -0.578363,
		0.210151, 0.816628, -0.537545,
		0.761733, 0.207897, 0.613630,
		30.008812, 31.948744, 54.607555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.082817, 32.123230, 53.686596>,  <29.475599, 31.803217, 54.178013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.082817, 32.123230, 53.686596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.246449, 32.000080, 54.030193>,  <30.344627, 31.926189, 54.236351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.246449, 32.000080, 54.030193>,  <30.082817, 32.123230, 53.686596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.246449, 32.000080, 54.030193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696651, -0.502616, -0.511913,
		0.589350, 0.807829, 0.008875,
		0.409078, -0.307878, 0.858992,
		30.369171, 31.907717, 54.287891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.864620, 32.207790, 53.762737>,  <30.082817, 32.123230, 53.686596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.864620, 32.207790, 53.762737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.793615, 31.912668, 54.023239>,  <30.751013, 31.735596, 54.179543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.793615, 31.912668, 54.023239>,  <30.864620, 32.207790, 53.762737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793615, 31.912668, 54.023239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611918, -0.601034, -0.514115,
		0.770744, 0.307255, 0.558165,
		-0.177512, -0.737802, 0.651258,
		30.740362, 31.691328, 54.218616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500031, 31.699675, 53.727509>,  <30.864620, 32.207790, 53.762737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500031, 31.699675, 53.727509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.219116, 31.456928, 53.876377>,  <31.050568, 31.311279, 53.965698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.219116, 31.456928, 53.876377>,  <31.500031, 31.699675, 53.727509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.219116, 31.456928, 53.876377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369758, -0.757686, -0.537766,
		0.608338, -0.240053, 0.756505,
		-0.702285, -0.606867, 0.372168,
		31.008430, 31.274868, 53.988026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839863, 31.134264, 53.902729>,  <31.500031, 31.699675, 53.727509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839863, 31.134264, 53.902729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.463778, 30.998699, 53.916252>,  <31.238127, 30.917360, 53.924366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.463778, 30.998699, 53.916252>,  <31.839863, 31.134264, 53.902729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463778, 30.998699, 53.916252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287816, -0.843673, -0.453186,
		0.182114, -0.416360, 0.890774,
		-0.940211, -0.338911, 0.033810,
		31.181715, 30.897026, 53.926395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876728, 30.404160, 54.154308>,  <31.839863, 31.134264, 53.902729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876728, 30.404160, 54.154308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.528782, 30.419992, 53.957626>,  <31.320015, 30.429493, 53.839619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.528782, 30.419992, 53.957626>,  <31.876728, 30.404160, 54.154308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528782, 30.419992, 53.957626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362232, -0.625364, -0.691164,
		-0.334850, -0.779329, 0.529644,
		-0.869864, 0.039583, -0.491701,
		31.267822, 30.431868, 53.810116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806782, 29.756632, 53.989399>,  <31.876728, 30.404160, 54.154308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.806782, 29.756632, 53.989399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.545448, 29.930262, 53.741291>,  <31.388649, 30.034439, 53.592426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.545448, 29.930262, 53.741291>,  <31.806782, 29.756632, 53.989399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545448, 29.930262, 53.741291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364250, -0.538012, -0.760175,
		-0.663684, -0.722581, 0.193389,
		-0.653334, 0.434074, -0.620270,
		31.349447, 30.060484, 53.555210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611078, 29.057531, 53.582207>,  <31.806782, 29.756632, 53.989399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611078, 29.057531, 53.582207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.524111, 29.396049, 53.387676>,  <31.471931, 29.599161, 53.270958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.524111, 29.396049, 53.387676>,  <31.611078, 29.057531, 53.582207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524111, 29.396049, 53.387676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326605, -0.406449, -0.853304,
		-0.919814, -0.344360, -0.188036,
		-0.217417, 0.846295, -0.486328,
		31.458885, 29.649939, 53.241779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<27.107101, 35.611080, 52.875061> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.273596, 35.972980, 52.911228>,  <27.373491, 36.190121, 52.932926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.273596, 35.972980, 52.911228>,  <27.107101, 35.611080, 52.875061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.273596, 35.972980, 52.911228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415983, 0.101060, 0.903739,
		0.808521, -0.413779, 0.418426,
		0.416235, 0.904751, 0.090416,
		27.398466, 36.244404, 52.938354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.245199, 35.643147, 53.561661>,  <27.107101, 35.611080, 52.875061>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.245199, 35.643147, 53.561661> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.241060, 36.018703, 53.424038>,  <27.238577, 36.244038, 53.341465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.241060, 36.018703, 53.424038>,  <27.245199, 35.643147, 53.561661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.241060, 36.018703, 53.424038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313657, 0.323663, 0.892671,
		0.949480, 0.117151, 0.291142,
		-0.010345, 0.938892, -0.344057,
		27.237957, 36.300369, 53.320820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.523945, 35.961819, 54.061024>,  <27.245199, 35.643147, 53.561661>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.523945, 35.961819, 54.061024> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.332144, 36.252201, 53.863815>,  <27.217064, 36.426430, 53.745491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.332144, 36.252201, 53.863815>,  <27.523945, 35.961819, 54.061024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.332144, 36.252201, 53.863815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494151, 0.240905, 0.835332,
		0.725185, 0.644167, 0.243219,
		-0.479500, 0.725957, -0.493016,
		27.188293, 36.469990, 53.715912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.612444, 36.619152, 54.431187>,  <27.523945, 35.961819, 54.061024>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.612444, 36.619152, 54.431187> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.286909, 36.658031, 54.202023>,  <27.091589, 36.681358, 54.064526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.286909, 36.658031, 54.202023>,  <27.612444, 36.619152, 54.431187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.286909, 36.658031, 54.202023> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541717, 0.229847, 0.808525,
		0.210271, 0.968360, -0.134402,
		-0.813836, 0.097202, -0.572908,
		27.042759, 36.687191, 54.030151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.276569, 37.313519, 54.671959>,  <27.612444, 36.619152, 54.431187>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.276569, 37.313519, 54.671959> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.973421, 37.146584, 54.471378>,  <26.791533, 37.046421, 54.351028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.973421, 37.146584, 54.471378>,  <27.276569, 37.313519, 54.671959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.973421, 37.146584, 54.471378> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611943, 0.188266, 0.768168,
		-0.226181, 0.889035, -0.398070,
		-0.757870, -0.417342, -0.501456,
		26.746059, 37.021381, 54.320942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.756376, 37.778149, 54.677280>,  <27.276569, 37.313519, 54.671959>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.756376, 37.778149, 54.677280> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.558884, 37.433517, 54.630112>,  <26.440388, 37.226738, 54.601810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.558884, 37.433517, 54.630112>,  <26.756376, 37.778149, 54.677280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.558884, 37.433517, 54.630112> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716161, 0.325934, 0.617155,
		-0.493296, 0.389158, -0.777956,
		-0.493733, -0.861582, -0.117918,
		26.410765, 37.175041, 54.594738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.145308, 37.984550, 54.772499>,  <26.756376, 37.778149, 54.677280>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.145308, 37.984550, 54.772499> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.084152, 37.589256, 54.774353>,  <26.047459, 37.352081, 54.775467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.084152, 37.589256, 54.774353>,  <26.145308, 37.984550, 54.772499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.084152, 37.589256, 54.774353> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865020, 0.136094, 0.482928,
		-0.477876, 0.069822, -0.875648,
		-0.152889, -0.988232, 0.004639,
		26.038286, 37.292786, 54.775745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.608538, 37.861618, 54.417965>,  <26.145308, 37.984550, 54.772499>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.608538, 37.861618, 54.417965> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.645283, 37.561104, 54.679386>,  <25.667330, 37.380795, 54.836239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.645283, 37.561104, 54.679386>,  <25.608538, 37.861618, 54.417965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.645283, 37.561104, 54.679386> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875918, 0.251212, 0.411898,
		-0.473634, -0.610296, -0.634988,
		0.091863, -0.751287, 0.653552,
		25.672842, 37.335716, 54.875450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.893059, 37.662998, 54.632683>,  <25.608538, 37.861618, 54.417965>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.893059, 37.662998, 54.632683> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.151440, 37.538418, 54.911465>,  <25.306467, 37.463669, 55.078735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.151440, 37.538418, 54.911465>,  <24.893059, 37.662998, 54.632683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.151440, 37.538418, 54.911465> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710688, 0.087958, 0.697987,
		-0.278694, -0.946181, -0.164530,
		0.645951, -0.311455, 0.696954,
		25.345224, 37.444981, 55.120552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.459944, 37.269592, 55.116795>,  <24.893059, 37.662998, 54.632683>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.459944, 37.269592, 55.116795> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.789072, 37.406544, 55.298233>,  <24.986549, 37.488712, 55.407097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.789072, 37.406544, 55.298233>,  <24.459944, 37.269592, 55.116795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.789072, 37.406544, 55.298233> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562868, 0.380839, 0.733581,
		0.078413, -0.858918, 0.506074,
		0.822819, 0.342375, 0.453595,
		25.035917, 37.509258, 55.434311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.250963, 37.161404, 55.732121>,  <24.459944, 37.269592, 55.116795>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.250963, 37.161404, 55.732121> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.560623, 37.412292, 55.766277>,  <24.746418, 37.562824, 55.786770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.560623, 37.412292, 55.766277>,  <24.250963, 37.161404, 55.732121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.560623, 37.412292, 55.766277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506901, 0.533461, 0.677104,
		0.379137, -0.567466, 0.730915,
		0.774149, 0.627217, 0.085395,
		24.792868, 37.600456, 55.791897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.305992, 37.243866, 56.461498>,  <24.250963, 37.161404, 55.732121>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.305992, 37.243866, 56.461498> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.516691, 37.546936, 56.307377>,  <24.643110, 37.728779, 56.214905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.516691, 37.546936, 56.307377>,  <24.305992, 37.243866, 56.461498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.516691, 37.546936, 56.307377> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347223, 0.605540, 0.716070,
		0.775868, -0.243403, 0.582051,
		0.526749, 0.757678, -0.385304,
		24.674717, 37.774239, 56.191784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.834183, 37.520916, 56.956150>,  <24.305992, 37.243866, 56.461498>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.834183, 37.520916, 56.956150> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.671730, 37.783333, 56.701694>,  <24.574259, 37.940781, 56.549023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.671730, 37.783333, 56.701694>,  <24.834183, 37.520916, 56.956150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.671730, 37.783333, 56.701694> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315769, 0.552500, 0.771384,
		0.857524, 0.514156, -0.017231,
		-0.406131, 0.656039, -0.636137,
		24.549891, 37.980145, 56.510853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.898455, 36.847267, 57.190731>,  <24.834183, 37.520916, 56.956150>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.898455, 36.847267, 57.190731> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.747225, 36.563484, 56.952831>,  <24.656487, 36.393215, 56.810089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.747225, 36.563484, 56.952831>,  <24.898455, 36.847267, 57.190731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.747225, 36.563484, 56.952831> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189309, -0.688110, 0.700477,
		-0.906214, 0.152240, 0.394462,
		-0.378073, -0.709456, -0.594754,
		24.633802, 36.350647, 56.774406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.012316, 36.210587, 57.626057>,  <24.898455, 36.847267, 57.190731>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.012316, 36.210587, 57.626057> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.070454, 36.242863, 58.020489>,  <25.105337, 36.262230, 58.257149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.070454, 36.242863, 58.020489>,  <25.012316, 36.210587, 57.626057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.070454, 36.242863, 58.020489> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874007, -0.477553, -0.089746,
		0.463666, 0.874889, -0.139937,
		0.145346, 0.080694, 0.986085,
		25.114058, 36.267071, 58.316315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.679066, 36.643795, 57.847664>,  <25.012316, 36.210587, 57.626057>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.679066, 36.643795, 57.847664> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.554678, 36.375774, 58.117279>,  <25.480045, 36.214962, 58.279049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.554678, 36.375774, 58.117279>,  <25.679066, 36.643795, 57.847664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.554678, 36.375774, 58.117279> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809170, -0.558663, -0.182043,
		0.498539, 0.488804, 0.715912,
		-0.310970, -0.670050, 0.674041,
		25.461388, 36.174759, 58.319492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.312649, 36.397877, 58.111126>,  <25.679066, 36.643795, 57.847664>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.312649, 36.397877, 58.111126> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.082973, 36.106224, 58.260082>,  <25.945168, 35.931232, 58.349457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.082973, 36.106224, 58.260082>,  <26.312649, 36.397877, 58.111126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.082973, 36.106224, 58.260082> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760167, -0.643705, -0.088258,
		0.304062, 0.232403, 0.923869,
		-0.574188, -0.729131, 0.372391,
		25.910717, 35.887486, 58.371799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.695150, 36.161491, 58.651909>,  <26.312649, 36.397877, 58.111126>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.695150, 36.161491, 58.651909> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.430174, 35.880146, 58.548794>,  <26.271187, 35.711338, 58.486923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.430174, 35.880146, 58.548794>,  <26.695150, 36.161491, 58.651909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.430174, 35.880146, 58.548794> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735633, -0.675779, -0.046549,
		-0.141467, -0.220474, 0.965080,
		-0.662443, -0.703359, -0.257788,
		26.231441, 35.669140, 58.471458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.893539, 35.555908, 59.052834>,  <26.695150, 36.161491, 58.651909>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.893539, 35.555908, 59.052834> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.686277, 35.383732, 58.757202>,  <26.561920, 35.280426, 58.579823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.686277, 35.383732, 58.757202>,  <26.893539, 35.555908, 59.052834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.686277, 35.383732, 58.757202> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670069, -0.741324, -0.038025,
		-0.531528, -0.514936, 0.672547,
		-0.518156, -0.430441, -0.739077,
		26.530830, 35.254601, 58.535480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.946514, 34.828987, 59.214546>,  <26.893539, 35.555908, 59.052834>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.946514, 34.828987, 59.214546> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.820259, 34.826244, 58.835003>,  <26.744507, 34.824596, 58.607277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.820259, 34.826244, 58.835003>,  <26.946514, 34.828987, 59.214546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.820259, 34.826244, 58.835003> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623442, -0.755345, -0.201928,
		-0.715327, -0.655291, 0.242691,
		-0.315637, -0.006860, -0.948855,
		26.725569, 34.824188, 58.550346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.849390, 34.110977, 58.957672>,  <26.946514, 34.828987, 59.214546>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.849390, 34.110977, 58.957672> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.883482, 34.320850, 58.618862>,  <26.903936, 34.446774, 58.415577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.883482, 34.320850, 58.618862>,  <26.849390, 34.110977, 58.957672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.883482, 34.320850, 58.618862> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723926, -0.616719, -0.309176,
		-0.684593, -0.586830, -0.432392,
		0.085230, 0.524679, -0.847023,
		26.909052, 34.478252, 58.364754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.950117, 33.585781, 58.548901>,  <26.849390, 34.110977, 58.957672>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.950117, 33.585781, 58.548901> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.089085, 33.913414, 58.366295>,  <27.172464, 34.109993, 58.256733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.089085, 33.913414, 58.366295>,  <26.950117, 33.585781, 58.548901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.089085, 33.913414, 58.366295> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661507, -0.559132, -0.499780,
		-0.664612, -0.128354, -0.736082,
		0.347418, 0.819083, -0.456512,
		27.193310, 34.159138, 58.229340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.978243, 33.520195, 57.920574>,  <26.950117, 33.585781, 58.548901>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.978243, 33.520195, 57.920574> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.259455, 33.801155, 57.965076>,  <27.428183, 33.969730, 57.991776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.259455, 33.801155, 57.965076>,  <26.978243, 33.520195, 57.920574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.259455, 33.801155, 57.965076> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508730, -0.387412, -0.768834,
		-0.496930, 0.597112, -0.629696,
		0.703032, 0.702402, 0.111252,
		27.470364, 34.011875, 57.998451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.165806, 33.759254, 57.207420>,  <26.978243, 33.520195, 57.920574>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.165806, 33.759254, 57.207420> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.462614, 33.878952, 57.447372>,  <27.640699, 33.950771, 57.591343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.462614, 33.878952, 57.447372>,  <27.165806, 33.759254, 57.207420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.462614, 33.878952, 57.447372> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663630, -0.201243, -0.720483,
		-0.094879, 0.932713, -0.347915,
		0.742019, 0.299246, 0.599883,
		27.685221, 33.968727, 57.627338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.555815, 34.002552, 56.706593>,  <27.165806, 33.759254, 57.207420>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.555815, 34.002552, 56.706593> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.831459, 34.005569, 56.996437>,  <27.996845, 34.007378, 57.170345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.831459, 34.005569, 56.996437>,  <27.555815, 34.002552, 56.706593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.831459, 34.005569, 56.996437> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635541, -0.486705, -0.599338,
		0.348155, 0.873534, -0.340186,
		0.689112, 0.007539, 0.724615,
		28.038193, 34.007832, 57.213821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081514, 34.360371, 56.342346>,  <27.555815, 34.002552, 56.706593>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.081514, 34.360371, 56.342346> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.235498, 34.144283, 56.641670>,  <28.327888, 34.014629, 56.821266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.235498, 34.144283, 56.641670>,  <28.081514, 34.360371, 56.342346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.235498, 34.144283, 56.641670> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741709, -0.301430, -0.599173,
		0.549249, 0.785684, 0.284650,
		0.384959, -0.540222, 0.748309,
		28.350986, 33.982216, 56.866161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.777069, 34.572750, 56.375599>,  <28.081514, 34.360371, 56.342346>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.777069, 34.572750, 56.375599> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.717606, 34.195957, 56.495979>,  <28.681927, 33.969883, 56.568207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.717606, 34.195957, 56.495979>,  <28.777069, 34.572750, 56.375599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.717606, 34.195957, 56.495979> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714571, -0.312698, -0.625787,
		0.683586, 0.122020, 0.719598,
		-0.148658, -0.941983, 0.300948,
		28.673008, 33.913361, 56.586262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.399519, 34.324245, 56.433155>,  <28.777069, 34.572750, 56.375599>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.399519, 34.324245, 56.433155> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.186636, 33.986561, 56.458660>,  <29.058907, 33.783951, 56.473965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.186636, 33.986561, 56.458660>,  <29.399519, 34.324245, 56.433155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186636, 33.986561, 56.458660> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709753, -0.485964, -0.509991,
		0.461525, -0.226166, 0.857814,
		-0.532209, -0.844209, 0.063762,
		29.026974, 33.733299, 56.477787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044950, 34.486473, 56.896351>,  <29.399519, 34.324245, 56.433155>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044950, 34.486473, 56.896351> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.337778, 34.734772, 57.008595>,  <30.513475, 34.883751, 57.075939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.337778, 34.734772, 57.008595>,  <30.044950, 34.486473, 56.896351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.337778, 34.734772, 57.008595> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671048, 0.586160, 0.453995,
		0.117336, -0.520659, 0.845664,
		0.732071, 0.620750, 0.280609,
		30.557400, 34.920998, 57.092777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.860950, 34.761139, 57.412113>,  <30.044950, 34.486473, 56.896351>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.860950, 34.761139, 57.412113> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.140812, 35.033020, 57.324024>,  <30.308729, 35.196148, 57.271172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.140812, 35.033020, 57.324024>,  <29.860950, 34.761139, 57.412113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.140812, 35.033020, 57.324024> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580313, 0.720406, 0.379805,
		0.416802, -0.137933, 0.898471,
		0.699652, 0.679698, -0.220222,
		30.350708, 35.236931, 57.257957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.958302, 35.184444, 58.014370>,  <29.860950, 34.761139, 57.412113>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.958302, 35.184444, 58.014370> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.123468, 35.412170, 57.730011>,  <30.222569, 35.548805, 57.559395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.123468, 35.412170, 57.730011>,  <29.958302, 35.184444, 58.014370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.123468, 35.412170, 57.730011> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547516, 0.778925, 0.305782,
		0.727823, 0.262966, 0.633342,
		0.412916, 0.569320, -0.710898,
		30.247343, 35.582966, 57.516743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.241707, 35.811810, 58.335373>,  <29.958302, 35.184444, 58.014370>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.241707, 35.811810, 58.335373> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.194193, 35.900253, 57.948177>,  <30.165686, 35.953320, 57.715858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.194193, 35.900253, 57.948177>,  <30.241707, 35.811810, 58.335373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.194193, 35.900253, 57.948177> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385770, 0.888027, 0.250181,
		0.914916, 0.403138, -0.020186,
		-0.118783, 0.221107, -0.967989,
		30.158558, 35.966587, 57.657780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511999, 36.544735, 58.257526>,  <30.241707, 35.811810, 58.335373>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511999, 36.544735, 58.257526> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.269485, 36.497150, 57.943008>,  <30.123978, 36.468597, 57.754295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.269485, 36.497150, 57.943008>,  <30.511999, 36.544735, 58.257526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.269485, 36.497150, 57.943008> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507717, 0.818915, 0.267583,
		0.612080, 0.561449, -0.556895,
		-0.606285, -0.118963, -0.786299,
		30.087601, 36.461460, 57.707119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.327723, 37.208649, 58.039650>,  <30.511999, 36.544735, 58.257526>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.327723, 37.208649, 58.039650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.031929, 36.982048, 57.894188>,  <29.854454, 36.846088, 57.806911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.031929, 36.982048, 57.894188>,  <30.327723, 37.208649, 58.039650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.031929, 36.982048, 57.894188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666035, 0.694172, 0.272988,
		0.097791, 0.444076, -0.890637,
		-0.739483, -0.566499, -0.363654,
		29.810083, 36.812099, 57.785091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.905161, 37.699463, 57.652161>,  <30.327723, 37.208649, 58.039650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.905161, 37.699463, 57.652161> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.689085, 37.373108, 57.734642>,  <29.559439, 37.177296, 57.784130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.689085, 37.373108, 57.734642>,  <29.905161, 37.699463, 57.652161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.689085, 37.373108, 57.734642> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758393, 0.578175, 0.300921,
		-0.364738, 0.006175, -0.931090,
		-0.540192, -0.815889, 0.206199,
		29.527027, 37.128342, 57.796501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830875, 38.158241, 57.094028>,  <29.905161, 37.699463, 57.652161>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.830875, 38.158241, 57.094028> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.978027, 38.529140, 57.066086>,  <30.066319, 38.751678, 57.049320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.978027, 38.529140, 57.066086>,  <29.830875, 38.158241, 57.094028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.978027, 38.529140, 57.066086> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818081, -0.358454, -0.449727,
		-0.442049, 0.108294, -0.890430,
		0.367881, 0.927245, -0.069861,
		30.088392, 38.807316, 57.045128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.005560, 38.240616, 56.467686>,  <29.830875, 38.158241, 57.094028>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.005560, 38.240616, 56.467686> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.241047, 38.500172, 56.660500>,  <30.382339, 38.655903, 56.776188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.241047, 38.500172, 56.660500>,  <30.005560, 38.240616, 56.467686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.241047, 38.500172, 56.660500> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796809, -0.365481, -0.481163,
		-0.136044, 0.667361, -0.732203,
		0.588716, 0.648886, 0.482038,
		30.417662, 38.694836, 56.805111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.425570, 38.556557, 55.959309>,  <30.005560, 38.240616, 56.467686>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.425570, 38.556557, 55.959309> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.637678, 38.625008, 56.291462>,  <30.764942, 38.666077, 56.490753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.637678, 38.625008, 56.291462>,  <30.425570, 38.556557, 55.959309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.637678, 38.625008, 56.291462> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799590, -0.426597, -0.422695,
		0.281904, 0.888106, -0.363040,
		0.530270, 0.171124, 0.830380,
		30.796759, 38.676346, 56.540577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096973, 38.935555, 55.768360>,  <30.425570, 38.556557, 55.959309>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096973, 38.935555, 55.768360> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.130722, 38.763493, 56.127880>,  <31.150970, 38.660255, 56.343594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.130722, 38.763493, 56.127880>,  <31.096973, 38.935555, 55.768360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.130722, 38.763493, 56.127880> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839850, -0.454714, -0.296457,
		0.536221, 0.779874, 0.322900,
		0.084372, -0.430154, 0.898804,
		31.156034, 38.634445, 56.397522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.782703, 38.981197, 55.860569>,  <31.096973, 38.935555, 55.768360>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.782703, 38.981197, 55.860569> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.617146, 38.692116, 56.081978>,  <31.517811, 38.518665, 56.214825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.617146, 38.692116, 56.081978>,  <31.782703, 38.981197, 55.860569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617146, 38.692116, 56.081978> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780248, -0.594866, -0.193255,
		0.468939, 0.351899, 0.810101,
		-0.413895, -0.722705, 0.553524,
		31.492977, 38.475304, 56.248035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300022, 38.821384, 56.202564>,  <31.782703, 38.981197, 55.860569>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300022, 38.821384, 56.202564> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.050644, 38.511620, 56.245647>,  <31.901016, 38.325760, 56.271496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.050644, 38.511620, 56.245647>,  <32.300022, 38.821384, 56.202564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050644, 38.511620, 56.245647> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768661, -0.632284, -0.096843,
		0.143097, 0.022413, 0.989455,
		-0.623446, -0.774413, 0.107705,
		31.863609, 38.279297, 56.277958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624565, 38.366234, 56.709095>,  <32.300022, 38.821384, 56.202564>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624565, 38.366234, 56.709095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.353634, 38.148029, 56.511654>,  <32.191074, 38.017105, 56.393188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.353634, 38.148029, 56.511654>,  <32.624565, 38.366234, 56.709095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353634, 38.148029, 56.511654> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690706, -0.702537, -0.171367,
		-0.253294, -0.457008, 0.852634,
		-0.677324, -0.545514, -0.493607,
		32.150436, 37.984375, 56.363571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<26.621830, 40.445232, 54.991714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561359, 40.084267, 55.153103>,  <26.525076, 39.867687, 55.249935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561359, 40.084267, 55.153103>,  <26.621830, 40.445232, 54.991714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.561359, 40.084267, 55.153103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004739, -0.408814, -0.912605,
		0.988495, -0.136054, 0.066080,
		-0.151179, -0.902419, 0.403466,
		26.516006, 39.813541, 55.274143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.238108, 40.059570, 54.894234>,  <26.621830, 40.445232, 54.991714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.238108, 40.059570, 54.894234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.897535, 39.849834, 54.889637>,  <26.693192, 39.723991, 54.886879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.897535, 39.849834, 54.889637>,  <27.238108, 40.059570, 54.894234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.897535, 39.849834, 54.889637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052306, -0.063090, -0.996636,
		0.521851, -0.849169, 0.081143,
		-0.851431, -0.524340, -0.011494,
		26.642105, 39.692532, 54.886189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.294552, 39.410595, 54.570606>,  <27.238108, 40.059570, 54.894234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.294552, 39.410595, 54.570606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.901764, 39.482204, 54.546341>,  <26.666090, 39.525169, 54.531780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.901764, 39.482204, 54.546341>,  <27.294552, 39.410595, 54.570606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.901764, 39.482204, 54.546341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068810, 0.039621, -0.996843,
		-0.176060, -0.983046, -0.051225,
		-0.981972, 0.179029, -0.060667,
		26.607172, 39.535912, 54.528141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.071579, 38.794926, 54.210335>,  <27.294552, 39.410595, 54.570606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.071579, 38.794926, 54.210335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.803244, 39.088684, 54.169075>,  <26.642242, 39.264938, 54.144321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.803244, 39.088684, 54.169075>,  <27.071579, 38.794926, 54.210335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.803244, 39.088684, 54.169075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026070, -0.162352, -0.986389,
		-0.741147, -0.659017, 0.128058,
		-0.670837, 0.734397, -0.103146,
		26.601992, 39.309002, 54.138130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.568691, 38.558693, 53.783321>,  <27.071579, 38.794926, 54.210335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.568691, 38.558693, 53.783321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.522522, 38.954391, 53.747383>,  <26.494820, 39.191811, 53.725819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.522522, 38.954391, 53.747383>,  <26.568691, 38.558693, 53.783321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.522522, 38.954391, 53.747383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055770, -0.083857, -0.994916,
		-0.991750, -0.119847, -0.045491,
		-0.115423, 0.989244, -0.089849,
		26.487894, 39.251163, 53.720428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.992273, 38.679432, 53.247025>,  <26.568691, 38.558693, 53.783321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.992273, 38.679432, 53.247025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.225800, 39.002003, 53.284630>,  <26.365915, 39.195545, 53.307194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.225800, 39.002003, 53.284630>,  <25.992273, 38.679432, 53.247025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.225800, 39.002003, 53.284630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157021, 0.001458, -0.987594,
		-0.796556, 0.591337, -0.125774,
		0.583817, 0.806424, 0.094014,
		26.400946, 39.243931, 53.312836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.788275, 39.051788, 52.702213>,  <25.992273, 38.679432, 53.247025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.788275, 39.051788, 52.702213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.137770, 39.202347, 52.825443>,  <26.347467, 39.292683, 52.899384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.137770, 39.202347, 52.825443>,  <25.788275, 39.051788, 52.702213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.137770, 39.202347, 52.825443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345245, -0.033756, -0.937905,
		-0.342621, 0.925845, -0.159442,
		0.873737, 0.376393, 0.308078,
		26.399891, 39.315266, 52.917866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.060747, 39.599804, 52.218250>,  <25.788275, 39.051788, 52.702213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.060747, 39.599804, 52.218250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.404140, 39.501026, 52.398037>,  <26.610176, 39.441757, 52.505909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.404140, 39.501026, 52.398037>,  <26.060747, 39.599804, 52.218250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.404140, 39.501026, 52.398037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451987, -0.049770, -0.890635,
		0.242311, 0.967750, 0.068890,
		0.858483, -0.246949, 0.449470,
		26.661686, 39.426941, 52.532879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.490171, 40.082859, 51.951900>,  <26.060747, 39.599804, 52.218250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.490171, 40.082859, 51.951900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673065, 39.746590, 52.067978>,  <26.782803, 39.544830, 52.137623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673065, 39.746590, 52.067978>,  <26.490171, 40.082859, 51.951900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.673065, 39.746590, 52.067978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474847, -0.045124, -0.878911,
		0.751968, 0.539665, 0.378557,
		0.457236, -0.840670, 0.290190,
		26.810236, 39.494389, 52.155033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.081173, 40.220257, 51.733654>,  <26.490171, 40.082859, 51.951900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.081173, 40.220257, 51.733654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111673, 39.826042, 51.794193>,  <27.129974, 39.589512, 51.830517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111673, 39.826042, 51.794193>,  <27.081173, 40.220257, 51.733654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.111673, 39.826042, 51.794193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566588, -0.082071, -0.819904,
		0.820466, 0.148270, 0.552134,
		0.076253, -0.985536, 0.151344,
		27.134550, 39.530380, 51.839596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.775799, 40.102028, 51.582508>,  <27.081173, 40.220257, 51.733654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.775799, 40.102028, 51.582508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.626448, 39.730968, 51.585712>,  <27.536837, 39.508335, 51.587635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.626448, 39.730968, 51.585712>,  <27.775799, 40.102028, 51.582508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.626448, 39.730968, 51.585712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563778, -0.233759, -0.792156,
		0.736711, -0.291259, 0.610266,
		-0.373378, -0.927645, 0.008007,
		27.514435, 39.452675, 51.588116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.373802, 39.692924, 51.465233>,  <27.775799, 40.102028, 51.582508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.373802, 39.692924, 51.465233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.067778, 39.453037, 51.371410>,  <27.884163, 39.309105, 51.315117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.067778, 39.453037, 51.371410>,  <28.373802, 39.692924, 51.465233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.067778, 39.453037, 51.371410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576237, -0.474987, -0.665085,
		0.287452, -0.643992, 0.708975,
		-0.765063, -0.599718, -0.234556,
		27.838259, 39.273121, 51.301044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.056391, 39.563404, 51.541546>,  <28.373802, 39.692924, 51.465233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.056391, 39.563404, 51.541546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.345673, 39.744862, 51.749847>,  <29.519241, 39.853737, 51.874828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.345673, 39.744862, 51.749847>,  <29.056391, 39.563404, 51.541546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345673, 39.744862, 51.749847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688645, 0.416477, 0.593562,
		0.052384, -0.787880, 0.613597,
		0.723204, 0.453643, 0.520753,
		29.562634, 39.880955, 51.906075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.928638, 39.474068, 52.231045>,  <29.056391, 39.563404, 51.541546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.928638, 39.474068, 52.231045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143637, 39.808773, 52.189247>,  <29.272636, 40.009598, 52.164169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143637, 39.808773, 52.189247>,  <28.928638, 39.474068, 52.231045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.143637, 39.808773, 52.189247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503806, 0.418018, 0.755937,
		0.676223, -0.353669, 0.646252,
		0.537496, 0.836767, -0.104492,
		29.304886, 40.059803, 52.157898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.193300, 39.574360, 52.903214>,  <28.928638, 39.474068, 52.231045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.193300, 39.574360, 52.903214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.213047, 39.939156, 52.740318>,  <29.224895, 40.158031, 52.642582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.213047, 39.939156, 52.740318>,  <29.193300, 39.574360, 52.903214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.213047, 39.939156, 52.740318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266715, 0.404968, 0.874565,
		0.962510, 0.065440, 0.263233,
		0.049369, 0.911986, -0.407239,
		29.227858, 40.212753, 52.618145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.631727, 39.961739, 53.305420>,  <29.193300, 39.574360, 52.903214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.631727, 39.961739, 53.305420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.416512, 40.221436, 53.090389>,  <29.287382, 40.377254, 52.961369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.416512, 40.221436, 53.090389>,  <29.631727, 39.961739, 53.305420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.416512, 40.221436, 53.090389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211171, 0.513602, 0.831637,
		0.816040, 0.560975, -0.139236,
		-0.538039, 0.649246, -0.537581,
		29.255100, 40.416210, 52.929115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.809496, 40.696686, 53.500587>,  <29.631727, 39.961739, 53.305420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.809496, 40.696686, 53.500587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.443485, 40.706097, 53.339504>,  <29.223879, 40.711742, 53.242855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.443485, 40.706097, 53.339504>,  <29.809496, 40.696686, 53.500587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.443485, 40.706097, 53.339504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318659, 0.569967, 0.757360,
		0.247350, 0.821331, -0.514037,
		-0.915027, 0.023531, -0.402705,
		29.168978, 40.713158, 53.218693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.608881, 41.291103, 53.753010>,  <29.809496, 40.696686, 53.500587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.608881, 41.291103, 53.753010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260771, 41.146965, 53.618683>,  <29.051905, 41.060482, 53.538086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260771, 41.146965, 53.618683>,  <29.608881, 41.291103, 53.753010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.260771, 41.146965, 53.618683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487856, 0.536521, 0.688580,
		-0.067956, 0.763083, -0.642718,
		-0.870275, -0.360347, -0.335815,
		28.999689, 41.038860, 53.517937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.142889, 41.893158, 53.699471>,  <29.608881, 41.291103, 53.753010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.142889, 41.893158, 53.699471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905912, 41.571949, 53.725292>,  <28.763727, 41.379223, 53.740784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905912, 41.571949, 53.725292>,  <29.142889, 41.893158, 53.699471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.905912, 41.571949, 53.725292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534825, 0.451964, 0.713926,
		-0.602476, 0.388433, -0.697239,
		-0.592439, -0.803025, 0.064553,
		28.728180, 41.331043, 53.744659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.543505, 42.237713, 53.635338>,  <29.142889, 41.893158, 53.699471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.543505, 42.237713, 53.635338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.464245, 41.874352, 53.782604>,  <28.416689, 41.656334, 53.870964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.464245, 41.874352, 53.782604>,  <28.543505, 42.237713, 53.635338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.464245, 41.874352, 53.782604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677488, 0.398376, 0.618310,
		-0.708341, -0.126908, -0.694369,
		-0.198152, -0.908400, 0.368164,
		28.404799, 41.601830, 53.893055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.906763, 42.116085, 53.631329>,  <28.543505, 42.237713, 53.635338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.906763, 42.116085, 53.631329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.030470, 41.857697, 53.910492>,  <28.104694, 41.702663, 54.077991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.030470, 41.857697, 53.910492>,  <27.906763, 42.116085, 53.631329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.030470, 41.857697, 53.910492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646742, 0.395167, 0.652356,
		-0.697193, -0.653119, -0.295564,
		0.309269, -0.645971, 0.697907,
		28.123251, 41.663906, 54.119865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.264608, 41.790302, 54.032665>,  <27.906763, 42.116085, 53.631329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.264608, 41.790302, 54.032665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.593597, 41.737225, 54.253910>,  <27.790991, 41.705379, 54.386658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.593597, 41.737225, 54.253910>,  <27.264608, 41.790302, 54.032665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.593597, 41.737225, 54.253910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524212, 0.200604, 0.827623,
		-0.220773, -0.970645, 0.095434,
		0.822473, -0.132689, 0.553111,
		27.840340, 41.697418, 54.419842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.151531, 41.193321, 54.505219>,  <27.264608, 41.790302, 54.032665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.151531, 41.193321, 54.505219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.438124, 41.408089, 54.683376>,  <27.610079, 41.536949, 54.790272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.438124, 41.408089, 54.683376>,  <27.151531, 41.193321, 54.505219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.438124, 41.408089, 54.683376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519867, -0.014793, 0.854119,
		0.465180, -0.843506, 0.268526,
		0.716482, 0.536917, 0.445392,
		27.653069, 41.569164, 54.816994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.191242, 40.856819, 55.123692>,  <27.151531, 41.193321, 54.505219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.191242, 40.856819, 55.123692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.386230, 41.200127, 55.187878>,  <27.503223, 41.406113, 55.226387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.386230, 41.200127, 55.187878>,  <27.191242, 40.856819, 55.123692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.386230, 41.200127, 55.187878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620361, 0.211124, 0.755366,
		0.614430, -0.467762, 0.635353,
		0.487471, 0.858269, 0.160461,
		27.532473, 41.457607, 55.236015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.422169, 40.786564, 55.793159>,  <27.191242, 40.856819, 55.123692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.422169, 40.786564, 55.793159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.402306, 41.176697, 55.707130>,  <27.390388, 41.410778, 55.655514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.402306, 41.176697, 55.707130>,  <27.422169, 40.786564, 55.793159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.402306, 41.176697, 55.707130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626385, 0.137313, 0.767325,
		0.777931, 0.172822, 0.604116,
		-0.049657, 0.975335, -0.215073,
		27.387409, 41.469296, 55.642609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.561527, 41.210979, 56.507710>,  <27.422169, 40.786564, 55.793159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.561527, 41.210979, 56.507710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337891, 41.377197, 56.220730>,  <27.203709, 41.476929, 56.048542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337891, 41.377197, 56.220730>,  <27.561527, 41.210979, 56.507710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.337891, 41.377197, 56.220730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696515, 0.234007, 0.678313,
		0.449760, 0.878954, 0.158605,
		-0.559091, 0.415548, -0.717451,
		27.170164, 41.501862, 56.005493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.915388, 40.706863, 56.862762>,  <27.561527, 41.210979, 56.507710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.915388, 40.706863, 56.862762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.935581, 40.630653, 57.254917>,  <27.947697, 40.584927, 57.490208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.935581, 40.630653, 57.254917>,  <27.915388, 40.706863, 56.862762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.935581, 40.630653, 57.254917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901734, -0.413291, -0.126751,
		0.429333, 0.890444, 0.150942,
		0.050482, -0.190528, 0.980383,
		27.950726, 40.573494, 57.549030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.595140, 40.985527, 57.170700>,  <27.915388, 40.706863, 56.862762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.595140, 40.985527, 57.170700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.469404, 40.664589, 57.373653>,  <28.393963, 40.472027, 57.495426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.469404, 40.664589, 57.373653>,  <28.595140, 40.985527, 57.170700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.469404, 40.664589, 57.373653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936139, -0.350714, 0.025367,
		0.157592, 0.482953, 0.861348,
		-0.314338, -0.802344, 0.507381,
		28.375103, 40.423885, 57.525867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.151331, 40.843033, 57.565563>,  <28.595140, 40.985527, 57.170700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.151331, 40.843033, 57.565563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926851, 40.512012, 57.559643>,  <28.792164, 40.313400, 57.556091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926851, 40.512012, 57.559643>,  <29.151331, 40.843033, 57.565563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926851, 40.512012, 57.559643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826540, -0.561274, 0.042466,
		-0.043449, 0.011599, 0.998988,
		-0.561198, -0.827549, -0.014800,
		28.758492, 40.263748, 57.555202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.375702, 40.408749, 58.068901>,  <29.151331, 40.843033, 57.565563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.375702, 40.408749, 58.068901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.205273, 40.158497, 57.807507>,  <29.103016, 40.008347, 57.650669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.205273, 40.158497, 57.807507>,  <29.375702, 40.408749, 58.068901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.205273, 40.158497, 57.807507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874197, -0.470672, -0.119364,
		-0.232900, -0.622135, 0.747466,
		-0.426071, -0.625633, -0.653488,
		29.077452, 39.970806, 57.611462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699345, 39.808071, 58.243626>,  <29.375702, 40.408749, 58.068901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699345, 39.808071, 58.243626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.538734, 39.757000, 57.880863>,  <29.442368, 39.726357, 57.663208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.538734, 39.757000, 57.880863>,  <29.699345, 39.808071, 58.243626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.538734, 39.757000, 57.880863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685421, -0.698662, -0.205107,
		-0.607432, -0.703968, 0.368043,
		-0.401526, -0.127676, -0.906904,
		29.418276, 39.718697, 57.608791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655544, 39.096001, 58.206390>,  <29.699345, 39.808071, 58.243626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.655544, 39.096001, 58.206390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.616747, 39.212170, 57.825603>,  <29.593470, 39.281872, 57.597130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.616747, 39.212170, 57.825603>,  <29.655544, 39.096001, 58.206390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.616747, 39.212170, 57.825603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738324, -0.620417, -0.264500,
		-0.667436, -0.728516, -0.154253,
		-0.096991, 0.290425, -0.951969,
		29.587650, 39.299297, 57.540012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.619469, 38.461113, 57.730141>,  <29.655544, 39.096001, 58.206390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.619469, 38.461113, 57.730141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.719940, 38.780235, 57.510899>,  <29.780222, 38.971710, 57.379353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.719940, 38.780235, 57.510899>,  <29.619469, 38.461113, 57.730141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.719940, 38.780235, 57.510899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805911, -0.486005, -0.338094,
		-0.536114, -0.356801, -0.765033,
		0.251177, 0.797805, -0.548103,
		29.795294, 39.019577, 57.346466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.167927, 37.845661, 57.478024>,  <29.619469, 38.461113, 57.730141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.167927, 37.845661, 57.478024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146627, 37.533989, 57.727837>,  <29.133848, 37.346985, 57.877724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146627, 37.533989, 57.727837>,  <29.167927, 37.845661, 57.478024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.146627, 37.533989, 57.727837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874369, 0.338471, 0.347730,
		-0.482332, -0.527560, -0.699312,
		-0.053248, -0.779178, 0.624537,
		29.130653, 37.300236, 57.915199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.479147, 37.465267, 57.318779>,  <29.167927, 37.845661, 57.478024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.479147, 37.465267, 57.318779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.593601, 37.397312, 57.695984>,  <28.662273, 37.356541, 57.922306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.593601, 37.397312, 57.695984>,  <28.479147, 37.465267, 57.318779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.593601, 37.397312, 57.695984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922415, 0.217572, 0.319081,
		-0.259380, -0.961145, -0.094452,
		0.286133, -0.169887, 0.943009,
		28.679441, 37.346348, 57.978886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.854900, 37.129414, 57.652401>,  <28.479147, 37.465267, 57.318779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.854900, 37.129414, 57.652401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.083044, 37.267498, 57.950535>,  <28.219931, 37.350349, 58.129414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.083044, 37.267498, 57.950535>,  <27.854900, 37.129414, 57.652401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.083044, 37.267498, 57.950535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809127, 0.392368, 0.437448,
		-0.141436, -0.852573, 0.503106,
		0.570359, 0.345206, 0.745335,
		28.254152, 37.371059, 58.174133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.605030, 36.792015, 58.189014>,  <27.854900, 37.129414, 57.652401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.605030, 36.792015, 58.189014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.783215, 37.125629, 58.319206>,  <27.890125, 37.325798, 58.397324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.783215, 37.125629, 58.319206>,  <27.605030, 36.792015, 58.189014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.783215, 37.125629, 58.319206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851579, 0.282501, 0.441595,
		0.276362, -0.473882, 0.836098,
		0.445462, 0.834044, 0.325475,
		27.916853, 37.375843, 58.416851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.263052, 36.838188, 58.840454>,  <27.605030, 36.792015, 58.189014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.263052, 36.838188, 58.840454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.438112, 37.196178, 58.805878>,  <27.543148, 37.410973, 58.785130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.438112, 37.196178, 58.805878>,  <27.263052, 36.838188, 58.840454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.438112, 37.196178, 58.805878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719109, 0.406112, 0.563875,
		0.539763, -0.184617, 0.821324,
		0.437650, 0.894980, -0.086444,
		27.569408, 37.464672, 58.779945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.253231, 37.069717, 59.518227>,  <27.263052, 36.838188, 58.840454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.253231, 37.069717, 59.518227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299999, 37.396683, 59.292599>,  <27.328060, 37.592861, 59.157223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299999, 37.396683, 59.292599>,  <27.253231, 37.069717, 59.518227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.299999, 37.396683, 59.292599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625444, 0.501789, 0.597517,
		0.771459, 0.282931, 0.569913,
		0.116920, 0.817409, -0.564067,
		27.335075, 37.641907, 59.123379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.436190, 37.554516, 60.004955>,  <27.253231, 37.069717, 59.518227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.436190, 37.554516, 60.004955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.256720, 37.719044, 59.687592>,  <27.149036, 37.817760, 59.497173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.256720, 37.719044, 59.687592>,  <27.436190, 37.554516, 60.004955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.256720, 37.719044, 59.687592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636100, 0.476618, 0.606804,
		0.627746, 0.776949, 0.047794,
		-0.448677, 0.411320, -0.793413,
		27.122116, 37.842442, 59.449566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.135832, 38.050114, 60.302849>,  <27.436190, 37.554516, 60.004955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.135832, 38.050114, 60.302849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.944906, 38.099808, 59.954887>,  <26.830351, 38.129623, 59.746109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.944906, 38.099808, 59.954887>,  <27.135832, 38.050114, 60.302849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.944906, 38.099808, 59.954887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818822, 0.296389, 0.491614,
		0.318905, 0.946953, -0.039745,
		-0.477315, 0.124234, -0.869906,
		26.801712, 38.137077, 59.693916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.782120, 38.654606, 60.453224>,  <27.135832, 38.050114, 60.302849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.782120, 38.654606, 60.453224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.612541, 38.453453, 60.151928>,  <26.510794, 38.332760, 59.971149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.612541, 38.453453, 60.151928>,  <26.782120, 38.654606, 60.453224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.612541, 38.453453, 60.151928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900383, 0.144155, 0.410522,
		-0.097863, 0.852247, -0.513904,
		-0.423948, -0.502886, -0.753242,
		26.485357, 38.302586, 59.925957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<37.056110, 31.589783, 47.756058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.015785, 31.976627, 47.662647>,  <36.991592, 32.208733, 47.606602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.015785, 31.976627, 47.662647>,  <37.056110, 31.589783, 47.756058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015785, 31.976627, 47.662647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916261, 0.001217, 0.400580,
		0.387689, 0.254354, 0.886003,
		-0.100811, 0.967110, -0.233527,
		36.985542, 32.266762, 47.592590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987747, 32.036789, 48.382759>,  <37.056110, 31.589783, 47.756058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987747, 32.036789, 48.382759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.805775, 32.223194, 48.079212>,  <36.696590, 32.335037, 47.897083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.805775, 32.223194, 48.079212>,  <36.987747, 32.036789, 48.382759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805775, 32.223194, 48.079212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820052, 0.113020, 0.561018,
		0.347206, 0.877532, 0.330735,
		-0.454932, 0.466009, -0.758863,
		36.669296, 32.362995, 47.851555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584991, 32.597332, 48.673870>,  <36.987747, 32.036789, 48.382759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584991, 32.597332, 48.673870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.414505, 32.579647, 48.312454>,  <36.312214, 32.569035, 48.095604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.414505, 32.579647, 48.312454>,  <36.584991, 32.597332, 48.673870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414505, 32.579647, 48.312454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904387, 0.043688, 0.424472,
		0.020706, 0.998066, -0.058607,
		-0.426212, -0.044214, -0.903542,
		36.286640, 32.566383, 48.041393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129047, 33.137089, 48.543224>,  <36.584991, 32.597332, 48.673870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129047, 33.137089, 48.543224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.979118, 32.846897, 48.312336>,  <35.889160, 32.672783, 48.173801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.979118, 32.846897, 48.312336>,  <36.129047, 33.137089, 48.543224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979118, 32.846897, 48.312336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909717, 0.167828, 0.379802,
		-0.178664, 0.667471, -0.722884,
		-0.374827, -0.725477, -0.577225,
		35.866669, 32.629253, 48.139168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430168, 33.288696, 48.454296>,  <36.129047, 33.137089, 48.543224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430168, 33.288696, 48.454296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.437805, 32.912800, 48.317753>,  <35.442387, 32.687263, 48.235825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.437805, 32.912800, 48.317753>,  <35.430168, 33.288696, 48.454296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437805, 32.912800, 48.317753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999673, -0.023741, 0.009433,
		-0.016969, 0.341070, -0.939885,
		0.019097, -0.939738, -0.341361,
		35.443535, 32.630878, 48.215343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881332, 33.238922, 47.927422>,  <35.430168, 33.288696, 48.454296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881332, 33.238922, 47.927422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.955009, 32.851410, 47.993809>,  <34.999214, 32.618904, 48.033642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.955009, 32.851410, 47.993809>,  <34.881332, 33.238922, 47.927422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955009, 32.851410, 47.993809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982843, -0.183200, 0.021401,
		0.009673, -0.167061, -0.985899,
		0.184192, -0.968777, 0.165967,
		35.010265, 32.560776, 48.043598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462093, 32.865391, 47.516792>,  <34.881332, 33.238922, 47.927422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462093, 32.865391, 47.516792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.555569, 32.645523, 47.837605>,  <34.611656, 32.513603, 48.030090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.555569, 32.645523, 47.837605>,  <34.462093, 32.865391, 47.516792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555569, 32.645523, 47.837605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970790, -0.085786, 0.224070,
		-0.054359, -0.830971, -0.553653,
		0.233692, -0.549661, 0.802035,
		34.625675, 32.480621, 48.078213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853271, 32.483040, 47.540779>,  <34.462093, 32.865391, 47.516792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853271, 32.483040, 47.540779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.044254, 32.451477, 47.890820>,  <34.158844, 32.432537, 48.100845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.044254, 32.451477, 47.890820>,  <33.853271, 32.483040, 47.540779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044254, 32.451477, 47.890820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878651, -0.045215, 0.475319,
		0.002064, -0.995856, -0.090917,
		0.477461, -0.078903, 0.875103,
		34.187492, 32.427803, 48.153351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587635, 31.952974, 47.812817>,  <33.853271, 32.483040, 47.540779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587635, 31.952974, 47.812817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.738537, 32.164043, 48.117249>,  <33.829079, 32.290684, 48.299908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.738537, 32.164043, 48.117249>,  <33.587635, 31.952974, 47.812817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738537, 32.164043, 48.117249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905300, 0.036882, 0.423168,
		0.195225, -0.848646, 0.491618,
		0.377251, 0.527674, 0.761079,
		33.851711, 32.322346, 48.345573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359207, 31.575315, 48.378979>,  <33.587635, 31.952974, 47.812817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359207, 31.575315, 48.378979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.455082, 31.926176, 48.545425>,  <33.512608, 32.136692, 48.645294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.455082, 31.926176, 48.545425>,  <33.359207, 31.575315, 48.378979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455082, 31.926176, 48.545425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862362, -0.004531, 0.506271,
		0.445963, -0.480188, 0.755339,
		0.239683, 0.877154, 0.416117,
		33.526985, 32.189323, 48.670261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173084, 31.523397, 49.056702>,  <33.359207, 31.575315, 48.378979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173084, 31.523397, 49.056702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.176727, 31.918146, 48.992199>,  <33.178913, 32.154995, 48.953499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.176727, 31.918146, 48.992199>,  <33.173084, 31.523397, 49.056702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176727, 31.918146, 48.992199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907927, 0.075739, 0.412229,
		0.419030, 0.142654, 0.896696,
		0.009109, 0.986870, -0.161256,
		33.179459, 32.214207, 48.943821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807053, 31.738684, 49.607750>,  <33.173084, 31.523397, 49.056702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807053, 31.738684, 49.607750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.789127, 32.034233, 49.338810>,  <32.778374, 32.211563, 49.177444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.789127, 32.034233, 49.338810>,  <32.807053, 31.738684, 49.607750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789127, 32.034233, 49.338810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955696, 0.164288, 0.244243,
		0.290924, 0.653510, 0.698776,
		-0.044815, 0.738874, -0.672352,
		32.775684, 32.255894, 49.137104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477798, 32.388077, 49.915478>,  <32.807053, 31.738684, 49.607750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477798, 32.388077, 49.915478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.421082, 32.392490, 49.519543>,  <32.387051, 32.395138, 49.281982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.421082, 32.392490, 49.519543>,  <32.477798, 32.388077, 49.915478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421082, 32.392490, 49.519543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975107, 0.170647, 0.141585,
		0.170474, 0.985270, -0.013440,
		-0.141793, 0.011031, -0.989835,
		32.378544, 32.395802, 49.222591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139549, 33.024860, 49.747257>,  <32.477798, 32.388077, 49.915478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139549, 33.024860, 49.747257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.021160, 32.731812, 49.502094>,  <31.950127, 32.555981, 49.354996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.021160, 32.731812, 49.502094>,  <32.139549, 33.024860, 49.747257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.021160, 32.731812, 49.502094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913259, 0.028999, 0.406346,
		-0.279925, 0.680015, -0.677660,
		-0.295973, -0.732625, -0.612912,
		31.932369, 32.512024, 49.318222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438095, 33.230598, 49.535625>,  <32.139549, 33.024860, 49.747257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438095, 33.230598, 49.535625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.490700, 32.834225, 49.524612>,  <31.522263, 32.596401, 49.518005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.490700, 32.834225, 49.524612>,  <31.438095, 33.230598, 49.535625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490700, 32.834225, 49.524612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943605, -0.133645, 0.302900,
		-0.303834, -0.013853, -0.952624,
		0.131509, -0.990932, -0.027534,
		31.530153, 32.536945, 49.516354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027037, 32.970074, 49.021233>,  <31.438095, 33.230598, 49.535625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027037, 32.970074, 49.021233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.071058, 32.693756, 49.307083>,  <31.097471, 32.527966, 49.478596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.071058, 32.693756, 49.307083>,  <31.027037, 32.970074, 49.021233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.071058, 32.693756, 49.307083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989021, -0.004767, 0.147700,
		-0.098624, -0.723038, -0.683732,
		0.110052, -0.690792, 0.714629,
		31.104074, 32.486519, 49.521473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422203, 32.737274, 48.965672>,  <31.027037, 32.970074, 49.021233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422203, 32.737274, 48.965672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.555498, 32.542164, 49.288418>,  <30.635475, 32.425098, 49.482063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.555498, 32.542164, 49.288418>,  <30.422203, 32.737274, 48.965672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555498, 32.542164, 49.288418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942841, -0.170445, 0.286356,
		-0.002153, -0.856167, -0.516695,
		0.333236, -0.487778, 0.806862,
		30.655470, 32.395828, 49.530476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.047340, 32.122334, 49.031826>,  <30.422203, 32.737274, 48.965672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.047340, 32.122334, 49.031826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.165571, 32.167618, 49.411263>,  <30.236509, 32.194790, 49.638924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.165571, 32.167618, 49.411263>,  <30.047340, 32.122334, 49.031826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.165571, 32.167618, 49.411263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926497, -0.208093, 0.313530,
		0.232889, -0.971535, 0.043381,
		0.295578, 0.113210, 0.948587,
		30.254244, 32.201580, 49.695839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.724455, 31.458204, 49.474922>,  <30.047340, 32.122334, 49.031826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.724455, 31.458204, 49.474922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.814888, 31.749453, 49.733757>,  <29.869148, 31.924202, 49.889057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.814888, 31.749453, 49.733757>,  <29.724455, 31.458204, 49.474922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.814888, 31.749453, 49.733757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971694, 0.121830, 0.202406,
		0.068541, -0.674535, 0.735054,
		0.226082, 0.728121, 0.647091,
		29.882713, 31.967890, 49.927883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.316090, 31.357191, 50.104511>,  <29.724455, 31.458204, 49.474922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.316090, 31.357191, 50.104511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.417601, 31.743740, 50.121101>,  <29.478508, 31.975670, 50.131054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.417601, 31.743740, 50.121101>,  <29.316090, 31.357191, 50.104511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.417601, 31.743740, 50.121101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939796, 0.236202, 0.246967,
		0.228864, -0.101657, 0.968136,
		0.253781, 0.966372, 0.041479,
		29.493734, 32.033653, 50.133541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.749243, 31.578495, 50.550060>,  <29.316090, 31.357191, 50.104511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.749243, 31.578495, 50.550060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.920847, 31.917271, 50.424431>,  <29.023809, 32.120537, 50.349052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.920847, 31.917271, 50.424431>,  <28.749243, 31.578495, 50.550060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.920847, 31.917271, 50.424431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833253, 0.505298, 0.224416,
		0.348767, 0.165424, 0.922495,
		0.429011, 0.846941, -0.314071,
		29.049551, 32.171352, 50.330208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.549524, 32.152786, 51.136890>,  <28.749243, 31.578495, 50.550060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.549524, 32.152786, 51.136890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.623343, 32.303394, 50.773754>,  <28.667633, 32.393757, 50.555874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.623343, 32.303394, 50.773754>,  <28.549524, 32.152786, 51.136890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.623343, 32.303394, 50.773754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784931, 0.612349, 0.094406,
		0.591461, 0.695171, 0.408546,
		0.184545, 0.376518, -0.907842,
		28.678705, 32.416351, 50.501400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.543964, 32.928432, 51.301998>,  <28.549524, 32.152786, 51.136890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.543964, 32.928432, 51.301998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.506220, 32.865746, 50.908749>,  <28.483572, 32.828133, 50.672798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.506220, 32.865746, 50.908749>,  <28.543964, 32.928432, 51.301998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.506220, 32.865746, 50.908749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719829, 0.692918, -0.041368,
		0.687708, 0.703778, -0.178198,
		-0.094363, -0.156721, -0.983125,
		28.477911, 32.818729, 50.613811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.586105, 33.520603, 51.013214>,  <28.543964, 32.928432, 51.301998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.586105, 33.520603, 51.013214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.364180, 33.291054, 50.772266>,  <28.231024, 33.153324, 50.627697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.364180, 33.291054, 50.772266>,  <28.586105, 33.520603, 51.013214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.364180, 33.291054, 50.772266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746289, 0.663309, 0.055437,
		0.367742, 0.480299, -0.796291,
		-0.554813, -0.573877, -0.602368,
		28.197735, 33.118889, 50.591557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.313314, 34.092884, 50.540665>,  <28.586105, 33.520603, 51.013214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.313314, 34.092884, 50.540665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.096416, 33.756931, 50.531113>,  <27.966278, 33.555359, 50.525383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.096416, 33.756931, 50.531113>,  <28.313314, 34.092884, 50.540665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.096416, 33.756931, 50.531113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835705, 0.536173, 0.118808,
		-0.086982, 0.084378, -0.992630,
		-0.542246, -0.839880, -0.023878,
		27.933743, 33.504967, 50.523949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.789059, 34.274673, 50.204052>,  <28.313314, 34.092884, 50.540665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.789059, 34.274673, 50.204052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.644033, 33.946842, 50.381523>,  <27.557018, 33.750145, 50.488007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.644033, 33.946842, 50.381523>,  <27.789059, 34.274673, 50.204052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.644033, 33.946842, 50.381523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806067, 0.514715, 0.292103,
		-0.467766, -0.251726, -0.847248,
		-0.362562, -0.819574, 0.443674,
		27.535265, 33.700970, 50.514626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.006285, 34.138359, 49.952759>,  <27.789059, 34.274673, 50.204052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.006285, 34.138359, 49.952759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.075087, 33.956741, 50.302448>,  <27.116367, 33.847771, 50.512260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.075087, 33.956741, 50.302448>,  <27.006285, 34.138359, 49.952759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.075087, 33.956741, 50.302448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879924, 0.328170, 0.343567,
		-0.442888, -0.828340, -0.343078,
		0.172002, -0.454045, 0.874219,
		27.126688, 33.820530, 50.564713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.374054, 33.716610, 50.142891>,  <27.006285, 34.138359, 49.952759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.374054, 33.716610, 50.142891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.559776, 33.772766, 50.492683>,  <26.671209, 33.806461, 50.702557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.559776, 33.772766, 50.492683>,  <26.374054, 33.716610, 50.142891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.559776, 33.772766, 50.492683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871592, 0.247808, 0.422988,
		-0.157319, -0.958583, 0.237424,
		0.464304, 0.140393, 0.874478,
		26.699068, 33.814884, 50.755028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.006775, 33.346817, 50.682194>,  <26.374054, 33.716610, 50.142891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.006775, 33.346817, 50.682194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.197275, 33.640469, 50.875786>,  <26.311575, 33.816658, 50.991943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.197275, 33.640469, 50.875786>,  <26.006775, 33.346817, 50.682194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.197275, 33.640469, 50.875786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783325, 0.104151, 0.612824,
		0.399486, -0.670973, 0.624665,
		0.476248, 0.734131, 0.483983,
		26.340149, 33.860706, 51.020981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.646059, 33.429470, 51.253292>,  <26.006775, 33.346817, 50.682194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.646059, 33.429470, 51.253292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.883091, 33.751007, 51.274029>,  <26.025311, 33.943928, 51.286472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.883091, 33.751007, 51.274029>,  <25.646059, 33.429470, 51.253292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.883091, 33.751007, 51.274029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603132, 0.400118, 0.690026,
		0.533931, -0.440161, 0.721925,
		0.592579, 0.803843, 0.051840,
		26.060865, 33.992161, 51.289581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.487608, 33.689922, 51.934662>,  <25.646059, 33.429470, 51.253292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.487608, 33.689922, 51.934662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.672245, 34.000824, 51.763634>,  <25.783028, 34.187363, 51.661018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.672245, 34.000824, 51.763634>,  <25.487608, 33.689922, 51.934662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.672245, 34.000824, 51.763634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554348, 0.629023, 0.545003,
		0.692555, -0.014547, 0.721219,
		0.461591, 0.777251, -0.427569,
		25.810722, 34.233997, 51.635365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.762449, 34.159443, 52.452446>,  <25.487608, 33.689922, 51.934662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.762449, 34.159443, 52.452446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.744911, 34.388992, 52.125340>,  <25.734388, 34.526722, 51.929073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.744911, 34.388992, 52.125340>,  <25.762449, 34.159443, 52.452446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.744911, 34.388992, 52.125340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623601, 0.623786, 0.471183,
		0.780513, 0.530621, 0.330518,
		-0.043847, 0.573875, -0.817768,
		25.731756, 34.561153, 51.880009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.758251, 34.816147, 52.756481>,  <25.762449, 34.159443, 52.452446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.758251, 34.816147, 52.756481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.610607, 34.877308, 52.389793>,  <25.522020, 34.914005, 52.169781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.610607, 34.877308, 52.389793>,  <25.758251, 34.816147, 52.756481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.610607, 34.877308, 52.389793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507377, 0.793263, 0.336604,
		0.778671, 0.589366, -0.215219,
		-0.369108, 0.152907, -0.916722,
		25.499874, 34.923180, 52.114777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.968969, 35.502689, 52.574753>,  <25.758251, 34.816147, 52.756481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.968969, 35.502689, 52.574753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.642887, 35.397602, 52.368290>,  <25.447237, 35.334549, 52.244411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.642887, 35.397602, 52.368290>,  <25.968969, 35.502689, 52.574753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.642887, 35.397602, 52.368290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486422, 0.794316, 0.363945,
		0.314372, 0.547759, -0.775326,
		-0.815208, -0.262721, -0.516153,
		25.398325, 35.318787, 52.213444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.574808, 36.172047, 52.416309>,  <25.968969, 35.502689, 52.574753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.574808, 36.172047, 52.416309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.296614, 35.886921, 52.380096>,  <25.129698, 35.715847, 52.358368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.296614, 35.886921, 52.380096>,  <25.574808, 36.172047, 52.416309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.296614, 35.886921, 52.380096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654724, 0.576759, 0.488554,
		-0.296031, 0.399057, -0.867824,
		-0.695487, -0.712813, -0.090534,
		25.087967, 35.673077, 52.352936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<37.008202, 30.408768, 51.420944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.814854, 30.292515, 51.090637>,  <36.698845, 30.222763, 50.892452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.814854, 30.292515, 51.090637>,  <37.008202, 30.408768, 51.420944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814854, 30.292515, 51.090637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802719, 0.523509, 0.285623,
		0.349284, 0.800919, -0.486344,
		-0.483366, -0.290634, -0.825766,
		36.669846, 30.205324, 50.842907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895149, 31.021671, 50.943523>,  <37.008202, 30.408768, 51.420944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895149, 31.021671, 50.943523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.610111, 30.741310, 50.931183>,  <36.439091, 30.573093, 50.923779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.610111, 30.741310, 50.931183>,  <36.895149, 31.021671, 50.943523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610111, 30.741310, 50.931183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661325, 0.656373, 0.363077,
		-0.234231, 0.279128, -0.931248,
		-0.712591, -0.700902, -0.030852,
		36.396336, 30.531040, 50.921928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314053, 31.366821, 50.882980>,  <36.895149, 31.021671, 50.943523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314053, 31.366821, 50.882980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.149380, 31.014429, 50.976265>,  <36.050575, 30.802994, 51.032238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.149380, 31.014429, 50.976265>,  <36.314053, 31.366821, 50.882980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149380, 31.014429, 50.976265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634801, 0.460826, 0.620215,
		-0.653870, 0.107284, -0.748962,
		-0.411680, -0.880982, 0.233216,
		36.025875, 30.750134, 51.046230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552158, 31.459650, 51.002583>,  <36.314053, 31.366821, 50.882980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552158, 31.459650, 51.002583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.646755, 31.122066, 51.195168>,  <35.703514, 30.919516, 51.310719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.646755, 31.122066, 51.195168>,  <35.552158, 31.459650, 51.002583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646755, 31.122066, 51.195168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442897, 0.347406, 0.826530,
		-0.864819, -0.408707, -0.291628,
		0.236495, -0.843960, 0.481458,
		35.717705, 30.868879, 51.339603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938179, 31.230640, 51.346737>,  <35.552158, 31.459650, 51.002583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938179, 31.230640, 51.346737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.238010, 31.058626, 51.548012>,  <35.417912, 30.955418, 51.668777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.238010, 31.058626, 51.548012>,  <34.938179, 31.230640, 51.346737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238010, 31.058626, 51.548012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384081, 0.336549, 0.859778,
		-0.539083, -0.837737, 0.087101,
		0.749581, -0.430038, 0.503186,
		35.462883, 30.929615, 51.698967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598106, 30.843384, 51.941319>,  <34.938179, 31.230640, 51.346737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598106, 30.843384, 51.941319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.985073, 30.857107, 52.041664>,  <35.217251, 30.865341, 52.101871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.985073, 30.857107, 52.041664>,  <34.598106, 30.843384, 51.941319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985073, 30.857107, 52.041664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249439, 0.299324, 0.920970,
		-0.043496, -0.953534, 0.298128,
		0.967413, 0.034306, 0.250868,
		35.275295, 30.867399, 52.116924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682571, 30.403482, 52.522923>,  <34.598106, 30.843384, 51.941319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682571, 30.403482, 52.522923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.965755, 30.685638, 52.508984>,  <35.135666, 30.854933, 52.500622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.965755, 30.685638, 52.508984>,  <34.682571, 30.403482, 52.522923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965755, 30.685638, 52.508984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276077, 0.321821, 0.905656,
		0.650055, -0.631550, 0.422579,
		0.707962, 0.705390, -0.034845,
		35.178143, 30.897255, 52.498531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080158, 30.316599, 53.120625>,  <34.682571, 30.403482, 52.522923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080158, 30.316599, 53.120625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.103252, 30.689615, 52.978058>,  <35.117111, 30.913425, 52.892517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.103252, 30.689615, 52.978058>,  <35.080158, 30.316599, 53.120625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103252, 30.689615, 52.978058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321486, 0.355361, 0.877705,
		0.945152, 0.063905, 0.320317,
		0.057739, 0.932542, -0.356415,
		35.120575, 30.969378, 52.871132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266914, 30.617529, 53.692410>,  <35.080158, 30.316599, 53.120625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266914, 30.617529, 53.692410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.126480, 30.909063, 53.457279>,  <35.042221, 31.083984, 53.316200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.126480, 30.909063, 53.457279>,  <35.266914, 30.617529, 53.692410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126480, 30.909063, 53.457279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411548, 0.443784, 0.796042,
		0.841053, 0.521393, 0.144147,
		-0.351081, 0.728838, -0.587825,
		35.021156, 31.127714, 53.280933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458542, 31.124685, 54.101139>,  <35.266914, 30.617529, 53.692410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458542, 31.124685, 54.101139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.156677, 31.202179, 53.850395>,  <34.975559, 31.248674, 53.699951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.156677, 31.202179, 53.850395>,  <35.458542, 31.124685, 54.101139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156677, 31.202179, 53.850395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467271, 0.511994, 0.720777,
		0.460585, 0.836857, -0.295858,
		-0.754665, 0.193733, -0.626856,
		34.930279, 31.260300, 53.662338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217964, 31.716572, 54.393986>,  <35.458542, 31.124685, 54.101139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217964, 31.716572, 54.393986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.953632, 31.638838, 54.104012>,  <34.795033, 31.592197, 53.930027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.953632, 31.638838, 54.104012>,  <35.217964, 31.716572, 54.393986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953632, 31.638838, 54.104012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716131, 0.452346, 0.531545,
		0.224625, 0.870412, -0.438094,
		-0.660833, -0.194335, -0.724937,
		34.755383, 31.580538, 53.886532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941353, 32.379013, 54.279392>,  <35.217964, 31.716572, 54.393986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941353, 32.379013, 54.279392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.681198, 32.099350, 54.160618>,  <34.525105, 31.931551, 54.089352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.681198, 32.099350, 54.160618>,  <34.941353, 32.379013, 54.279392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681198, 32.099350, 54.160618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727694, 0.461378, 0.507535,
		-0.217849, 0.546173, -0.808849,
		-0.650387, -0.699160, -0.296936,
		34.486080, 31.889603, 54.071537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889839, 32.890434, 53.809395>,  <34.941353, 32.379013, 54.279392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889839, 32.890434, 53.809395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.169559, 33.130840, 53.964191>,  <35.337391, 33.275082, 54.057072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.169559, 33.130840, 53.964191>,  <34.889839, 32.890434, 53.809395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169559, 33.130840, 53.964191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630972, -0.264554, -0.729305,
		-0.335940, 0.754185, -0.564224,
		0.699299, 0.601012, 0.386996,
		35.379349, 33.311146, 54.080292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194706, 33.196659, 53.248417>,  <34.889839, 32.890434, 53.809395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194706, 33.196659, 53.248417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.442097, 33.219517, 53.561905>,  <35.590530, 33.233231, 53.750000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.442097, 33.219517, 53.561905>,  <35.194706, 33.196659, 53.248417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442097, 33.219517, 53.561905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774454, -0.213218, -0.595616,
		0.133066, 0.975332, -0.176129,
		0.618478, 0.057148, 0.783722,
		35.627640, 33.236660, 53.797020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725471, 33.736145, 53.139175>,  <35.194706, 33.196659, 53.248417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725471, 33.736145, 53.139175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.894547, 33.461636, 53.375938>,  <35.995991, 33.296928, 53.517998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.894547, 33.461636, 53.375938>,  <35.725471, 33.736145, 53.139175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894547, 33.461636, 53.375938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822707, 0.016629, -0.568223,
		0.380116, 0.727149, 0.571634,
		0.422688, -0.686278, 0.591910,
		36.021355, 33.255753, 53.553513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435780, 33.833813, 52.883598>,  <35.725471, 33.736145, 53.139175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435780, 33.833813, 52.883598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.479557, 33.526756, 53.136185>,  <36.505821, 33.342522, 53.287739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.479557, 33.526756, 53.136185>,  <36.435780, 33.833813, 52.883598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479557, 33.526756, 53.136185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842228, -0.265777, -0.469057,
		0.527896, 0.583175, 0.617441,
		0.109441, -0.767639, 0.631469,
		36.512390, 33.296463, 53.325626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073402, 33.969891, 53.280937>,  <36.435780, 33.833813, 52.883598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073402, 33.969891, 53.280937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.967976, 33.585533, 53.246964>,  <36.904720, 33.354919, 53.226578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.967976, 33.585533, 53.246964>,  <37.073402, 33.969891, 53.280937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967976, 33.585533, 53.246964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860663, -0.194484, -0.470569,
		0.435649, -0.197127, 0.878266,
		-0.263570, -0.960894, -0.084933,
		36.888905, 33.297264, 53.221485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666889, 33.529583, 53.557381>,  <37.073402, 33.969891, 53.280937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666889, 33.529583, 53.557381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.446091, 33.303825, 53.311859>,  <37.313610, 33.168369, 53.164547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.446091, 33.303825, 53.311859>,  <37.666889, 33.529583, 53.557381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446091, 33.303825, 53.311859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813840, -0.204383, -0.543960,
		0.181558, -0.799803, 0.572147,
		-0.551998, -0.564396, -0.613804,
		37.280491, 33.134506, 53.127720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074905, 32.946011, 53.437630>,  <37.666889, 33.529583, 53.557381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074905, 32.946011, 53.437630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.813160, 32.916702, 53.136581>,  <37.656113, 32.899117, 52.955952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.813160, 32.916702, 53.136581>,  <38.074905, 32.946011, 53.437630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813160, 32.916702, 53.136581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724276, -0.346778, -0.595961,
		-0.217324, -0.935081, 0.279990,
		-0.654366, -0.073274, -0.752619,
		37.616852, 32.894722, 52.910797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226143, 32.322384, 53.084995>,  <38.074905, 32.946011, 53.437630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226143, 32.322384, 53.084995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.017139, 32.546600, 52.828003>,  <37.891739, 32.681129, 52.673805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.017139, 32.546600, 52.828003>,  <38.226143, 32.322384, 53.084995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017139, 32.546600, 52.828003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630222, -0.253636, -0.733818,
		-0.574290, -0.788331, -0.220737,
		-0.522505, 0.560538, -0.642484,
		37.860390, 32.714760, 52.635258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070808, 31.896152, 52.558086>,  <38.226143, 32.322384, 53.084995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070808, 31.896152, 52.558086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.051365, 32.259712, 52.392414>,  <38.039700, 32.477848, 52.293011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.051365, 32.259712, 52.392414>,  <38.070808, 31.896152, 52.558086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051365, 32.259712, 52.392414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264356, -0.388172, -0.882858,
		-0.963199, -0.152407, -0.221403,
		-0.048611, 0.908897, -0.414177,
		38.036781, 32.532383, 52.268162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011101, 31.754206, 51.887123>,  <38.070808, 31.896152, 52.558086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011101, 31.754206, 51.887123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.112991, 32.140507, 51.867367>,  <38.174126, 32.372288, 51.855511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.112991, 32.140507, 51.867367>,  <38.011101, 31.754206, 51.887123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112991, 32.140507, 51.867367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355768, -0.141088, -0.923863,
		-0.899192, 0.217756, -0.379522,
		0.254723, 0.965752, -0.049395,
		38.189407, 32.430233, 51.852547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726719, 31.954464, 51.292892>,  <38.011101, 31.754206, 51.887123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726719, 31.954464, 51.292892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.005028, 32.230774, 51.371609>,  <38.172012, 32.396561, 51.418839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.005028, 32.230774, 51.371609>,  <37.726719, 31.954464, 51.292892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005028, 32.230774, 51.371609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340237, -0.075677, -0.937289,
		-0.632561, 0.719101, -0.287681,
		0.695776, 0.690773, 0.196794,
		38.213760, 32.438007, 51.430649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832989, 32.324505, 50.653145>,  <37.726719, 31.954464, 51.292892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832989, 32.324505, 50.653145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.169209, 32.416183, 50.849487>,  <38.370941, 32.471191, 50.967293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.169209, 32.416183, 50.849487>,  <37.832989, 32.324505, 50.653145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169209, 32.416183, 50.849487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497031, 0.034146, -0.867061,
		-0.215487, 0.972781, -0.085216,
		0.840551, 0.229196, 0.490860,
		38.421375, 32.484943, 50.996746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135780, 32.904835, 50.312462>,  <37.832989, 32.324505, 50.653145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135780, 32.904835, 50.312462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.442665, 32.759308, 50.523754>,  <38.626797, 32.671993, 50.650528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.442665, 32.759308, 50.523754>,  <38.135780, 32.904835, 50.312462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442665, 32.759308, 50.523754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588646, 0.072333, -0.805148,
		0.254715, 0.928659, 0.269653,
		0.767213, -0.363814, 0.528227,
		38.672829, 32.650166, 50.682220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622498, 33.435036, 50.367157>,  <38.135780, 32.904835, 50.312462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622498, 33.435036, 50.367157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.790569, 33.072357, 50.381851>,  <38.891415, 32.854752, 50.390667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.790569, 33.072357, 50.381851>,  <38.622498, 33.435036, 50.367157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790569, 33.072357, 50.381851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571024, 0.232730, -0.787254,
		0.705251, 0.351766, 0.615534,
		0.420182, -0.906696, 0.036734,
		38.916622, 32.800350, 50.392872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453590, 33.268089, 49.710621>,  <38.622498, 33.435036, 50.367157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453590, 33.268089, 49.710621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.318462, 33.049988, 49.403748>,  <38.237385, 32.919128, 49.219624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.318462, 33.049988, 49.403748>,  <38.453590, 33.268089, 49.710621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318462, 33.049988, 49.403748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660651, -0.443200, 0.605900,
		-0.670386, 0.711529, -0.210499,
		-0.337822, -0.545253, -0.767187,
		38.217117, 32.886414, 49.173592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734619, 33.525181, 49.331642>,  <38.453590, 33.268089, 49.710621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734619, 33.525181, 49.331642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.856045, 33.755604, 49.028061>,  <37.928902, 33.893856, 48.845913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.856045, 33.755604, 49.028061>,  <37.734619, 33.525181, 49.331642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856045, 33.755604, 49.028061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237643, 0.817144, 0.525169,
		0.922698, 0.020936, 0.384954,
		0.303568, 0.576054, -0.758953,
		37.947117, 33.928421, 48.800377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131382, 34.015404, 49.555225>,  <37.734619, 33.525181, 49.331642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131382, 34.015404, 49.555225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.969021, 34.187462, 49.232681>,  <37.871605, 34.290699, 49.039154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.969021, 34.187462, 49.232681>,  <38.131382, 34.015404, 49.555225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969021, 34.187462, 49.232681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472534, 0.656443, 0.588043,
		0.782274, 0.619721, -0.063193,
		-0.405905, 0.430150, -0.806357,
		37.847248, 34.316505, 48.990772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242367, 34.735847, 49.659218>,  <38.131382, 34.015404, 49.555225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242367, 34.735847, 49.659218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.959770, 34.719334, 49.376610>,  <37.790215, 34.709427, 49.207047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.959770, 34.719334, 49.376610>,  <38.242367, 34.735847, 49.659218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959770, 34.719334, 49.376610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440679, 0.806813, 0.393515,
		0.553782, 0.589363, -0.588199,
		-0.706489, -0.041286, -0.706518,
		37.747822, 34.706947, 49.164654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110310, 35.422688, 49.464512>,  <38.242367, 34.735847, 49.659218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110310, 35.422688, 49.464512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.783985, 35.225266, 49.343948>,  <37.588188, 35.106812, 49.271610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.783985, 35.225266, 49.343948>,  <38.110310, 35.422688, 49.464512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783985, 35.225266, 49.343948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576647, 0.733802, 0.359184,
		0.043899, 0.466836, -0.883253,
		-0.815813, -0.493557, -0.301413,
		37.539242, 35.077198, 49.253525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734009, 35.847595, 48.975185>,  <38.110310, 35.422688, 49.464512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734009, 35.847595, 48.975185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.468277, 35.601521, 49.144989>,  <37.308838, 35.453873, 49.246872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.468277, 35.601521, 49.144989>,  <37.734009, 35.847595, 48.975185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468277, 35.601521, 49.144989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578156, 0.782900, 0.229790,
		-0.473711, -0.092775, -0.875780,
		-0.664329, -0.615192, 0.424507,
		37.268978, 35.416962, 49.272343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136372, 36.102959, 48.715855>,  <37.734009, 35.847595, 48.975185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136372, 36.102959, 48.715855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.045811, 35.909611, 49.054108>,  <36.991474, 35.793602, 49.257061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.045811, 35.909611, 49.054108>,  <37.136372, 36.102959, 48.715855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045811, 35.909611, 49.054108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696651, 0.687123, 0.206248,
		-0.680748, -0.542415, -0.492309,
		-0.226405, -0.483371, 0.845632,
		36.977890, 35.764599, 49.307796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505634, 36.114857, 48.720020>,  <37.136372, 36.102959, 48.715855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505634, 36.114857, 48.720020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.559746, 36.044231, 49.110001>,  <36.592213, 36.001858, 49.343987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.559746, 36.044231, 49.110001>,  <36.505634, 36.114857, 48.720020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559746, 36.044231, 49.110001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798056, 0.563745, 0.212832,
		-0.587201, -0.806856, -0.064642,
		0.135283, -0.176563, 0.974948,
		36.600330, 35.991264, 49.402485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722065, 36.058231, 48.970852>,  <36.505634, 36.114857, 48.720020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722065, 36.058231, 48.970852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.958042, 36.108170, 49.289944>,  <36.099628, 36.138134, 49.481400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.958042, 36.108170, 49.289944>,  <35.722065, 36.058231, 48.970852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958042, 36.108170, 49.289944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795863, 0.256627, 0.548402,
		-0.136253, -0.958413, 0.250758,
		0.589947, 0.124847, 0.797731,
		36.135025, 36.145626, 49.529263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473202, 35.589745, 49.599583>,  <35.722065, 36.058231, 48.970852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473202, 35.589745, 49.599583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.675964, 35.909191, 49.729355>,  <35.797623, 36.100861, 49.807217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.675964, 35.909191, 49.729355>,  <35.473202, 35.589745, 49.599583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675964, 35.909191, 49.729355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801093, 0.297486, 0.519378,
		0.318266, -0.523182, 0.790561,
		0.506910, 0.798613, 0.324437,
		35.828037, 36.148777, 49.826683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110580, 35.801327, 50.237865>,  <35.473202, 35.589745, 49.599583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110580, 35.801327, 50.237865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.336021, 36.117252, 50.141079>,  <35.471287, 36.306808, 50.083008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.336021, 36.117252, 50.141079>,  <35.110580, 35.801327, 50.237865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336021, 36.117252, 50.141079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641085, 0.602947, 0.474832,
		0.520921, -0.112495, 0.846159,
		0.563606, 0.789810, -0.241969,
		35.505104, 36.354195, 50.068489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120838, 36.312183, 50.906635>,  <35.110580, 35.801327, 50.237865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120838, 36.312183, 50.906635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.267300, 36.548767, 50.619270>,  <35.355179, 36.690716, 50.446854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.267300, 36.548767, 50.619270>,  <35.120838, 36.312183, 50.906635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267300, 36.548767, 50.619270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532188, 0.766405, 0.359721,
		0.763332, 0.250584, 0.595425,
		0.366196, 0.591466, -0.718379,
		35.377148, 36.726204, 50.403748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364063, 36.936981, 51.230030>,  <35.120838, 36.312183, 50.906635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364063, 36.936981, 51.230030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.298096, 37.025635, 50.845596>,  <35.258514, 37.078827, 50.614937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.298096, 37.025635, 50.845596>,  <35.364063, 36.936981, 51.230030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298096, 37.025635, 50.845596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806863, 0.530101, 0.260701,
		0.567250, 0.818457, 0.091402,
		-0.164920, 0.221632, -0.961083,
		35.248619, 37.092125, 50.557270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199398, 37.668396, 51.246887>,  <35.364063, 36.936981, 51.230030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199398, 37.668396, 51.246887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.067997, 37.524040, 50.897751>,  <34.989155, 37.437428, 50.688271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.067997, 37.524040, 50.897751>,  <35.199398, 37.668396, 51.246887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067997, 37.524040, 50.897751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816885, 0.572443, 0.070757,
		0.474114, 0.736252, -0.482853,
		-0.328501, -0.360889, -0.872838,
		34.969448, 37.415775, 50.635899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994015, 38.264175, 50.789810>,  <35.199398, 37.668396, 51.246887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994015, 38.264175, 50.789810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.800877, 37.965694, 50.606491>,  <34.684994, 37.786606, 50.496498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.800877, 37.965694, 50.606491>,  <34.994015, 38.264175, 50.789810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800877, 37.965694, 50.606491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850004, 0.525227, 0.040363,
		0.210592, 0.409046, -0.887881,
		-0.482850, -0.746203, -0.458299,
		34.656021, 37.741833, 50.469002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697594, 38.578934, 50.370159>,  <34.994015, 38.264175, 50.789810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697594, 38.578934, 50.370159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.485584, 38.239895, 50.380417>,  <34.358379, 38.036472, 50.386570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.485584, 38.239895, 50.380417>,  <34.697594, 38.578934, 50.370159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485584, 38.239895, 50.380417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841159, 0.529350, 0.110639,
		-0.107350, 0.037073, -0.993530,
		-0.530026, -0.847593, 0.025642,
		34.326576, 37.985619, 50.388111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102707, 38.574135, 49.859303>,  <34.697594, 38.578934, 50.370159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102707, 38.574135, 49.859303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.006824, 38.295918, 50.130230>,  <33.949295, 38.128986, 50.292786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.006824, 38.295918, 50.130230>,  <34.102707, 38.574135, 49.859303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006824, 38.295918, 50.130230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934984, 0.353256, 0.031865,
		-0.261429, -0.625640, -0.735003,
		-0.239708, -0.695546, 0.677315,
		33.934914, 38.087254, 50.333424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544342, 38.390697, 49.575829>,  <34.102707, 38.574135, 49.859303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544342, 38.390697, 49.575829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.519199, 38.282925, 49.960213>,  <33.504116, 38.218262, 50.190845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.519199, 38.282925, 49.960213>,  <33.544342, 38.390697, 49.575829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519199, 38.282925, 49.960213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825271, 0.555491, 0.101770,
		-0.561228, -0.786660, -0.257272,
		-0.062854, -0.269435, 0.960965,
		33.500343, 38.202095, 50.248501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828266, 38.165291, 49.721169>,  <33.544342, 38.390697, 49.575829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828266, 38.165291, 49.721169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.970215, 38.261646, 50.082508>,  <33.055382, 38.319458, 50.299313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.970215, 38.261646, 50.082508>,  <32.828266, 38.165291, 49.721169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970215, 38.261646, 50.082508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793191, 0.589043, 0.154521,
		-0.494890, -0.771364, 0.400103,
		0.354870, 0.240887, 0.903350,
		33.076675, 38.333912, 50.353512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263756, 37.990128, 50.148499>,  <32.828266, 38.165291, 49.721169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263756, 37.990128, 50.148499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.503323, 38.246788, 50.340157>,  <32.647064, 38.400784, 50.455151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.503323, 38.246788, 50.340157>,  <32.263756, 37.990128, 50.148499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503323, 38.246788, 50.340157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799287, 0.515838, 0.308304,
		-0.049336, -0.567622, 0.821810,
		0.598920, 0.641651, 0.479143,
		32.682999, 38.439285, 50.483898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041000, 38.060665, 50.817726>,  <32.263756, 37.990128, 50.148499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041000, 38.060665, 50.817726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.256130, 38.397881, 50.815407>,  <32.385208, 38.600208, 50.814014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.256130, 38.397881, 50.815407>,  <32.041000, 38.060665, 50.817726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256130, 38.397881, 50.815407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709061, 0.456048, 0.537822,
		0.456048, -0.285142, 0.843038,
		-0.537822, -0.843038, 0.005797,
		32.417477, 38.650791, 50.813667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025017, 38.274040, 51.544792>,  <32.041000, 38.060665, 50.817726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025017, 38.274040, 51.544792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.123051, 38.586514, 51.315121>,  <32.181873, 38.773998, 51.177319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.123051, 38.586514, 51.315121>,  <32.025017, 38.274040, 51.544792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123051, 38.586514, 51.315121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532539, 0.603371, 0.593587,
		0.810144, 0.160292, 0.563891,
		0.245088, 0.781184, -0.574179,
		32.196579, 38.820869, 51.142868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275314, 38.811874, 52.036213>,  <32.025017, 38.274040, 51.544792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275314, 38.811874, 52.036213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.133972, 38.976826, 51.700336>,  <32.049168, 39.075794, 51.498810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.133972, 38.976826, 51.700336>,  <32.275314, 38.811874, 52.036213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133972, 38.976826, 51.700336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433380, 0.723309, 0.537593,
		0.829047, 0.553870, -0.076872,
		-0.353359, 0.412375, -0.839693,
		32.027966, 39.100540, 51.448429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265976, 39.552525, 52.121983>,  <32.275314, 38.811874, 52.036213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265976, 39.552525, 52.121983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.018642, 39.499340, 51.812149>,  <31.870243, 39.467430, 51.626247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.018642, 39.499340, 51.812149>,  <32.265976, 39.552525, 52.121983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018642, 39.499340, 51.812149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549837, 0.777410, 0.305471,
		0.561554, 0.614779, -0.553808,
		-0.618333, -0.132966, -0.774587,
		31.833143, 39.459450, 51.579773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931116, 40.203953, 52.014606>,  <32.265976, 39.552525, 52.121983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931116, 40.203953, 52.014606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.706715, 40.008682, 51.747185>,  <31.572073, 39.891521, 51.586731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.706715, 40.008682, 51.747185>,  <31.931116, 40.203953, 52.014606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.706715, 40.008682, 51.747185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735616, 0.664383, 0.132151,
		0.379662, 0.565935, -0.731829,
		-0.561004, -0.488173, -0.668552,
		31.538414, 39.862232, 51.546619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580860, 40.716591, 51.450855>,  <31.931116, 40.203953, 52.014606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580860, 40.716591, 51.450855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.354948, 40.387794, 51.480114>,  <31.219400, 40.190517, 51.497669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.354948, 40.387794, 51.480114>,  <31.580860, 40.716591, 51.450855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.354948, 40.387794, 51.480114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814680, 0.569494, 0.109422,
		-0.131600, 0.002208, -0.991300,
		-0.564782, -0.821993, 0.073147,
		31.185514, 40.141197, 51.502056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992388, 40.699135, 50.903950>,  <31.580860, 40.716591, 51.450855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.992388, 40.699135, 50.903950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.894337, 40.494362, 51.233273>,  <30.835506, 40.371498, 51.430866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.894337, 40.494362, 51.233273>,  <30.992388, 40.699135, 50.903950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.894337, 40.494362, 51.233273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845647, 0.528209, 0.076658,
		-0.474124, -0.677438, -0.562392,
		-0.245129, -0.511930, 0.823310,
		30.820797, 40.340782, 51.480267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.288834, 40.693161, 50.791477>,  <30.992388, 40.699135, 50.903950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.288834, 40.693161, 50.791477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.327145, 40.602192, 51.179108>,  <30.350130, 40.547611, 51.411686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.327145, 40.602192, 51.179108>,  <30.288834, 40.693161, 50.791477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.327145, 40.602192, 51.179108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949843, 0.270285, 0.157305,
		-0.297701, -0.935535, -0.190129,
		0.095775, -0.227422, 0.969075,
		30.355877, 40.533966, 51.469830>
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
