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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
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
	<4.716908, 14.972114, 15.249736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.443709, 15.129054, 15.003298>,  <4.279789, 15.223218, 14.855435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.443709, 15.129054, 15.003298>,  <4.716908, 14.972114, 15.249736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.443709, 15.129054, 15.003298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699864, 0.592942, -0.398259,
		0.209051, -0.703194, -0.679571,
		-0.682999, 0.392351, -0.616095,
		4.238809, 15.246759, 14.818469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.846882, 14.971261, 14.381730>,  <4.716908, 14.972114, 15.249736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.846882, 14.971261, 14.381730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.648292, 15.272814, 14.553859>,  <4.529138, 15.453745, 14.657136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.648292, 15.272814, 14.553859>,  <4.846882, 14.971261, 14.381730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.648292, 15.272814, 14.553859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569607, 0.657010, -0.493847,
		-0.655028, -0.000068, -0.755605,
		-0.496474, 0.753882, 0.430321,
		4.499350, 15.498979, 14.682955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.451621, 15.469587, 13.904955>,  <4.846882, 14.971261, 14.381730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.451621, 15.469587, 13.904955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.570030, 15.677717, 14.225363>,  <4.641076, 15.802595, 14.417607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.570030, 15.677717, 14.225363>,  <4.451621, 15.469587, 13.904955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.570030, 15.677717, 14.225363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557199, 0.587070, -0.587264,
		-0.775822, 0.620171, -0.116138,
		0.296023, 0.520324, 0.801020,
		4.658837, 15.833815, 14.465669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.048807, 15.264686, 13.555163>,  <4.451621, 15.469587, 13.904955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.048807, 15.264686, 13.555163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.301063, 14.955137, 13.531780>,  <5.452416, 14.769408, 13.517751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.301063, 14.955137, 13.531780>,  <5.048807, 15.264686, 13.555163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.301063, 14.955137, 13.531780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463469, 0.435962, -0.771449,
		0.622488, 0.459412, 0.633600,
		0.630639, -0.773872, -0.058457,
		5.490254, 14.722976, 13.514243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.634020, 15.493574, 13.886288>,  <5.048807, 15.264686, 13.555163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.634020, 15.493574, 13.886288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.766203, 15.275986, 13.577771>,  <5.845514, 15.145432, 13.392661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.766203, 15.275986, 13.577771>,  <5.634020, 15.493574, 13.886288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.766203, 15.275986, 13.577771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436608, 0.812613, -0.386049,
		0.836762, -0.209179, 0.506037,
		0.330459, -0.543971, -0.771292,
		5.865341, 15.112794, 13.346383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.431689, 15.710129, 13.736656>,  <5.634020, 15.493574, 13.886288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.431689, 15.710129, 13.736656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.266816, 15.559351, 13.404868>,  <6.167892, 15.468884, 13.205795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.266816, 15.559351, 13.404868>,  <6.431689, 15.710129, 13.736656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.266816, 15.559351, 13.404868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301003, 0.802946, -0.514467,
		0.859944, -0.461726, -0.217498,
		-0.412181, -0.376945, -0.829469,
		6.143162, 15.446267, 13.156028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.954116, 15.905522, 13.269198>,  <6.431689, 15.710129, 13.736656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.954116, 15.905522, 13.269198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.607586, 15.825153, 13.086284>,  <6.399668, 15.776932, 12.976535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.607586, 15.825153, 13.086284>,  <6.954116, 15.905522, 13.269198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.607586, 15.825153, 13.086284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161964, 0.753052, -0.637716,
		0.472492, -0.626533, -0.619845,
		-0.866325, -0.200923, -0.457286,
		6.347689, 15.764876, 12.949098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.104485, 15.876455, 12.503309>,  <6.954116, 15.905522, 13.269198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.104485, 15.876455, 12.503309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.713991, 15.951752, 12.546268>,  <6.479695, 15.996930, 12.572043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.713991, 15.951752, 12.546268>,  <7.104485, 15.876455, 12.503309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.713991, 15.951752, 12.546268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054322, 0.692268, -0.719593,
		-0.209805, -0.696657, -0.686040,
		-0.976233, 0.188241, 0.107397,
		6.421121, 16.008224, 12.578487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.886456, 15.866905, 11.886798>,  <7.104485, 15.876455, 12.503309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.886456, 15.866905, 11.886798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.610942, 16.083172, 12.079985>,  <6.445634, 16.212933, 12.195897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.610942, 16.083172, 12.079985>,  <6.886456, 15.866905, 11.886798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.610942, 16.083172, 12.079985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102994, 0.732413, -0.673026,
		-0.717614, -0.413826, -0.560159,
		-0.688783, 0.540666, 0.482968,
		6.404307, 16.245371, 12.224874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.452956, 16.173838, 11.297125>,  <6.886456, 15.866905, 11.886798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.452956, 16.173838, 11.297125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.322800, 16.391809, 11.606234>,  <6.244706, 16.522593, 11.791698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.322800, 16.391809, 11.606234>,  <6.452956, 16.173838, 11.297125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.322800, 16.391809, 11.606234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156595, 0.837016, -0.524292,
		-0.932523, -0.049587, -0.357690,
		-0.325390, 0.544927, 0.772771,
		6.225183, 16.555288, 11.838065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.045688, 16.703829, 10.992261>,  <6.452956, 16.173838, 11.297125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.045688, 16.703829, 10.992261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.163551, 16.852554, 11.344381>,  <6.234269, 16.941790, 11.555654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.163551, 16.852554, 11.344381>,  <6.045688, 16.703829, 10.992261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.163551, 16.852554, 11.344381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101198, 0.903879, -0.415646,
		-0.950229, 0.211558, 0.228708,
		0.294658, 0.371814, 0.880302,
		6.251948, 16.964098, 11.608472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.747980, 17.264378, 10.949400>,  <6.045688, 16.703829, 10.992261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.747980, 17.264378, 10.949400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.002316, 17.319553, 11.253158>,  <6.154918, 17.352659, 11.435412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.002316, 17.319553, 11.253158>,  <5.747980, 17.264378, 10.949400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.002316, 17.319553, 11.253158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106817, 0.958705, -0.263581,
		-0.764394, 0.248711, 0.594848,
		0.635840, 0.137940, 0.759395,
		6.193068, 17.360935, 11.480976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.532232, 17.712955, 11.339482>,  <5.747980, 17.264378, 10.949400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.532232, 17.712955, 11.339482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.928503, 17.727236, 11.392066>,  <6.166266, 17.735804, 11.423616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.928503, 17.727236, 11.392066>,  <5.532232, 17.712955, 11.339482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.928503, 17.727236, 11.392066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021560, 0.911792, -0.410085,
		-0.134504, 0.409097, 0.902523,
		0.990678, 0.035700, 0.131459,
		6.225707, 17.737946, 11.431504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.610047, 18.432240, 11.442701>,  <5.532232, 17.712955, 11.339482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.610047, 18.432240, 11.442701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.957596, 18.252415, 11.359799>,  <6.166126, 18.144520, 11.310058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.957596, 18.252415, 11.359799>,  <5.610047, 18.432240, 11.442701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.957596, 18.252415, 11.359799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256329, 0.766746, -0.588554,
		0.423503, 0.458253, 0.781440,
		0.868873, -0.449561, -0.207256,
		6.218258, 18.117546, 11.297623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.248270, 18.830702, 11.636320>,  <5.610047, 18.432240, 11.442701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.248270, 18.830702, 11.636320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.390409, 18.584011, 11.355356>,  <6.475692, 18.435997, 11.186778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.390409, 18.584011, 11.355356>,  <6.248270, 18.830702, 11.636320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.390409, 18.584011, 11.355356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310070, 0.786677, -0.533850,
		0.881808, -0.028093, 0.470772,
		0.355348, -0.616725, -0.702409,
		6.497014, 18.398994, 11.144633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.893512, 19.080309, 11.515516>,  <6.248270, 18.830702, 11.636320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.893512, 19.080309, 11.515516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.793001, 18.872082, 11.189114>,  <6.732695, 18.747145, 10.993272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.793001, 18.872082, 11.189114>,  <6.893512, 19.080309, 11.515516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.793001, 18.872082, 11.189114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280022, 0.767907, -0.576113,
		0.926525, -0.373263, -0.047186,
		-0.251277, -0.520570, -0.816007,
		6.717618, 18.715910, 10.944311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.267370, 19.345795, 10.959675>,  <6.893512, 19.080309, 11.515516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.267370, 19.345795, 10.959675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.985943, 19.140341, 10.763237>,  <6.817087, 19.017069, 10.645374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.985943, 19.140341, 10.763237>,  <7.267370, 19.345795, 10.959675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.985943, 19.140341, 10.763237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086067, 0.747574, -0.658579,
		0.705394, -0.421090, -0.570178,
		-0.703571, -0.513631, -0.491092,
		6.774873, 18.986250, 10.615909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.576013, 19.366547, 10.350106>,  <7.267370, 19.345795, 10.959675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.576013, 19.366547, 10.350106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.181967, 19.311022, 10.309556>,  <6.945539, 19.277706, 10.285226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.181967, 19.311022, 10.309556>,  <7.576013, 19.366547, 10.350106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.181967, 19.311022, 10.309556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009184, 0.631431, -0.775378,
		0.171644, -0.762906, -0.623307,
		-0.985116, -0.138814, -0.101375,
		6.886432, 19.269377, 10.279143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.501898, 19.159828, 9.731535>,  <7.576013, 19.366547, 10.350106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.501898, 19.159828, 9.731535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.140151, 19.295147, 9.835591>,  <6.923103, 19.376339, 9.898026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.140151, 19.295147, 9.835591>,  <7.501898, 19.159828, 9.731535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.140151, 19.295147, 9.835591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013831, 0.586027, -0.810174,
		-0.426530, -0.736293, -0.525305,
		-0.904368, 0.338298, 0.260141,
		6.868841, 19.396637, 9.913633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.215116, 19.364441, 9.136701>,  <7.501898, 19.159828, 9.731535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.215116, 19.364441, 9.136701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.931368, 19.548471, 9.350288>,  <6.761119, 19.658890, 9.478441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.931368, 19.548471, 9.350288>,  <7.215116, 19.364441, 9.136701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.931368, 19.548471, 9.350288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173519, 0.620271, -0.764954,
		-0.683143, -0.635290, -0.360170,
		-0.709371, 0.460077, 0.533969,
		6.718557, 19.686495, 9.510479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.602887, 19.480915, 8.685161>,  <7.215116, 19.364441, 9.136701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.602887, 19.480915, 8.685161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.575752, 19.733774, 8.993910>,  <6.559471, 19.885490, 9.179159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.575752, 19.733774, 8.993910>,  <6.602887, 19.480915, 8.685161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.575752, 19.733774, 8.993910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240981, 0.740366, -0.627524,
		-0.968156, -0.228576, 0.102111,
		-0.067838, 0.632148, 0.771872,
		6.555400, 19.923418, 9.225471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.961385, 19.692699, 8.710910>,  <6.602887, 19.480915, 8.685161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.961385, 19.692699, 8.710910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.190993, 19.970995, 8.883628>,  <6.328758, 20.137972, 8.987259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.190993, 19.970995, 8.883628>,  <5.961385, 19.692699, 8.710910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.190993, 19.970995, 8.883628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405116, 0.699564, -0.588635,
		-0.711605, 0.162961, 0.683419,
		0.574020, 0.695740, 0.431795,
		6.363199, 20.179716, 9.013166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.524538, 20.292328, 8.714445>,  <5.961385, 19.692699, 8.710910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.524538, 20.292328, 8.714445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.889594, 20.430891, 8.801246>,  <6.108628, 20.514029, 8.853326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.889594, 20.430891, 8.801246>,  <5.524538, 20.292328, 8.714445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.889594, 20.430891, 8.801246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230281, 0.874325, -0.427232,
		-0.337726, 0.339938, 0.877715,
		0.912640, 0.346408, 0.217001,
		6.163386, 20.534813, 8.866346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.437108, 20.958710, 8.865370>,  <5.524538, 20.292328, 8.714445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.437108, 20.958710, 8.865370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.827752, 20.971317, 8.780292>,  <6.062139, 20.978882, 8.729244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.827752, 20.971317, 8.780292>,  <5.437108, 20.958710, 8.865370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.827752, 20.971317, 8.780292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134497, 0.861330, -0.489920,
		0.167760, 0.507068, 0.845422,
		0.976610, 0.031518, -0.212696,
		6.120735, 20.980772, 8.716483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.676468, 21.690159, 9.054429>,  <5.437108, 20.958710, 8.865370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.676468, 21.690159, 9.054429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.929904, 21.502722, 8.808182>,  <6.081965, 21.390259, 8.660434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.929904, 21.502722, 8.808182>,  <5.676468, 21.690159, 9.054429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.929904, 21.502722, 8.808182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084889, 0.748801, -0.657336,
		0.768999, 0.468740, 0.434654,
		0.633589, -0.468593, -0.615618,
		6.119980, 21.362144, 8.623496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.211686, 22.176519, 8.815499>,  <5.676468, 21.690159, 9.054429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.211686, 22.176519, 8.815499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.144439, 21.887297, 8.547492>,  <6.104091, 21.713762, 8.386687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.144439, 21.887297, 8.547492>,  <6.211686, 22.176519, 8.815499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.144439, 21.887297, 8.547492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026556, 0.676123, -0.736310,
		0.985409, -0.141579, -0.094466,
		-0.168117, -0.723058, -0.670018,
		6.094004, 21.670380, 8.346487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.848767, 22.154594, 8.274921>,  <6.211686, 22.176519, 8.815499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.848767, 22.154594, 8.274921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.478330, 22.077541, 8.145158>,  <6.256067, 22.031309, 8.067300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.478330, 22.077541, 8.145158>,  <6.848767, 22.154594, 8.274921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.478330, 22.077541, 8.145158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073495, 0.751261, -0.655901,
		0.370064, -0.631268, -0.681581,
		-0.926095, -0.192633, -0.324410,
		6.200501, 22.019751, 8.047834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.840289, 21.869272, 7.605179>,  <6.848767, 22.154594, 8.274921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.840289, 21.869272, 7.605179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.522869, 22.094028, 7.698609>,  <6.332417, 22.228882, 7.754668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.522869, 22.094028, 7.698609>,  <6.840289, 21.869272, 7.605179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.522869, 22.094028, 7.698609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255795, 0.656319, -0.709799,
		-0.552129, -0.503514, -0.664551,
		-0.793551, 0.561889, 0.233576,
		6.284803, 22.262594, 7.768682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.982313, 22.364836, 7.047560>,  <6.840289, 21.869272, 7.605179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.982313, 22.364836, 7.047560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.225131, 22.086073, 7.200305>,  <7.370821, 21.918816, 7.291951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.225131, 22.086073, 7.200305>,  <6.982313, 22.364836, 7.047560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.225131, 22.086073, 7.200305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427627, -0.691499, -0.582206,
		0.669801, 0.190130, -0.717786,
		0.607044, -0.696907, 0.381862,
		7.407244, 21.877001, 7.314863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.456588, 21.906513, 6.789930>,  <6.982313, 22.364836, 7.047560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.456588, 21.906513, 6.789930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.804297, 21.738424, 6.894068>,  <8.012923, 21.637571, 6.956551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.804297, 21.738424, 6.894068>,  <7.456588, 21.906513, 6.789930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.804297, 21.738424, 6.894068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082445, -0.396040, -0.914524,
		0.487409, 0.816435, -0.309622,
		0.869273, -0.420221, 0.260345,
		8.065080, 21.612358, 6.972172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.056026, 22.164824, 6.254832>,  <7.456588, 21.906513, 6.789930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.056026, 22.164824, 6.254832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.100736, 21.809525, 6.433057>,  <8.127562, 21.596346, 6.539992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.100736, 21.809525, 6.433057>,  <8.056026, 22.164824, 6.254832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.100736, 21.809525, 6.433057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072558, -0.439880, -0.895121,
		0.991081, 0.132379, 0.015283,
		0.111773, -0.888246, 0.445562,
		8.134268, 21.543051, 6.566725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.623317, 21.764467, 5.942911>,  <8.056026, 22.164824, 6.254832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.623317, 21.764467, 5.942911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.295427, 21.561852, 6.049850>,  <8.098694, 21.440283, 6.114013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.295427, 21.561852, 6.049850>,  <8.623317, 21.764467, 5.942911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.295427, 21.561852, 6.049850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098528, -0.335102, -0.937016,
		0.564223, -0.794434, 0.224782,
		-0.819723, -0.506538, 0.267346,
		8.049511, 21.409889, 6.130054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.590931, 21.038345, 5.722619>,  <8.623317, 21.764467, 5.942911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.590931, 21.038345, 5.722619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.196434, 21.075335, 5.777424>,  <7.959735, 21.097528, 5.810307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.196434, 21.075335, 5.777424>,  <8.590931, 21.038345, 5.722619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.196434, 21.075335, 5.777424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165235, -0.528527, -0.832680,
		-0.004584, -0.843865, 0.536536,
		-0.986243, 0.092471, 0.137014,
		7.900561, 21.103077, 5.818528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.377264, 20.433048, 5.802989>,  <8.590931, 21.038345, 5.722619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.377264, 20.433048, 5.802989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.069109, 20.650175, 5.669211>,  <7.884216, 20.780451, 5.588945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.069109, 20.650175, 5.669211>,  <8.377264, 20.433048, 5.802989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.069109, 20.650175, 5.669211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095382, -0.616774, -0.781340,
		-0.630400, -0.570036, 0.526930,
		-0.770389, 0.542816, -0.334443,
		7.837992, 20.813021, 5.568879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.004902, 19.828281, 5.694261>,  <8.377264, 20.433048, 5.802989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.004902, 19.828281, 5.694261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.066413, 19.917446, 5.309208>,  <9.103319, 19.970945, 5.078176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.066413, 19.917446, 5.309208>,  <9.004902, 19.828281, 5.694261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.066413, 19.917446, 5.309208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269200, 0.946820, 0.176246,
		0.950728, 0.232038, 0.205608,
		0.153778, 0.222912, -0.962633,
		9.112546, 19.984320, 5.020418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.401894, 19.426130, 5.903714>,  <9.004902, 19.828281, 5.694261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.401894, 19.426130, 5.903714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.029458, 19.349268, 6.027747>,  <7.805997, 19.303150, 6.102166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.029458, 19.349268, 6.027747>,  <8.401894, 19.426130, 5.903714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.029458, 19.349268, 6.027747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364418, -0.528523, 0.766722,
		0.016555, 0.826886, 0.562126,
		-0.931088, -0.192156, 0.310081,
		7.750132, 19.291620, 6.120771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.372690, 19.559120, 6.599255>,  <8.401894, 19.426130, 5.903714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.372690, 19.559120, 6.599255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.071324, 19.300192, 6.553053>,  <7.890505, 19.144835, 6.525332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.071324, 19.300192, 6.553053>,  <8.372690, 19.559120, 6.599255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.071324, 19.300192, 6.553053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198002, -0.390849, 0.898906,
		-0.627025, 0.654379, 0.422643,
		-0.753415, -0.647321, -0.115504,
		7.845300, 19.105995, 6.518402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.107671, 19.432993, 7.305557>,  <8.372690, 19.559120, 6.599255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.107671, 19.432993, 7.305557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.981586, 19.119902, 7.090903>,  <7.905934, 18.932047, 6.962110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.981586, 19.119902, 7.090903>,  <8.107671, 19.432993, 7.305557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.981586, 19.119902, 7.090903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205843, -0.608391, 0.766479,
		-0.926429, 0.131141, 0.352891,
		-0.315212, -0.782728, -0.536636,
		7.887022, 18.885084, 6.929912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.740536, 18.982096, 7.856339>,  <8.107671, 19.432993, 7.305557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.740536, 18.982096, 7.856339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.815345, 18.746256, 7.542042>,  <7.860231, 18.604752, 7.353464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.815345, 18.746256, 7.542042>,  <7.740536, 18.982096, 7.856339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.815345, 18.746256, 7.542042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175560, -0.766918, 0.617264,
		-0.966541, -0.253388, -0.039921,
		0.187023, -0.589602, -0.785743,
		7.871452, 18.569376, 7.306319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.505373, 18.343756, 8.050581>,  <7.740536, 18.982096, 7.856339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.505373, 18.343756, 8.050581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.726025, 18.241182, 7.733105>,  <7.858417, 18.179638, 7.542619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.726025, 18.241182, 7.733105>,  <7.505373, 18.343756, 8.050581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.726025, 18.241182, 7.733105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249727, -0.857140, 0.450497,
		-0.795826, -0.446714, -0.408788,
		0.551632, -0.256432, -0.793691,
		7.891514, 18.164253, 7.494998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.328380, 17.624989, 7.936976>,  <7.505373, 18.343756, 8.050581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.328380, 17.624989, 7.936976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.682901, 17.686958, 7.762407>,  <7.895614, 17.724140, 7.657665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.682901, 17.686958, 7.762407>,  <7.328380, 17.624989, 7.936976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.682901, 17.686958, 7.762407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367958, -0.807802, 0.460502,
		-0.281201, -0.568730, -0.772963,
		0.886303, 0.154924, -0.436424,
		7.948792, 17.733435, 7.631479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.462989, 17.004259, 7.533822>,  <7.328380, 17.624989, 7.936976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.462989, 17.004259, 7.533822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.788600, 17.182804, 7.682479>,  <7.983967, 17.289932, 7.771674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.788600, 17.182804, 7.682479>,  <7.462989, 17.004259, 7.533822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.788600, 17.182804, 7.682479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249859, -0.846734, 0.469694,
		0.524337, -0.289486, -0.800792,
		0.814028, 0.446363, 0.371643,
		8.032808, 17.316713, 7.793972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.846508, 16.531404, 7.758158>,  <7.462989, 17.004259, 7.533822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.846508, 16.531404, 7.758158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.109054, 16.800055, 7.895623>,  <8.266582, 16.961245, 7.978102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.109054, 16.800055, 7.895623>,  <7.846508, 16.531404, 7.758158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.109054, 16.800055, 7.895623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368579, -0.682919, 0.630691,
		0.658282, -0.287297, -0.695791,
		0.656365, 0.671627, 0.343662,
		8.305963, 17.001543, 7.998721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.506216, 16.132782, 7.776093>,  <7.846508, 16.531404, 7.758158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.506216, 16.132782, 7.776093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.486654, 16.435665, 8.036629>,  <8.474917, 16.617395, 8.192950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.486654, 16.435665, 8.036629>,  <8.506216, 16.132782, 7.776093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.486654, 16.435665, 8.036629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342409, -0.599893, 0.723108,
		0.938277, 0.258389, -0.229937,
		-0.048905, 0.757208, 0.651340,
		8.471983, 16.662828, 8.232031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.116272, 15.940899, 8.377682>,  <8.506216, 16.132782, 7.776093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.116272, 15.940899, 8.377682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.910668, 16.226269, 8.568185>,  <8.787307, 16.397491, 8.682487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.910668, 16.226269, 8.568185>,  <9.116272, 15.940899, 8.377682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.910668, 16.226269, 8.568185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162320, -0.464289, 0.870682,
		0.842287, 0.524844, 0.122845,
		-0.514008, 0.713424, 0.476258,
		8.756466, 16.440296, 8.711062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.491796, 16.010586, 8.997557>,  <9.116272, 15.940899, 8.377682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.491796, 16.010586, 8.997557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.134645, 16.170759, 9.079948>,  <8.920356, 16.266863, 9.129383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.134645, 16.170759, 9.079948>,  <9.491796, 16.010586, 8.997557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.134645, 16.170759, 9.079948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028620, -0.406034, 0.913410,
		0.449394, 0.821456, 0.351078,
		-0.892875, 0.400433, 0.205979,
		8.866783, 16.290890, 9.141742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.469008, 16.252443, 9.782022>,  <9.491796, 16.010586, 8.997557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.469008, 16.252443, 9.782022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.088220, 16.206081, 9.668663>,  <8.859746, 16.178265, 9.600647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.088220, 16.206081, 9.668663>,  <9.469008, 16.252443, 9.782022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.088220, 16.206081, 9.668663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215007, -0.405935, 0.888250,
		-0.217993, 0.906523, 0.361519,
		-0.951972, -0.115903, -0.283400,
		8.802628, 16.171310, 9.583643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.096493, 16.256426, 10.428995>,  <9.469008, 16.252443, 9.782022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.096493, 16.256426, 10.428995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.844664, 16.104477, 10.157898>,  <8.693566, 16.013308, 9.995239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.844664, 16.104477, 10.157898>,  <9.096493, 16.256426, 10.428995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.844664, 16.104477, 10.157898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354026, -0.636234, 0.685472,
		-0.691596, 0.671493, 0.266070,
		-0.629572, -0.379874, -0.677743,
		8.655792, 15.990515, 9.954576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.419405, 16.380217, 10.647839>,  <9.096493, 16.256426, 10.428995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.419405, 16.380217, 10.647839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.414093, 16.058582, 10.410092>,  <8.410906, 15.865602, 10.267445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.414093, 16.058582, 10.410092>,  <8.419405, 16.380217, 10.647839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.414093, 16.058582, 10.410092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438332, -0.529578, 0.726231,
		-0.898715, 0.270175, -0.345423,
		-0.013281, -0.804085, -0.594366,
		8.410109, 15.817357, 10.231783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.885098, 15.961786, 10.968759>,  <8.419405, 16.380217, 10.647839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.885098, 15.961786, 10.968759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.031272, 15.700952, 10.703054>,  <8.118977, 15.544451, 10.543632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.031272, 15.700952, 10.703054>,  <7.885098, 15.961786, 10.968759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.031272, 15.700952, 10.703054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390937, -0.755145, 0.526236,
		-0.844764, 0.067379, -0.530880,
		0.365434, -0.652086, -0.664260,
		8.140903, 15.505326, 10.503777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.333204, 15.506195, 10.717915>,  <7.885098, 15.961786, 10.968759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.333204, 15.506195, 10.717915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.673143, 15.306752, 10.649620>,  <7.877106, 15.187086, 10.608644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.673143, 15.306752, 10.649620>,  <7.333204, 15.506195, 10.717915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.673143, 15.306752, 10.649620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357585, -0.783500, 0.508193,
		-0.387161, -0.370833, -0.844150,
		0.849847, -0.498608, -0.170736,
		7.928097, 15.157170, 10.598399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.093359, 14.835761, 10.596770>,  <7.333204, 15.506195, 10.717915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.093359, 14.835761, 10.596770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.481961, 14.771367, 10.666357>,  <7.715122, 14.732731, 10.708109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.481961, 14.771367, 10.666357>,  <7.093359, 14.835761, 10.596770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.481961, 14.771367, 10.666357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228387, -0.832112, 0.505399,
		0.063398, -0.530729, -0.845167,
		0.971504, -0.160984, 0.173966,
		7.773413, 14.723072, 10.718547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.210824, 14.156370, 10.315618>,  <7.093359, 14.835761, 10.596770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.210824, 14.156370, 10.315618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.489155, 14.251669, 10.586634>,  <7.656154, 14.308848, 10.749244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.489155, 14.251669, 10.586634>,  <7.210824, 14.156370, 10.315618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.489155, 14.251669, 10.586634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104319, -0.899845, 0.423552,
		0.710592, -0.365400, -0.601284,
		0.695828, 0.238247, 0.677541,
		7.697903, 14.323143, 10.789896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.610623, 13.551596, 10.399858>,  <7.210824, 14.156370, 10.315618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.610623, 13.551596, 10.399858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.674924, 13.729967, 10.752065>,  <7.713505, 13.836990, 10.963388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.674924, 13.729967, 10.752065>,  <7.610623, 13.551596, 10.399858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.674924, 13.729967, 10.752065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117922, -0.877049, 0.465703,
		0.979925, -0.178696, -0.088403,
		0.160753, 0.445929, 0.880514,
		7.723150, 13.863746, 11.016219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.036139, 13.090833, 10.794928>,  <7.610623, 13.551596, 10.399858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.036139, 13.090833, 10.794928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.848427, 13.336759, 11.048471>,  <7.735800, 13.484314, 11.200598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.848427, 13.336759, 11.048471>,  <8.036139, 13.090833, 10.794928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.848427, 13.336759, 11.048471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233465, -0.778649, 0.582408,
		0.851628, 0.125327, 0.508942,
		-0.469279, 0.614815, 0.633860,
		7.707644, 13.521203, 11.238629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.124251, 12.745929, 11.407802>,  <8.036139, 13.090833, 10.794928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.124251, 12.745929, 11.407802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.824258, 13.005417, 11.459475>,  <7.644262, 13.161110, 11.490479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.824258, 13.005417, 11.459475>,  <8.124251, 12.745929, 11.407802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.824258, 13.005417, 11.459475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371538, -0.574731, 0.729139,
		0.547253, 0.498845, 0.672062,
		-0.749982, 0.648721, 0.129183,
		7.599264, 13.200033, 11.498229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.573621, 12.214038, 11.146971>,  <8.124251, 12.745929, 11.407802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.573621, 12.214038, 11.146971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.389179, 11.859424, 11.162139>,  <8.278514, 11.646655, 11.171240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.389179, 11.859424, 11.162139>,  <8.573621, 12.214038, 11.146971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.389179, 11.859424, 11.162139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681316, 0.381099, 0.624958,
		-0.568499, 0.262334, -0.779737,
		-0.461104, -0.886535, 0.037922,
		8.250848, 11.593463, 11.173515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.715429, 11.920580, 11.884082>,  <8.573621, 12.214038, 11.146971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.715429, 11.920580, 11.884082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.976233, 12.196281, 11.757710>,  <9.132716, 12.361703, 11.681887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.976233, 12.196281, 11.757710>,  <8.715429, 11.920580, 11.884082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.976233, 12.196281, 11.757710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337271, 0.109532, 0.935014,
		0.679067, -0.716192, -0.161050,
		0.652009, 0.689255, -0.315930,
		9.171836, 12.403058, 11.662930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.272276, 11.814249, 12.284429>,  <8.715429, 11.920580, 11.884082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.272276, 11.814249, 12.284429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.335827, 12.181370, 12.138884>,  <9.373958, 12.401643, 12.051557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.335827, 12.181370, 12.138884>,  <9.272276, 11.814249, 12.284429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.335827, 12.181370, 12.138884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378857, 0.283654, 0.880913,
		0.911715, -0.277810, -0.302650,
		0.158878, 0.917803, -0.363862,
		9.383491, 12.456711, 12.029725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.916933, 12.068205, 12.531690>,  <9.272276, 11.814249, 12.284429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.916933, 12.068205, 12.531690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.674700, 12.373791, 12.442582>,  <9.529360, 12.557142, 12.389117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.674700, 12.373791, 12.442582>,  <9.916933, 12.068205, 12.531690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.674700, 12.373791, 12.442582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449160, 0.559226, 0.696794,
		0.656905, 0.321908, -0.681800,
		-0.605584, 0.763964, -0.222770,
		9.493025, 12.602980, 12.375751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.404892, 12.666125, 12.324492>,  <9.916933, 12.068205, 12.531690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.404892, 12.666125, 12.324492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.036674, 12.775022, 12.436554>,  <9.815744, 12.840360, 12.503791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.036674, 12.775022, 12.436554>,  <10.404892, 12.666125, 12.324492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.036674, 12.775022, 12.436554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390636, 0.645702, 0.656105,
		-0.002276, 0.713410, -0.700743,
		-0.920543, 0.272242, 0.280153,
		9.760511, 12.856694, 12.520600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.636919, 13.322209, 12.638606>,  <10.404892, 12.666125, 12.324492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.636919, 13.322209, 12.638606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.312679, 13.179490, 12.824347>,  <10.118135, 13.093859, 12.935791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.312679, 13.179490, 12.824347>,  <10.636919, 13.322209, 12.638606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.312679, 13.179490, 12.824347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247860, 0.509376, 0.824076,
		-0.530559, 0.783090, -0.324464,
		-0.810600, -0.356799, 0.464351,
		10.069499, 13.072451, 12.963652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.296436, 13.858245, 12.945018>,  <10.636919, 13.322209, 12.638606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.296436, 13.858245, 12.945018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.119659, 13.554467, 13.135987>,  <10.013594, 13.372201, 13.250569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.119659, 13.554467, 13.135987>,  <10.296436, 13.858245, 12.945018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.119659, 13.554467, 13.135987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141418, 0.584548, 0.798940,
		-0.885827, 0.285568, -0.365734,
		-0.441941, -0.759444, 0.477424,
		9.987077, 13.326634, 13.279215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.633727, 13.991055, 13.260763>,  <10.296436, 13.858245, 12.945018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.633727, 13.991055, 13.260763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.841479, 13.725315, 13.475755>,  <9.966130, 13.565871, 13.604750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.841479, 13.725315, 13.475755>,  <9.633727, 13.991055, 13.260763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.841479, 13.725315, 13.475755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127374, 0.682127, 0.720055,
		-0.844998, -0.305521, 0.438904,
		0.519379, -0.664350, 0.537480,
		9.997293, 13.526011, 13.636999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.277161, 14.005369, 13.928658>,  <9.633727, 13.991055, 13.260763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.277161, 14.005369, 13.928658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.662936, 13.901588, 13.948829>,  <9.894402, 13.839320, 13.960932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.662936, 13.901588, 13.948829>,  <9.277161, 14.005369, 13.928658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.662936, 13.901588, 13.948829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153269, 0.704437, 0.693020,
		-0.215329, -0.660646, 0.719153,
		0.964439, -0.259451, 0.050429,
		9.952268, 13.823753, 13.963957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.334706, 13.954880, 14.525438>,  <9.277161, 14.005369, 13.928658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.334706, 13.954880, 14.525438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.707278, 14.024837, 14.397781>,  <9.930821, 14.066811, 14.321187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.707278, 14.024837, 14.397781>,  <9.334706, 13.954880, 14.525438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.707278, 14.024837, 14.397781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126679, 0.666297, 0.734848,
		0.341162, -0.724888, 0.598454,
		0.931429, 0.174890, -0.319143,
		9.986707, 14.077304, 14.302038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.892635, 13.740461, 15.078230>,  <9.334706, 13.954880, 14.525438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.892635, 13.740461, 15.078230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.042324, 14.018592, 14.832798>,  <10.132137, 14.185470, 14.685539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.042324, 14.018592, 14.832798>,  <9.892635, 13.740461, 15.078230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.042324, 14.018592, 14.832798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247273, 0.562880, 0.788684,
		0.893764, -0.446865, 0.038707,
		0.374222, 0.695326, -0.613579,
		10.154591, 14.227190, 14.648725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.595623, 13.795716, 15.346546>,  <9.892635, 13.740461, 15.078230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.595623, 13.795716, 15.346546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.530615, 14.137012, 15.148325>,  <10.491610, 14.341788, 15.029392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.530615, 14.137012, 15.148325>,  <10.595623, 13.795716, 15.346546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.530615, 14.137012, 15.148325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439667, 0.512237, 0.737771,
		0.883335, -0.097976, -0.458389,
		-0.162520, 0.853237, -0.495554,
		10.481859, 14.392982, 14.999659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.298724, 14.070190, 15.336850>,  <10.595623, 13.795716, 15.346546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.298724, 14.070190, 15.336850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.034109, 14.361216, 15.264162>,  <10.875340, 14.535830, 15.220550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.034109, 14.361216, 15.264162>,  <11.298724, 14.070190, 15.336850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.034109, 14.361216, 15.264162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410286, 0.553985, 0.724407,
		0.627721, 0.404666, -0.664990,
		-0.661538, 0.727562, -0.181720,
		10.835648, 14.579484, 15.209646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.722157, 14.603135, 15.297488>,  <11.298724, 14.070190, 15.336850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.722157, 14.603135, 15.297488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.387971, 14.810798, 15.369566>,  <11.187459, 14.935395, 15.412812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.387971, 14.810798, 15.369566>,  <11.722157, 14.603135, 15.297488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.387971, 14.810798, 15.369566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446972, 0.451202, 0.772421,
		0.319704, 0.725874, -0.609013,
		-0.835468, 0.519157, 0.180194,
		11.137331, 14.966545, 15.423624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.900743, 15.363633, 15.226672>,  <11.722157, 14.603135, 15.297488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.900743, 15.363633, 15.226672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.590340, 15.290232, 15.468048>,  <11.404098, 15.246191, 15.612873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.590340, 15.290232, 15.468048>,  <11.900743, 15.363633, 15.226672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.590340, 15.290232, 15.468048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411212, 0.578248, 0.704651,
		-0.478244, 0.794956, -0.373266,
		-0.776007, -0.183504, 0.603439,
		11.357537, 15.235181, 15.649080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.870383, 16.003721, 15.579995>,  <11.900743, 15.363633, 15.226672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.870383, 16.003721, 15.579995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.651086, 15.748609, 15.796388>,  <11.519507, 15.595541, 15.926223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.651086, 15.748609, 15.796388>,  <11.870383, 16.003721, 15.579995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.651086, 15.748609, 15.796388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278823, 0.470461, 0.837212,
		-0.788470, 0.609835, -0.080099,
		-0.548245, -0.637783, 0.540981,
		11.486612, 15.557274, 15.958682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.583010, 16.487961, 16.105272>,  <11.870383, 16.003721, 15.579995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.583010, 16.487961, 16.105272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.565793, 16.114193, 16.246696>,  <11.555463, 15.889932, 16.331551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.565793, 16.114193, 16.246696>,  <11.583010, 16.487961, 16.105272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.565793, 16.114193, 16.246696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294750, 0.326260, 0.898152,
		-0.954604, 0.142871, 0.261378,
		-0.043043, -0.934421, 0.353561,
		11.552880, 15.833867, 16.352764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.178300, 16.476643, 16.710133>,  <11.583010, 16.487961, 16.105272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.178300, 16.476643, 16.710133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.418647, 16.160988, 16.761082>,  <11.562855, 15.971596, 16.791651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.418647, 16.160988, 16.761082>,  <11.178300, 16.476643, 16.710133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.418647, 16.160988, 16.761082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112441, 0.241206, 0.963938,
		-0.791400, -0.564877, 0.233664,
		0.600868, -0.789135, 0.127375,
		11.598907, 15.924248, 16.799294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.097223, 16.378712, 17.404974>,  <11.178300, 16.476643, 16.710133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.097223, 16.378712, 17.404974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.402688, 16.134527, 17.320919>,  <11.585967, 15.988017, 17.270485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.402688, 16.134527, 17.320919>,  <11.097223, 16.378712, 17.404974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.402688, 16.134527, 17.320919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340393, 0.104135, 0.934499,
		-0.548591, -0.785172, 0.287320,
		0.763663, -0.610459, -0.210139,
		11.631787, 15.951389, 17.257877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.104303, 15.896276, 17.965609>,  <11.097223, 16.378712, 17.404974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.104303, 15.896276, 17.965609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.469118, 15.868274, 17.803974>,  <11.688007, 15.851473, 17.706993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.469118, 15.868274, 17.803974>,  <11.104303, 15.896276, 17.965609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.469118, 15.868274, 17.803974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391102, -0.148001, 0.908370,
		-0.123394, -0.986507, -0.107604,
		0.912038, -0.070003, -0.404087,
		11.742729, 15.847272, 17.682749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.469011, 15.295645, 18.172354>,  <11.104303, 15.896276, 17.965609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.469011, 15.295645, 18.172354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.755315, 15.559493, 18.080626>,  <11.927097, 15.717802, 18.025589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.755315, 15.559493, 18.080626>,  <11.469011, 15.295645, 18.172354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.755315, 15.559493, 18.080626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499545, -0.254141, 0.828171,
		0.488000, -0.707327, -0.511414,
		0.715759, 0.659622, -0.229321,
		11.970042, 15.757380, 18.011829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.033714, 14.963140, 18.410904>,  <11.469011, 15.295645, 18.172354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.033714, 14.963140, 18.410904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.075647, 15.360915, 18.415058>,  <12.100807, 15.599580, 18.417551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.075647, 15.360915, 18.415058>,  <12.033714, 14.963140, 18.410904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.075647, 15.360915, 18.415058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488427, -0.060579, 0.870500,
		0.866285, -0.086184, -0.492060,
		0.104832, 0.994436, 0.010384,
		12.107097, 15.659245, 18.418173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.699646, 15.066185, 18.543470>,  <12.033714, 14.963140, 18.410904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.699646, 15.066185, 18.543470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.496550, 15.393337, 18.651745>,  <12.374692, 15.589628, 18.716709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.496550, 15.393337, 18.651745>,  <12.699646, 15.066185, 18.543470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.496550, 15.393337, 18.651745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451881, -0.014676, 0.891958,
		0.733486, 0.575202, -0.362132,
		-0.507741, 0.817879, 0.270688,
		12.344227, 15.638701, 18.732952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.160551, 15.512740, 19.119650>,  <12.699646, 15.066185, 18.543470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.160551, 15.512740, 19.119650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.803487, 15.692613, 19.131947>,  <12.589249, 15.800536, 19.139324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.803487, 15.692613, 19.131947>,  <13.160551, 15.512740, 19.119650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.803487, 15.692613, 19.131947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183473, 0.300216, 0.936060,
		0.411699, 0.841224, -0.350495,
		-0.892660, 0.449681, 0.030743,
		12.535688, 15.827517, 19.141169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.235796, 16.164997, 19.333288>,  <13.160551, 15.512740, 19.119650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.235796, 16.164997, 19.333288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.855556, 16.104980, 19.441986>,  <12.627412, 16.068970, 19.507206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.855556, 16.104980, 19.441986>,  <13.235796, 16.164997, 19.333288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.855556, 16.104980, 19.441986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151227, 0.540668, 0.827532,
		-0.271089, 0.827748, -0.491269,
		-0.950601, -0.150041, 0.271747,
		12.570375, 16.059969, 19.523510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.053621, 16.821699, 19.746727>,  <13.235796, 16.164997, 19.333288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.053621, 16.821699, 19.746727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.766480, 16.554232, 19.824259>,  <12.594196, 16.393751, 19.870779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.766480, 16.554232, 19.824259>,  <13.053621, 16.821699, 19.746727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.766480, 16.554232, 19.824259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171779, 0.439926, 0.881452,
		-0.674671, 0.599455, -0.430665,
		-0.717852, -0.668669, 0.193832,
		12.551125, 16.353630, 19.882408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.383591, 17.207052, 20.039577>,  <13.053621, 16.821699, 19.746727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.383591, 17.207052, 20.039577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.359228, 16.821512, 20.143333>,  <12.344610, 16.590189, 20.205587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.359228, 16.821512, 20.143333>,  <12.383591, 17.207052, 20.039577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.359228, 16.821512, 20.143333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208632, 0.266424, 0.941005,
		-0.976096, 0.003197, -0.217317,
		-0.060907, -0.963851, 0.259388,
		12.340956, 16.532356, 20.221149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.740888, 17.166845, 20.417852>,  <12.383591, 17.207052, 20.039577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.740888, 17.166845, 20.417852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.965513, 16.856188, 20.532024>,  <12.100288, 16.669794, 20.600527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.965513, 16.856188, 20.532024>,  <11.740888, 17.166845, 20.417852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.965513, 16.856188, 20.532024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193450, 0.212166, 0.957895,
		-0.804502, -0.593136, -0.031097,
		0.561564, -0.776644, 0.285430,
		12.133983, 16.623196, 20.617653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.373033, 16.938000, 20.911087>,  <11.740888, 17.166845, 20.417852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.373033, 16.938000, 20.911087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.713166, 16.739002, 20.979708>,  <11.917247, 16.619604, 21.020880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.713166, 16.739002, 20.979708>,  <11.373033, 16.938000, 20.911087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.713166, 16.739002, 20.979708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168688, 0.051105, 0.984344,
		-0.498473, -0.865960, -0.040465,
		0.850335, -0.497495, 0.171552,
		11.968266, 16.589754, 21.031174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.325594, 16.478338, 21.392218>,  <11.373033, 16.938000, 20.911087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.325594, 16.478338, 21.392218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.723944, 16.512554, 21.404325>,  <11.962954, 16.533085, 21.411591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.723944, 16.512554, 21.404325>,  <11.325594, 16.478338, 21.392218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.723944, 16.512554, 21.404325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036135, 0.067885, 0.997038,
		0.083254, -0.994017, 0.070696,
		0.995873, 0.085562, 0.030267,
		12.022706, 16.538218, 21.413406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.525570, 16.018459, 21.811369>,  <11.325594, 16.478338, 21.392218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.525570, 16.018459, 21.811369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.818598, 16.290653, 21.818056>,  <11.994414, 16.453970, 21.822069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.818598, 16.290653, 21.818056>,  <11.525570, 16.018459, 21.811369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.818598, 16.290653, 21.818056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010302, -0.013475, 0.999856,
		0.680615, -0.732636, -0.002861,
		0.732569, 0.680487, 0.016719,
		12.038368, 16.494799, 21.823072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.981715, 15.809473, 22.336000>,  <11.525570, 16.018459, 21.811369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.981715, 15.809473, 22.336000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.068189, 16.196732, 22.285471>,  <12.120072, 16.429087, 22.255154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.068189, 16.196732, 22.285471>,  <11.981715, 15.809473, 22.336000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.068189, 16.196732, 22.285471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064674, 0.114901, 0.991269,
		0.974208, -0.222465, -0.037774,
		0.216183, 0.968146, -0.126325,
		12.133043, 16.487175, 22.247574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.487865, 15.825587, 22.773970>,  <11.981715, 15.809473, 22.336000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.487865, 15.825587, 22.773970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.346972, 16.197443, 22.730701>,  <12.262435, 16.420557, 22.704741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.346972, 16.197443, 22.730701>,  <12.487865, 15.825587, 22.773970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.346972, 16.197443, 22.730701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293632, -0.000025, 0.955918,
		0.888656, 0.368472, 0.272981,
		-0.352236, 0.929639, -0.108173,
		12.241301, 16.476336, 22.698250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.850809, 16.256893, 23.206739>,  <12.487865, 15.825587, 22.773970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.850809, 16.256893, 23.206739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.496517, 16.423246, 23.124254>,  <12.283942, 16.523058, 23.074764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.496517, 16.423246, 23.124254>,  <12.850809, 16.256893, 23.206739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.496517, 16.423246, 23.124254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233656, -0.015578, 0.972195,
		0.401108, 0.909284, 0.110972,
		-0.885730, 0.415884, -0.206211,
		12.230798, 16.548012, 23.062391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.815601, 16.639208, 23.738337>,  <12.850809, 16.256893, 23.206739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.815601, 16.639208, 23.738337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.440295, 16.654749, 23.600847>,  <12.215112, 16.664074, 23.518353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.440295, 16.654749, 23.600847>,  <12.815601, 16.639208, 23.738337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.440295, 16.654749, 23.600847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343186, 0.019988, 0.939055,
		0.043355, 0.999045, -0.005420,
		-0.938266, 0.038852, -0.343725,
		12.158815, 16.666405, 23.497730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.476068, 17.424894, 23.957899>,  <12.815601, 16.639208, 23.738337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.476068, 17.424894, 23.957899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.196618, 17.151829, 23.872210>,  <12.028948, 16.987989, 23.820797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.196618, 17.151829, 23.872210>,  <12.476068, 17.424894, 23.957899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.196618, 17.151829, 23.872210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502875, 0.255515, 0.825729,
		-0.508959, 0.684603, -0.521805,
		-0.698625, -0.682665, -0.214223,
		11.987030, 16.947029, 23.807943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.857430, 17.847605, 23.996416>,  <12.476068, 17.424894, 23.957899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.857430, 17.847605, 23.996416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.774364, 17.459959, 24.049618>,  <11.724524, 17.227371, 24.081539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.774364, 17.459959, 24.049618>,  <11.857430, 17.847605, 23.996416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.774364, 17.459959, 24.049618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407372, 0.209299, 0.888956,
		-0.889338, 0.130425, -0.438255,
		-0.207668, -0.969115, 0.133006,
		11.712063, 17.169224, 24.089520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.237292, 17.834597, 24.194433>,  <11.857430, 17.847605, 23.996416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.237292, 17.834597, 24.194433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.337005, 17.475964, 24.340858>,  <11.396832, 17.260784, 24.428713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.337005, 17.475964, 24.340858>,  <11.237292, 17.834597, 24.194433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.337005, 17.475964, 24.340858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410486, 0.244537, 0.878466,
		-0.877132, -0.369248, -0.307075,
		0.249281, -0.896581, 0.366062,
		11.411789, 17.206989, 24.450678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.843497, 17.798162, 24.762012>,  <11.237292, 17.834597, 24.194433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.843497, 17.798162, 24.762012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.094699, 17.489140, 24.799459>,  <11.245420, 17.303726, 24.821928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.094699, 17.489140, 24.799459>,  <10.843497, 17.798162, 24.762012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.094699, 17.489140, 24.799459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179648, -0.026874, 0.983364,
		-0.757190, -0.634374, -0.155666,
		0.628004, -0.772559, 0.093615,
		11.283100, 17.257372, 24.827543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.505619, 17.345499, 25.207783>,  <10.843497, 17.798162, 24.762012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.505619, 17.345499, 25.207783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.893610, 17.253218, 25.238565>,  <11.126405, 17.197849, 25.257034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.893610, 17.253218, 25.238565>,  <10.505619, 17.345499, 25.207783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.893610, 17.253218, 25.238565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062557, 0.069099, 0.995646,
		-0.235016, -0.970567, 0.052592,
		0.969976, -0.230703, 0.076955,
		11.184603, 17.184006, 25.261652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.522574, 16.785229, 25.752272>,  <10.505619, 17.345499, 25.207783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.522574, 16.785229, 25.752272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.885088, 16.952824, 25.730001>,  <11.102596, 17.053381, 25.716640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.885088, 16.952824, 25.730001>,  <10.522574, 16.785229, 25.752272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.885088, 16.952824, 25.730001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086903, -0.055809, 0.994652,
		0.413638, -0.906276, -0.086990,
		0.906284, 0.418986, -0.055673,
		11.156973, 17.078520, 25.713299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.050818, 16.469072, 26.307878>,  <10.522574, 16.785229, 25.752272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.050818, 16.469072, 26.307878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.238560, 16.807621, 26.207188>,  <11.351205, 17.010750, 26.146774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.238560, 16.807621, 26.207188>,  <11.050818, 16.469072, 26.307878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.238560, 16.807621, 26.207188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246266, 0.148298, 0.957790,
		0.847974, -0.511533, -0.138828,
		0.469353, 0.846370, -0.251726,
		11.379366, 17.061531, 26.131670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.641462, 16.376932, 26.708290>,  <11.050818, 16.469072, 26.307878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.641462, 16.376932, 26.708290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.616642, 16.765614, 26.617130>,  <11.601749, 16.998823, 26.562433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.616642, 16.765614, 26.617130>,  <11.641462, 16.376932, 26.708290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.616642, 16.765614, 26.617130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235994, 0.236151, 0.942624,
		0.969771, 0.004708, -0.243970,
		-0.062052, 0.971705, -0.227902,
		11.598026, 17.057125, 26.548759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.268372, 16.675438, 26.928305>,  <11.641462, 16.376932, 26.708290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.268372, 16.675438, 26.928305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.985799, 16.958384, 26.918627>,  <11.816255, 17.128151, 26.912821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.985799, 16.958384, 26.918627>,  <12.268372, 16.675438, 26.928305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.985799, 16.958384, 26.918627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319521, 0.349227, 0.880878,
		0.631553, 0.614551, -0.472724,
		-0.706433, 0.707366, -0.024193,
		11.773869, 17.170593, 26.911369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.564900, 17.156742, 27.197437>,  <12.268372, 16.675438, 26.928305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.564900, 17.156742, 27.197437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.198669, 17.317497, 27.203131>,  <11.978930, 17.413950, 27.206547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.198669, 17.317497, 27.203131>,  <12.564900, 17.156742, 27.197437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.198669, 17.317497, 27.203131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276048, 0.602361, 0.748972,
		0.292430, 0.689671, -0.662449,
		-0.915578, 0.401889, 0.014234,
		11.923996, 17.438065, 27.207401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.614529, 17.839703, 27.216686>,  <12.564900, 17.156742, 27.197437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.614529, 17.839703, 27.216686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.265593, 17.768757, 27.398922>,  <12.056231, 17.726189, 27.508265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.265593, 17.768757, 27.398922>,  <12.614529, 17.839703, 27.216686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.265593, 17.768757, 27.398922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327024, 0.481019, 0.813434,
		-0.363423, 0.858581, -0.361611,
		-0.872341, -0.177365, 0.455590,
		12.003890, 17.715548, 27.535599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.308219, 18.555620, 27.441570>,  <12.614529, 17.839703, 27.216686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.308219, 18.555620, 27.441570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.174112, 18.254120, 27.667652>,  <12.093648, 18.073219, 27.803301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.174112, 18.254120, 27.667652>,  <12.308219, 18.555620, 27.441570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.174112, 18.254120, 27.667652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321786, 0.472232, 0.820641,
		-0.885466, 0.457009, 0.084222,
		-0.335268, -0.753750, 0.565204,
		12.073532, 18.027994, 27.837214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.856965, 18.847614, 27.967030>,  <12.308219, 18.555620, 27.441570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.856965, 18.847614, 27.967030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.929627, 18.484291, 28.117752>,  <11.973225, 18.266298, 28.208185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.929627, 18.484291, 28.117752>,  <11.856965, 18.847614, 27.967030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.929627, 18.484291, 28.117752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107752, 0.399258, 0.910485,
		-0.977441, -0.124793, 0.170399,
		0.181656, -0.908306, 0.376805,
		11.984124, 18.211800, 28.230793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.492533, 18.827677, 28.736235>,  <11.856965, 18.847614, 27.967030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.492533, 18.827677, 28.736235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.747423, 18.520638, 28.708694>,  <11.900357, 18.336414, 28.692169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.747423, 18.520638, 28.708694>,  <11.492533, 18.827677, 28.736235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.747423, 18.520638, 28.708694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377683, 0.233158, 0.896099,
		-0.671789, -0.597021, 0.438482,
		0.637225, -0.767596, -0.068852,
		11.938591, 18.290359, 28.688038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.320083, 18.164946, 29.301126>,  <11.492533, 18.827677, 28.736235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.320083, 18.164946, 29.301126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.686650, 18.267756, 29.178415>,  <11.906591, 18.329441, 29.104788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.686650, 18.267756, 29.178415>,  <11.320083, 18.164946, 29.301126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.686650, 18.267756, 29.178415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206952, 0.351764, 0.912925,
		0.342543, -0.900116, 0.269177,
		0.916425, 0.257009, -0.306775,
		11.961576, 18.344862, 29.086382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.629702, 17.973801, 29.946814>,  <11.320083, 18.164946, 29.301126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.629702, 17.973801, 29.946814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.881713, 18.182236, 29.716497>,  <12.032920, 18.307297, 29.578308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.881713, 18.182236, 29.716497>,  <11.629702, 17.973801, 29.946814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.881713, 18.182236, 29.716497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518523, 0.269678, 0.811423,
		0.578099, -0.809780, -0.100290,
		0.630028, 0.521085, -0.575790,
		12.070722, 18.338562, 29.543760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.373356, 17.698395, 30.104319>,  <11.629702, 17.973801, 29.946814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.373356, 17.698395, 30.104319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.370431, 18.076283, 29.973202>,  <12.368676, 18.303015, 29.894531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.370431, 18.076283, 29.973202>,  <12.373356, 17.698395, 30.104319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.370431, 18.076283, 29.973202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625691, 0.260027, 0.735457,
		0.780037, -0.199720, -0.593004,
		-0.007312, 0.944721, -0.327794,
		12.368237, 18.359699, 29.874863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.041631, 17.925127, 30.394175>,  <12.373356, 17.698395, 30.104319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.041631, 17.925127, 30.394175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.842955, 18.262705, 30.313126>,  <12.723749, 18.465252, 30.264496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.842955, 18.262705, 30.313126>,  <13.041631, 17.925127, 30.394175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.842955, 18.262705, 30.313126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432369, 0.443022, 0.785358,
		0.752566, 0.302472, -0.584941,
		-0.496691, 0.843944, -0.202624,
		12.693948, 18.515888, 30.252338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.417968, 18.539206, 30.334175>,  <13.041631, 17.925127, 30.394175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.417968, 18.539206, 30.334175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.065845, 18.618229, 30.506701>,  <12.854572, 18.665642, 30.610216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.065845, 18.618229, 30.506701>,  <13.417968, 18.539206, 30.334175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.065845, 18.618229, 30.506701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468575, 0.219973, 0.855599,
		0.074152, 0.955292, -0.286214,
		-0.880306, 0.197557, 0.431314,
		12.801754, 18.677496, 30.636095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.309757, 19.219271, 30.622715>,  <13.417968, 18.539206, 30.334175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.309757, 19.219271, 30.622715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.116971, 18.940332, 30.834911>,  <13.001299, 18.772970, 30.962229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.116971, 18.940332, 30.834911>,  <13.309757, 19.219271, 30.622715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.116971, 18.940332, 30.834911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463749, 0.310669, 0.829712,
		-0.743402, 0.645907, 0.173661,
		-0.481965, -0.697345, 0.530490,
		12.972382, 18.731129, 30.994059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.624196, 18.645184, 31.041759>,  <13.309757, 19.219271, 30.622715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.624196, 18.645184, 31.041759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.830329, 18.332289, 31.181780>,  <13.954009, 18.144552, 31.265793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.830329, 18.332289, 31.181780>,  <13.624196, 18.645184, 31.041759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.830329, 18.332289, 31.181780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007012, -0.404603, -0.914466,
		0.856961, 0.473709, -0.203020,
		0.515333, -0.782238, 0.350051,
		13.984929, 18.097618, 31.286795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.193938, 18.515474, 30.487017>,  <13.624196, 18.645184, 31.041759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.193938, 18.515474, 30.487017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.060408, 18.203655, 30.699003>,  <13.980289, 18.016563, 30.826195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.060408, 18.203655, 30.699003>,  <14.193938, 18.515474, 30.487017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.060408, 18.203655, 30.699003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008139, -0.564579, -0.825339,
		0.942599, -0.271207, 0.194817,
		-0.333827, -0.779550, 0.529964,
		13.960259, 17.969790, 30.857992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.414991, 17.832130, 30.210173>,  <14.193938, 18.515474, 30.487017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.414991, 17.832130, 30.210173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.099401, 17.714287, 30.425848>,  <13.910048, 17.643579, 30.555254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.099401, 17.714287, 30.425848>,  <14.414991, 17.832130, 30.210173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.099401, 17.714287, 30.425848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239014, -0.661267, -0.711054,
		0.566031, -0.689877, 0.451307,
		-0.788974, -0.294610, 0.539188,
		13.862709, 17.625904, 30.587605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.444068, 17.153522, 30.459221>,  <14.414991, 17.832130, 30.210173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.444068, 17.153522, 30.459221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.072104, 17.271564, 30.371418>,  <13.848927, 17.342390, 30.318737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.072104, 17.271564, 30.371418>,  <14.444068, 17.153522, 30.459221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.072104, 17.271564, 30.371418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044953, -0.683542, -0.728526,
		-0.365033, -0.667595, 0.648897,
		-0.929908, 0.295106, -0.219505,
		13.793132, 17.360096, 30.305567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.956498, 16.683041, 30.549116>,  <14.444068, 17.153522, 30.459221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.956498, 16.683041, 30.549116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.824697, 16.907791, 30.245611>,  <13.745616, 17.042641, 30.063507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.824697, 16.907791, 30.245611>,  <13.956498, 16.683041, 30.549116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.824697, 16.907791, 30.245611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141932, -0.765033, -0.628155,
		-0.933425, -0.314672, 0.172332,
		-0.329503, 0.561877, -0.758763,
		13.725845, 17.076355, 30.017982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.647158, 16.224234, 30.178560>,  <13.956498, 16.683041, 30.549116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.647158, 16.224234, 30.178560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.691322, 16.523249, 29.916569>,  <13.717821, 16.702658, 29.759375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.691322, 16.523249, 29.916569>,  <13.647158, 16.224234, 30.178560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.691322, 16.523249, 29.916569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007499, -0.658363, -0.752664,
		-0.993858, 0.088014, -0.067084,
		0.110411, 0.747537, -0.654979,
		13.724445, 16.747509, 29.720076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.082231, 16.055424, 29.723936>,  <13.647158, 16.224234, 30.178560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.082231, 16.055424, 29.723936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.348732, 16.293926, 29.544790>,  <13.508633, 16.437027, 29.437304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.348732, 16.293926, 29.544790>,  <13.082231, 16.055424, 29.723936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.348732, 16.293926, 29.544790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010021, -0.607681, -0.794118,
		-0.745657, 0.524596, -0.410846,
		0.666255, 0.596256, -0.447865,
		13.548609, 16.472803, 29.410431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.847941, 15.998375, 29.047104>,  <13.082231, 16.055424, 29.723936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.847941, 15.998375, 29.047104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.214250, 16.157740, 29.026587>,  <13.434034, 16.253359, 29.014277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.214250, 16.157740, 29.026587>,  <12.847941, 15.998375, 29.047104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.214250, 16.157740, 29.026587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200765, -0.564544, -0.800614,
		-0.347932, 0.722881, -0.596980,
		0.915771, 0.398413, -0.051294,
		13.488981, 16.277264, 29.011198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.921642, 16.373545, 28.315643>,  <12.847941, 15.998375, 29.047104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.921642, 16.373545, 28.315643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.270575, 16.267277, 28.479820>,  <13.479934, 16.203516, 28.578325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.270575, 16.267277, 28.479820>,  <12.921642, 16.373545, 28.315643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.270575, 16.267277, 28.479820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187946, -0.592769, -0.783136,
		0.451351, 0.760293, -0.467158,
		0.872329, -0.265668, 0.410441,
		13.532273, 16.187576, 28.602953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.335937, 16.521761, 27.745628>,  <12.921642, 16.373545, 28.315643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.335937, 16.521761, 27.745628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.520731, 16.288345, 28.012777>,  <13.631608, 16.148296, 28.173067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.520731, 16.288345, 28.012777>,  <13.335937, 16.521761, 27.745628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.520731, 16.288345, 28.012777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363070, -0.562621, -0.742723,
		0.809166, 0.585612, -0.048057,
		0.461986, -0.583538, 0.667871,
		13.659327, 16.113283, 28.213139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.989699, 16.405622, 27.434114>,  <13.335937, 16.521761, 27.745628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.989699, 16.405622, 27.434114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.914561, 16.112261, 27.695444>,  <13.869478, 15.936243, 27.852242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.914561, 16.112261, 27.695444>,  <13.989699, 16.405622, 27.434114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.914561, 16.112261, 27.695444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233912, -0.679429, -0.695458,
		0.953939, 0.022182, 0.299180,
		-0.187845, -0.733406, 0.653322,
		13.858208, 15.892239, 27.891441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.602146, 15.951030, 27.458033>,  <13.989699, 16.405622, 27.434114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.602146, 15.951030, 27.458033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.274652, 15.758623, 27.583441>,  <14.078156, 15.643179, 27.658686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.274652, 15.758623, 27.583441>,  <14.602146, 15.951030, 27.458033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.274652, 15.758623, 27.583441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092962, -0.649886, -0.754325,
		0.566596, -0.588447, 0.576801,
		-0.818735, -0.481018, 0.313520,
		14.029032, 15.614318, 27.677496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.558815, 15.360490, 27.102921>,  <14.602146, 15.951030, 27.458033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.558815, 15.360490, 27.102921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.194207, 15.320336, 27.262447>,  <13.975443, 15.296244, 27.358164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.194207, 15.320336, 27.262447>,  <14.558815, 15.360490, 27.102921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.194207, 15.320336, 27.262447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314624, -0.454295, -0.833443,
		0.264846, -0.885177, 0.382515,
		-0.911520, -0.100385, 0.398816,
		13.920752, 15.290221, 27.382092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.386107, 14.554390, 27.090118>,  <14.558815, 15.360490, 27.102921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.386107, 14.554390, 27.090118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.050311, 14.771716, 27.093348>,  <13.848833, 14.902112, 27.095285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.050311, 14.771716, 27.093348>,  <14.386107, 14.554390, 27.090118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.050311, 14.771716, 27.093348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295696, -0.444324, -0.845660,
		-0.455889, -0.712299, 0.533662,
		-0.839482, 0.543329, 0.008062,
		13.798464, 14.934711, 27.095770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.987971, 14.143528, 26.695135>,  <14.386107, 14.554390, 27.090118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.987971, 14.143528, 26.695135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.763091, 14.474300, 26.699429>,  <13.628163, 14.672764, 26.702005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.763091, 14.474300, 26.699429>,  <13.987971, 14.143528, 26.695135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.763091, 14.474300, 26.699429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369066, -0.239255, -0.898080,
		-0.740082, -0.508863, 0.439702,
		-0.562200, 0.826932, 0.010735,
		13.594431, 14.722380, 26.702650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.299862, 13.908726, 26.592728>,  <13.987971, 14.143528, 26.695135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.299862, 13.908726, 26.592728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.277576, 14.294177, 26.488176>,  <13.264205, 14.525448, 26.425446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.277576, 14.294177, 26.488176>,  <13.299862, 13.908726, 26.592728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.277576, 14.294177, 26.488176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456463, -0.257407, -0.851694,
		-0.887996, 0.071859, 0.454201,
		-0.055713, 0.963627, -0.261378,
		13.260862, 14.583265, 26.409763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.621898, 13.984454, 26.376448>,  <13.299862, 13.908726, 26.592728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.621898, 13.984454, 26.376448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.846458, 14.284538, 26.236725>,  <12.981194, 14.464588, 26.152891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.846458, 14.284538, 26.236725>,  <12.621898, 13.984454, 26.376448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.846458, 14.284538, 26.236725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488550, -0.040234, -0.871608,
		-0.667942, 0.659975, 0.343927,
		0.561402, 0.750209, -0.349305,
		13.014879, 14.509601, 26.131933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.169307, 14.335331, 25.876617>,  <12.621898, 13.984454, 26.376448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.169307, 14.335331, 25.876617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.532262, 14.474146, 25.781782>,  <12.750035, 14.557435, 25.724880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.532262, 14.474146, 25.781782>,  <12.169307, 14.335331, 25.876617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.532262, 14.474146, 25.781782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270397, 0.050161, -0.961441,
		-0.321764, 0.936509, 0.139353,
		0.907388, 0.347038, -0.237089,
		12.804479, 14.578258, 25.710655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.098399, 14.895705, 25.388792>,  <12.169307, 14.335331, 25.876617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.098399, 14.895705, 25.388792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.481343, 14.797457, 25.327955>,  <12.711109, 14.738507, 25.291452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.481343, 14.797457, 25.327955>,  <12.098399, 14.895705, 25.388792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.481343, 14.797457, 25.327955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149134, 0.030716, -0.988340,
		0.247430, 0.968879, -0.007224,
		0.957360, -0.245622, -0.152093,
		12.768551, 14.723770, 25.282328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.486787, 15.387306, 24.871334>,  <12.098399, 14.895705, 25.388792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.486787, 15.387306, 24.871334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.659542, 15.026599, 24.864578>,  <12.763195, 14.810174, 24.860525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.659542, 15.026599, 24.864578>,  <12.486787, 15.387306, 24.871334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.659542, 15.026599, 24.864578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122679, 0.077289, -0.989432,
		0.893545, 0.425252, 0.144008,
		0.431889, -0.901769, -0.016891,
		12.789108, 14.756068, 24.859510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.034575, 15.430228, 24.302166>,  <12.486787, 15.387306, 24.871334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.034575, 15.430228, 24.302166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.988663, 15.045212, 24.400425>,  <12.961115, 14.814202, 24.459379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.988663, 15.045212, 24.400425>,  <13.034575, 15.430228, 24.302166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.988663, 15.045212, 24.400425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063010, -0.239727, -0.968793,
		0.991390, -0.126677, -0.033133,
		-0.114781, -0.962540, 0.245645,
		12.954228, 14.756450, 24.474119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.343601, 15.028089, 23.810526>,  <13.034575, 15.430228, 24.302166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.343601, 15.028089, 23.810526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.112545, 14.749672, 23.981104>,  <12.973911, 14.582622, 24.083450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.112545, 14.749672, 23.981104>,  <13.343601, 15.028089, 23.810526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.112545, 14.749672, 23.981104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158740, -0.416663, -0.895094,
		0.800708, -0.584737, 0.130191,
		-0.577640, -0.696042, 0.426447,
		12.939253, 14.540859, 24.109037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.424012, 14.433816, 23.299606>,  <13.343601, 15.028089, 23.810526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.424012, 14.433816, 23.299606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.102404, 14.360047, 23.525717>,  <12.909438, 14.315786, 23.661383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.102404, 14.360047, 23.525717>,  <13.424012, 14.433816, 23.299606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.102404, 14.360047, 23.525717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443740, -0.446700, -0.776888,
		0.395784, -0.875470, 0.277321,
		-0.804021, -0.184421, 0.565278,
		12.861197, 14.304721, 23.695299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.316994, 13.751657, 23.366798>,  <13.424012, 14.433816, 23.299606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.316994, 13.751657, 23.366798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.969776, 13.948578, 23.392529>,  <12.761446, 14.066730, 23.407967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.969776, 13.948578, 23.392529>,  <13.316994, 13.751657, 23.366798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.969776, 13.948578, 23.392529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314364, -0.444707, -0.838696,
		-0.384283, -0.748248, 0.540787,
		-0.868045, 0.492301, 0.064329,
		12.709363, 14.096270, 23.411827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.819233, 13.349902, 23.148058>,  <13.316994, 13.751657, 23.366798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.819233, 13.349902, 23.148058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.624352, 13.697322, 23.111719>,  <12.507422, 13.905774, 23.089916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.624352, 13.697322, 23.111719>,  <12.819233, 13.349902, 23.148058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.624352, 13.697322, 23.111719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365681, -0.297376, -0.881955,
		-0.793039, -0.396470, 0.462495,
		-0.487204, 0.868550, -0.090849,
		12.478190, 13.957887, 23.084465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.193118, 13.076970, 22.985279>,  <12.819233, 13.349902, 23.148058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.193118, 13.076970, 22.985279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.168921, 13.461850, 22.879065>,  <12.154404, 13.692779, 22.815336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.168921, 13.461850, 22.879065>,  <12.193118, 13.076970, 22.985279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.168921, 13.461850, 22.879065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493217, -0.260092, -0.830113,
		-0.867800, 0.080753, 0.490308,
		-0.060491, 0.962201, -0.265537,
		12.150774, 13.750510, 22.799404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.533222, 13.202113, 22.710670>,  <12.193118, 13.076970, 22.985279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.533222, 13.202113, 22.710670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.716001, 13.530484, 22.573687>,  <11.825667, 13.727507, 22.491497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.716001, 13.530484, 22.573687>,  <11.533222, 13.202113, 22.710670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.716001, 13.530484, 22.573687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413900, -0.144547, -0.898773,
		-0.787329, 0.552434, 0.273732,
		0.456945, 0.820928, -0.342458,
		11.853085, 13.776763, 22.470949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.018735, 13.538866, 22.313190>,  <11.533222, 13.202113, 22.710670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.018735, 13.538866, 22.313190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.368470, 13.678692, 22.178528>,  <11.578311, 13.762587, 22.097731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.368470, 13.678692, 22.178528>,  <11.018735, 13.538866, 22.313190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.368470, 13.678692, 22.178528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259737, -0.248932, -0.933043,
		-0.409962, 0.903238, -0.126856,
		0.874338, 0.349563, -0.336657,
		11.630772, 13.783561, 22.077530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.882902, 13.976931, 21.755199>,  <11.018735, 13.538866, 22.313190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.882902, 13.976931, 21.755199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.271672, 13.887884, 21.724731>,  <11.504934, 13.834456, 21.706451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.271672, 13.887884, 21.724731>,  <10.882902, 13.976931, 21.755199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.271672, 13.887884, 21.724731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095655, -0.078089, -0.992347,
		0.214965, 0.971774, -0.097191,
		0.971926, -0.222617, -0.076169,
		11.563250, 13.821099, 21.701881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.137223, 14.333883, 21.219612>,  <10.882902, 13.976931, 21.755199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.137223, 14.333883, 21.219612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.393215, 14.027674, 21.246136>,  <11.546810, 13.843947, 21.262051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.393215, 14.027674, 21.246136>,  <11.137223, 14.333883, 21.219612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.393215, 14.027674, 21.246136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075868, -0.148829, -0.985948,
		0.764636, 0.625957, -0.153326,
		0.639981, -0.765525, 0.066310,
		11.585210, 13.798017, 21.266029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.417961, 14.385102, 20.632475>,  <11.137223, 14.333883, 21.219612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.417961, 14.385102, 20.632475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.549391, 14.021494, 20.735018>,  <11.628249, 13.803329, 20.796543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.549391, 14.021494, 20.735018>,  <11.417961, 14.385102, 20.632475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.549391, 14.021494, 20.735018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085771, -0.241586, -0.966581,
		0.940575, 0.339583, -0.001411,
		0.328575, -0.909021, 0.256356,
		11.647964, 13.748788, 20.811924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.016245, 14.339547, 20.256075>,  <11.417961, 14.385102, 20.632475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.016245, 14.339547, 20.256075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.877097, 13.980504, 20.364361>,  <11.793609, 13.765079, 20.429333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.877097, 13.980504, 20.364361>,  <12.016245, 14.339547, 20.256075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.877097, 13.980504, 20.364361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100937, -0.322929, -0.941025,
		0.932094, -0.300029, 0.202939,
		-0.347869, -0.897608, 0.270716,
		11.772737, 13.711222, 20.445576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.465901, 13.866078, 20.018574>,  <12.016245, 14.339547, 20.256075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.465901, 13.866078, 20.018574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.136350, 13.645167, 20.069506>,  <11.938619, 13.512621, 20.100065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.136350, 13.645167, 20.069506>,  <12.465901, 13.866078, 20.018574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.136350, 13.645167, 20.069506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029951, -0.266776, -0.963293,
		0.565974, -0.789823, 0.236332,
		-0.823879, -0.552278, 0.127332,
		11.889186, 13.479484, 20.107706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.519643, 13.197888, 19.677378>,  <12.465901, 13.866078, 20.018574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.519643, 13.197888, 19.677378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.123494, 13.243880, 19.708214>,  <11.885805, 13.271476, 19.726715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.123494, 13.243880, 19.708214>,  <12.519643, 13.197888, 19.677378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.123494, 13.243880, 19.708214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102382, -0.233586, -0.966931,
		-0.093170, -0.965514, 0.243109,
		-0.990372, 0.114979, 0.077089,
		11.826383, 13.278375, 19.731340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.163548, 12.613703, 19.429119>,  <12.519643, 13.197888, 19.677378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.163548, 12.613703, 19.429119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.888004, 12.901383, 19.392847>,  <11.722678, 13.073992, 19.371084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.888004, 12.901383, 19.392847>,  <12.163548, 12.613703, 19.429119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.888004, 12.901383, 19.392847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067197, -0.187913, -0.979884,
		-0.721775, -0.668908, 0.177773,
		-0.688858, 0.719202, -0.090682,
		11.681347, 13.117144, 19.365643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.893646, 12.352653, 18.893478>,  <12.163548, 12.613703, 19.429119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.893646, 12.352653, 18.893478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.775241, 12.734718, 18.895988>,  <11.704198, 12.963958, 18.897493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.775241, 12.734718, 18.895988>,  <11.893646, 12.352653, 18.893478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.775241, 12.734718, 18.895988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223099, -0.062751, -0.972774,
		-0.928764, -0.289353, 0.231671,
		-0.296013, 0.955163, 0.006273,
		11.686437, 13.021267, 18.897871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.272449, 12.369067, 18.424427>,  <11.893646, 12.352653, 18.893478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.272449, 12.369067, 18.424427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.395207, 12.748938, 18.449503>,  <11.468863, 12.976860, 18.464548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.395207, 12.748938, 18.449503>,  <11.272449, 12.369067, 18.424427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.395207, 12.748938, 18.449503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248497, 0.143538, -0.957939,
		-0.918729, 0.278411, 0.280043,
		0.306898, 0.949676, 0.062689,
		11.487277, 13.033840, 18.468309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.793444, 12.724556, 18.069769>,  <11.272449, 12.369067, 18.424427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.793444, 12.724556, 18.069769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.119636, 12.955784, 18.081295>,  <11.315351, 13.094521, 18.088211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.119636, 12.955784, 18.081295>,  <10.793444, 12.724556, 18.069769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.119636, 12.955784, 18.081295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148878, 0.257613, -0.954710,
		-0.559312, 0.774256, 0.296140,
		0.815479, 0.578069, 0.028817,
		11.364279, 13.129205, 18.089939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.565857, 13.351978, 17.716925>,  <10.793444, 12.724556, 18.069769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.565857, 13.351978, 17.716925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.964791, 13.330761, 17.696901>,  <11.204152, 13.318030, 17.684887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.964791, 13.330761, 17.696901>,  <10.565857, 13.351978, 17.716925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.964791, 13.330761, 17.696901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039788, 0.179553, -0.982943,
		0.061126, 0.982317, 0.176965,
		0.997337, -0.053042, -0.050060,
		11.263992, 13.314848, 17.681883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.690501, 13.921882, 17.278450>,  <10.565857, 13.351978, 17.716925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.690501, 13.921882, 17.278450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.021813, 13.697763, 17.276613>,  <11.220600, 13.563293, 17.275511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.021813, 13.697763, 17.276613>,  <10.690501, 13.921882, 17.278450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.021813, 13.697763, 17.276613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051229, -0.067568, -0.996399,
		0.557968, 0.825532, -0.084669,
		0.828280, -0.560296, -0.004590,
		11.270297, 13.529675, 17.275236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.129068, 14.083759, 16.714016>,  <10.690501, 13.921882, 17.278450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.129068, 14.083759, 16.714016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.264119, 13.716917, 16.798800>,  <11.345150, 13.496812, 16.849670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.264119, 13.716917, 16.798800>,  <11.129068, 14.083759, 16.714016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.264119, 13.716917, 16.798800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086711, -0.193921, -0.977177,
		0.937278, 0.348301, 0.014050,
		0.337627, -0.917105, 0.211960,
		11.365407, 13.441786, 16.862387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.707771, 14.098735, 16.333126>,  <11.129068, 14.083759, 16.714016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.707771, 14.098735, 16.333126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.607266, 13.723968, 16.430330>,  <11.546964, 13.499107, 16.488653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.607266, 13.723968, 16.430330>,  <11.707771, 14.098735, 16.333126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.607266, 13.723968, 16.430330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124541, -0.280271, -0.951808,
		0.959874, -0.208887, 0.187106,
		-0.251261, -0.936918, 0.243009,
		11.531888, 13.442892, 16.503233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.166623, 13.766307, 15.959793>,  <11.707771, 14.098735, 16.333126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.166623, 13.766307, 15.959793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.910263, 13.468893, 16.036112>,  <11.756447, 13.290444, 16.081903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.910263, 13.468893, 16.036112>,  <12.166623, 13.766307, 15.959793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.910263, 13.468893, 16.036112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085050, -0.315807, -0.945004,
		0.762899, -0.589426, 0.265638,
		-0.640900, -0.743535, 0.190798,
		11.717993, 13.245832, 16.093351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.464738, 13.168660, 15.700271>,  <12.166623, 13.766307, 15.959793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.464738, 13.168660, 15.700271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.076334, 13.073150, 15.704783>,  <11.843292, 13.015843, 15.707491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.076334, 13.073150, 15.704783>,  <12.464738, 13.168660, 15.700271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.076334, 13.073150, 15.704783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125710, -0.550216, -0.825506,
		0.203319, -0.800155, 0.564281,
		-0.971009, -0.238777, 0.011281,
		11.785031, 13.001516, 15.708168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.280710, 13.443133, 15.802069>,  <12.464738, 13.168660, 15.700271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.280710, 13.443133, 15.802069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.586382, 13.562155, 15.573161>,  <13.769785, 13.633568, 15.435817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.586382, 13.562155, 15.573161>,  <13.280710, 13.443133, 15.802069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.586382, 13.562155, 15.573161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644740, -0.377798, 0.664514,
		-0.018473, -0.876772, -0.480551,
		0.764178, 0.297555, -0.572270,
		13.815636, 13.651421, 15.401480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.697160, 12.894718, 15.739781>,  <13.280710, 13.443133, 15.802069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.697160, 12.894718, 15.739781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.922678, 13.217286, 15.668427>,  <14.057989, 13.410827, 15.625614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.922678, 13.217286, 15.668427>,  <13.697160, 12.894718, 15.739781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.922678, 13.217286, 15.668427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716187, -0.369780, 0.591894,
		0.411351, -0.461465, -0.786028,
		0.563796, 0.806419, -0.178386,
		14.091817, 13.459212, 15.614910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.436576, 12.628496, 15.770113>,  <13.697160, 12.894718, 15.739781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.436576, 12.628496, 15.770113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.471653, 13.025487, 15.804286>,  <14.492700, 13.263681, 15.824790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.471653, 13.025487, 15.804286>,  <14.436576, 12.628496, 15.770113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.471653, 13.025487, 15.804286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743411, -0.122289, 0.657561,
		0.663061, 0.005849, -0.748542,
		0.087692, 0.992477, 0.085433,
		14.497961, 13.323230, 15.829916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.092831, 12.629834, 15.962892>,  <14.436576, 12.628496, 15.770113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.092831, 12.629834, 15.962892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.974029, 12.996447, 16.070044>,  <14.902747, 13.216414, 16.134335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.974029, 12.996447, 16.070044>,  <15.092831, 12.629834, 15.962892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.974029, 12.996447, 16.070044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654945, -0.008614, 0.755627,
		0.694863, 0.399872, -0.597719,
		-0.297005, 0.916531, 0.267879,
		14.884927, 13.271406, 16.150408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.692718, 12.849399, 16.339138>,  <15.092831, 12.629834, 15.962892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.692718, 12.849399, 16.339138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.418858, 13.119421, 16.449087>,  <15.254541, 13.281434, 16.515057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.418858, 13.119421, 16.449087>,  <15.692718, 12.849399, 16.339138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.418858, 13.119421, 16.449087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530714, 0.203211, 0.822829,
		0.499598, 0.709229, -0.497389,
		-0.684650, 0.675055, 0.274874,
		15.213463, 13.321938, 16.531549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.122675, 13.413546, 16.668293>,  <15.692718, 12.849399, 16.339138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.122675, 13.413546, 16.668293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.745449, 13.466436, 16.790373>,  <15.519114, 13.498171, 16.863621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.745449, 13.466436, 16.790373>,  <16.122675, 13.413546, 16.668293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.745449, 13.466436, 16.790373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332060, 0.321336, 0.886837,
		0.019192, 0.937688, -0.346948,
		-0.943063, 0.132228, 0.305202,
		15.462530, 13.506104, 16.881933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.996168, 14.135708, 16.904640>,  <16.122675, 13.413546, 16.668293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.996168, 14.135708, 16.904640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.723431, 13.890416, 17.064159>,  <15.559788, 13.743241, 17.159870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.723431, 13.890416, 17.064159>,  <15.996168, 14.135708, 16.904640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.723431, 13.890416, 17.064159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117365, 0.446404, 0.887101,
		-0.722021, 0.651670, -0.232406,
		-0.681844, -0.613229, 0.398796,
		15.518877, 13.706448, 17.183798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.522287, 14.546340, 17.331621>,  <15.996168, 14.135708, 16.904640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.522287, 14.546340, 17.331621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.501229, 14.169211, 17.463268>,  <15.488595, 13.942934, 17.542255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.501229, 14.169211, 17.463268>,  <15.522287, 14.546340, 17.331621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.501229, 14.169211, 17.463268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222964, 0.310155, 0.924170,
		-0.973404, 0.122033, 0.193887,
		-0.052645, -0.942821, 0.329115,
		15.485435, 13.886365, 17.562002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.931095, 14.527084, 17.876213>,  <15.522287, 14.546340, 17.331621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.931095, 14.527084, 17.876213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.181709, 14.222380, 17.942150>,  <15.332078, 14.039557, 17.981712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.181709, 14.222380, 17.942150>,  <14.931095, 14.527084, 17.876213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.181709, 14.222380, 17.942150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051442, 0.251458, 0.966500,
		-0.777694, -0.597066, 0.196734,
		0.626535, -0.761762, 0.164843,
		15.369670, 13.993851, 17.991604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.691655, 14.199869, 18.359367>,  <14.931095, 14.527084, 17.876213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.691655, 14.199869, 18.359367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.065840, 14.058501, 18.360434>,  <15.290350, 13.973680, 18.361073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.065840, 14.058501, 18.360434>,  <14.691655, 14.199869, 18.359367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.065840, 14.058501, 18.360434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075577, 0.207393, 0.975334,
		-0.345256, -0.912185, 0.220719,
		0.935461, -0.353421, 0.002663,
		15.346478, 13.952476, 18.361233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.705997, 13.715050, 18.891447>,  <14.691655, 14.199869, 18.359367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.705997, 13.715050, 18.891447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.091666, 13.793401, 18.819889>,  <15.323068, 13.840411, 18.776955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.091666, 13.793401, 18.819889>,  <14.705997, 13.715050, 18.891447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.091666, 13.793401, 18.819889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188911, -0.033546, 0.981421,
		0.186238, -0.980054, -0.069347,
		0.964172, 0.195879, -0.178895,
		15.380918, 13.852164, 18.766220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.090104, 13.323790, 19.261869>,  <14.705997, 13.715050, 18.891447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.090104, 13.323790, 19.261869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.336593, 13.633924, 19.206551>,  <15.484486, 13.820004, 19.173359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.336593, 13.633924, 19.206551>,  <15.090104, 13.323790, 19.261869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.336593, 13.633924, 19.206551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118810, 0.082075, 0.989519,
		0.778560, -0.626194, -0.041541,
		0.616221, 0.775335, -0.138298,
		15.521460, 13.866524, 19.165062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.659396, 13.185637, 19.736553>,  <15.090104, 13.323790, 19.261869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.659396, 13.185637, 19.736553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.675160, 13.578110, 19.660944>,  <15.684619, 13.813593, 19.615578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.675160, 13.578110, 19.660944>,  <15.659396, 13.185637, 19.736553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.675160, 13.578110, 19.660944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232456, 0.174978, 0.956738,
		0.971808, -0.081644, -0.221185,
		0.039410, 0.981182, -0.189024,
		15.686983, 13.872464, 19.604237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.264856, 13.444855, 20.078382>,  <15.659396, 13.185637, 19.736553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.264856, 13.444855, 20.078382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.019327, 13.756017, 20.024591>,  <15.872009, 13.942714, 19.992317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.019327, 13.756017, 20.024591>,  <16.264856, 13.444855, 20.078382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.019327, 13.756017, 20.024591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270898, 0.367558, 0.889672,
		0.741508, 0.509672, -0.436349,
		-0.613824, 0.777905, -0.134478,
		15.835180, 13.989388, 19.984247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.587656, 14.122220, 20.368286>,  <16.264856, 13.444855, 20.078382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.587656, 14.122220, 20.368286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.190544, 14.157892, 20.336201>,  <15.952277, 14.179296, 20.316950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.190544, 14.157892, 20.336201>,  <16.587656, 14.122220, 20.368286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.190544, 14.157892, 20.336201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034505, 0.428122, 0.903062,
		0.114875, 0.899310, -0.421954,
		-0.992781, 0.089179, -0.080211,
		15.892710, 14.184646, 20.312138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.446594, 14.799877, 20.569460>,  <16.587656, 14.122220, 20.368286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.446594, 14.799877, 20.569460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.096838, 14.611427, 20.615911>,  <15.886985, 14.498358, 20.643782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.096838, 14.611427, 20.615911>,  <16.446594, 14.799877, 20.569460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.096838, 14.611427, 20.615911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062357, 0.346449, 0.935994,
		-0.481202, 0.811181, -0.332309,
		-0.874389, -0.471124, 0.116129,
		15.834521, 14.470090, 20.650751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.986561, 15.299948, 20.927015>,  <16.446594, 14.799877, 20.569460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.986561, 15.299948, 20.927015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.825765, 14.941974, 21.004471>,  <15.729287, 14.727189, 21.050943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.825765, 14.941974, 21.004471>,  <15.986561, 15.299948, 20.927015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.825765, 14.941974, 21.004471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054307, 0.187802, 0.980705,
		-0.914033, 0.404749, -0.026893,
		-0.401989, -0.894935, 0.193638,
		15.705168, 14.673493, 21.062563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.447043, 15.450356, 21.371157>,  <15.986561, 15.299948, 20.927015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.447043, 15.450356, 21.371157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.544294, 15.065329, 21.419067>,  <15.602645, 14.834311, 21.447815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.544294, 15.065329, 21.419067>,  <15.447043, 15.450356, 21.371157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.544294, 15.065329, 21.419067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189780, 0.168302, 0.967294,
		-0.951248, -0.212444, 0.223595,
		0.243128, -0.962571, 0.119779,
		15.617232, 14.776558, 21.455002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.065644, 15.251279, 21.904926>,  <15.447043, 15.450356, 21.371157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.065644, 15.251279, 21.904926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.334088, 14.954915, 21.894638>,  <15.495155, 14.777097, 21.888466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.334088, 14.954915, 21.894638>,  <15.065644, 15.251279, 21.904926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.334088, 14.954915, 21.894638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027460, -0.009827, 0.999575,
		-0.740848, -0.671532, 0.013750,
		0.671111, -0.740911, -0.025720,
		15.535421, 14.732642, 21.886923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.747968, 14.635054, 22.170837>,  <15.065644, 15.251279, 21.904926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.747968, 14.635054, 22.170837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.145092, 14.626357, 22.217918>,  <15.383367, 14.621139, 22.246166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.145092, 14.626357, 22.217918>,  <14.747968, 14.635054, 22.170837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.145092, 14.626357, 22.217918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118930, -0.068356, 0.990547,
		-0.013484, -0.997424, -0.070450,
		0.992811, -0.021735, 0.117702,
		15.442935, 14.619834, 22.253229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.824557, 14.246974, 22.734392>,  <14.747968, 14.635054, 22.170837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.824557, 14.246974, 22.734392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.191595, 14.405343, 22.720152>,  <15.411818, 14.500364, 22.711607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.191595, 14.405343, 22.720152>,  <14.824557, 14.246974, 22.734392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.191595, 14.405343, 22.720152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061320, -0.052488, 0.996737,
		0.392763, -0.916782, -0.072440,
		0.917593, 0.395923, -0.035602,
		15.466873, 14.524120, 22.709471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.978405, 14.168260, 23.394396>,  <14.824557, 14.246974, 22.734392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.978405, 14.168260, 23.394396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.284782, 14.397128, 23.277126>,  <15.468609, 14.534450, 23.206764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.284782, 14.397128, 23.277126>,  <14.978405, 14.168260, 23.394396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.284782, 14.397128, 23.277126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049151, 0.402565, 0.914071,
		0.641028, -0.714535, 0.280219,
		0.765942, 0.572172, -0.293175,
		15.514565, 14.568779, 23.189175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.606036, 14.128991, 23.960615>,  <14.978405, 14.168260, 23.394396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.606036, 14.128991, 23.960615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.624029, 14.479193, 23.768169>,  <15.634825, 14.689314, 23.652702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.624029, 14.479193, 23.768169>,  <15.606036, 14.128991, 23.960615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.624029, 14.479193, 23.768169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007831, 0.481894, 0.876195,
		0.998957, -0.035646, 0.028532,
		0.044982, 0.875504, -0.481112,
		15.637524, 14.741844, 23.623837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.189320, 14.478549, 24.179504>,  <15.606036, 14.128991, 23.960615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.189320, 14.478549, 24.179504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.953856, 14.766720, 24.032827>,  <15.812576, 14.939622, 23.944822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.953856, 14.766720, 24.032827>,  <16.189320, 14.478549, 24.179504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.953856, 14.766720, 24.032827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103117, 0.516827, 0.849857,
		0.801775, 0.462466, -0.378525,
		-0.588662, 0.720427, -0.366691,
		15.777257, 14.982848, 23.922819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.454626, 15.114625, 24.440338>,  <16.189320, 14.478549, 24.179504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.454626, 15.114625, 24.440338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.084829, 15.195313, 24.310959>,  <15.862951, 15.243727, 24.233332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.084829, 15.195313, 24.310959>,  <16.454626, 15.114625, 24.440338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.084829, 15.195313, 24.310959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092791, 0.703900, 0.704212,
		0.369731, 0.681052, -0.632033,
		-0.924494, 0.201722, -0.323449,
		15.807481, 15.255830, 24.213924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.480124, 15.853696, 24.420479>,  <16.454626, 15.114625, 24.440338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.480124, 15.853696, 24.420479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.095243, 15.744802, 24.423479>,  <15.864315, 15.679466, 24.425280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.095243, 15.744802, 24.423479>,  <16.480124, 15.853696, 24.420479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.095243, 15.744802, 24.423479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156474, 0.575172, 0.802928,
		-0.222897, 0.771405, -0.596029,
		-0.962202, -0.272233, 0.007499,
		15.806582, 15.663133, 24.425730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.122385, 16.423500, 24.449802>,  <16.480124, 15.853696, 24.420479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.122385, 16.423500, 24.449802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.843917, 16.163349, 24.571362>,  <15.676836, 16.007259, 24.644297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.843917, 16.163349, 24.571362>,  <16.122385, 16.423500, 24.449802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.843917, 16.163349, 24.571362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260336, 0.623241, 0.737425,
		-0.669006, 0.434259, -0.603199,
		-0.696172, -0.650376, 0.303899,
		15.635065, 15.968236, 24.662531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.447243, 16.764614, 24.477062>,  <16.122385, 16.423500, 24.449802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.447243, 16.764614, 24.477062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.391514, 16.467600, 24.739124>,  <15.358077, 16.289391, 24.896360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.391514, 16.467600, 24.739124>,  <15.447243, 16.764614, 24.477062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.391514, 16.467600, 24.739124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495365, 0.625136, 0.603174,
		-0.857440, -0.240505, -0.454922,
		-0.139322, -0.742538, 0.655154,
		15.349717, 16.244839, 24.935671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.762792, 16.776133, 24.719843>,  <15.447243, 16.764614, 24.477062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.762792, 16.776133, 24.719843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.931175, 16.543682, 24.998434>,  <15.032206, 16.404211, 25.165588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.931175, 16.543682, 24.998434>,  <14.762792, 16.776133, 24.719843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.931175, 16.543682, 24.998434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417278, 0.557694, 0.717535,
		-0.805402, -0.592678, -0.007726,
		0.420959, -0.581128, 0.696479,
		15.057463, 16.369343, 25.207378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.224909, 16.658514, 25.213276>,  <14.762792, 16.776133, 24.719843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.224909, 16.658514, 25.213276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.568836, 16.588451, 25.405123>,  <14.775192, 16.546413, 25.520231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.568836, 16.588451, 25.405123>,  <14.224909, 16.658514, 25.213276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.568836, 16.588451, 25.405123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347067, 0.488470, 0.800588,
		-0.374508, -0.854819, 0.359204,
		0.859819, -0.175159, 0.479616,
		14.826782, 16.535904, 25.549007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.977112, 16.545729, 25.770611>,  <14.224909, 16.658514, 25.213276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.977112, 16.545729, 25.770611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.363656, 16.616093, 25.845661>,  <14.595583, 16.658312, 25.890692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.363656, 16.616093, 25.845661>,  <13.977112, 16.545729, 25.770611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.363656, 16.616093, 25.845661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249892, 0.469616, 0.846767,
		0.060843, -0.865169, 0.497777,
		0.966360, 0.175910, 0.187626,
		14.653564, 16.668865, 25.901949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.997193, 16.494320, 26.491966>,  <13.977112, 16.545729, 25.770611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.997193, 16.494320, 26.491966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.332793, 16.680759, 26.379662>,  <14.534153, 16.792624, 26.312279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.332793, 16.680759, 26.379662>,  <13.997193, 16.494320, 26.491966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.332793, 16.680759, 26.379662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057729, 0.589321, 0.805834,
		0.541060, -0.659887, 0.521348,
		0.839000, 0.466101, -0.280763,
		14.584494, 16.820589, 26.295433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.583328, 16.598328, 27.037241>,  <13.997193, 16.494320, 26.491966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.583328, 16.598328, 27.037241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.570534, 16.900270, 26.775198>,  <14.562857, 17.081436, 26.617971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.570534, 16.900270, 26.775198>,  <14.583328, 16.598328, 27.037241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.570534, 16.900270, 26.775198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053972, 0.655791, 0.753011,
		0.998030, -0.011271, -0.061718,
		-0.031987, 0.754858, -0.655107,
		14.560938, 17.126728, 26.578667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.192382, 17.059563, 27.057674>,  <14.583328, 16.598328, 27.037241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.192382, 17.059563, 27.057674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.838600, 17.234564, 26.992765>,  <14.626331, 17.339563, 26.953821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.838600, 17.234564, 26.992765>,  <15.192382, 17.059563, 27.057674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.838600, 17.234564, 26.992765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213475, 0.688603, 0.693004,
		0.414930, 0.578290, -0.702434,
		-0.884455, 0.437501, -0.162272,
		14.573263, 17.365814, 26.944084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.232038, 17.713989, 26.706610>,  <15.192382, 17.059563, 27.057674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.232038, 17.713989, 26.706610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.911001, 17.704861, 26.945047>,  <14.718379, 17.699385, 27.088110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.911001, 17.704861, 26.945047>,  <15.232038, 17.713989, 26.706610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.911001, 17.704861, 26.945047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425065, 0.679215, 0.598320,
		-0.418528, 0.733584, -0.535433,
		-0.802592, -0.022819, 0.596092,
		14.670223, 17.698015, 27.123875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.246310, 18.329502, 26.941725>,  <15.232038, 17.713989, 26.706610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.246310, 18.329502, 26.941725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.981234, 18.160957, 27.189367>,  <14.822187, 18.059832, 27.337954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.981234, 18.160957, 27.189367>,  <15.246310, 18.329502, 26.941725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.981234, 18.160957, 27.189367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219871, 0.680796, 0.698694,
		-0.715889, 0.599143, -0.358512,
		-0.662691, -0.421361, 0.619109,
		14.782426, 18.034550, 27.375099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.797912, 18.860220, 27.170780>,  <15.246310, 18.329502, 26.941725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.797912, 18.860220, 27.170780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.845427, 18.578259, 27.450495>,  <14.873936, 18.409082, 27.618324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.845427, 18.578259, 27.450495>,  <14.797912, 18.860220, 27.170780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.845427, 18.578259, 27.450495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156071, 0.708775, 0.687953,
		-0.980577, 0.027419, 0.194208,
		0.118786, -0.704901, 0.699288,
		14.881063, 18.366789, 27.660282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.392359, 19.023985, 27.810740>,  <14.797912, 18.860220, 27.170780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.392359, 19.023985, 27.810740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.727057, 18.815403, 27.877605>,  <14.927876, 18.690254, 27.917725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.727057, 18.815403, 27.877605>,  <14.392359, 19.023985, 27.810740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.727057, 18.815403, 27.877605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420883, 0.807716, 0.412859,
		-0.350310, -0.275100, 0.895323,
		0.836744, -0.521454, 0.167166,
		14.978080, 18.658966, 27.927755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.125356, 19.643042, 28.017614>,  <14.392359, 19.023985, 27.810740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.125356, 19.643042, 28.017614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.964951, 20.008104, 27.985996>,  <13.868708, 20.227142, 27.967026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.964951, 20.008104, 27.985996>,  <14.125356, 19.643042, 28.017614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.964951, 20.008104, 27.985996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155639, -0.152911, -0.975907,
		-0.902755, -0.379048, 0.203364,
		-0.401012, 0.912656, -0.079047,
		13.844646, 20.281900, 27.962282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.541219, 19.518326, 27.617376>,  <14.125356, 19.643042, 28.017614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.541219, 19.518326, 27.617376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.649345, 19.899948, 27.565670>,  <13.714221, 20.128922, 27.534645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.649345, 19.899948, 27.565670>,  <13.541219, 19.518326, 27.617376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.649345, 19.899948, 27.565670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028035, -0.126409, -0.991582,
		-0.962363, 0.271665, -0.007424,
		0.270316, 0.954054, -0.129267,
		13.730440, 20.186165, 27.526890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.214092, 19.785156, 27.171335>,  <13.541219, 19.518326, 27.617376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.214092, 19.785156, 27.171335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.491242, 20.071779, 27.139172>,  <13.657533, 20.243753, 27.119873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.491242, 20.071779, 27.139172>,  <13.214092, 19.785156, 27.171335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.491242, 20.071779, 27.139172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035895, -0.145654, -0.988684,
		-0.720162, 0.682150, -0.126641,
		0.692877, 0.716559, -0.080409,
		13.699105, 20.286747, 27.115049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.062983, 20.327526, 26.704100>,  <13.214092, 19.785156, 27.171335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.062983, 20.327526, 26.704100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.462573, 20.329538, 26.722084>,  <13.702328, 20.330746, 26.732874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.462573, 20.329538, 26.722084>,  <13.062983, 20.327526, 26.704100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.462573, 20.329538, 26.722084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044838, -0.242388, -0.969143,
		0.006024, 0.970167, -0.242365,
		0.998976, 0.005029, 0.044961,
		13.762266, 20.331047, 26.735573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.191704, 20.354347, 25.973148>,  <13.062983, 20.327526, 26.704100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.191704, 20.354347, 25.973148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.562803, 20.288006, 26.106878>,  <13.785463, 20.248201, 26.187117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.562803, 20.288006, 26.106878>,  <13.191704, 20.354347, 25.973148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.562803, 20.288006, 26.106878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290765, -0.240371, -0.926109,
		0.233959, 0.956407, -0.174780,
		0.927749, -0.165852, 0.334326,
		13.841128, 20.238251, 26.207176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.574698, 20.647444, 25.466539>,  <13.191704, 20.354347, 25.973148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.574698, 20.647444, 25.466539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.804623, 20.397848, 25.678288>,  <13.942577, 20.248091, 25.805336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.804623, 20.397848, 25.678288>,  <13.574698, 20.647444, 25.466539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.804623, 20.397848, 25.678288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495072, -0.249904, -0.832137,
		0.651535, 0.740397, 0.165271,
		0.574809, -0.623987, 0.529372,
		13.977065, 20.210651, 25.837099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.265952, 20.593628, 25.239780>,  <13.574698, 20.647444, 25.466539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.265952, 20.593628, 25.239780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.224155, 20.236341, 25.414707>,  <14.199078, 20.021969, 25.519663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.224155, 20.236341, 25.414707>,  <14.265952, 20.593628, 25.239780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.224155, 20.236341, 25.414707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363474, -0.443603, -0.819209,
		0.925726, 0.073353, 0.371014,
		-0.104491, -0.893216, 0.437317,
		14.192808, 19.968376, 25.545902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.939368, 20.211201, 25.116394>,  <14.265952, 20.593628, 25.239780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.939368, 20.211201, 25.116394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.639470, 19.958780, 25.196054>,  <14.459532, 19.807329, 25.243851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.639470, 19.958780, 25.196054>,  <14.939368, 20.211201, 25.116394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.639470, 19.958780, 25.196054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296467, -0.589387, -0.751486,
		0.591600, -0.504381, 0.628974,
		-0.749744, -0.631049, 0.199149,
		14.414547, 19.769466, 25.255798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.312520, 19.559828, 25.086300>,  <14.939368, 20.211201, 25.116394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.312520, 19.559828, 25.086300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.924945, 19.461119, 25.092768>,  <14.692400, 19.401894, 25.096649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.924945, 19.461119, 25.092768>,  <15.312520, 19.559828, 25.086300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.924945, 19.461119, 25.092768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141271, -0.605992, -0.782825,
		0.202980, -0.756225, 0.622031,
		-0.968938, -0.246773, 0.016171,
		14.634263, 19.387087, 25.097620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.284246, 18.817587, 25.009710>,  <15.312520, 19.559828, 25.086300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.284246, 18.817587, 25.009710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.926535, 18.937035, 24.876389>,  <14.711907, 19.008703, 24.796396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.926535, 18.937035, 24.876389>,  <15.284246, 18.817587, 25.009710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.926535, 18.937035, 24.876389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093445, -0.603772, -0.791661,
		-0.437644, -0.739112, 0.512037,
		-0.894279, 0.298618, -0.333303,
		14.658251, 19.026621, 24.776398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.037085, 18.245745, 24.704140>,  <15.284246, 18.817587, 25.009710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.037085, 18.245745, 24.704140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.841447, 18.558077, 24.548656>,  <14.724065, 18.745476, 24.455366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.841447, 18.558077, 24.548656>,  <15.037085, 18.245745, 24.704140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.841447, 18.558077, 24.548656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006992, -0.449144, -0.893432,
		-0.872203, -0.434254, 0.225133,
		-0.489093, 0.780829, -0.388708,
		14.694718, 18.792326, 24.432043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.541988, 17.903564, 24.300991>,  <15.037085, 18.245745, 24.704140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.541988, 17.903564, 24.300991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.584474, 18.276588, 24.162975>,  <14.609965, 18.500402, 24.080166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.584474, 18.276588, 24.162975>,  <14.541988, 17.903564, 24.300991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.584474, 18.276588, 24.162975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006312, -0.347630, -0.937611,
		-0.994323, 0.097409, -0.042810,
		0.106214, 0.932558, -0.345042,
		14.616338, 18.556356, 24.059464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.980576, 18.312925, 23.944241>,  <14.541988, 17.903564, 24.300991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.980576, 18.312925, 23.944241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.332130, 18.443748, 23.805338>,  <14.543063, 18.522243, 23.721996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.332130, 18.443748, 23.805338>,  <13.980576, 18.312925, 23.944241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.332130, 18.443748, 23.805338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183384, -0.440371, -0.878888,
		-0.440371, 0.836126, -0.327059,
		0.878888, 0.327059, -0.347258,
		14.595797, 18.541866, 23.701160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.840922, 18.510252, 23.239271>,  <13.980576, 18.312925, 23.944241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.840922, 18.510252, 23.239271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.238092, 18.473375, 23.269201>,  <14.476395, 18.451250, 23.287159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.238092, 18.473375, 23.269201>,  <13.840922, 18.510252, 23.239271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.238092, 18.473375, 23.269201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040279, -0.331273, -0.942675,
		0.111694, 0.939020, -0.325216,
		0.992926, -0.092192, 0.074824,
		14.535971, 18.445719, 23.291649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.132769, 18.851501, 22.654947>,  <13.840922, 18.510252, 23.239271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.132769, 18.851501, 22.654947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.421455, 18.614763, 22.798527>,  <14.594667, 18.472721, 22.884674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.421455, 18.614763, 22.798527>,  <14.132769, 18.851501, 22.654947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.421455, 18.614763, 22.798527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189392, -0.329940, -0.924808,
		0.665774, 0.735432, -0.126033,
		0.721717, -0.591844, 0.358950,
		14.637971, 18.437210, 22.906212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.694120, 18.996920, 22.183813>,  <14.132769, 18.851501, 22.654947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.694120, 18.996920, 22.183813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.772910, 18.647989, 22.362808>,  <14.820184, 18.438631, 22.470205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.772910, 18.647989, 22.362808>,  <14.694120, 18.996920, 22.183813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.772910, 18.647989, 22.362808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320044, -0.374216, -0.870365,
		0.926700, 0.314657, 0.205472,
		0.196975, -0.872327, 0.447490,
		14.832003, 18.386292, 22.497055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.415545, 18.895285, 22.075937>,  <14.694120, 18.996920, 22.183813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.415545, 18.895285, 22.075937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.221014, 18.553013, 22.146702>,  <15.104296, 18.347651, 22.189161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.221014, 18.553013, 22.146702>,  <15.415545, 18.895285, 22.075937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.221014, 18.553013, 22.146702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332106, -0.368289, -0.868371,
		0.808202, -0.363560, 0.463286,
		-0.486328, -0.855680, 0.176912,
		15.075116, 18.296309, 22.199776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.912505, 18.395250, 21.979839>,  <15.415545, 18.895285, 22.075937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.912505, 18.395250, 21.979839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.564630, 18.201748, 21.940609>,  <15.355905, 18.085646, 21.917070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.564630, 18.201748, 21.940609>,  <15.912505, 18.395250, 21.979839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.564630, 18.201748, 21.940609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366361, -0.499473, -0.785052,
		0.330788, -0.718683, 0.611616,
		-0.869689, -0.483758, -0.098077,
		15.303722, 18.056620, 21.911186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.116451, 17.702667, 21.778566>,  <15.912505, 18.395250, 21.979839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.116451, 17.702667, 21.778566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.727534, 17.735233, 21.690912>,  <15.494184, 17.754774, 21.638319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.727534, 17.735233, 21.690912>,  <16.116451, 17.702667, 21.778566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.727534, 17.735233, 21.690912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136308, -0.564112, -0.814370,
		-0.189921, -0.821674, 0.537383,
		-0.972291, 0.081417, -0.219137,
		15.435847, 17.759659, 21.625172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.855059, 17.058554, 21.725849>,  <16.116451, 17.702667, 21.778566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.855059, 17.058554, 21.725849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.607579, 17.295248, 21.519136>,  <15.459091, 17.437265, 21.395109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.607579, 17.295248, 21.519136>,  <15.855059, 17.058554, 21.725849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.607579, 17.295248, 21.519136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092213, -0.598547, -0.795762,
		-0.780198, -0.539991, 0.315754,
		-0.618698, 0.591735, -0.516780,
		15.421969, 17.472769, 21.364103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.553753, 16.598589, 21.364134>,  <15.855059, 17.058554, 21.725849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.553753, 16.598589, 21.364134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.460354, 16.931526, 21.163063>,  <15.404315, 17.131289, 21.042419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.460354, 16.931526, 21.163063>,  <15.553753, 16.598589, 21.364134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.460354, 16.931526, 21.163063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003033, -0.516343, -0.856376,
		-0.972353, -0.201486, 0.118040,
		-0.233497, 0.832342, -0.502679,
		15.390305, 17.181229, 21.012259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.071429, 16.370386, 20.823248>,  <15.553753, 16.598589, 21.364134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.071429, 16.370386, 20.823248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.200070, 16.723476, 20.686211>,  <15.277255, 16.935329, 20.603989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.200070, 16.723476, 20.686211>,  <15.071429, 16.370386, 20.823248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.200070, 16.723476, 20.686211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079046, -0.335524, -0.938709,
		-0.943570, 0.328972, -0.038129,
		0.321602, 0.882724, -0.342594,
		15.296551, 16.988293, 20.583433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.586923, 16.608877, 20.192041>,  <15.071429, 16.370386, 20.823248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.586923, 16.608877, 20.192041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.945946, 16.783381, 20.166527>,  <15.161360, 16.888083, 20.151218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.945946, 16.783381, 20.166527>,  <14.586923, 16.608877, 20.192041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.945946, 16.783381, 20.166527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067898, -0.279718, -0.957678,
		-0.435639, 0.855240, -0.280684,
		0.897557, 0.436260, -0.063787,
		15.215213, 16.914259, 20.147390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.611040, 16.753347, 19.499430>,  <14.586923, 16.608877, 20.192041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.611040, 16.753347, 19.499430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.996082, 16.780262, 19.604397>,  <15.227108, 16.796410, 19.667377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.996082, 16.780262, 19.604397>,  <14.611040, 16.753347, 19.499430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.996082, 16.780262, 19.604397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270372, -0.177717, -0.946211,
		-0.017030, 0.981779, -0.189263,
		0.962605, 0.067285, 0.262419,
		15.284863, 16.800447, 19.683123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.937991, 17.176580, 18.985485>,  <14.611040, 16.753347, 19.499430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.937991, 17.176580, 18.985485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.240190, 16.985388, 19.164711>,  <15.421509, 16.870672, 19.272245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.240190, 16.985388, 19.164711>,  <14.937991, 17.176580, 18.985485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.240190, 16.985388, 19.164711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447952, -0.122201, -0.885667,
		0.478084, 0.869829, 0.121789,
		0.755497, -0.477979, 0.448064,
		15.466839, 16.841993, 19.299129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.548835, 17.489239, 18.693966>,  <14.937991, 17.176580, 18.985485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.548835, 17.489239, 18.693966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.722295, 17.155109, 18.829128>,  <15.826370, 16.954632, 18.910225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.722295, 17.155109, 18.829128>,  <15.548835, 17.489239, 18.693966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.722295, 17.155109, 18.829128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461318, -0.116319, -0.879577,
		0.774037, 0.537310, 0.334909,
		0.433650, -0.835325, 0.337906,
		15.852389, 16.904512, 18.930500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.341618, 17.491259, 18.614347>,  <15.548835, 17.489239, 18.693966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.341618, 17.491259, 18.614347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.215944, 17.112579, 18.642767>,  <16.140541, 16.885372, 18.659819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.215944, 17.112579, 18.642767>,  <16.341618, 17.491259, 18.614347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.215944, 17.112579, 18.642767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644809, -0.267724, -0.715923,
		0.696786, -0.179117, 0.694555,
		-0.314183, -0.946700, 0.071050,
		16.121689, 16.828569, 18.664082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.923660, 17.079803, 18.523165>,  <16.341618, 17.491259, 18.614347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.923660, 17.079803, 18.523165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.603798, 16.858290, 18.430319>,  <16.411880, 16.725382, 18.374611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.603798, 16.858290, 18.430319>,  <16.923660, 17.079803, 18.523165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.603798, 16.858290, 18.430319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445400, -0.287798, -0.847815,
		0.402705, -0.781342, 0.476794,
		-0.799654, -0.553784, -0.232113,
		16.363901, 16.692154, 18.360685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.249399, 16.497993, 18.354895>,  <16.923660, 17.079803, 18.523165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.249399, 16.497993, 18.354895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.882700, 16.455629, 18.200829>,  <16.662680, 16.430210, 18.108389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.882700, 16.455629, 18.200829>,  <17.249399, 16.497993, 18.354895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.882700, 16.455629, 18.200829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374772, -0.561768, -0.737539,
		-0.138258, -0.820487, 0.554694,
		-0.916750, -0.105913, -0.385164,
		16.607676, 16.423855, 18.085279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.097237, 15.778882, 18.055342>,  <17.249399, 16.497993, 18.354895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.097237, 15.778882, 18.055342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.843185, 16.016750, 17.858170>,  <16.690756, 16.159472, 17.739866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.843185, 16.016750, 17.858170>,  <17.097237, 15.778882, 18.055342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.843185, 16.016750, 17.858170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281792, -0.415797, -0.864700,
		-0.719171, -0.688098, 0.096510,
		-0.635127, 0.594672, -0.492929,
		16.652647, 16.195152, 17.710291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.943739, 15.388022, 17.452778>,  <17.097237, 15.778882, 18.055342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.943739, 15.388022, 17.452778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.802803, 15.750700, 17.360033>,  <16.718241, 15.968307, 17.304386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.802803, 15.750700, 17.360033>,  <16.943739, 15.388022, 17.452778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.802803, 15.750700, 17.360033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179775, -0.177565, -0.967549,
		-0.918443, -0.382590, -0.100438,
		-0.352340, 0.906695, -0.231864,
		16.697102, 16.022709, 17.290474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.373487, 15.266415, 16.875486>,  <16.943739, 15.388022, 17.452778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.373487, 15.266415, 16.875486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.544014, 15.628217, 16.871052>,  <16.646330, 15.845298, 16.868391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.544014, 15.628217, 16.871052>,  <16.373487, 15.266415, 16.875486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.544014, 15.628217, 16.871052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004217, -0.014243, -0.999890,
		-0.904564, 0.426223, -0.009886,
		0.426317, 0.904506, -0.011086,
		16.671909, 15.899569, 16.867725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.200649, 15.447032, 16.255289>,  <16.373487, 15.266415, 16.875486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.200649, 15.447032, 16.255289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.457754, 15.731501, 16.369196>,  <16.612017, 15.902182, 16.437540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.457754, 15.731501, 16.369196>,  <16.200649, 15.447032, 16.255289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.457754, 15.731501, 16.369196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361843, 0.045802, -0.931113,
		-0.675224, 0.701524, -0.227893,
		0.642761, 0.711172, 0.284769,
		16.650583, 15.944852, 16.454626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.080605, 15.957288, 15.818581>,  <16.200649, 15.447032, 16.255289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.080605, 15.957288, 15.818581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.448822, 15.994482, 15.970346>,  <16.669752, 16.016798, 16.061405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.448822, 15.994482, 15.970346>,  <16.080605, 15.957288, 15.818581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.448822, 15.994482, 15.970346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345965, 0.256980, -0.902369,
		-0.181409, 0.961933, 0.204392,
		0.920543, 0.092985, 0.379414,
		16.724985, 16.022377, 16.084171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.323307, 16.573423, 15.621292>,  <16.080605, 15.957288, 15.818581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.323307, 16.573423, 15.621292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.690361, 16.461329, 15.734015>,  <16.910593, 16.394072, 15.801648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.690361, 16.461329, 15.734015>,  <16.323307, 16.573423, 15.621292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.690361, 16.461329, 15.734015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393122, 0.535980, -0.747115,
		0.058327, 0.796362, 0.602001,
		0.917634, -0.280237, 0.281805,
		16.965651, 16.377258, 15.818556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.685394, 17.107496, 15.757250>,  <16.323307, 16.573423, 15.621292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.685394, 17.107496, 15.757250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.988020, 16.854546, 15.690670>,  <17.169596, 16.702774, 15.650723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.988020, 16.854546, 15.690670>,  <16.685394, 17.107496, 15.757250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.988020, 16.854546, 15.690670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281253, 0.544480, -0.790214,
		0.590342, 0.551035, 0.589793,
		0.756566, -0.632378, -0.166449,
		17.214991, 16.664833, 15.640736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.305960, 17.459114, 15.762561>,  <16.685394, 17.107496, 15.757250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.305960, 17.459114, 15.762561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.410536, 17.139124, 15.546529>,  <17.473282, 16.947130, 15.416909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.410536, 17.139124, 15.546529>,  <17.305960, 17.459114, 15.762561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.410536, 17.139124, 15.546529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395017, 0.599214, -0.696350,
		0.880688, -0.031288, 0.472663,
		0.261439, -0.799977, -0.540080,
		17.488968, 16.899130, 15.384505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.017311, 17.563547, 15.542028>,  <17.305960, 17.459114, 15.762561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.017311, 17.563547, 15.542028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.882442, 17.287678, 15.285696>,  <17.801521, 17.122156, 15.131896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.882442, 17.287678, 15.285696>,  <18.017311, 17.563547, 15.542028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.882442, 17.287678, 15.285696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543760, 0.413006, -0.730583,
		0.768531, -0.594791, 0.235762,
		-0.337173, -0.689673, -0.640832,
		17.781290, 17.080776, 15.093447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.611980, 17.311352, 15.210734>,  <18.017311, 17.563547, 15.542028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.611980, 17.311352, 15.210734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.310278, 17.219900, 14.964538>,  <18.129257, 17.165030, 14.816819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.310278, 17.219900, 14.964538>,  <18.611980, 17.311352, 15.210734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.310278, 17.219900, 14.964538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583626, 0.196007, -0.788011,
		0.300802, -0.953577, -0.014406,
		-0.754254, -0.228628, -0.615492,
		18.084002, 17.151312, 14.779890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.038717, 16.878122, 14.810686>,  <18.611980, 17.311352, 15.210734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.038717, 16.878122, 14.810686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.737101, 17.071606, 14.632946>,  <18.556131, 17.187696, 14.526301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.737101, 17.071606, 14.632946>,  <19.038717, 16.878122, 14.810686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.737101, 17.071606, 14.632946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637218, 0.374652, -0.673490,
		-0.159295, -0.790988, -0.590731,
		-0.754041, 0.483709, -0.444351,
		18.510889, 17.216719, 14.499640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.929396, 16.693954, 14.071362>,  <19.038717, 16.878122, 14.810686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.929396, 16.693954, 14.071362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.790155, 17.062872, 14.138529>,  <18.706612, 17.284224, 14.178828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.790155, 17.062872, 14.138529>,  <18.929396, 16.693954, 14.071362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.790155, 17.062872, 14.138529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667973, 0.369700, -0.645859,
		-0.657751, -0.112662, -0.744762,
		-0.348103, 0.922295, 0.167915,
		18.685724, 17.339561, 14.188904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.904245, 17.093056, 13.434479>,  <18.929396, 16.693954, 14.071362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.904245, 17.093056, 13.434479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.022898, 17.308954, 13.749613>,  <19.094090, 17.438494, 13.938693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.022898, 17.308954, 13.749613>,  <18.904245, 17.093056, 13.434479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.022898, 17.308954, 13.749613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850493, 0.225916, -0.474998,
		-0.434363, 0.810948, -0.392037,
		0.296631, 0.539746, 0.787835,
		19.111887, 17.470879, 13.985964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.186346, 17.652496, 13.182205>,  <18.904245, 17.093056, 13.434479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.186346, 17.652496, 13.182205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.353031, 17.605186, 13.542729>,  <19.453043, 17.576801, 13.759044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.353031, 17.605186, 13.542729>,  <19.186346, 17.652496, 13.182205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.353031, 17.605186, 13.542729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897670, 0.209852, -0.387493,
		-0.143311, 0.970553, 0.193619,
		0.416714, -0.118274, 0.901311,
		19.478045, 17.569704, 13.813123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.773972, 18.215700, 13.405499>,  <19.186346, 17.652496, 13.182205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.773972, 18.215700, 13.405499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.852571, 17.870197, 13.591105>,  <19.899731, 17.662895, 13.702470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.852571, 17.870197, 13.591105>,  <19.773972, 18.215700, 13.405499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.852571, 17.870197, 13.591105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854951, -0.080761, -0.512383,
		0.480048, 0.497396, 0.722600,
		0.196499, -0.863756, 0.464019,
		19.911522, 17.611071, 13.730311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.414972, 18.146345, 13.796711>,  <19.773972, 18.215700, 13.405499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.414972, 18.146345, 13.796711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.311747, 17.793158, 13.639858>,  <20.249811, 17.581245, 13.545747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.311747, 17.793158, 13.639858>,  <20.414972, 18.146345, 13.796711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.311747, 17.793158, 13.639858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871220, -0.037251, -0.489477,
		0.417586, -0.467949, 0.778875,
		-0.258064, -0.882970, -0.392131,
		20.234327, 17.528267, 13.522219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.902639, 17.544302, 13.956683>,  <20.414972, 18.146345, 13.796711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.902639, 17.544302, 13.956683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.704996, 17.515759, 13.610097>,  <20.586411, 17.498632, 13.402145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.704996, 17.515759, 13.610097>,  <20.902639, 17.544302, 13.956683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.704996, 17.515759, 13.610097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860304, 0.103647, -0.499133,
		0.125426, -0.992051, 0.010180,
		-0.494110, -0.071362, -0.866466,
		20.556763, 17.494350, 13.350157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.089291, 16.924044, 13.567719>,  <20.902639, 17.544302, 13.956683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.089291, 16.924044, 13.567719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.980917, 17.237902, 13.344677>,  <20.915892, 17.426216, 13.210852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.980917, 17.237902, 13.344677>,  <21.089291, 16.924044, 13.567719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.980917, 17.237902, 13.344677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912576, 0.025068, -0.408139,
		-0.306267, -0.619436, -0.722842,
		-0.270936, 0.784647, -0.557605,
		20.899635, 17.473295, 13.177396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.262960, 16.845493, 12.951699>,  <21.089291, 16.924044, 13.567719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.262960, 16.845493, 12.951699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.319029, 17.241228, 12.967510>,  <21.352671, 17.478670, 12.976996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.319029, 17.241228, 12.967510>,  <21.262960, 16.845493, 12.951699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.319029, 17.241228, 12.967510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938659, -0.120074, -0.323267,
		-0.315074, 0.082416, -0.945482,
		0.140170, 0.989338, 0.039528,
		21.361080, 17.538029, 12.979368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.305138, 16.063021, 13.128839>,  <21.262960, 16.845493, 12.951699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.305138, 16.063021, 13.128839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.593132, 15.786511, 13.153357>,  <21.765928, 15.620605, 13.168068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.593132, 15.786511, 13.153357>,  <21.305138, 16.063021, 13.128839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.593132, 15.786511, 13.153357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601176, 0.577136, -0.552722,
		0.346707, 0.434802, 0.831109,
		0.719987, -0.691275, 0.061296,
		21.809128, 15.579129, 13.171745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.856424, 16.391460, 13.345086>,  <21.305138, 16.063021, 13.128839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.856424, 16.391460, 13.345086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.990446, 16.081171, 13.131173>,  <22.070860, 15.894998, 13.002825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.990446, 16.081171, 13.131173>,  <21.856424, 16.391460, 13.345086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.990446, 16.081171, 13.131173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440228, 0.630715, -0.639060,
		0.833028, -0.021305, 0.552820,
		0.335057, -0.775722, -0.534783,
		22.090963, 15.848454, 12.970738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.468618, 16.689505, 13.123636>,  <21.856424, 16.391460, 13.345086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.468618, 16.689505, 13.123636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.429239, 16.377304, 12.876695>,  <22.405611, 16.189983, 12.728530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.429239, 16.377304, 12.876695>,  <22.468618, 16.689505, 13.123636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.429239, 16.377304, 12.876695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462886, 0.513254, -0.722708,
		0.880934, -0.356914, 0.310754,
		-0.098448, -0.780502, -0.617353,
		22.399704, 16.143154, 12.691488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.967161, 16.734278, 12.597023>,  <22.468618, 16.689505, 13.123636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.967161, 16.734278, 12.597023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.729546, 16.474884, 12.406618>,  <22.586977, 16.319248, 12.292376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.729546, 16.474884, 12.406618>,  <22.967161, 16.734278, 12.597023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.729546, 16.474884, 12.406618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277035, 0.390619, -0.877877,
		0.755228, -0.653365, -0.052391,
		-0.594039, -0.648483, -0.476012,
		22.551334, 16.280338, 12.263815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.407433, 16.401598, 12.152130>,  <22.967161, 16.734278, 12.597023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.407433, 16.401598, 12.152130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.038485, 16.346552, 12.007745>,  <22.817116, 16.313524, 11.921114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.038485, 16.346552, 12.007745>,  <23.407433, 16.401598, 12.152130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.038485, 16.346552, 12.007745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347998, 0.109681, -0.931057,
		0.167721, -0.984394, -0.053275,
		-0.922370, -0.137618, -0.360963,
		22.761774, 16.305267, 11.899456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.571751, 16.145336, 11.552114>,  <23.407433, 16.401598, 12.152130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.571751, 16.145336, 11.552114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.186209, 16.248713, 11.526227>,  <22.954884, 16.310740, 11.510695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.186209, 16.248713, 11.526227>,  <23.571751, 16.145336, 11.552114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.186209, 16.248713, 11.526227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123908, 0.219793, -0.967646,
		-0.235857, -0.940690, -0.243872,
		-0.963856, 0.258443, -0.064720,
		22.897053, 16.326246, 11.506811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.272545, 15.796532, 10.938823>,  <23.571751, 16.145336, 11.552114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.272545, 15.796532, 10.938823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.103779, 16.147505, 11.030124>,  <23.002520, 16.358089, 11.084904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.103779, 16.147505, 11.030124>,  <23.272545, 15.796532, 10.938823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.103779, 16.147505, 11.030124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116264, 0.302041, -0.946179,
		-0.899149, -0.372671, -0.229450,
		-0.421916, 0.877433, 0.228252,
		22.977203, 16.410734, 11.098599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.004562, 15.935435, 10.328906>,  <23.272545, 15.796532, 10.938823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.004562, 15.935435, 10.328906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.940811, 16.284403, 10.513724>,  <22.902561, 16.493784, 10.624615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.940811, 16.284403, 10.513724>,  <23.004562, 15.935435, 10.328906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.940811, 16.284403, 10.513724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046831, 0.474182, -0.879180,
		-0.986106, -0.118483, -0.116430,
		-0.159377, 0.872418, 0.462045,
		22.892998, 16.546127, 10.652338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.385031, 16.248617, 10.066604>,  <23.004562, 15.935435, 10.328906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.385031, 16.248617, 10.066604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.629768, 16.538239, 10.193974>,  <22.776611, 16.712011, 10.270397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.629768, 16.538239, 10.193974>,  <22.385031, 16.248617, 10.066604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.629768, 16.538239, 10.193974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012613, 0.393591, -0.919199,
		-0.790879, 0.566421, 0.231683,
		0.611842, 0.724054, 0.318427,
		22.813320, 16.755455, 10.289503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.194525, 16.897289, 9.701791>,  <22.385031, 16.248617, 10.066604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.194525, 16.897289, 9.701791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.538960, 17.023354, 9.861392>,  <22.745621, 17.098991, 9.957153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.538960, 17.023354, 9.861392>,  <22.194525, 16.897289, 9.701791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.538960, 17.023354, 9.861392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138707, 0.609367, -0.780662,
		-0.489173, 0.727562, 0.481002,
		0.861086, 0.315161, 0.399004,
		22.797285, 17.117901, 9.981093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.124044, 17.586992, 9.869265>,  <22.194525, 16.897289, 9.701791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.124044, 17.586992, 9.869265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.511679, 17.506853, 9.811666>,  <22.744259, 17.458769, 9.777107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.511679, 17.506853, 9.811666>,  <22.124044, 17.586992, 9.869265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.511679, 17.506853, 9.811666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029488, 0.673488, -0.738610,
		0.244959, 0.711530, 0.658575,
		0.969085, -0.200349, -0.143995,
		22.802404, 17.446749, 9.768468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.476093, 18.328093, 9.817243>,  <22.124044, 17.586992, 9.869265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.476093, 18.328093, 9.817243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.731134, 18.064341, 9.657903>,  <22.884159, 17.906090, 9.562299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.731134, 18.064341, 9.657903>,  <22.476093, 18.328093, 9.817243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.731134, 18.064341, 9.657903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162278, 0.620449, -0.767273,
		0.753081, 0.424571, 0.502602,
		0.637601, -0.659380, -0.398350,
		22.922415, 17.866526, 9.538398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.964718, 18.732315, 9.477207>,  <22.476093, 18.328093, 9.817243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.964718, 18.732315, 9.477207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.040178, 18.381081, 9.301310>,  <23.085455, 18.170340, 9.195771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.040178, 18.381081, 9.301310>,  <22.964718, 18.732315, 9.477207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.040178, 18.381081, 9.301310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354024, 0.478483, -0.803567,
		0.916012, -0.004087, 0.401130,
		0.188650, -0.878087, -0.439744,
		23.096773, 18.117655, 9.169387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.729988, 18.814999, 9.220297>,  <22.964718, 18.732315, 9.477207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.729988, 18.814999, 9.220297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.556925, 18.519068, 9.014203>,  <23.453087, 18.341509, 8.890547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.556925, 18.519068, 9.014203>,  <23.729988, 18.814999, 9.220297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.556925, 18.519068, 9.014203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403412, 0.352223, -0.844510,
		0.806268, -0.573235, 0.146063,
		-0.432656, -0.739825, -0.515235,
		23.427128, 18.297121, 8.859632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.253292, 18.685684, 8.646451>,  <23.729988, 18.814999, 9.220297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.253292, 18.685684, 8.646451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.920238, 18.501337, 8.523602>,  <23.720407, 18.390728, 8.449893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.920238, 18.501337, 8.523602>,  <24.253292, 18.685684, 8.646451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.920238, 18.501337, 8.523602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180751, 0.298048, -0.937281,
		0.523502, -0.835922, -0.164862,
		-0.832632, -0.460870, -0.307122,
		23.670448, 18.363075, 8.431466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.411425, 18.139648, 8.107538>,  <24.253292, 18.685684, 8.646451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.411425, 18.139648, 8.107538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.043146, 18.288622, 8.060875>,  <23.822180, 18.378006, 8.032877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.043146, 18.288622, 8.060875>,  <24.411425, 18.139648, 8.107538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.043146, 18.288622, 8.060875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300181, 0.484748, -0.821530,
		-0.249417, -0.791398, -0.558104,
		-0.920696, 0.372436, -0.116658,
		23.766937, 18.400352, 8.025877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.277498, 17.932245, 7.531359>,  <24.411425, 18.139648, 8.107538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.277498, 17.932245, 7.531359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.001774, 18.218594, 7.575862>,  <23.836338, 18.390402, 7.602565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.001774, 18.218594, 7.575862>,  <24.277498, 17.932245, 7.531359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.001774, 18.218594, 7.575862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155128, 0.295863, -0.942550,
		-0.707661, -0.632452, -0.314993,
		-0.689313, 0.715870, 0.111260,
		23.794979, 18.433355, 7.609240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.887878, 17.972506, 6.890267>,  <24.277498, 17.932245, 7.531359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.887878, 17.972506, 6.890267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.854994, 18.333052, 7.060343>,  <23.835264, 18.549379, 7.162388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.854994, 18.333052, 7.060343>,  <23.887878, 17.972506, 6.890267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.854994, 18.333052, 7.060343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154383, 0.433002, -0.888074,
		-0.984585, -0.007366, -0.174752,
		-0.082209, 0.901363, 0.425190,
		23.830332, 18.603460, 7.187900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.420696, 18.370417, 6.447802>,  <23.887878, 17.972506, 6.890267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.420696, 18.370417, 6.447802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.623081, 18.629135, 6.676068>,  <23.744513, 18.784367, 6.813027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.623081, 18.629135, 6.676068>,  <23.420696, 18.370417, 6.447802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.623081, 18.629135, 6.676068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137615, 0.592592, -0.793661,
		-0.851507, 0.480094, 0.210820,
		0.505962, 0.646796, 0.570664,
		23.774870, 18.823174, 6.847267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.192091, 19.033777, 6.317709>,  <23.420696, 18.370417, 6.447802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.192091, 19.033777, 6.317709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.552042, 19.116604, 6.471250>,  <23.768013, 19.166300, 6.563375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.552042, 19.116604, 6.471250>,  <23.192091, 19.033777, 6.317709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.552042, 19.116604, 6.471250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198905, 0.588414, -0.783713,
		-0.388144, 0.781597, 0.488314,
		0.899878, 0.207066, 0.383853,
		23.822006, 19.178724, 6.586406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.364103, 19.827383, 6.335774>,  <23.192091, 19.033777, 6.317709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.364103, 19.827383, 6.335774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.711475, 19.631195, 6.364805>,  <23.919899, 19.513483, 6.382224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.711475, 19.631195, 6.364805>,  <23.364103, 19.827383, 6.335774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.711475, 19.631195, 6.364805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392876, 0.591429, -0.704173,
		0.302451, 0.640040, 0.706309,
		0.868430, -0.490470, 0.072578,
		23.972004, 19.484055, 6.386579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.761877, 20.381985, 6.478653>,  <23.364103, 19.827383, 6.335774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.761877, 20.381985, 6.478653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.942547, 20.078375, 6.291093>,  <24.050949, 19.896208, 6.178557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.942547, 20.078375, 6.291093>,  <23.761877, 20.381985, 6.478653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.942547, 20.078375, 6.291093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374164, 0.638268, -0.672767,
		0.809932, 0.128428, 0.572291,
		0.451677, -0.759026, -0.468901,
		24.078051, 19.850668, 6.150423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.516745, 20.325211, 6.430832>,  <23.761877, 20.381985, 6.478653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.516745, 20.325211, 6.430832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.334146, 20.193378, 6.100260>,  <24.224588, 20.114279, 5.901917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.334146, 20.193378, 6.100260>,  <24.516745, 20.325211, 6.430832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.334146, 20.193378, 6.100260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472947, 0.696874, -0.539155,
		0.753614, -0.636980, -0.162245,
		-0.456495, -0.329582, -0.826431,
		24.197199, 20.094503, 5.852330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.194277, 20.057163, 6.510056>,  <24.516745, 20.325211, 6.430832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.194277, 20.057163, 6.510056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.540714, 19.890354, 6.620312>,  <25.748577, 19.790268, 6.686465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.540714, 19.890354, 6.620312>,  <25.194277, 20.057163, 6.510056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.540714, 19.890354, 6.620312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499345, 0.747347, -0.438323,
		-0.023206, 0.517267, 0.855509,
		0.866092, -0.417023, 0.275638,
		25.800543, 19.765247, 6.703003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.580128, 20.557234, 6.912747>,  <25.194277, 20.057163, 6.510056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.580128, 20.557234, 6.912747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.831203, 20.289410, 6.753905>,  <25.981850, 20.128716, 6.658600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.831203, 20.289410, 6.753905>,  <25.580128, 20.557234, 6.912747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.831203, 20.289410, 6.753905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572901, 0.742691, -0.346691,
		0.527056, -0.009887, 0.849773,
		0.627691, -0.669562, -0.397104,
		26.019510, 20.088541, 6.634774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.341118, 20.701468, 7.223130>,  <25.580128, 20.557234, 6.912747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.341118, 20.701468, 7.223130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.292473, 20.544157, 6.858593>,  <26.263287, 20.449770, 6.639872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.292473, 20.544157, 6.858593>,  <26.341118, 20.701468, 7.223130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.292473, 20.544157, 6.858593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661638, 0.652300, -0.369783,
		0.739895, -0.647949, 0.180879,
		-0.121613, -0.393277, -0.911342,
		26.255989, 20.426174, 6.585191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.014078, 20.537498, 6.958499>,  <26.341118, 20.701468, 7.223130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.014078, 20.537498, 6.958499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.734560, 20.638454, 6.690773>,  <26.566849, 20.699028, 6.530136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.734560, 20.638454, 6.690773>,  <27.014078, 20.537498, 6.958499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.734560, 20.638454, 6.690773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561995, 0.772587, -0.295417,
		0.442547, -0.582589, -0.681721,
		-0.698795, 0.252388, -0.669317,
		26.524921, 20.714170, 6.489977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.151588, 19.982534, 7.473886>,  <27.014078, 20.537498, 6.958499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.151588, 19.982534, 7.473886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.926342, 19.983681, 7.143336>,  <26.791195, 19.984369, 6.945007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.926342, 19.983681, 7.143336>,  <27.151588, 19.982534, 7.473886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.926342, 19.983681, 7.143336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410767, -0.866734, -0.282917,
		-0.717057, -0.498762, 0.486894,
		-0.563116, 0.002867, -0.826373,
		26.757408, 19.984541, 6.895424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.023373, 19.269182, 7.206409>,  <27.151588, 19.982534, 7.473886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.023373, 19.269182, 7.206409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.950758, 19.486301, 6.878407>,  <26.907188, 19.616573, 6.681605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.950758, 19.486301, 6.878407>,  <27.023373, 19.269182, 7.206409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.950758, 19.486301, 6.878407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210750, -0.793014, -0.571588,
		-0.960536, -0.276581, 0.029566,
		-0.181536, 0.542800, -0.820008,
		26.896297, 19.649141, 6.632404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.704845, 18.712633, 6.697997>,  <27.023373, 19.269182, 7.206409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.704845, 18.712633, 6.697997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.610649, 18.407412, 6.457234>,  <26.554131, 18.224279, 6.312777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.610649, 18.407412, 6.457234>,  <26.704845, 18.712633, 6.697997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.610649, 18.407412, 6.457234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231478, -0.557464, 0.797277,
		-0.943907, 0.327081, -0.045351,
		-0.235493, -0.763054, -0.601907,
		26.540001, 18.178495, 6.276662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.059000, 18.466696, 6.867010>,  <26.704845, 18.712633, 6.697997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.059000, 18.466696, 6.867010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.271671, 18.172842, 6.698423>,  <26.399273, 17.996531, 6.597271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.271671, 18.172842, 6.698423>,  <26.059000, 18.466696, 6.867010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.271671, 18.172842, 6.698423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258538, -0.614654, 0.745224,
		-0.806523, -0.287252, -0.516728,
		0.531676, -0.734634, -0.421467,
		26.431173, 17.952452, 6.571983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.733906, 17.877342, 7.011096>,  <26.059000, 18.466696, 6.867010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.733906, 17.877342, 7.011096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.093414, 17.723892, 6.926201>,  <26.309118, 17.631823, 6.875264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.093414, 17.723892, 6.926201>,  <25.733906, 17.877342, 7.011096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.093414, 17.723892, 6.926201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111917, -0.668815, 0.734956,
		-0.423895, -0.636803, -0.644045,
		0.898770, -0.383624, -0.212239,
		26.363045, 17.608805, 6.862529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.611238, 17.104628, 7.044267>,  <25.733906, 17.877342, 7.011096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.611238, 17.104628, 7.044267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.999376, 17.187798, 7.093580>,  <26.232260, 17.237700, 7.123168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.999376, 17.187798, 7.093580>,  <25.611238, 17.104628, 7.044267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.999376, 17.187798, 7.093580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021416, -0.581954, 0.812940,
		0.240775, -0.786191, -0.569149,
		0.970345, 0.207924, 0.123283,
		26.290480, 17.250175, 7.130565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.798889, 16.480282, 7.286229>,  <25.611238, 17.104628, 7.044267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.798889, 16.480282, 7.286229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.086088, 16.745556, 7.370765>,  <26.258408, 16.904720, 7.421486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.086088, 16.745556, 7.370765>,  <25.798889, 16.480282, 7.286229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.086088, 16.745556, 7.370765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230012, -0.512634, 0.827224,
		0.656945, -0.545333, -0.520610,
		0.717996, 0.663188, 0.211339,
		26.301487, 16.944511, 7.434166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.417286, 16.078104, 7.440518>,  <25.798889, 16.480282, 7.286229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.417286, 16.078104, 7.440518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.472902, 16.439001, 7.603797>,  <26.506271, 16.655539, 7.701765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.472902, 16.439001, 7.603797>,  <26.417286, 16.078104, 7.440518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.472902, 16.439001, 7.603797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038447, -0.416809, 0.908180,
		0.989540, -0.110581, -0.092643,
		0.139041, 0.902242, 0.408198,
		26.514614, 16.709675, 7.726257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.905872, 15.907177, 7.872393>,  <26.417286, 16.078104, 7.440518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.905872, 15.907177, 7.872393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.744461, 16.249849, 8.000932>,  <26.647614, 16.455452, 8.078054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.744461, 16.249849, 8.000932>,  <26.905872, 15.907177, 7.872393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.744461, 16.249849, 8.000932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187943, -0.266113, 0.945442,
		0.895456, 0.441908, -0.053623,
		-0.403529, 0.856680, 0.321346,
		26.623402, 16.506853, 8.097336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342600, 16.233047, 8.463503>,  <26.905872, 15.907177, 7.872393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.342600, 16.233047, 8.463503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986179, 16.410301, 8.502820>,  <26.772327, 16.516653, 8.526410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986179, 16.410301, 8.502820>,  <27.342600, 16.233047, 8.463503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.986179, 16.410301, 8.502820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138804, -0.472194, 0.870498,
		0.432161, 0.762013, 0.482258,
		-0.891050, 0.443134, 0.098294,
		26.718864, 16.543242, 8.532308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.394156, 16.390493, 9.074290>,  <27.342600, 16.233047, 8.463503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.394156, 16.390493, 9.074290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.006411, 16.406321, 8.977321>,  <26.773764, 16.415817, 8.919139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.006411, 16.406321, 8.977321>,  <27.394156, 16.390493, 9.074290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.006411, 16.406321, 8.977321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235773, -0.426684, 0.873128,
		-0.068892, 0.903535, 0.422941,
		-0.969363, 0.039566, -0.242424,
		26.715601, 16.418190, 8.904593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.075237, 16.644243, 9.723820>,  <27.394156, 16.390493, 9.074290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.075237, 16.644243, 9.723820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.804571, 16.431179, 9.520491>,  <26.642172, 16.303341, 9.398493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.804571, 16.431179, 9.520491>,  <27.075237, 16.644243, 9.723820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.804571, 16.431179, 9.520491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269753, -0.463036, 0.844293,
		-0.685095, 0.708427, 0.169634,
		-0.676667, -0.532662, -0.508324,
		26.601572, 16.271379, 9.367993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.412165, 16.699764, 10.134546>,  <27.075237, 16.644243, 9.723820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.412165, 16.699764, 10.134546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.363043, 16.381783, 9.896901>,  <26.333569, 16.190994, 9.754314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.363043, 16.381783, 9.896901>,  <26.412165, 16.699764, 10.134546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.363043, 16.381783, 9.896901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241881, -0.556616, 0.794778,
		-0.962503, 0.241309, -0.123927,
		-0.122807, -0.794952, -0.594112,
		26.326200, 16.143297, 9.718667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.749119, 16.546505, 10.260828>,  <26.412165, 16.699764, 10.134546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.749119, 16.546505, 10.260828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.927393, 16.220621, 10.112445>,  <26.034357, 16.025091, 10.023415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.927393, 16.220621, 10.112445>,  <25.749119, 16.546505, 10.260828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.927393, 16.220621, 10.112445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410415, -0.554236, 0.724142,
		-0.795566, -0.170492, -0.581384,
		0.445684, -0.814711, -0.370959,
		26.061098, 15.976208, 10.001157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.212749, 15.939736, 10.312185>,  <25.749119, 16.546505, 10.260828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.212749, 15.939736, 10.312185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.580294, 15.784527, 10.283528>,  <25.800819, 15.691401, 10.266335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.580294, 15.784527, 10.283528>,  <25.212749, 15.939736, 10.312185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.580294, 15.784527, 10.283528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250004, -0.712977, 0.655104,
		-0.305275, -0.584039, -0.752134,
		0.918861, -0.388024, -0.071642,
		25.855951, 15.668119, 10.262035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.078157, 15.239183, 10.215616>,  <25.212749, 15.939736, 10.312185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.078157, 15.239183, 10.215616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.462412, 15.222763, 10.325521>,  <25.692965, 15.212911, 10.391465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.462412, 15.222763, 10.325521>,  <25.078157, 15.239183, 10.215616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.462412, 15.222763, 10.325521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225789, -0.691601, 0.686081,
		0.161864, -0.721112, -0.673645,
		0.960635, -0.041050, 0.274765,
		25.750603, 15.210448, 10.407950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.317020, 14.531517, 10.218417>,  <25.078157, 15.239183, 10.215616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.317020, 14.531517, 10.218417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.584881, 14.702852, 10.461101>,  <25.745596, 14.805654, 10.606710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.584881, 14.702852, 10.461101>,  <25.317020, 14.531517, 10.218417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.584881, 14.702852, 10.461101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199725, -0.682963, 0.702618,
		0.715317, -0.591683, -0.371796,
		0.669650, 0.428338, 0.606709,
		25.785776, 14.831353, 10.643113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.668087, 13.984385, 10.443113>,  <25.317020, 14.531517, 10.218417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.668087, 13.984385, 10.443113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.729099, 14.273158, 10.713091>,  <25.765707, 14.446422, 10.875077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.729099, 14.273158, 10.713091>,  <25.668087, 13.984385, 10.443113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.729099, 14.273158, 10.713091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200862, -0.646037, 0.736404,
		0.967672, -0.247893, 0.046470,
		0.152529, 0.721931, 0.674945,
		25.774858, 14.489738, 10.915574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.108381, 13.657614, 11.076147>,  <25.668087, 13.984385, 10.443113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.108381, 13.657614, 11.076147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.908068, 13.980371, 11.201458>,  <25.787880, 14.174025, 11.276645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.908068, 13.980371, 11.201458>,  <26.108381, 13.657614, 11.076147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.908068, 13.980371, 11.201458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516069, -0.568900, 0.640333,
		0.694903, 0.158995, 0.701306,
		-0.500782, 0.806891, 0.313278,
		25.757833, 14.222438, 11.295442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.155651, 13.646019, 11.936022>,  <26.108381, 13.657614, 11.076147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.155651, 13.646019, 11.936022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.867859, 13.875134, 11.778918>,  <25.695183, 14.012604, 11.684656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.867859, 13.875134, 11.778918>,  <26.155651, 13.646019, 11.936022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.867859, 13.875134, 11.778918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677983, -0.456611, 0.576061,
		0.150623, 0.680749, 0.716864,
		-0.719481, 0.572789, -0.392760,
		25.652014, 14.046971, 11.661090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.638542, 13.434605, 12.458214>,  <26.155651, 13.646019, 11.936022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.638542, 13.434605, 12.458214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.849794, 13.473553, 12.120789>,  <26.976545, 13.496922, 11.918334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.849794, 13.473553, 12.120789>,  <26.638542, 13.434605, 12.458214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.849794, 13.473553, 12.120789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811242, 0.235696, 0.535102,
		0.250927, -0.966937, 0.045487,
		0.528131, 0.097370, -0.843562,
		27.008234, 13.502764, 11.867720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.219831, 13.845575, 12.795666>,  <26.638542, 13.434605, 12.458214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.219831, 13.845575, 12.795666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.223450, 13.646588, 13.142640>,  <26.225620, 13.527196, 13.350824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.223450, 13.646588, 13.142640>,  <26.219831, 13.845575, 12.795666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.223450, 13.646588, 13.142640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251615, 0.838427, 0.483456,
		-0.967785, -0.222634, -0.117584,
		0.009048, -0.497467, 0.867435,
		26.226164, 13.497348, 13.402871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.515749, 13.702497, 13.171636>,  <26.219831, 13.845575, 12.795666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.515749, 13.702497, 13.171636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.816273, 13.772799, 13.426083>,  <25.996586, 13.814981, 13.578751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.816273, 13.772799, 13.426083>,  <25.515749, 13.702497, 13.171636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.816273, 13.772799, 13.426083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450418, 0.841048, 0.299604,
		-0.482348, -0.511613, 0.711050,
		0.751309, 0.175756, 0.636117,
		26.041666, 13.825526, 13.616918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.222815, 13.843895, 13.890594>,  <25.515749, 13.702497, 13.171636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.222815, 13.843895, 13.890594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.567259, 14.025809, 13.799677>,  <25.773926, 14.134958, 13.745127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.567259, 14.025809, 13.799677>,  <25.222815, 13.843895, 13.890594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.567259, 14.025809, 13.799677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384814, 0.875175, 0.293234,
		0.332280, -0.165041, 0.928629,
		0.861109, 0.454786, -0.227293,
		25.825592, 14.162245, 13.731489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.241505, 14.308304, 14.394372>,  <25.222815, 13.843895, 13.890594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.241505, 14.308304, 14.394372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.475853, 14.420441, 14.090224>,  <25.616463, 14.487722, 13.907736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.475853, 14.420441, 14.090224>,  <25.241505, 14.308304, 14.394372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.475853, 14.420441, 14.090224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247750, 0.955299, 0.161318,
		0.771605, 0.093871, 0.629137,
		0.585871, 0.280342, -0.760370,
		25.651615, 14.504543, 13.862113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.408258, 14.931410, 14.478158>,  <25.241505, 14.308304, 14.394372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.408258, 14.931410, 14.478158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.517170, 14.914976, 14.093621>,  <25.582516, 14.905116, 13.862900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.517170, 14.914976, 14.093621>,  <25.408258, 14.931410, 14.478158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.517170, 14.914976, 14.093621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204218, 0.973860, -0.099460,
		0.940298, 0.223404, 0.256770,
		0.272278, -0.041085, -0.961341,
		25.598854, 14.902651, 13.805219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.072008, 15.308327, 14.420251>,  <25.408258, 14.931410, 14.478158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.072008, 15.308327, 14.420251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.814013, 15.290760, 14.115079>,  <25.659216, 15.280220, 13.931976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.814013, 15.290760, 14.115079>,  <26.072008, 15.308327, 14.420251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.814013, 15.290760, 14.115079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018482, 0.997159, -0.073024,
		0.763968, -0.061200, -0.642345,
		-0.644989, -0.043916, -0.762929,
		25.620516, 15.277585, 13.886200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.472782, 14.926312, 15.026958>,  <26.072008, 15.308327, 14.420251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.472782, 14.926312, 15.026958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.632946, 15.256125, 15.186868>,  <26.729044, 15.454013, 15.282813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.632946, 15.256125, 15.186868>,  <26.472782, 14.926312, 15.026958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.632946, 15.256125, 15.186868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712672, -0.005982, -0.701471,
		-0.575994, 0.565784, -0.590016,
		0.400411, 0.824532, 0.399773,
		26.753069, 15.503485, 15.306800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<12.511621, 20.358738, 21.173508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.400820, 19.980677, 21.242743>,  <12.334339, 19.753839, 21.284285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.400820, 19.980677, 21.242743>,  <12.511621, 20.358738, 21.173508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.400820, 19.980677, 21.242743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346881, -0.266353, -0.899294,
		0.896071, -0.189065, 0.401635,
		-0.277002, -0.945151, 0.173088,
		12.317719, 19.697132, 21.294668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.066763, 19.930847, 20.935905>,  <12.511621, 20.358738, 21.173508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.066763, 19.930847, 20.935905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.748463, 19.689209, 20.918697>,  <12.557483, 19.544226, 20.908373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.748463, 19.689209, 20.918697>,  <13.066763, 19.930847, 20.935905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.748463, 19.689209, 20.918697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247210, -0.259147, -0.933665,
		0.552873, -0.753599, 0.355555,
		-0.795750, -0.604095, -0.043022,
		12.509738, 19.507980, 20.905790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.329259, 19.362881, 20.654863>,  <13.066763, 19.930847, 20.935905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.329259, 19.362881, 20.654863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.935044, 19.313194, 20.608757>,  <12.698515, 19.283382, 20.581093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.935044, 19.313194, 20.608757>,  <13.329259, 19.362881, 20.654863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.935044, 19.313194, 20.608757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161618, -0.484518, -0.859722,
		0.050943, -0.865918, 0.497586,
		-0.985538, -0.124216, -0.115265,
		12.639383, 19.275930, 20.574177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.202019, 18.641844, 20.499441>,  <13.329259, 19.362881, 20.654863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.202019, 18.641844, 20.499441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.860070, 18.790550, 20.354673>,  <12.654902, 18.879774, 20.267813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.860070, 18.790550, 20.354673>,  <13.202019, 18.641844, 20.499441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.860070, 18.790550, 20.354673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116479, -0.542236, -0.832114,
		-0.505594, -0.753507, 0.420240,
		-0.854873, 0.371762, -0.361919,
		12.603609, 18.902081, 20.246098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.710970, 18.059465, 20.191133>,  <13.202019, 18.641844, 20.499441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.710970, 18.059465, 20.191133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.590663, 18.402727, 20.024706>,  <12.518479, 18.608685, 19.924850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.590663, 18.402727, 20.024706>,  <12.710970, 18.059465, 20.191133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.590663, 18.402727, 20.024706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021127, -0.442156, -0.896689,
		-0.953464, -0.260904, 0.151116,
		-0.300766, 0.858153, -0.416068,
		12.500433, 18.660173, 19.899885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.069279, 17.906326, 19.770082>,  <12.710970, 18.059465, 20.191133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.069279, 17.906326, 19.770082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.213620, 18.251480, 19.628542>,  <12.300225, 18.458572, 19.543617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.213620, 18.251480, 19.628542>,  <12.069279, 17.906326, 19.770082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.213620, 18.251480, 19.628542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005423, -0.377468, -0.926007,
		-0.932606, 0.336073, -0.131532,
		0.360855, 0.862887, -0.353851,
		12.321877, 18.510345, 19.522387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.646278, 18.135548, 19.212925>,  <12.069279, 17.906326, 19.770082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.646278, 18.135548, 19.212925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.986170, 18.337849, 19.153360>,  <12.190104, 18.459230, 19.117620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.986170, 18.337849, 19.153360>,  <11.646278, 18.135548, 19.212925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.986170, 18.337849, 19.153360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067951, -0.385151, -0.920349,
		-0.522824, 0.771927, -0.361640,
		0.849728, 0.505754, -0.148913,
		12.241088, 18.489574, 19.108686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.549901, 18.478176, 18.554008>,  <11.646278, 18.135548, 19.212925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.549901, 18.478176, 18.554008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.941940, 18.444889, 18.626099>,  <12.177164, 18.424917, 18.669353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.941940, 18.444889, 18.626099>,  <11.549901, 18.478176, 18.554008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.941940, 18.444889, 18.626099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124302, -0.450583, -0.884039,
		0.154776, 0.888848, -0.431271,
		0.980099, -0.083220, 0.180225,
		12.235970, 18.419924, 18.680166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.937922, 18.743708, 17.940014>,  <11.549901, 18.478176, 18.554008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.937922, 18.743708, 17.940014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.263404, 18.547911, 18.065413>,  <12.458694, 18.430433, 18.140652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.263404, 18.547911, 18.065413>,  <11.937922, 18.743708, 17.940014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.263404, 18.547911, 18.065413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246355, -0.198083, -0.948721,
		0.526490, 0.849211, -0.040593,
		0.813706, -0.489492, 0.313497,
		12.507516, 18.401064, 18.159462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.471882, 18.956564, 17.511715>,  <11.937922, 18.743708, 17.940014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.471882, 18.956564, 17.511715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.602770, 18.615591, 17.674828>,  <12.681303, 18.411007, 17.772696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.602770, 18.615591, 17.674828>,  <12.471882, 18.956564, 17.511715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.602770, 18.615591, 17.674828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386782, -0.272909, -0.880863,
		0.862163, 0.445960, 0.240404,
		0.327221, -0.852432, 0.407782,
		12.700936, 18.359861, 17.797161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.221592, 18.857391, 17.386705>,  <12.471882, 18.956564, 17.511715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.221592, 18.857391, 17.386705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.032396, 18.506514, 17.419718>,  <12.918880, 18.295986, 17.439526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.032396, 18.506514, 17.419718>,  <13.221592, 18.857391, 17.386705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.032396, 18.506514, 17.419718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363386, -0.279556, -0.888706,
		0.802641, -0.390356, 0.450987,
		-0.472988, -0.877195, 0.082533,
		12.890500, 18.243355, 17.444477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.761124, 18.265116, 17.176336>,  <13.221592, 18.857391, 17.386705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.761124, 18.265116, 17.176336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.385752, 18.130104, 17.146877>,  <13.160529, 18.049097, 17.129202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.385752, 18.130104, 17.146877>,  <13.761124, 18.265116, 17.176336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.385752, 18.130104, 17.146877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249824, -0.515778, -0.819488,
		0.238618, -0.787430, 0.568344,
		-0.938429, -0.337531, -0.073645,
		13.104223, 18.028845, 17.124784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.859407, 17.624178, 16.851515>,  <13.761124, 18.265116, 17.176336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.859407, 17.624178, 16.851515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.462539, 17.647913, 16.807562>,  <13.224418, 17.662153, 16.781191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.462539, 17.647913, 16.807562>,  <13.859407, 17.624178, 16.851515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.462539, 17.647913, 16.807562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067350, -0.486709, -0.870964,
		-0.105161, -0.871546, 0.478903,
		-0.992172, 0.059337, -0.109882,
		13.164887, 17.665714, 16.774597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.595099, 16.996696, 16.612467>,  <13.859407, 17.624178, 16.851515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.595099, 16.996696, 16.612467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.297910, 17.230345, 16.481750>,  <13.119596, 17.370533, 16.403320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.297910, 17.230345, 16.481750>,  <13.595099, 16.996696, 16.612467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.297910, 17.230345, 16.481750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145405, -0.335725, -0.930670,
		-0.653334, -0.738982, 0.164501,
		-0.742975, 0.584118, -0.326793,
		13.075017, 17.405581, 16.383713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.073325, 16.654997, 16.074093>,  <13.595099, 16.996696, 16.612467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.073325, 16.654997, 16.074093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.088100, 17.051296, 16.021864>,  <13.096966, 17.289076, 15.990526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.088100, 17.051296, 16.021864>,  <13.073325, 16.654997, 16.074093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.088100, 17.051296, 16.021864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258312, -0.135689, -0.956485,
		-0.965355, 0.001603, -0.260935,
		0.036939, 0.990750, -0.130574,
		13.099182, 17.348522, 15.982692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.934198, 16.725456, 15.410841>,  <13.073325, 16.654997, 16.074093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.934198, 16.725456, 15.410841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.108641, 17.079153, 15.477689>,  <13.213305, 17.291370, 15.517797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.108641, 17.079153, 15.477689>,  <12.934198, 16.725456, 15.410841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.108641, 17.079153, 15.477689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254271, 0.057062, -0.965448,
		-0.863226, 0.463531, -0.199952,
		0.436105, 0.884242, 0.167120,
		13.239472, 17.344425, 15.527824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.714141, 17.141699, 14.813741>,  <12.934198, 16.725456, 15.410841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.714141, 17.141699, 14.813741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.034389, 17.332125, 14.959272>,  <13.226538, 17.446381, 15.046591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.034389, 17.332125, 14.959272>,  <12.714141, 17.141699, 14.813741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.034389, 17.332125, 14.959272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261981, 0.267963, -0.927126,
		-0.538863, 0.837592, 0.089817,
		0.800620, 0.476063, 0.363829,
		13.274574, 17.474943, 15.068421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.751895, 17.685432, 14.412547>,  <12.714141, 17.141699, 14.813741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.751895, 17.685432, 14.412547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.114858, 17.683786, 14.580640>,  <13.332636, 17.682798, 14.681496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.114858, 17.683786, 14.580640>,  <12.751895, 17.685432, 14.412547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.114858, 17.683786, 14.580640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391007, 0.374768, -0.840632,
		-0.154029, 0.927109, 0.341677,
		0.907407, -0.004117, 0.420232,
		13.387080, 17.682552, 14.706709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.074060, 18.366398, 14.353281>,  <12.751895, 17.685432, 14.412547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.074060, 18.366398, 14.353281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.371005, 18.099579, 14.378409>,  <13.549172, 17.939487, 14.393486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.371005, 18.099579, 14.378409>,  <13.074060, 18.366398, 14.353281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.371005, 18.099579, 14.378409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303140, 0.250786, -0.919354,
		0.597498, 0.701538, 0.388383,
		0.742363, -0.667047, 0.062820,
		13.593714, 17.899466, 14.397255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.485349, 18.733202, 13.995872>,  <13.074060, 18.366398, 14.353281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.485349, 18.733202, 13.995872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.676967, 18.384970, 14.040787>,  <13.791938, 18.176031, 14.067736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.676967, 18.384970, 14.040787>,  <13.485349, 18.733202, 13.995872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.676967, 18.384970, 14.040787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454104, 0.136315, -0.880459,
		0.751202, 0.472769, 0.460635,
		0.479045, -0.870579, 0.112287,
		13.820681, 18.123796, 14.074472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.343679, 18.792225, 13.912161>,  <13.485349, 18.733202, 13.995872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.343679, 18.792225, 13.912161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.219169, 18.425030, 13.813851>,  <14.144463, 18.204712, 13.754866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.219169, 18.425030, 13.813851>,  <14.343679, 18.792225, 13.912161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.219169, 18.425030, 13.813851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409650, 0.103745, -0.906324,
		0.857493, -0.382799, 0.343760,
		-0.311276, -0.917988, -0.245774,
		14.125786, 18.149633, 13.740119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.980216, 18.513659, 13.724021>,  <14.343679, 18.792225, 13.912161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.980216, 18.513659, 13.724021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.686390, 18.310717, 13.543796>,  <14.510095, 18.188951, 13.435660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.686390, 18.310717, 13.543796>,  <14.980216, 18.513659, 13.724021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.686390, 18.310717, 13.543796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454490, 0.125169, -0.881913,
		0.503839, -0.852599, 0.138643,
		-0.734565, -0.507354, -0.450563,
		14.466021, 18.158510, 13.408627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.461976, 18.230825, 14.213190>,  <14.980216, 18.513659, 13.724021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.461976, 18.230825, 14.213190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.807111, 18.418261, 14.137364>,  <16.014193, 18.530722, 14.091868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.807111, 18.418261, 14.137364>,  <15.461976, 18.230825, 14.213190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.807111, 18.418261, 14.137364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030369, 0.326286, 0.944783,
		0.504569, -0.820951, 0.267301,
		0.862837, 0.468591, -0.189565,
		16.065962, 18.558838, 14.080495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.921813, 18.084938, 14.810285>,  <15.461976, 18.230825, 14.213190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.921813, 18.084938, 14.810285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.058523, 18.414867, 14.630125>,  <16.140549, 18.612825, 14.522030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.058523, 18.414867, 14.630125>,  <15.921813, 18.084938, 14.810285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.058523, 18.414867, 14.630125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064143, 0.457667, 0.886807,
		0.937590, -0.331979, 0.103513,
		0.341776, 0.824822, -0.450398,
		16.161057, 18.662313, 14.495006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.331169, 18.348318, 15.262298>,  <15.921813, 18.084938, 14.810285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.331169, 18.348318, 15.262298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.219801, 18.646536, 15.020094>,  <16.152981, 18.825466, 14.874771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.219801, 18.646536, 15.020094>,  <16.331169, 18.348318, 15.262298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.219801, 18.646536, 15.020094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018874, 0.626069, 0.779539,
		0.960274, 0.228468, -0.160240,
		-0.278421, 0.745547, -0.605510,
		16.136274, 18.870199, 14.838441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.634897, 19.012972, 15.528232>,  <16.331169, 18.348318, 15.262298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.634897, 19.012972, 15.528232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.339613, 19.127836, 15.284072>,  <16.162443, 19.196754, 15.137576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.339613, 19.127836, 15.284072>,  <16.634897, 19.012972, 15.528232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.339613, 19.127836, 15.284072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221411, 0.751595, 0.621355,
		0.637201, 0.593839, -0.491253,
		-0.738208, 0.287160, -0.610400,
		16.118151, 19.213984, 15.100952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.609310, 19.711781, 15.566466>,  <16.634897, 19.012972, 15.528232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.609310, 19.711781, 15.566466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.253496, 19.619705, 15.408608>,  <16.040009, 19.564461, 15.313894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.253496, 19.619705, 15.408608>,  <16.609310, 19.711781, 15.566466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.253496, 19.619705, 15.408608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432313, 0.703475, 0.564117,
		0.147769, 0.672411, -0.725278,
		-0.889533, -0.230188, -0.394644,
		15.986636, 19.550650, 15.290215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.348463, 20.380665, 15.527754>,  <16.609310, 19.711781, 15.566466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.348463, 20.380665, 15.527754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.036491, 20.131933, 15.499354>,  <15.849309, 19.982695, 15.482315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.036491, 20.131933, 15.499354>,  <16.348463, 20.380665, 15.527754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.036491, 20.131933, 15.499354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489770, 0.535762, 0.687811,
		-0.389662, 0.571217, -0.722409,
		-0.779929, -0.621828, -0.070999,
		15.802513, 19.945385, 15.478055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.747738, 20.827000, 15.339927>,  <16.348463, 20.380665, 15.527754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.747738, 20.827000, 15.339927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.600731, 20.485838, 15.488243>,  <15.512527, 20.281141, 15.577233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.600731, 20.485838, 15.488243>,  <15.747738, 20.827000, 15.339927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.600731, 20.485838, 15.488243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615104, 0.521955, 0.590940,
		-0.697551, -0.010894, -0.716453,
		-0.367518, -0.852904, 0.370791,
		15.490476, 20.229967, 15.599481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.016075, 20.874849, 15.454073>,  <15.747738, 20.827000, 15.339927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.016075, 20.874849, 15.454073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.083451, 20.570621, 15.704884>,  <15.123877, 20.388084, 15.855370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.083451, 20.570621, 15.704884>,  <15.016075, 20.874849, 15.454073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.083451, 20.570621, 15.704884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544421, 0.458507, 0.702408,
		-0.821726, -0.459679, -0.336840,
		0.168439, -0.760570, 0.627026,
		15.133983, 20.342451, 15.892991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.420282, 20.922350, 15.826186>,  <15.016075, 20.874849, 15.454073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.420282, 20.922350, 15.826186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.650565, 20.685558, 16.051796>,  <14.788734, 20.543484, 16.187162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.650565, 20.685558, 16.051796>,  <14.420282, 20.922350, 15.826186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.650565, 20.685558, 16.051796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492232, 0.299885, 0.817176,
		-0.652894, -0.748084, -0.118746,
		0.575706, -0.591980, 0.564023,
		14.823277, 20.507965, 16.221003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.978656, 20.519669, 16.181128>,  <14.420282, 20.922350, 15.826186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.978656, 20.519669, 16.181128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.322614, 20.546907, 16.383492>,  <14.528988, 20.563251, 16.504910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.322614, 20.546907, 16.383492>,  <13.978656, 20.519669, 16.181128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.322614, 20.546907, 16.383492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508202, 0.207573, 0.835849,
		-0.048092, -0.975846, 0.213099,
		0.859894, 0.068100, 0.505910,
		14.580582, 20.567337, 16.535265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.949656, 20.023308, 16.778307>,  <13.978656, 20.519669, 16.181128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.949656, 20.023308, 16.778307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.188417, 20.334311, 16.857487>,  <14.331675, 20.520912, 16.904995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.188417, 20.334311, 16.857487>,  <13.949656, 20.023308, 16.778307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.188417, 20.334311, 16.857487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445528, 0.116033, 0.887717,
		0.667239, -0.618074, 0.415663,
		0.596905, 0.777509, 0.197948,
		14.367489, 20.567564, 16.916872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.997364, 20.047525, 17.606428>,  <13.949656, 20.023308, 16.778307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.997364, 20.047525, 17.606428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.154792, 20.404865, 17.519684>,  <14.249249, 20.619270, 17.467638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.154792, 20.404865, 17.519684>,  <13.997364, 20.047525, 17.606428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.154792, 20.404865, 17.519684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339561, 0.360486, 0.868763,
		0.854284, -0.268282, 0.445223,
		0.393570, 0.893351, -0.216859,
		14.272862, 20.672871, 17.454626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.407342, 20.238800, 18.224388>,  <13.997364, 20.047525, 17.606428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.407342, 20.238800, 18.224388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.352102, 20.562471, 17.995947>,  <14.318958, 20.756674, 17.858881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.352102, 20.562471, 17.995947>,  <14.407342, 20.238800, 18.224388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.352102, 20.562471, 17.995947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271575, 0.523591, 0.807527,
		0.952458, 0.266616, 0.147445,
		-0.138099, 0.809177, -0.571105,
		14.310673, 20.805225, 17.824615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.741012, 20.772861, 18.489182>,  <14.407342, 20.238800, 18.224388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.741012, 20.772861, 18.489182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.435432, 20.936386, 18.289478>,  <14.252085, 21.034500, 18.169657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.435432, 20.936386, 18.289478>,  <14.741012, 20.772861, 18.489182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.435432, 20.936386, 18.289478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326740, 0.422115, 0.845612,
		0.556440, 0.809130, -0.188898,
		-0.763947, 0.408812, -0.499256,
		14.206248, 21.059031, 18.139702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.753964, 21.366909, 18.748587>,  <14.741012, 20.772861, 18.489182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.753964, 21.366909, 18.748587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.382365, 21.390816, 18.602495>,  <14.159406, 21.405161, 18.514841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.382365, 21.390816, 18.602495>,  <14.753964, 21.366909, 18.748587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.382365, 21.390816, 18.602495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281517, 0.526480, 0.802226,
		0.240233, 0.848084, -0.472273,
		-0.928998, 0.059768, -0.365227,
		14.103666, 21.408747, 18.492928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.527361, 22.148441, 18.669506>,  <14.753964, 21.366909, 18.748587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.527361, 22.148441, 18.669506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.190256, 21.933731, 18.685648>,  <13.987993, 21.804905, 18.695333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.190256, 21.933731, 18.685648>,  <14.527361, 22.148441, 18.669506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.190256, 21.933731, 18.685648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295622, 0.524180, 0.798651,
		-0.449846, 0.661142, -0.600441,
		-0.842761, -0.536773, 0.040352,
		13.937428, 21.772699, 18.697754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.033782, 22.687767, 18.906572>,  <14.527361, 22.148441, 18.669506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.033782, 22.687767, 18.906572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.892489, 22.318363, 18.966387>,  <13.807714, 22.096722, 19.002275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.892489, 22.318363, 18.966387>,  <14.033782, 22.687767, 18.906572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.892489, 22.318363, 18.966387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167951, 0.219841, 0.960970,
		-0.920337, 0.314330, -0.232759,
		-0.353232, -0.923508, 0.149536,
		13.786520, 22.041311, 19.011248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.594132, 22.825724, 19.361624>,  <14.033782, 22.687767, 18.906572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.594132, 22.825724, 19.361624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.612513, 22.430664, 19.421541>,  <13.623541, 22.193628, 19.457491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.612513, 22.430664, 19.421541>,  <13.594132, 22.825724, 19.361624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.612513, 22.430664, 19.421541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039377, 0.151626, 0.987653,
		-0.998167, -0.039484, 0.045858,
		0.045950, -0.987649, 0.149794,
		13.626298, 22.134369, 19.466478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<12.559465, 22.227064, 19.965630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.921127, 22.056242, 19.970125>,  <13.138124, 21.953749, 19.972822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.921127, 22.056242, 19.970125>,  <12.559465, 22.227064, 19.965630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.921127, 22.056242, 19.970125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126946, -0.243456, 0.961568,
		-0.407909, -0.870833, -0.274335,
		0.904155, -0.427058, 0.011240,
		13.192373, 21.928125, 19.973497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.445637, 21.735958, 20.414711>,  <12.559465, 22.227064, 19.965630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.445637, 21.735958, 20.414711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.843289, 21.712927, 20.378082>,  <13.081882, 21.699108, 20.356106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.843289, 21.712927, 20.378082>,  <12.445637, 21.735958, 20.414711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.843289, 21.712927, 20.378082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084958, -0.108372, 0.990474,
		-0.066948, -0.992442, -0.102844,
		0.994133, -0.057572, -0.091571,
		13.141529, 21.695652, 20.350611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.634380, 21.030693, 20.684261>,  <12.445637, 21.735958, 20.414711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.634380, 21.030693, 20.684261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.963542, 21.257959, 20.682728>,  <13.161039, 21.394320, 20.681808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.963542, 21.257959, 20.682728>,  <12.634380, 21.030693, 20.684261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.963542, 21.257959, 20.682728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169707, -0.239342, 0.955989,
		0.542244, -0.787338, -0.293378,
		0.822904, 0.568168, -0.003834,
		13.210413, 21.428410, 20.681578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.336205, 20.746229, 20.990181>,  <12.634380, 21.030693, 20.684261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.336205, 20.746229, 20.990181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.317049, 21.138908, 21.063911>,  <13.305555, 21.374516, 21.108149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.317049, 21.138908, 21.063911>,  <13.336205, 20.746229, 20.990181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.317049, 21.138908, 21.063911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228591, -0.168868, 0.958765,
		0.972344, 0.088052, -0.216320,
		-0.047892, 0.981698, 0.184325,
		13.302682, 21.433418, 21.119209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.826890, 20.787727, 21.542133>,  <13.336205, 20.746229, 20.990181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.826890, 20.787727, 21.542133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.642370, 21.142086, 21.522572>,  <13.531658, 21.354700, 21.510834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.642370, 21.142086, 21.522572>,  <13.826890, 20.787727, 21.542133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.642370, 21.142086, 21.522572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204738, 0.159920, 0.965665,
		0.863299, 0.435447, -0.255148,
		-0.461299, 0.885896, -0.048906,
		13.503981, 21.407854, 21.507900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.063807, 21.038763, 22.113146>,  <13.826890, 20.787727, 21.542133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.063807, 21.038763, 22.113146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.771613, 21.297155, 22.024509>,  <13.596296, 21.452190, 21.971327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.771613, 21.297155, 22.024509>,  <14.063807, 21.038763, 22.113146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.771613, 21.297155, 22.024509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165876, 0.146929, 0.975140,
		0.662478, 0.749082, -0.000177,
		-0.730485, 0.645979, -0.221592,
		13.552467, 21.490950, 21.958033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.217649, 21.613474, 22.350302>,  <14.063807, 21.038763, 22.113146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.217649, 21.613474, 22.350302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.818257, 21.606672, 22.329338>,  <13.578622, 21.602592, 22.316761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.818257, 21.606672, 22.329338>,  <14.217649, 21.613474, 22.350302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.818257, 21.606672, 22.329338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055044, 0.266571, 0.962242,
		-0.002391, 0.963665, -0.267102,
		-0.998481, -0.017003, -0.052407,
		13.518713, 21.601572, 22.313616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.042709, 22.195246, 22.730629>,  <14.217649, 21.613474, 22.350302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.042709, 22.195246, 22.730629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.701258, 21.990709, 22.690933>,  <13.496387, 21.867987, 22.667116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.701258, 21.990709, 22.690933>,  <14.042709, 22.195246, 22.730629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.701258, 21.990709, 22.690933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297540, 0.322305, 0.898660,
		-0.427536, 0.796649, -0.427273,
		-0.853629, -0.511340, -0.099238,
		13.445168, 21.837307, 22.661161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.475692, 22.684734, 22.841648>,  <14.042709, 22.195246, 22.730629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.475692, 22.684734, 22.841648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.354456, 22.321110, 22.956015>,  <13.281714, 22.102936, 23.024635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.354456, 22.321110, 22.956015>,  <13.475692, 22.684734, 22.841648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.354456, 22.321110, 22.956015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473972, 0.404089, 0.782344,
		-0.826733, 0.101604, -0.553344,
		-0.303090, -0.909059, 0.285916,
		13.263529, 22.048391, 23.041790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.957850, 22.814264, 23.286270>,  <13.475692, 22.684734, 22.841648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.957850, 22.814264, 23.286270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.000208, 22.423300, 23.359430>,  <13.025622, 22.188721, 23.403326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.000208, 22.423300, 23.359430>,  <12.957850, 22.814264, 23.286270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.000208, 22.423300, 23.359430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220976, 0.156204, 0.962689,
		-0.969513, -0.142361, -0.199443,
		0.105895, -0.977412, 0.182901,
		13.031977, 22.130075, 23.414301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.341595, 22.604673, 23.699169>,  <12.957850, 22.814264, 23.286270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.341595, 22.604673, 23.699169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.620003, 22.321716, 23.748405>,  <12.787047, 22.151941, 23.777946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.620003, 22.321716, 23.748405>,  <12.341595, 22.604673, 23.699169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.620003, 22.321716, 23.748405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218113, -0.044972, 0.974887,
		-0.684093, -0.705388, -0.185593,
		0.696020, -0.707393, 0.123089,
		12.828809, 22.109499, 23.785332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.026221, 22.238495, 24.155491>,  <12.341595, 22.604673, 23.699169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.026221, 22.238495, 24.155491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.411256, 22.140112, 24.200979>,  <12.642277, 22.081081, 24.228271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.411256, 22.140112, 24.200979>,  <12.026221, 22.238495, 24.155491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.411256, 22.140112, 24.200979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123931, -0.026388, 0.991940,
		-0.240974, -0.968921, -0.055882,
		0.962586, -0.245958, 0.113721,
		12.700032, 22.066324, 24.235096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.001965, 21.653456, 24.660997>,  <12.026221, 22.238495, 24.155491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.001965, 21.653456, 24.660997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.361834, 21.827925, 24.653608>,  <12.577755, 21.932606, 24.649176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.361834, 21.827925, 24.653608>,  <12.001965, 21.653456, 24.660997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.361834, 21.827925, 24.653608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048865, -0.058562, 0.997087,
		0.433821, -0.897955, -0.074000,
		0.899673, 0.436174, -0.018473,
		12.631736, 21.958776, 24.648066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.410931, 21.365385, 25.197441>,  <12.001965, 21.653456, 24.660997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.410931, 21.365385, 25.197441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.611257, 21.701565, 25.114662>,  <12.731452, 21.903273, 25.064995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.611257, 21.701565, 25.114662>,  <12.410931, 21.365385, 25.197441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.611257, 21.701565, 25.114662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129655, 0.163552, 0.977978,
		0.855788, -0.516618, -0.027059,
		0.500816, 0.840450, -0.206948,
		12.761501, 21.953699, 25.052578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.080379, 21.330591, 25.656441>,  <12.410931, 21.365385, 25.197441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.080379, 21.330591, 25.656441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.005851, 21.704079, 25.534157>,  <12.961134, 21.928171, 25.460787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.005851, 21.704079, 25.534157>,  <13.080379, 21.330591, 25.656441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.005851, 21.704079, 25.534157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023753, 0.306787, 0.951482,
		0.982202, 0.184540, -0.034982,
		-0.186319, 0.933716, -0.305710,
		12.949955, 21.984194, 25.442444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.277744, 21.620106, 26.108168>,  <13.080379, 21.330591, 25.656441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.277744, 21.620106, 26.108168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.093988, 21.931934, 25.937885>,  <12.983735, 22.119032, 25.835716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.093988, 21.931934, 25.937885>,  <13.277744, 21.620106, 26.108168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.093988, 21.931934, 25.937885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230770, 0.358062, 0.904730,
		0.857733, 0.513865, 0.015412,
		-0.459391, 0.779573, -0.425706,
		12.956171, 22.165806, 25.810173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.397525, 22.148943, 26.549110>,  <13.277744, 21.620106, 26.108168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.397525, 22.148943, 26.549110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.080803, 22.278799, 26.342169>,  <12.890770, 22.356712, 26.218004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.080803, 22.278799, 26.342169>,  <13.397525, 22.148943, 26.549110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.080803, 22.278799, 26.342169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374432, 0.411197, 0.831094,
		0.482542, 0.851778, -0.204032,
		-0.791804, 0.324642, -0.517352,
		12.843262, 22.376192, 26.186962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.358789, 22.836258, 26.567074>,  <13.397525, 22.148943, 26.549110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.358789, 22.836258, 26.567074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.991492, 22.696173, 26.493120>,  <12.771114, 22.612122, 26.448748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.991492, 22.696173, 26.493120>,  <13.358789, 22.836258, 26.567074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.991492, 22.696173, 26.493120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337979, 0.449704, 0.826762,
		-0.206402, 0.821654, -0.531303,
		-0.918242, -0.350215, -0.184882,
		12.716020, 22.591108, 26.437656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.890771, 23.368742, 26.647181>,  <13.358789, 22.836258, 26.567074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.890771, 23.368742, 26.647181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.680601, 23.031469, 26.692741>,  <12.554500, 22.829105, 26.720078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.680601, 23.031469, 26.692741>,  <12.890771, 23.368742, 26.647181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.680601, 23.031469, 26.692741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471895, 0.400181, 0.785602,
		-0.707987, 0.359025, -0.608158,
		-0.525424, -0.843182, 0.113901,
		12.522974, 22.778515, 26.726912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.286103, 23.643822, 26.848801>,  <12.890771, 23.368742, 26.647181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.286103, 23.643822, 26.848801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.321246, 23.270309, 26.987560>,  <12.342332, 23.046202, 27.070816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.321246, 23.270309, 26.987560>,  <12.286103, 23.643822, 26.848801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.321246, 23.270309, 26.987560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434695, 0.277397, 0.856792,
		-0.896282, -0.226068, -0.381538,
		0.087856, -0.933780, 0.346897,
		12.347603, 22.990175, 27.091629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.620036, 23.558521, 27.099098>,  <12.286103, 23.643822, 26.848801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.620036, 23.558521, 27.099098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.845971, 23.268404, 27.256531>,  <11.981532, 23.094334, 27.350990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.845971, 23.268404, 27.256531>,  <11.620036, 23.558521, 27.099098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.845971, 23.268404, 27.256531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542755, 0.032739, 0.839253,
		-0.621592, -0.687659, -0.375166,
		0.564837, -0.725296, 0.393581,
		12.015422, 23.050816, 27.374605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.112165, 23.139179, 27.430819>,  <11.620036, 23.558521, 27.099098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.112165, 23.139179, 27.430819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.466959, 23.065298, 27.600121>,  <11.679835, 23.020969, 27.701702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.466959, 23.065298, 27.600121>,  <11.112165, 23.139179, 27.430819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.466959, 23.065298, 27.600121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436579, -0.036630, 0.898920,
		-0.150530, -0.982111, -0.113128,
		0.886983, -0.184704, 0.423255,
		11.733054, 23.009888, 27.727097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.056663, 22.518623, 27.788733>,  <11.112165, 23.139179, 27.430819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.056663, 22.518623, 27.788733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.332360, 22.744846, 27.969877>,  <11.497779, 22.880581, 28.078564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.332360, 22.744846, 27.969877>,  <11.056663, 22.518623, 27.788733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.332360, 22.744846, 27.969877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591933, 0.079121, 0.802095,
		0.417801, -0.820904, 0.389306,
		0.689245, 0.565559, 0.452863,
		11.539134, 22.914515, 28.105736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.946692, 21.853889, 28.261789>,  <11.056663, 22.518623, 27.788733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.946692, 21.853889, 28.261789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.848782, 21.619238, 28.570580>,  <10.790035, 21.478447, 28.755854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.848782, 21.619238, 28.570580>,  <10.946692, 21.853889, 28.261789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.848782, 21.619238, 28.570580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541257, -0.743264, -0.393191,
		0.804441, 0.321595, 0.499450,
		-0.244775, -0.586631, 0.771978,
		10.775349, 21.443249, 28.802174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.555816, 21.568705, 28.666094>,  <10.946692, 21.853889, 28.261789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.555816, 21.568705, 28.666094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.236566, 21.328098, 28.679794>,  <11.045015, 21.183735, 28.688015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.236566, 21.328098, 28.679794>,  <11.555816, 21.568705, 28.666094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.236566, 21.328098, 28.679794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492417, -0.684013, -0.538193,
		0.347162, -0.412678, 0.842125,
		-0.798125, -0.601517, 0.034254,
		10.997128, 21.147644, 28.690071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.834503, 20.837099, 28.718395>,  <11.555816, 21.568705, 28.666094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.834503, 20.837099, 28.718395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.449560, 20.825466, 28.610304>,  <11.218595, 20.818487, 28.545448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.449560, 20.825466, 28.610304>,  <11.834503, 20.837099, 28.718395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.449560, 20.825466, 28.610304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212507, -0.700356, -0.681427,
		-0.169438, -0.713201, 0.680172,
		-0.962357, -0.029082, -0.270227,
		11.160853, 20.816742, 28.529236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.635642, 20.134970, 28.647074>,  <11.834503, 20.837099, 28.718395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.635642, 20.134970, 28.647074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.357774, 20.343515, 28.448837>,  <11.191052, 20.468643, 28.329895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.357774, 20.343515, 28.448837>,  <11.635642, 20.134970, 28.647074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.357774, 20.343515, 28.448837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183195, -0.538023, -0.822782,
		-0.695608, -0.662354, 0.278238,
		-0.694671, 0.521362, -0.495593,
		11.149372, 20.499924, 28.300159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.078115, 19.735994, 28.383511>,  <11.635642, 20.134970, 28.647074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.078115, 19.735994, 28.383511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.099492, 20.043585, 28.128695>,  <11.112318, 20.228140, 27.975805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.099492, 20.043585, 28.128695>,  <11.078115, 19.735994, 28.383511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.099492, 20.043585, 28.128695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153059, -0.636721, -0.755751,
		-0.986771, -0.057115, -0.151727,
		0.053443, 0.768977, -0.637039,
		11.115525, 20.274279, 27.937582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.660564, 19.545761, 27.754210>,  <11.078115, 19.735994, 28.383511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.660564, 19.545761, 27.754210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.887042, 19.842899, 27.611324>,  <11.022928, 20.021183, 27.525593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.887042, 19.842899, 27.611324>,  <10.660564, 19.545761, 27.754210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.887042, 19.842899, 27.611324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153340, -0.520730, -0.839838,
		-0.809884, 0.420736, -0.408742,
		0.566194, 0.742847, -0.357215,
		11.056900, 20.065754, 27.504160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.504049, 19.584816, 27.016312>,  <10.660564, 19.545761, 27.754210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.504049, 19.584816, 27.016312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.844528, 19.791487, 27.053215>,  <11.048816, 19.915489, 27.075357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.844528, 19.791487, 27.053215>,  <10.504049, 19.584816, 27.016312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.844528, 19.791487, 27.053215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225196, -0.200760, -0.953406,
		-0.474080, 0.832311, -0.287239,
		0.851196, 0.516675, 0.092257,
		11.099887, 19.946489, 27.080893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.500447, 19.892057, 26.399937>,  <10.504049, 19.584816, 27.016312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.500447, 19.892057, 26.399937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.882007, 19.912407, 26.518251>,  <11.110942, 19.924616, 26.589241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.882007, 19.912407, 26.518251>,  <10.500447, 19.892057, 26.399937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.882007, 19.912407, 26.518251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297170, -0.298170, -0.907075,
		0.042050, 0.953156, -0.299542,
		0.953898, 0.050872, 0.295788,
		11.168176, 19.927670, 26.606987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.813730, 20.314249, 25.966415>,  <10.500447, 19.892057, 26.399937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.813730, 20.314249, 25.966415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.109822, 20.087181, 26.110533>,  <11.287477, 19.950941, 26.197002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.109822, 20.087181, 26.110533>,  <10.813730, 20.314249, 25.966415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.109822, 20.087181, 26.110533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312586, -0.183873, -0.931923,
		0.595272, 0.802460, 0.041337,
		0.740230, -0.567670, 0.360292,
		11.331891, 19.916880, 26.218620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.421812, 20.614563, 25.826401>,  <10.813730, 20.314249, 25.966415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.421812, 20.614563, 25.826401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.536083, 20.234877, 25.879133>,  <11.604646, 20.007065, 25.910772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.536083, 20.234877, 25.879133>,  <11.421812, 20.614563, 25.826401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.536083, 20.234877, 25.879133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258214, -0.056233, -0.964450,
		0.922884, 0.309562, 0.229036,
		0.285677, -0.949215, 0.131830,
		11.621786, 19.950111, 25.918682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.062837, 20.542662, 25.449694>,  <11.421812, 20.614563, 25.826401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.062837, 20.542662, 25.449694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.943179, 20.163950, 25.497229>,  <11.871385, 19.936724, 25.525749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.943179, 20.163950, 25.497229>,  <12.062837, 20.542662, 25.449694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.943179, 20.163950, 25.497229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373428, -0.230765, -0.898498,
		0.878103, -0.224402, 0.422586,
		-0.299143, -0.946779, 0.118837,
		11.853436, 19.879915, 25.532879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.560458, 20.115616, 25.126907>,  <12.062837, 20.542662, 25.449694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.560458, 20.115616, 25.126907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.239615, 19.877478, 25.145628>,  <12.047110, 19.734594, 25.156860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.239615, 19.877478, 25.145628>,  <12.560458, 20.115616, 25.126907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.239615, 19.877478, 25.145628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142290, -0.266643, -0.953234,
		0.579981, -0.757936, 0.298587,
		-0.802107, -0.595344, 0.046801,
		11.998983, 19.698875, 25.159668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.806093, 19.541149, 24.834322>,  <12.560458, 20.115616, 25.126907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.806093, 19.541149, 24.834322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.407883, 19.548922, 24.797338>,  <12.168956, 19.553585, 24.775148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.407883, 19.548922, 24.797338>,  <12.806093, 19.541149, 24.834322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.407883, 19.548922, 24.797338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085977, -0.219439, -0.971831,
		-0.039169, -0.975433, 0.216787,
		-0.995527, 0.019427, -0.092460,
		12.109224, 19.554750, 24.769600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.757180, 19.340509, 24.137100>,  <12.806093, 19.541149, 24.834322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.757180, 19.340509, 24.137100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.365012, 19.383593, 24.203041>,  <12.129711, 19.409443, 24.242605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.365012, 19.383593, 24.203041>,  <12.757180, 19.340509, 24.137100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.365012, 19.383593, 24.203041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161990, 0.034881, -0.986176,
		-0.111973, -0.993570, -0.016750,
		-0.980419, 0.107712, 0.164854,
		12.070887, 19.415905, 24.252497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.452308, 18.926300, 23.671247>,  <12.757180, 19.340509, 24.137100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.452308, 18.926300, 23.671247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.157802, 19.170893, 23.787180>,  <11.981098, 19.317648, 23.856739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.157802, 19.170893, 23.787180>,  <12.452308, 18.926300, 23.671247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.157802, 19.170893, 23.787180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379692, -0.018779, -0.924922,
		-0.560131, -0.791035, 0.246002,
		-0.736266, 0.611483, 0.289831,
		11.936922, 19.354338, 23.874128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.743244, 18.679531, 23.470284>,  <12.452308, 18.926300, 23.671247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.743244, 18.679531, 23.470284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.713349, 19.076443, 23.509884>,  <11.695413, 19.314589, 23.533644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.713349, 19.076443, 23.509884>,  <11.743244, 18.679531, 23.470284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.713349, 19.076443, 23.509884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348061, 0.067078, -0.935069,
		-0.934488, -0.104342, 0.340359,
		-0.074736, 0.992277, 0.099001,
		11.690928, 19.374126, 23.539585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.174910, 18.864227, 23.021034>,  <11.743244, 18.679531, 23.470284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.174910, 18.864227, 23.021034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.328575, 19.229235, 23.077221>,  <11.420774, 19.448238, 23.110933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.328575, 19.229235, 23.077221>,  <11.174910, 18.864227, 23.021034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.328575, 19.229235, 23.077221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185947, 0.225495, -0.956335,
		-0.904346, 0.341270, 0.256307,
		0.384164, 0.912517, 0.140468,
		11.443825, 19.502989, 23.119362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.736874, 19.324476, 22.719261>,  <11.174910, 18.864227, 23.021034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.736874, 19.324476, 22.719261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.104443, 19.482187, 22.714804>,  <11.324985, 19.576815, 22.712130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.104443, 19.482187, 22.714804>,  <10.736874, 19.324476, 22.719261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.104443, 19.482187, 22.714804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114924, 0.240605, -0.963796,
		-0.377322, 0.886935, 0.266409,
		0.918924, 0.394278, -0.011145,
		11.380119, 19.600471, 22.711460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.832867, 19.714682, 22.193151>,  <10.736874, 19.324476, 22.719261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.832867, 19.714682, 22.193151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.226198, 19.720524, 22.265650>,  <11.462197, 19.724030, 22.309149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.226198, 19.720524, 22.265650>,  <10.832867, 19.714682, 22.193151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.226198, 19.720524, 22.265650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180922, -0.178300, -0.967200,
		0.018190, 0.983868, -0.177970,
		0.983329, 0.014605, 0.181247,
		11.521197, 19.724905, 22.320024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.127265, 20.112240, 21.778479>,  <10.832867, 19.714682, 22.193151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.127265, 20.112240, 21.778479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.465878, 19.926023, 21.881750>,  <11.669045, 19.814293, 21.943712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.465878, 19.926023, 21.881750>,  <11.127265, 20.112240, 21.778479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.465878, 19.926023, 21.881750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222571, -0.131040, -0.966070,
		0.483577, 0.875272, -0.007313,
		0.846532, -0.465541, 0.258178,
		11.719837, 19.786362, 21.959204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.604129, 20.357107, 21.296112>,  <11.127265, 20.112240, 21.778479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.604129, 20.357107, 21.296112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.745176, 20.009655, 21.435333>,  <11.829804, 19.801184, 21.518866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.745176, 20.009655, 21.435333>,  <11.604129, 20.357107, 21.296112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.745176, 20.009655, 21.435333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345288, -0.224922, -0.911146,
		0.869733, 0.441466, 0.220616,
		0.352619, -0.868630, 0.348055,
		11.850962, 19.749065, 21.539749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<23.676401, 18.917442, 2.463758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.891899, 18.886534, 2.799325>,  <24.021198, 18.867989, 3.000665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.891899, 18.886534, 2.799325>,  <23.676401, 18.917442, 2.463758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.891899, 18.886534, 2.799325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354974, 0.923896, -0.142862,
		-0.764033, 0.374761, 0.525174,
		0.538745, -0.077271, 0.838918,
		24.053522, 18.863352, 3.051001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.645885, 19.454966, 2.855138>,  <23.676401, 18.917442, 2.463758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.645885, 19.454966, 2.855138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.009573, 19.380465, 3.004069>,  <24.227785, 19.335764, 3.093428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.009573, 19.380465, 3.004069>,  <23.645885, 19.454966, 2.855138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.009573, 19.380465, 3.004069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136533, 0.978281, 0.155965,
		-0.393292, -0.090971, 0.914902,
		0.909220, -0.186254, 0.372329,
		24.282339, 19.324589, 3.115768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.687551, 19.866629, 3.326838>,  <23.645885, 19.454966, 2.855138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.687551, 19.866629, 3.326838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.046162, 19.762413, 3.183529>,  <24.261328, 19.699884, 3.097544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.046162, 19.762413, 3.183529>,  <23.687551, 19.866629, 3.326838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.046162, 19.762413, 3.183529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281817, 0.959439, 0.007495,
		0.341788, -0.107687, 0.933587,
		0.896527, -0.260539, -0.358273,
		24.315119, 19.684252, 3.076047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.199192, 20.376488, 3.601929>,  <23.687551, 19.866629, 3.326838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.199192, 20.376488, 3.601929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.409725, 20.237331, 3.291588>,  <24.536045, 20.153837, 3.105383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.409725, 20.237331, 3.291588>,  <24.199192, 20.376488, 3.601929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.409725, 20.237331, 3.291588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434765, 0.894278, -0.106050,
		0.730722, -0.281496, 0.621936,
		0.526331, -0.347889, -0.775854,
		24.567625, 20.132965, 3.058831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.692482, 19.933722, 3.953789>,  <24.199192, 20.376488, 3.601929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.692482, 19.933722, 3.953789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.712883, 19.754791, 4.310955>,  <24.725124, 19.647432, 4.525255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.712883, 19.754791, 4.310955>,  <24.692482, 19.933722, 3.953789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.712883, 19.754791, 4.310955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702976, 0.651150, 0.286057,
		-0.709383, 0.613108, 0.347670,
		0.051002, -0.447327, 0.892915,
		24.728184, 19.620592, 4.578830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.129034, 20.205355, 4.442730>,  <24.692482, 19.933722, 3.953789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.129034, 20.205355, 4.442730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.875772, 20.469847, 4.281788>,  <23.723816, 20.628542, 4.185223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.875772, 20.469847, 4.281788>,  <24.129034, 20.205355, 4.442730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.875772, 20.469847, 4.281788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291385, 0.685201, 0.667528,
		0.717084, 0.305409, -0.626511,
		-0.633155, 0.661229, -0.402355,
		23.685825, 20.668215, 4.161082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.021385, 19.991671, 5.201546>,  <24.129034, 20.205355, 4.442730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.021385, 19.991671, 5.201546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.297165, 20.141977, 5.449241>,  <24.462633, 20.232162, 5.597858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.297165, 20.141977, 5.449241>,  <24.021385, 19.991671, 5.201546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.297165, 20.141977, 5.449241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061177, -0.882063, 0.467143,
		0.721744, -0.284189, -0.631127,
		0.689451, 0.375768, 0.619238,
		24.504000, 20.254707, 5.635012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.537615, 19.438295, 5.277307>,  <24.021385, 19.991671, 5.201546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.537615, 19.438295, 5.277307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.591436, 19.659967, 5.605887>,  <24.623730, 19.792971, 5.803035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.591436, 19.659967, 5.605887>,  <24.537615, 19.438295, 5.277307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.591436, 19.659967, 5.605887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049491, -0.824197, 0.564137,
		0.989670, -0.116561, -0.083471,
		0.134553, 0.554178, 0.821451,
		24.631802, 19.826221, 5.852322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.800051, 18.979824, 5.872774>,  <24.537615, 19.438295, 5.277307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.800051, 18.979824, 5.872774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.666744, 19.307980, 6.058634>,  <24.586760, 19.504873, 6.170150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.666744, 19.307980, 6.058634>,  <24.800051, 18.979824, 5.872774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.666744, 19.307980, 6.058634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287673, -0.557802, 0.778525,
		0.897874, 0.125789, 0.421900,
		-0.333267, 0.820386, 0.464650,
		24.566765, 19.554096, 6.198029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.065693, 18.987751, 6.578937>,  <24.800051, 18.979824, 5.872774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.065693, 18.987751, 6.578937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.752193, 19.235945, 6.568075>,  <24.564095, 19.384861, 6.561558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.752193, 19.235945, 6.568075>,  <25.065693, 18.987751, 6.578937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.752193, 19.235945, 6.568075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324919, -0.372367, 0.869351,
		0.529307, 0.690175, 0.493449,
		-0.783748, 0.620485, -0.027155,
		24.517069, 19.422091, 6.559929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.926167, 19.331680, 7.307670>,  <25.065693, 18.987751, 6.578937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.926167, 19.331680, 7.307670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.596975, 19.307377, 7.081743>,  <24.399462, 19.292795, 6.946187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.596975, 19.307377, 7.081743>,  <24.926167, 19.331680, 7.307670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.596975, 19.307377, 7.081743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533052, -0.261122, 0.804780,
		-0.196382, 0.963392, 0.182510,
		-0.822976, -0.060757, -0.564818,
		24.350082, 19.289150, 6.912297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.352116, 19.646362, 7.659960>,  <24.926167, 19.331680, 7.307670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.352116, 19.646362, 7.659960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.181669, 19.392183, 7.402392>,  <24.079401, 19.239676, 7.247852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.181669, 19.392183, 7.402392>,  <24.352116, 19.646362, 7.659960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.181669, 19.392183, 7.402392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454936, -0.464713, 0.759655,
		-0.781959, 0.616641, -0.091067,
		-0.426114, -0.635449, -0.643919,
		24.053835, 19.201550, 7.209217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.754574, 19.760532, 7.754898>,  <24.352116, 19.646362, 7.659960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.754574, 19.760532, 7.754898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.762226, 19.397917, 7.586220>,  <23.766817, 19.180347, 7.485014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.762226, 19.397917, 7.586220>,  <23.754574, 19.760532, 7.754898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.762226, 19.397917, 7.586220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511538, -0.371263, 0.774915,
		-0.859047, 0.200886, -0.470832,
		0.019133, -0.906537, -0.421693,
		23.767965, 19.125956, 7.459713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.098663, 19.475456, 7.830558>,  <23.754574, 19.760532, 7.754898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.098663, 19.475456, 7.830558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.315422, 19.150419, 7.744730>,  <23.445477, 18.955397, 7.693233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.315422, 19.150419, 7.744730>,  <23.098663, 19.475456, 7.830558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.315422, 19.150419, 7.744730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463912, -0.502092, 0.729856,
		-0.700811, -0.295964, -0.649053,
		0.541895, -0.812594, -0.214570,
		23.477991, 18.906641, 7.680359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.591068, 18.857470, 8.012336>,  <23.098663, 19.475456, 7.830558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.591068, 18.857470, 8.012336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.968880, 18.726324, 8.004600>,  <23.195566, 18.647636, 7.999958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.968880, 18.726324, 8.004600>,  <22.591068, 18.857470, 8.012336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.968880, 18.726324, 8.004600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212024, -0.653663, 0.726478,
		-0.250827, -0.682078, -0.686918,
		0.944528, -0.327863, -0.019340,
		23.252237, 18.627966, 7.998797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.493671, 18.113911, 7.954523>,  <22.591068, 18.857470, 8.012336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.493671, 18.113911, 7.954523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.856924, 18.181749, 8.107643>,  <23.074875, 18.222452, 8.199515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.856924, 18.181749, 8.107643>,  <22.493671, 18.113911, 7.954523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.856924, 18.181749, 8.107643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149352, -0.722920, 0.674597,
		0.391144, -0.669794, -0.631176,
		0.908130, 0.169597, 0.382800,
		23.129364, 18.232628, 8.222484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.754213, 17.464771, 8.141973>,  <22.493671, 18.113911, 7.954523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.754213, 17.464771, 8.141973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.983755, 17.706860, 8.362663>,  <23.121479, 17.852114, 8.495077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.983755, 17.706860, 8.362663>,  <22.754213, 17.464771, 8.141973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.983755, 17.706860, 8.362663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009616, -0.678622, 0.734425,
		0.818902, -0.416146, -0.395249,
		0.573852, 0.605223, 0.551724,
		23.155910, 17.888426, 8.528180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.243668, 16.986294, 8.509971>,  <22.754213, 17.464771, 8.141973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.243668, 16.986294, 8.509971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.222559, 17.324331, 8.722775>,  <23.209894, 17.527153, 8.850458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.222559, 17.324331, 8.722775>,  <23.243668, 16.986294, 8.509971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.222559, 17.324331, 8.722775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211034, -0.530159, 0.821216,
		0.976053, -0.068937, 0.206319,
		-0.052770, 0.845091, 0.532011,
		23.206728, 17.577858, 8.882379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.759460, 17.055473, 8.975054>,  <23.243668, 16.986294, 8.509971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.759460, 17.055473, 8.975054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.464830, 17.278139, 9.128718>,  <23.288052, 17.411739, 9.220917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.464830, 17.278139, 9.128718>,  <23.759460, 17.055473, 8.975054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.464830, 17.278139, 9.128718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082086, -0.490215, 0.867728,
		0.671354, 0.670682, 0.315386,
		-0.736576, 0.556664, 0.384162,
		23.243858, 17.445139, 9.243967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.063869, 17.203707, 9.667315>,  <23.759460, 17.055473, 8.975054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.063869, 17.203707, 9.667315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.675774, 17.292059, 9.707009>,  <23.442917, 17.345070, 9.730826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.675774, 17.292059, 9.707009>,  <24.063869, 17.203707, 9.667315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.675774, 17.292059, 9.707009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033789, -0.529300, 0.847762,
		0.239782, 0.819178, 0.521011,
		-0.970238, 0.220883, 0.099238,
		23.384703, 17.358324, 9.736780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.914160, 17.489248, 10.382552>,  <24.063869, 17.203707, 9.667315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.914160, 17.489248, 10.382552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.556843, 17.371655, 10.246551>,  <23.342453, 17.301098, 10.164949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.556843, 17.371655, 10.246551>,  <23.914160, 17.489248, 10.382552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.556843, 17.371655, 10.246551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206750, -0.402918, 0.891578,
		-0.399104, 0.866735, 0.299141,
		-0.893292, -0.293985, -0.340004,
		23.288855, 17.283459, 10.144549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.520920, 17.650156, 10.948531>,  <23.914160, 17.489248, 10.382552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.520920, 17.650156, 10.948531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.278946, 17.417877, 10.730598>,  <23.133760, 17.278509, 10.599838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.278946, 17.417877, 10.730598>,  <23.520920, 17.650156, 10.948531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.278946, 17.417877, 10.730598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345574, -0.424974, 0.836645,
		-0.717378, 0.694397, 0.056409,
		-0.604936, -0.580697, -0.544833,
		23.097466, 17.243668, 10.567148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.750082, 17.647362, 11.314010>,  <23.520920, 17.650156, 10.948531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.750082, 17.647362, 11.314010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.807226, 17.316843, 11.096084>,  <22.841513, 17.118532, 10.965328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.807226, 17.316843, 11.096084>,  <22.750082, 17.647362, 11.314010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.807226, 17.316843, 11.096084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456236, -0.543469, 0.704621,
		-0.878316, 0.147901, -0.454628,
		0.142862, -0.826297, -0.544815,
		22.850084, 17.068954, 10.932639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.099895, 17.374674, 11.240477>,  <22.750082, 17.647362, 11.314010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.099895, 17.374674, 11.240477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.367878, 17.078405, 11.220223>,  <22.528667, 16.900644, 11.208072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.367878, 17.078405, 11.220223>,  <22.099895, 17.374674, 11.240477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.367878, 17.078405, 11.220223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514158, -0.512103, 0.688035,
		-0.535538, -0.434919, -0.723909,
		0.669955, -0.740673, -0.050633,
		22.568865, 16.856203, 11.205033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.722233, 16.788942, 11.206069>,  <22.099895, 17.374674, 11.240477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.722233, 16.788942, 11.206069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.078264, 16.652227, 11.326695>,  <22.291883, 16.570198, 11.399072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.078264, 16.652227, 11.326695>,  <21.722233, 16.788942, 11.206069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.078264, 16.652227, 11.326695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454779, -0.621518, 0.637881,
		-0.030589, -0.704910, -0.708637,
		0.890079, -0.341785, 0.301567,
		22.345287, 16.549692, 11.417166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.567066, 16.058619, 11.351146>,  <21.722233, 16.788942, 11.206069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.567066, 16.058619, 11.351146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.918453, 16.141052, 11.523576>,  <22.129286, 16.190512, 11.627034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.918453, 16.141052, 11.523576>,  <21.567066, 16.058619, 11.351146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.918453, 16.141052, 11.523576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252057, -0.566573, 0.784514,
		0.405910, -0.797825, -0.445771,
		0.878467, 0.206082, 0.431075,
		22.181993, 16.202877, 11.652899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.853168, 15.435457, 11.551119>,  <21.567066, 16.058619, 11.351146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.853168, 15.435457, 11.551119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.039618, 15.700564, 11.785543>,  <22.151487, 15.859629, 11.926198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.039618, 15.700564, 11.785543>,  <21.853168, 15.435457, 11.551119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.039618, 15.700564, 11.785543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041258, -0.645422, 0.762711,
		0.883758, -0.379697, -0.273501,
		0.466122, 0.662768, 0.586062,
		22.179455, 15.899395, 11.961362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.231050, 15.024643, 11.981263>,  <21.853168, 15.435457, 11.551119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.231050, 15.024643, 11.981263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.285753, 15.356355, 12.198000>,  <22.318575, 15.555382, 12.328042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.285753, 15.356355, 12.198000>,  <22.231050, 15.024643, 11.981263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.285753, 15.356355, 12.198000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063068, -0.538584, 0.840208,
		0.988595, -0.149076, -0.021353,
		0.136755, 0.829280, 0.541843,
		22.326780, 15.605139, 12.360553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.679926, 14.812795, 12.516973>,  <22.231050, 15.024643, 11.981263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.679926, 14.812795, 12.516973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.497795, 15.148011, 12.637217>,  <22.388517, 15.349141, 12.709362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.497795, 15.148011, 12.637217>,  <22.679926, 14.812795, 12.516973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.497795, 15.148011, 12.637217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309269, -0.465489, 0.829260,
		0.834884, 0.284615, 0.471129,
		-0.455325, 0.838042, 0.300606,
		22.361198, 15.399424, 12.727399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.776211, 14.735878, 13.199990>,  <22.679926, 14.812795, 12.516973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.776211, 14.735878, 13.199990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.473114, 14.995615, 13.174114>,  <22.291256, 15.151457, 13.158588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.473114, 14.995615, 13.174114>,  <22.776211, 14.735878, 13.199990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.473114, 14.995615, 13.174114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465569, -0.468487, 0.750843,
		0.457248, 0.599061, 0.657305,
		-0.757740, 0.649343, -0.064689,
		22.245792, 15.190418, 13.154707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.234041, 15.272263, 13.569704>,  <22.776211, 14.735878, 13.199990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.234041, 15.272263, 13.569704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.616844, 15.157198, 13.554778>,  <23.846525, 15.088160, 13.545822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.616844, 15.157198, 13.554778>,  <23.234041, 15.272263, 13.569704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.616844, 15.157198, 13.554778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031923, 0.023417, -0.999216,
		0.288309, 0.957446, 0.013228,
		0.957005, -0.287661, -0.037316,
		23.903946, 15.070900, 13.543584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.769493, 15.780917, 13.170900>,  <23.234041, 15.272263, 13.569704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.769493, 15.780917, 13.170900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.865187, 15.392593, 13.164041>,  <23.922604, 15.159599, 13.159925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.865187, 15.392593, 13.164041>,  <23.769493, 15.780917, 13.170900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.865187, 15.392593, 13.164041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030477, 0.025161, -0.999219,
		0.970484, 0.238524, 0.035607,
		0.239234, -0.970810, -0.017149,
		23.936956, 15.101350, 13.158895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.463345, 15.611691, 12.759599>,  <23.769493, 15.780917, 13.170900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.463345, 15.611691, 12.759599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.148024, 15.365593, 12.762572>,  <23.958832, 15.217934, 12.764357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.148024, 15.365593, 12.762572>,  <24.463345, 15.611691, 12.759599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.148024, 15.365593, 12.762572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157528, 0.190130, -0.969038,
		0.594783, -0.765064, -0.246798,
		-0.788301, -0.615246, 0.007433,
		23.911533, 15.181020, 12.764802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.551796, 15.130566, 12.258211>,  <24.463345, 15.611691, 12.759599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.551796, 15.130566, 12.258211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.152891, 15.128355, 12.287721>,  <23.913549, 15.127028, 12.305427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.152891, 15.128355, 12.287721>,  <24.551796, 15.130566, 12.258211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.152891, 15.128355, 12.287721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073887, 0.023986, -0.996978,
		0.003723, -0.999697, -0.024327,
		-0.997259, -0.005509, 0.073775,
		23.853714, 15.126697, 12.309853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.324598, 14.539930, 11.862694>,  <24.551796, 15.130566, 12.258211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.324598, 14.539930, 11.862694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.097015, 14.866804, 11.899570>,  <23.960466, 15.062928, 11.921695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.097015, 14.866804, 11.899570>,  <24.324598, 14.539930, 11.862694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.097015, 14.866804, 11.899570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066641, 0.157547, -0.985260,
		-0.819663, -0.554427, -0.144096,
		-0.568956, 0.817184, 0.092188,
		23.926329, 15.111959, 11.927226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.678381, 14.862977, 11.291045>,  <24.324598, 14.539930, 11.862694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.678381, 14.862977, 11.291045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.972942, 14.621492, 11.413189>,  <25.149679, 14.476602, 11.486475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.972942, 14.621492, 11.413189>,  <24.678381, 14.862977, 11.291045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.972942, 14.621492, 11.413189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651087, 0.509749, -0.562353,
		0.183842, 0.612934, 0.768449,
		0.736402, -0.603711, 0.305360,
		25.193863, 14.440379, 11.504797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.185642, 15.327983, 11.659701>,  <24.678381, 14.862977, 11.291045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.185642, 15.327983, 11.659701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.370768, 14.988095, 11.558681>,  <25.481842, 14.784163, 11.498070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.370768, 14.988095, 11.558681>,  <25.185642, 15.327983, 11.659701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.370768, 14.988095, 11.558681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671460, 0.522041, -0.525942,
		0.578745, 0.073836, 0.812159,
		0.462814, -0.849719, -0.252550,
		25.509611, 14.733180, 11.482917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.836226, 15.535882, 11.699028>,  <25.185642, 15.327983, 11.659701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.836226, 15.535882, 11.699028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.836885, 15.201891, 11.478915>,  <25.837282, 15.001496, 11.346848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.836885, 15.201891, 11.478915>,  <25.836226, 15.535882, 11.699028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.836885, 15.201891, 11.478915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520669, 0.470524, -0.712398,
		0.853757, -0.285339, 0.435523,
		0.001649, -0.834978, -0.550281,
		25.837379, 14.951398, 11.313831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.546234, 15.453708, 11.447644>,  <25.836226, 15.535882, 11.699028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.546234, 15.453708, 11.447644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.322895, 15.244420, 11.190121>,  <26.188892, 15.118848, 11.035606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.322895, 15.244420, 11.190121>,  <26.546234, 15.453708, 11.447644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.322895, 15.244420, 11.190121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496253, 0.411248, -0.764597,
		0.664817, -0.746403, 0.030030,
		-0.558347, -0.523219, -0.643809,
		26.155390, 15.087455, 10.996978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.945011, 15.187651, 10.855137>,  <26.546234, 15.453708, 11.447644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.945011, 15.187651, 10.855137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.577602, 15.206597, 10.698130>,  <26.357157, 15.217965, 10.603925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.577602, 15.206597, 10.698130>,  <26.945011, 15.187651, 10.855137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.577602, 15.206597, 10.698130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359062, 0.515516, -0.778022,
		0.165497, -0.855569, -0.490521,
		-0.918523, 0.047367, -0.392519,
		26.302046, 15.220807, 10.580374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.953468, 14.947725, 10.209421>,  <26.945011, 15.187651, 10.855137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.953468, 14.947725, 10.209421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.623892, 15.174395, 10.209277>,  <26.426146, 15.310396, 10.209190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.623892, 15.174395, 10.209277>,  <26.953468, 14.947725, 10.209421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.623892, 15.174395, 10.209277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263475, 0.382529, -0.885580,
		-0.501696, -0.729762, -0.464487,
		-0.823943, 0.566673, -0.000361,
		26.376709, 15.344397, 10.209168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.696405, 14.884706, 9.549908>,  <26.953468, 14.947725, 10.209421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.696405, 14.884706, 9.549908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.497316, 15.209020, 9.673134>,  <26.377863, 15.403607, 9.747069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.497316, 15.209020, 9.673134>,  <26.696405, 14.884706, 9.549908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.497316, 15.209020, 9.673134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044160, 0.331035, -0.942585,
		-0.866211, -0.482750, -0.128960,
		-0.497723, 0.810782, 0.308065,
		26.348000, 15.452254, 9.765553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.168493, 15.074565, 9.017776>,  <26.696405, 14.884706, 9.549908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.168493, 15.074565, 9.017776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.207157, 15.408626, 9.234361>,  <26.230356, 15.609062, 9.364311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.207157, 15.408626, 9.234361>,  <26.168493, 15.074565, 9.017776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.207157, 15.408626, 9.234361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173129, 0.549822, -0.817142,
		-0.980145, -0.014757, 0.197735,
		0.096660, 0.835151, 0.541460,
		26.236155, 15.659171, 9.396799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.685913, 15.617935, 8.721107>,  <26.168493, 15.074565, 9.017776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.685913, 15.617935, 8.721107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.976360, 15.815806, 8.912124>,  <26.150629, 15.934529, 9.026733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.976360, 15.815806, 8.912124>,  <25.685913, 15.617935, 8.721107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.976360, 15.815806, 8.912124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123338, 0.589558, -0.798254,
		-0.676418, 0.638525, 0.367075,
		0.726117, 0.494679, 0.477542,
		26.194195, 15.964211, 9.055387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.443590, 16.315950, 8.550561>,  <25.685913, 15.617935, 8.721107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.443590, 16.315950, 8.550561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.820068, 16.370306, 8.674292>,  <26.045956, 16.402920, 8.748530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.820068, 16.370306, 8.674292>,  <25.443590, 16.315950, 8.550561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.820068, 16.370306, 8.674292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145605, 0.663026, -0.734299,
		-0.304874, 0.736160, 0.604252,
		0.941197, 0.135887, 0.309327,
		26.102427, 16.411072, 8.767090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.607811, 17.100250, 8.679989>,  <25.443590, 16.315950, 8.550561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.607811, 17.100250, 8.679989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.947313, 16.899309, 8.613953>,  <26.151014, 16.778746, 8.574331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.947313, 16.899309, 8.613953>,  <25.607811, 17.100250, 8.679989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.947313, 16.899309, 8.613953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250989, 0.657525, -0.710398,
		0.465420, 0.561519, 0.684164,
		0.848757, -0.502351, -0.165090,
		26.201941, 16.748604, 8.564425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.022829, 17.655756, 8.494722>,  <25.607811, 17.100250, 8.679989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.022829, 17.655756, 8.494722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.212618, 17.320524, 8.387018>,  <26.326490, 17.119385, 8.322395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.212618, 17.320524, 8.387018>,  <26.022829, 17.655756, 8.494722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.212618, 17.320524, 8.387018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339387, 0.456399, -0.822506,
		0.812215, 0.298871, 0.500981,
		0.474471, -0.838079, -0.269261,
		26.354959, 17.069101, 8.306240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.718473, 17.855694, 8.262420>,  <26.022829, 17.655756, 8.494722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.718473, 17.855694, 8.262420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.648170, 17.501696, 8.089960>,  <26.605989, 17.289297, 7.986484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.648170, 17.501696, 8.089960>,  <26.718473, 17.855694, 8.262420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.648170, 17.501696, 8.089960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179413, 0.401837, -0.897963,
		0.967947, -0.235177, 0.088154,
		-0.175757, -0.884997, -0.431150,
		26.595444, 17.236197, 7.960615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.270744, 17.763393, 7.801338>,  <26.718473, 17.855694, 8.262420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.270744, 17.763393, 7.801338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.980717, 17.518959, 7.674314>,  <26.806700, 17.372297, 7.598100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.980717, 17.518959, 7.674314>,  <27.270744, 17.763393, 7.801338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.980717, 17.518959, 7.674314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141008, 0.319613, -0.936997,
		0.674084, -0.724168, -0.145574,
		-0.725070, -0.611088, -0.317560,
		26.763195, 17.335632, 7.579046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.536722, 17.448456, 7.216198>,  <27.270744, 17.763393, 7.801338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.536722, 17.448456, 7.216198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.142159, 17.384062, 7.203067>,  <26.905420, 17.345427, 7.195188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.142159, 17.384062, 7.203067>,  <27.536722, 17.448456, 7.216198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.142159, 17.384062, 7.203067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015876, 0.292265, -0.956206,
		0.163527, -0.942691, -0.290849,
		-0.986411, -0.160983, -0.032828,
		26.846235, 17.335766, 7.193219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.468800, 17.017914, 6.673952>,  <27.536722, 17.448456, 7.216198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.468800, 17.017914, 6.673952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.133341, 17.226860, 6.735662>,  <26.932066, 17.352228, 6.772687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.133341, 17.226860, 6.735662>,  <27.468800, 17.017914, 6.673952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.133341, 17.226860, 6.735662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121650, 0.455725, -0.881768,
		-0.530914, -0.720726, -0.445740,
		-0.838649, 0.522368, 0.154274,
		26.881746, 17.383570, 6.781944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.277639, 17.122137, 6.052460>,  <27.468800, 17.017914, 6.673952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.277639, 17.122137, 6.052460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.023581, 17.375101, 6.229838>,  <26.871145, 17.526878, 6.336265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.023581, 17.375101, 6.229838>,  <27.277639, 17.122137, 6.052460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.023581, 17.375101, 6.229838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010887, 0.566734, -0.823829,
		-0.772313, -0.528082, -0.353076,
		-0.635149, 0.632409, 0.443446,
		26.833036, 17.564823, 6.362872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<14.805406, 21.793539, 17.072079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.650572, 21.442305, 17.184597>,  <14.557672, 21.231564, 17.252108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.650572, 21.442305, 17.184597>,  <14.805406, 21.793539, 17.072079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.650572, 21.442305, 17.184597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609687, -0.472617, -0.636329,
		0.691699, -0.074810, 0.718301,
		-0.387085, -0.878087, 0.281298,
		14.534447, 21.178879, 17.268986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.329463, 21.345736, 17.275888>,  <14.805406, 21.793539, 17.072079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.329463, 21.345736, 17.275888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.031807, 21.107531, 17.154814>,  <14.853213, 20.964607, 17.082169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.031807, 21.107531, 17.154814>,  <15.329463, 21.345736, 17.275888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.031807, 21.107531, 17.154814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558092, -0.305183, -0.771619,
		0.367135, -0.743120, 0.559450,
		-0.744140, -0.595514, -0.302685,
		14.808565, 20.928877, 17.064009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.705983, 20.695318, 17.155222>,  <15.329463, 21.345736, 17.275888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.705983, 20.695318, 17.155222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.350224, 20.636703, 16.982018>,  <15.136768, 20.601534, 16.878096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.350224, 20.636703, 16.982018>,  <15.705983, 20.695318, 17.155222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.350224, 20.636703, 16.982018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445141, -0.493167, -0.747419,
		-0.104020, -0.857504, 0.503852,
		-0.889398, -0.146539, -0.433009,
		15.083405, 20.592743, 16.852114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.632693, 19.948591, 17.062395>,  <15.705983, 20.695318, 17.155222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.632693, 19.948591, 17.062395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.357533, 20.085598, 16.806435>,  <15.192436, 20.167801, 16.652859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.357533, 20.085598, 16.806435>,  <15.632693, 19.948591, 17.062395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.357533, 20.085598, 16.806435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303388, -0.665230, -0.682220,
		-0.659335, -0.663448, 0.353714,
		-0.687919, 0.342499, -0.639892,
		15.151162, 20.188353, 16.614464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.177333, 19.486273, 16.835917>,  <15.632693, 19.948591, 17.062395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.177333, 19.486273, 16.835917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.184482, 19.753998, 16.538811>,  <15.188771, 19.914633, 16.360548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.184482, 19.753998, 16.538811>,  <15.177333, 19.486273, 16.835917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.184482, 19.753998, 16.538811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385982, -0.689914, -0.612403,
		-0.922333, -0.275749, -0.270673,
		0.017872, 0.669314, -0.742764,
		15.189843, 19.954792, 16.315981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.057600, 19.124744, 16.170351>,  <15.177333, 19.486273, 16.835917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.057600, 19.124744, 16.170351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.177871, 19.468044, 16.003977>,  <15.250033, 19.674025, 15.904152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.177871, 19.468044, 16.003977>,  <15.057600, 19.124744, 16.170351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.177871, 19.468044, 16.003977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341903, -0.504130, -0.793067,
		-0.890335, 0.096246, -0.445017,
		0.300676, 0.858248, -0.415937,
		15.268073, 19.725519, 15.879195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.762804, 19.200123, 15.436221>,  <15.057600, 19.124744, 16.170351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.762804, 19.200123, 15.436221> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.089217, 19.431242, 15.442419>,  <15.285065, 19.569914, 15.446137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.089217, 19.431242, 15.442419>,  <14.762804, 19.200123, 15.436221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.089217, 19.431242, 15.442419> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378115, -0.513358, -0.770385,
		-0.437173, 0.634518, -0.637390,
		0.816032, 0.577799, 0.015494,
		15.334027, 19.604582, 15.447067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.806667, 19.392698, 14.759194>,  <14.762804, 19.200123, 15.436221>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.806667, 19.392698, 14.759194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.167294, 19.428871, 14.928429>,  <15.383669, 19.450575, 15.029969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.167294, 19.428871, 14.928429>,  <14.806667, 19.392698, 14.759194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.167294, 19.428871, 14.928429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420578, -0.412518, -0.808049,
		0.101458, 0.906450, -0.409945,
		0.901566, 0.090431, 0.423086,
		15.437763, 19.456001, 15.055354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.256428, 19.513866, 14.192867>,  <14.806667, 19.392698, 14.759194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.256428, 19.513866, 14.192867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.528746, 19.426321, 14.472471>,  <15.692137, 19.373793, 14.640234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.528746, 19.426321, 14.472471>,  <15.256428, 19.513866, 14.192867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.528746, 19.426321, 14.472471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581872, -0.418056, -0.697606,
		0.444908, 0.881661, -0.157259,
		0.680795, -0.218866, 0.699011,
		15.732985, 19.360661, 14.682175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.834774, 19.802044, 13.960355>,  <15.256428, 19.513866, 14.192867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.834774, 19.802044, 13.960355> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.953042, 19.535723, 14.234372>,  <16.024004, 19.375931, 14.398783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.953042, 19.535723, 14.234372>,  <15.834774, 19.802044, 13.960355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.953042, 19.535723, 14.234372> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520964, -0.488705, -0.699831,
		0.800734, 0.563803, 0.202364,
		0.295671, -0.665803, 0.685044,
		16.041744, 19.335981, 14.439885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.571083, 19.685083, 13.799259>,  <15.834774, 19.802044, 13.960355>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.571083, 19.685083, 13.799259> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.433352, 19.387331, 14.028111>,  <16.350714, 19.208679, 14.165423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.433352, 19.387331, 14.028111>,  <16.571083, 19.685083, 13.799259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.433352, 19.387331, 14.028111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298897, -0.664604, -0.684808,
		0.889999, -0.064790, 0.451335,
		-0.344328, -0.744381, 0.572132,
		16.330053, 19.164017, 14.199751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.088207, 19.293039, 13.879340>,  <16.571083, 19.685083, 13.799259>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.088207, 19.293039, 13.879340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.755342, 19.078487, 13.935632>,  <16.555624, 18.949757, 13.969406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.755342, 19.078487, 13.935632>,  <17.088207, 19.293039, 13.879340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.755342, 19.078487, 13.935632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195533, -0.521298, -0.830672,
		0.518917, -0.663736, 0.538683,
		-0.832161, -0.536380, 0.140728,
		16.505693, 18.917574, 13.977850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.135605, 18.527021, 13.577517>,  <17.088207, 19.293039, 13.879340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.135605, 18.527021, 13.577517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.746527, 18.619810, 13.580360>,  <16.513079, 18.675484, 13.582067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.746527, 18.619810, 13.580360>,  <17.135605, 18.527021, 13.577517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.746527, 18.619810, 13.580360> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102477, -0.401812, -0.909970,
		-0.208229, -0.885854, 0.414613,
		-0.972697, 0.231970, 0.007111,
		16.454718, 18.689402, 13.582494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.750555, 17.889519, 13.461170>,  <17.135605, 18.527021, 13.577517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.750555, 17.889519, 13.461170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.554585, 18.217182, 13.341868>,  <16.437002, 18.413780, 13.270288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.554585, 18.217182, 13.341868>,  <16.750555, 17.889519, 13.461170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.554585, 18.217182, 13.341868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071841, -0.378902, -0.922644,
		-0.868800, -0.430599, 0.244482,
		-0.489925, 0.819157, -0.298255,
		16.407608, 18.462929, 13.252392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.213564, 17.579113, 13.998092>,  <16.750555, 17.889519, 13.461170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.213564, 17.579113, 13.998092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.567848, 17.427757, 14.105678>,  <17.780418, 17.336945, 14.170229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.567848, 17.427757, 14.105678>,  <17.213564, 17.579113, 13.998092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.567848, 17.427757, 14.105678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457291, -0.611230, 0.645975,
		-0.080030, -0.695141, -0.714405,
		0.885709, -0.378388, 0.268965,
		17.833561, 17.314241, 14.186367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.154818, 16.806879, 13.960160>,  <17.213564, 17.579113, 13.998092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.154818, 16.806879, 13.960160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.445812, 16.917416, 14.211366>,  <17.620409, 16.983738, 14.362089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.445812, 16.917416, 14.211366>,  <17.154818, 16.806879, 13.960160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.445812, 16.917416, 14.211366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374548, -0.606951, 0.700945,
		0.574873, -0.745149, -0.338044,
		0.727485, 0.276341, 0.628014,
		17.664059, 17.000319, 14.399770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.325157, 16.196733, 14.319443>,  <17.154818, 16.806879, 13.960160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.325157, 16.196733, 14.319443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.507103, 16.465357, 14.553402>,  <17.616270, 16.626532, 14.693778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.507103, 16.465357, 14.553402>,  <17.325157, 16.196733, 14.319443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.507103, 16.465357, 14.553402> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211019, -0.556796, 0.803398,
		0.865199, -0.488862, -0.111554,
		0.454864, 0.671560, 0.584899,
		17.643562, 16.666824, 14.728871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.769617, 15.793427, 14.779888>,  <17.325157, 16.196733, 14.319443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.769617, 15.793427, 14.779888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.672224, 16.141138, 14.951968>,  <17.613789, 16.349764, 15.055216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.672224, 16.141138, 14.951968>,  <17.769617, 15.793427, 14.779888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.672224, 16.141138, 14.951968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141683, -0.470668, 0.870860,
		0.959501, 0.151088, 0.237762,
		-0.243483, 0.869278, 0.430200,
		17.599178, 16.401922, 15.081028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.964766, 15.679091, 15.454988>,  <17.769617, 15.793427, 14.779888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.964766, 15.679091, 15.454988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.749992, 16.007586, 15.532217>,  <17.621128, 16.204681, 15.578554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.749992, 16.007586, 15.532217>,  <17.964766, 15.679091, 15.454988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.749992, 16.007586, 15.532217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310061, -0.404944, 0.860164,
		0.784580, 0.401987, 0.472060,
		-0.536933, 0.821235, 0.193070,
		17.588913, 16.253956, 15.590138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.117516, 16.000690, 16.165937>,  <17.964766, 15.679091, 15.454988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.117516, 16.000690, 16.165937> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.748297, 16.102203, 16.050297>,  <17.526766, 16.163111, 15.980912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.748297, 16.102203, 16.050297>,  <18.117516, 16.000690, 16.165937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.748297, 16.102203, 16.050297> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336617, -0.169071, 0.926339,
		0.186210, 0.952371, 0.241488,
		-0.923046, 0.253782, -0.289102,
		17.471382, 16.178337, 15.963566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.840158, 16.317060, 16.671789>,  <18.117516, 16.000690, 16.165937>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.840158, 16.317060, 16.671789> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.502295, 16.258181, 16.465921>,  <17.299576, 16.222853, 16.342400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.502295, 16.258181, 16.465921>,  <17.840158, 16.317060, 16.671789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.502295, 16.258181, 16.465921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524389, 0.034340, 0.850786,
		-0.107563, 0.988510, -0.106196,
		-0.844657, -0.147201, -0.514670,
		17.248898, 16.214020, 16.311520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.499563, 16.912251, 16.671612>,  <17.840158, 16.317060, 16.671789>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.499563, 16.912251, 16.671612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.239576, 16.613007, 16.618135>,  <17.083584, 16.433460, 16.586048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.239576, 16.613007, 16.618135>,  <17.499563, 16.912251, 16.671612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.239576, 16.613007, 16.618135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323040, 0.112738, 0.939646,
		-0.687888, 0.653925, -0.314946,
		-0.649965, -0.748112, -0.133693,
		17.044586, 16.388573, 16.578028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.026134, 17.170967, 17.145985>,  <17.499563, 16.912251, 16.671612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.026134, 17.170967, 17.145985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.890604, 16.815495, 17.022411>,  <16.809286, 16.602211, 16.948267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.890604, 16.815495, 17.022411>,  <17.026134, 17.170967, 17.145985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.890604, 16.815495, 17.022411> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625171, -0.032727, 0.779801,
		-0.703107, 0.457353, -0.544490,
		-0.338825, -0.888683, -0.308934,
		16.788956, 16.548889, 16.929731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.224636, 17.148066, 16.952908>,  <17.026134, 17.170967, 17.145985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.224636, 17.148066, 16.952908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.359833, 16.790083, 17.069399>,  <16.440950, 16.575293, 17.139294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.359833, 16.790083, 17.069399>,  <16.224636, 17.148066, 16.952908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.359833, 16.790083, 17.069399> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669741, -0.011318, 0.742508,
		-0.661217, -0.446008, -0.603215,
		0.337991, -0.894958, 0.291227,
		16.461229, 16.521595, 17.156767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.663929, 16.747850, 17.132448>,  <16.224636, 17.148066, 16.952908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.663929, 16.747850, 17.132448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.968793, 16.564337, 17.315151>,  <16.151711, 16.454227, 17.424772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.968793, 16.564337, 17.315151>,  <15.663929, 16.747850, 17.132448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.968793, 16.564337, 17.315151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507733, 0.014114, 0.861399,
		-0.401645, -0.888434, -0.222185,
		0.762160, -0.458787, 0.456756,
		16.197441, 16.426701, 17.452179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.370043, 16.345774, 17.560507>,  <15.663929, 16.747850, 17.132448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.370043, 16.345774, 17.560507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.739637, 16.371662, 17.711269>,  <15.961394, 16.387196, 17.801727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.739637, 16.371662, 17.711269>,  <15.370043, 16.345774, 17.560507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.739637, 16.371662, 17.711269> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382402, 0.145735, 0.912431,
		0.004124, -0.987204, 0.159406,
		0.923986, 0.064720, 0.376908,
		16.016834, 16.391079, 17.824343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.408818, 15.775152, 18.154123>,  <15.370043, 16.345774, 17.560507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.408818, 15.775152, 18.154123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.689721, 16.053165, 18.215786>,  <15.858263, 16.219973, 18.252785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.689721, 16.053165, 18.215786>,  <15.408818, 15.775152, 18.154123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.689721, 16.053165, 18.215786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190404, -0.025287, 0.981380,
		0.685990, -0.718533, 0.114579,
		0.702257, 0.695033, 0.154159,
		15.900398, 16.261675, 18.262033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.818434, 15.529768, 18.753481>,  <15.408818, 15.775152, 18.154123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.818434, 15.529768, 18.753481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.903117, 15.920051, 18.730942>,  <15.953927, 16.154221, 18.717419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.903117, 15.920051, 18.730942>,  <15.818434, 15.529768, 18.753481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.903117, 15.920051, 18.730942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139036, 0.087135, 0.986446,
		0.967393, -0.201006, 0.154105,
		0.211709, 0.975707, -0.056347,
		15.966630, 16.212763, 18.714037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.236456, 14.875540, 18.885729>,  <15.818434, 15.529768, 18.753481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.236456, 14.875540, 18.885729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.025852, 14.550303, 18.985062>,  <15.899489, 14.355162, 19.044662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.025852, 14.550303, 18.985062>,  <16.236456, 14.875540, 18.885729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.025852, 14.550303, 18.985062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046866, -0.263897, -0.963412,
		0.848876, -0.518885, 0.100838,
		-0.526511, -0.813091, 0.248334,
		15.867899, 14.306376, 19.059563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.564096, 14.354235, 18.475033>,  <16.236456, 14.875540, 18.885729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.564096, 14.354235, 18.475033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.215118, 14.192294, 18.584532>,  <16.005732, 14.095130, 18.650230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.215118, 14.192294, 18.584532>,  <16.564096, 14.354235, 18.475033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.215118, 14.192294, 18.584532> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118303, -0.368527, -0.922059,
		0.474180, -0.836830, 0.273624,
		-0.872444, -0.404851, 0.273748,
		15.953385, 14.070839, 18.666656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.584955, 13.555362, 18.279440>,  <16.564096, 14.354235, 18.475033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.584955, 13.555362, 18.279440> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.198751, 13.648683, 18.325672>,  <15.967029, 13.704676, 18.353411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.198751, 13.648683, 18.325672>,  <16.584955, 13.555362, 18.279440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.198751, 13.648683, 18.325672> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236944, -0.603339, -0.761472,
		-0.107919, -0.762596, 0.637810,
		-0.965511, 0.233302, 0.115581,
		15.909099, 13.718674, 18.360346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.205376, 12.956905, 18.144016>,  <16.584955, 13.555362, 18.279440>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.205376, 12.956905, 18.144016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.951161, 13.263331, 18.105570>,  <15.798633, 13.447187, 18.082502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.951161, 13.263331, 18.105570>,  <16.205376, 12.956905, 18.144016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.951161, 13.263331, 18.105570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406414, -0.437790, -0.801978,
		-0.656447, -0.470621, 0.589570,
		-0.635535, 0.766065, -0.096118,
		15.760501, 13.493151, 18.076735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.398569, 12.722053, 18.114080>,  <16.205376, 12.956905, 18.144016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.398569, 12.722053, 18.114080> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.424589, 13.083519, 17.944773>,  <15.440202, 13.300399, 17.843187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.424589, 13.083519, 17.944773>,  <15.398569, 12.722053, 18.114080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.424589, 13.083519, 17.944773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560293, -0.317918, -0.764853,
		-0.825736, 0.286909, 0.485637,
		0.065051, 0.903665, -0.423270,
		15.444104, 13.354619, 17.817791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.777523, 12.868316, 17.859444>,  <15.398569, 12.722053, 18.114080>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.777523, 12.868316, 17.859444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.994872, 13.134624, 17.654898>,  <15.125281, 13.294410, 17.532171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.994872, 13.134624, 17.654898>,  <14.777523, 12.868316, 17.859444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.994872, 13.134624, 17.654898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592489, -0.127397, -0.795442,
		-0.594729, 0.735199, 0.325238,
		0.543374, 0.665772, -0.511364,
		15.157885, 13.334356, 17.501488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.339735, 13.583069, 17.581024>,  <14.777523, 12.868316, 17.859444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.339735, 13.583069, 17.581024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.667868, 13.556985, 17.353760>,  <14.864747, 13.541335, 17.217402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.667868, 13.556985, 17.353760>,  <14.339735, 13.583069, 17.581024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.667868, 13.556985, 17.353760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540182, 0.237856, -0.807235,
		0.187779, 0.969109, 0.159896,
		0.820331, -0.065209, -0.568160,
		14.913967, 13.537422, 17.183311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.276273, 14.047036, 17.054300>,  <14.339735, 13.583069, 17.581024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.276273, 14.047036, 17.054300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.558099, 13.830294, 16.871006>,  <14.727194, 13.700248, 16.761030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.558099, 13.830294, 16.871006>,  <14.276273, 14.047036, 17.054300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.558099, 13.830294, 16.871006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375069, 0.263826, -0.888661,
		0.602422, 0.797989, -0.017351,
		0.704564, -0.541857, -0.458236,
		14.769468, 13.667737, 16.733536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.500704, 14.472082, 16.568911>,  <14.276273, 14.047036, 17.054300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.500704, 14.472082, 16.568911> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.619539, 14.111435, 16.443167>,  <14.690841, 13.895046, 16.367720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.619539, 14.111435, 16.443167>,  <14.500704, 14.472082, 16.568911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.619539, 14.111435, 16.443167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428781, 0.168192, -0.887614,
		0.853162, 0.398491, -0.336629,
		0.297088, -0.901619, -0.314361,
		14.708666, 13.840949, 16.348858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.744036, 14.597840, 15.818466>,  <14.500704, 14.472082, 16.568911>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.744036, 14.597840, 15.818466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.677212, 14.204565, 15.847944>,  <14.637117, 13.968599, 15.865631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.677212, 14.204565, 15.847944>,  <14.744036, 14.597840, 15.818466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.677212, 14.204565, 15.847944> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597954, 0.041606, -0.800450,
		0.783927, -0.177789, -0.594853,
		-0.167061, -0.983189, 0.073694,
		14.627093, 13.909609, 15.870052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.946146, 14.409256, 15.279908>,  <14.744036, 14.597840, 15.818466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.946146, 14.409256, 15.279908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.686181, 14.127330, 15.393644>,  <14.530202, 13.958175, 15.461886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.686181, 14.127330, 15.393644>,  <14.946146, 14.409256, 15.279908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.686181, 14.127330, 15.393644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502298, 0.117570, -0.856664,
		0.570360, -0.699580, -0.430438,
		-0.649912, -0.704815, 0.284341,
		14.491207, 13.915885, 15.478947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.718820, 14.150187, 14.653606>,  <14.946146, 14.409256, 15.279908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.718820, 14.150187, 14.653606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.429851, 13.979321, 14.871098>,  <14.256470, 13.876802, 15.001592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.429851, 13.979321, 14.871098>,  <14.718820, 14.150187, 14.653606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.429851, 13.979321, 14.871098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637968, 0.108521, -0.762378,
		0.266653, -0.897639, -0.350914,
		-0.722421, -0.427162, 0.543727,
		14.213124, 13.851172, 15.034216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<14.501249, 15.425858, 24.379654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.897293, 15.479856, 24.394934>,  <15.134919, 15.512254, 24.404100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.897293, 15.479856, 24.394934>,  <14.501249, 15.425858, 24.379654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.897293, 15.479856, 24.394934> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090195, -0.403948, -0.910325,
		-0.107457, 0.904767, -0.412128,
		0.990110, 0.134993, 0.038198,
		15.194326, 15.520353, 24.406393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.657643, 15.696193, 23.824467>,  <14.501249, 15.425858, 24.379654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.657643, 15.696193, 23.824467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.016573, 15.558864, 23.935417>,  <15.231931, 15.476466, 24.001987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.016573, 15.558864, 23.935417>,  <14.657643, 15.696193, 23.824467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.016573, 15.558864, 23.935417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180149, -0.288821, -0.940281,
		0.402932, 0.893707, -0.197317,
		0.897325, -0.343323, 0.277376,
		15.285770, 15.455867, 24.018629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.087157, 15.873155, 23.268841>,  <14.657643, 15.696193, 23.824467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.087157, 15.873155, 23.268841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.284168, 15.592051, 23.474188>,  <15.402374, 15.423388, 23.597395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.284168, 15.592051, 23.474188>,  <15.087157, 15.873155, 23.268841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.284168, 15.592051, 23.474188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318275, -0.403567, -0.857808,
		0.810011, 0.585885, 0.024903,
		0.492527, -0.702760, 0.513366,
		15.431927, 15.381223, 23.628199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.689272, 15.816829, 22.916845>,  <15.087157, 15.873155, 23.268841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.689272, 15.816829, 22.916845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.686708, 15.485064, 23.140285>,  <15.685170, 15.286005, 23.274349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.686708, 15.485064, 23.140285>,  <15.689272, 15.816829, 22.916845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.686708, 15.485064, 23.140285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221603, -0.545900, -0.808013,
		0.975116, 0.118608, 0.187299,
		-0.006410, -0.829413, 0.558600,
		15.684786, 15.236239, 23.307865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.315336, 15.485450, 22.820896>,  <15.689272, 15.816829, 22.916845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.315336, 15.485450, 22.820896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.086306, 15.176005, 22.929476>,  <15.948887, 14.990339, 22.994623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.086306, 15.176005, 22.929476>,  <16.315336, 15.485450, 22.820896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.086306, 15.176005, 22.929476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264071, -0.487472, -0.832248,
		0.776159, -0.404844, 0.483403,
		-0.572576, -0.773610, 0.271449,
		15.914533, 14.943922, 23.010910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.628050, 15.005530, 22.494461>,  <16.315336, 15.485450, 22.820896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.628050, 15.005530, 22.494461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.267897, 14.847687, 22.567778>,  <16.051805, 14.752980, 22.611767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.267897, 14.847687, 22.567778>,  <16.628050, 15.005530, 22.494461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.267897, 14.847687, 22.567778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033653, -0.356841, -0.933559,
		0.433796, -0.846728, 0.308014,
		-0.900382, -0.394609, 0.183291,
		15.997782, 14.729304, 22.622765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.690716, 14.376393, 22.227194>,  <16.628050, 15.005530, 22.494461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.690716, 14.376393, 22.227194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.307755, 14.491728, 22.233442>,  <16.077978, 14.560928, 22.237192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.307755, 14.491728, 22.233442>,  <16.690716, 14.376393, 22.227194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.307755, 14.491728, 22.233442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103829, -0.293264, -0.950377,
		-0.269440, -0.911516, 0.310709,
		-0.957404, 0.288330, 0.015625,
		16.020535, 14.578229, 22.238129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.422888, 13.864864, 21.772083>,  <16.690716, 14.376393, 22.227194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.422888, 13.864864, 21.772083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.130756, 14.132972, 21.824783>,  <15.955478, 14.293837, 21.856403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.130756, 14.132972, 21.824783>,  <16.422888, 13.864864, 21.772083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.130756, 14.132972, 21.824783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350465, -0.202107, -0.914509,
		-0.586339, -0.714067, 0.382511,
		-0.730329, 0.670269, 0.131752,
		15.911657, 14.334052, 21.864309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.816541, 13.505317, 21.717020>,  <16.422888, 13.864864, 21.772083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.816541, 13.505317, 21.717020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.726786, 13.882277, 21.617802>,  <15.672933, 14.108454, 21.558270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.726786, 13.882277, 21.617802>,  <15.816541, 13.505317, 21.717020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.726786, 13.882277, 21.617802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164092, -0.287443, -0.943637,
		-0.960585, -0.171037, 0.219139,
		-0.224387, 0.942402, -0.248048,
		15.659470, 14.164998, 21.543386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.282091, 13.507088, 21.250521>,  <15.816541, 13.505317, 21.717020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.282091, 13.507088, 21.250521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.410760, 13.879134, 21.179628>,  <15.487961, 14.102362, 21.137093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.410760, 13.879134, 21.179628>,  <15.282091, 13.507088, 21.250521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.410760, 13.879134, 21.179628> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186476, -0.121282, -0.974945,
		-0.928307, 0.346662, 0.134431,
		0.321672, 0.930116, -0.177231,
		15.507261, 14.158169, 21.126459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.713356, 13.870836, 20.740101>,  <15.282091, 13.507088, 21.250521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.713356, 13.870836, 20.740101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.064407, 14.060634, 20.712902>,  <15.275039, 14.174512, 20.696583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.064407, 14.060634, 20.712902>,  <14.713356, 13.870836, 20.740101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.064407, 14.060634, 20.712902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116949, 0.074392, -0.990348,
		-0.464854, 0.877110, 0.120780,
		0.877630, 0.474492, -0.067995,
		15.327696, 14.202981, 20.692503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.652364, 14.479043, 20.231091>,  <14.713356, 13.870836, 20.740101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.652364, 14.479043, 20.231091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.040532, 14.387526, 20.261913>,  <15.273433, 14.332615, 20.280407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.040532, 14.387526, 20.261913>,  <14.652364, 14.479043, 20.231091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.040532, 14.387526, 20.261913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109101, 0.130872, -0.985378,
		0.215363, 0.964638, 0.151962,
		0.970420, -0.228793, 0.077057,
		15.331658, 14.318888, 20.285030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.972788, 14.944307, 19.669258>,  <14.652364, 14.479043, 20.231091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.972788, 14.944307, 19.669258> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.254982, 14.677391, 19.764767>,  <15.424298, 14.517241, 19.822073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.254982, 14.677391, 19.764767>,  <14.972788, 14.944307, 19.669258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.254982, 14.677391, 19.764767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211999, -0.122786, -0.969526,
		0.676275, 0.734605, 0.054841,
		0.705485, -0.667292, 0.238773,
		15.466627, 14.477203, 19.836399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.620391, 15.161494, 19.360226>,  <14.972788, 14.944307, 19.669258>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.620391, 15.161494, 19.360226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.657175, 14.768496, 19.425028>,  <15.679245, 14.532697, 19.463909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.657175, 14.768496, 19.425028>,  <15.620391, 15.161494, 19.360226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.657175, 14.768496, 19.425028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365998, -0.117956, -0.923110,
		0.926061, 0.144182, 0.348744,
		0.091960, -0.982495, 0.162005,
		15.684763, 14.473747, 19.473629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.166212, 15.707370, 19.419531>,  <15.620391, 15.161494, 19.360226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.166212, 15.707370, 19.419531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.082962, 16.076771, 19.290642>,  <16.033012, 16.298412, 19.213308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.082962, 16.076771, 19.290642>,  <16.166212, 15.707370, 19.419531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.082962, 16.076771, 19.290642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197344, 0.283011, 0.938595,
		0.957987, 0.258935, 0.123346,
		-0.208127, 0.923503, -0.322221,
		16.020525, 16.353821, 19.193975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.493921, 16.264751, 19.797127>,  <16.166212, 15.707370, 19.419531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.493921, 16.264751, 19.797127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.170446, 16.448236, 19.649826>,  <15.976362, 16.558327, 19.561445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.170446, 16.448236, 19.649826>,  <16.493921, 16.264751, 19.797127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.170446, 16.448236, 19.649826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257364, 0.287023, 0.922703,
		0.528952, 0.840952, -0.114056,
		-0.808686, 0.458712, -0.368253,
		15.927840, 16.585850, 19.539351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.590916, 16.907341, 20.087154>,  <16.493921, 16.264751, 19.797127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.590916, 16.907341, 20.087154> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.206453, 16.884190, 19.979206>,  <15.975776, 16.870298, 19.914438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.206453, 16.884190, 19.979206>,  <16.590916, 16.907341, 20.087154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.206453, 16.884190, 19.979206> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263500, 0.483408, 0.834796,
		0.082141, 0.873480, -0.479881,
		-0.961156, -0.057878, -0.269869,
		15.918106, 16.866827, 19.898245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.330040, 17.571812, 20.114531>,  <16.590916, 16.907341, 20.087154>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.330040, 17.571812, 20.114531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.989806, 17.361492, 20.112059>,  <15.785666, 17.235300, 20.110575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.989806, 17.361492, 20.112059>,  <16.330040, 17.571812, 20.114531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.989806, 17.361492, 20.112059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317000, 0.503364, 0.803826,
		-0.419539, 0.685683, -0.594833,
		-0.850587, -0.525798, -0.006181,
		15.734631, 17.203753, 20.110205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.727113, 18.092789, 20.144630>,  <16.330040, 17.571812, 20.114531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.727113, 18.092789, 20.144630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.582458, 17.749296, 20.289848>,  <15.495666, 17.543201, 20.376978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.582458, 17.749296, 20.289848>,  <15.727113, 18.092789, 20.144630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.582458, 17.749296, 20.289848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421678, 0.497946, 0.757784,
		-0.831509, 0.120955, -0.542183,
		-0.361636, -0.858731, 0.363043,
		15.473968, 17.491676, 20.398762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.065139, 18.211939, 20.269115>,  <15.727113, 18.092789, 20.144630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.065139, 18.211939, 20.269115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.161325, 17.907635, 20.510252>,  <15.219037, 17.725052, 20.654934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.161325, 17.907635, 20.510252>,  <15.065139, 18.211939, 20.269115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.161325, 17.907635, 20.510252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364372, 0.504897, 0.782504,
		-0.899672, -0.407824, -0.155790,
		0.240466, -0.760762, 0.602840,
		15.233465, 17.679405, 20.691105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.509726, 18.025831, 20.625418>,  <15.065139, 18.211939, 20.269115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.509726, 18.025831, 20.625418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.799603, 17.891582, 20.866142>,  <14.973530, 17.811033, 21.010576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.799603, 17.891582, 20.866142>,  <14.509726, 18.025831, 20.625418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.799603, 17.891582, 20.866142> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509388, 0.327230, 0.795892,
		-0.464050, -0.883334, 0.066179,
		0.724694, -0.335622, 0.601810,
		15.017012, 17.790895, 21.046686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.164162, 17.806694, 21.239441>,  <14.509726, 18.025831, 20.625418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.164162, 17.806694, 21.239441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.547326, 17.796089, 21.353777>,  <14.777225, 17.789726, 21.422379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.547326, 17.796089, 21.353777>,  <14.164162, 17.806694, 21.239441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.547326, 17.796089, 21.353777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246476, 0.434483, 0.866299,
		-0.147159, -0.900290, 0.409661,
		0.957911, -0.026512, 0.285838,
		14.834700, 17.788136, 21.439528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.124824, 17.574797, 21.865429>,  <14.164162, 17.806694, 21.239441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.124824, 17.574797, 21.865429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.507191, 17.692150, 21.870329>,  <14.736610, 17.762562, 21.873270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.507191, 17.692150, 21.870329>,  <14.124824, 17.574797, 21.865429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.507191, 17.692150, 21.870329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043819, 0.101272, 0.993893,
		0.290351, -0.950616, 0.109664,
		0.955916, 0.293383, 0.012251,
		14.793965, 17.780165, 21.874004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.537883, 17.146238, 22.378778>,  <14.124824, 17.574797, 21.865429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.537883, 17.146238, 22.378778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.719606, 17.499165, 22.329586>,  <14.828641, 17.710920, 22.300070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.719606, 17.499165, 22.329586>,  <14.537883, 17.146238, 22.378778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.719606, 17.499165, 22.329586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016185, 0.146202, 0.989122,
		0.890697, -0.447377, 0.080701,
		0.454310, 0.882314, -0.122981,
		14.855899, 17.763859, 22.292692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.029628, 17.189342, 22.936449>,  <14.537883, 17.146238, 22.378778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.029628, 17.189342, 22.936449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.987518, 17.565617, 22.807434>,  <14.962253, 17.791380, 22.730024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.987518, 17.565617, 22.807434>,  <15.029628, 17.189342, 22.936449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.987518, 17.565617, 22.807434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106163, 0.311855, 0.944180,
		0.988760, 0.133639, 0.067036,
		-0.105274, 0.940684, -0.322538,
		14.955936, 17.847822, 22.710672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.574455, 17.594450, 23.157763>,  <15.029628, 17.189342, 22.936449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.574455, 17.594450, 23.157763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.289653, 17.866116, 23.086451>,  <15.118772, 18.029116, 23.043663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.289653, 17.866116, 23.086451>,  <15.574455, 17.594450, 23.157763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.289653, 17.866116, 23.086451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203960, 0.442987, 0.873019,
		0.671898, 0.585235, -0.453932,
		-0.712007, 0.679163, -0.178278,
		15.076051, 18.069864, 23.032967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.805282, 18.208055, 23.369722>,  <15.574455, 17.594450, 23.157763>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.805282, 18.208055, 23.369722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.417313, 18.295734, 23.327381>,  <15.184531, 18.348341, 23.301977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.417313, 18.295734, 23.327381>,  <15.805282, 18.208055, 23.369722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.417313, 18.295734, 23.327381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059715, 0.635836, 0.769511,
		0.235977, 0.740045, -0.629800,
		-0.969922, 0.219195, -0.105851,
		15.126336, 18.361492, 23.295626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.717331, 18.967340, 23.302231>,  <15.805282, 18.208055, 23.369722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.717331, 18.967340, 23.302231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.408406, 18.783268, 23.477396>,  <15.223052, 18.672825, 23.582495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.408406, 18.783268, 23.477396>,  <15.717331, 18.967340, 23.302231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.408406, 18.783268, 23.477396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062707, 0.630767, 0.773434,
		-0.632142, 0.624792, -0.458291,
		-0.772311, -0.460182, 0.437914,
		15.176713, 18.645214, 23.608770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<10.915589, 16.680185, 23.107973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.296123, 16.706499, 23.228397>,  <11.524443, 16.722286, 23.300652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.296123, 16.706499, 23.228397>,  <10.915589, 16.680185, 23.107973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.296123, 16.706499, 23.228397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297541, 0.058186, -0.952934,
		-0.080205, 0.996136, 0.035781,
		0.951334, 0.065783, 0.301059,
		11.581523, 16.726234, 23.318714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.198149, 17.274658, 22.733704>,  <10.915589, 16.680185, 23.107973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.198149, 17.274658, 22.733704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.505152, 17.039234, 22.835312>,  <11.689354, 16.897980, 22.896276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.505152, 17.039234, 22.835312>,  <11.198149, 17.274658, 22.733704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.505152, 17.039234, 22.835312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217212, -0.134044, -0.966877,
		0.603116, 0.797263, 0.024963,
		0.767509, -0.588561, 0.254019,
		11.735404, 16.862665, 22.911518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.820500, 17.678986, 22.549698>,  <11.198149, 17.274658, 22.733704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.820500, 17.678986, 22.549698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.964190, 17.308731, 22.597290>,  <12.050403, 17.086578, 22.625845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.964190, 17.308731, 22.597290>,  <11.820500, 17.678986, 22.549698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.964190, 17.308731, 22.597290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459948, 0.064664, -0.885588,
		0.812039, 0.372848, 0.448973,
		0.359222, -0.925636, 0.118981,
		12.071957, 17.031040, 22.632984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.596659, 17.683556, 22.240572>,  <11.820500, 17.678986, 22.549698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.596659, 17.683556, 22.240572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.488480, 17.298670, 22.227888>,  <12.423573, 17.067739, 22.220278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.488480, 17.298670, 22.227888>,  <12.596659, 17.683556, 22.240572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.488480, 17.298670, 22.227888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166068, -0.014183, -0.986012,
		0.948304, -0.271930, 0.163629,
		-0.270446, -0.962213, -0.031710,
		12.407346, 17.010006, 22.218376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.102309, 17.199810, 21.931408>,  <12.596659, 17.683556, 22.240572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.102309, 17.199810, 21.931408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.762471, 16.991405, 21.898577>,  <12.558568, 16.866364, 21.878878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.762471, 16.991405, 21.898577>,  <13.102309, 17.199810, 21.931408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.762471, 16.991405, 21.898577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210754, -0.192693, -0.958359,
		0.483498, -0.831516, 0.273516,
		-0.849596, -0.521009, -0.082078,
		12.507592, 16.835102, 21.873953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.289393, 16.751440, 21.400574>,  <13.102309, 17.199810, 21.931408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.289393, 16.751440, 21.400574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.892301, 16.705175, 21.413876>,  <12.654045, 16.677418, 21.421856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.892301, 16.705175, 21.413876>,  <13.289393, 16.751440, 21.400574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.892301, 16.705175, 21.413876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009276, -0.349044, -0.937061,
		0.119989, -0.929942, 0.347580,
		-0.992732, -0.115661, 0.033255,
		12.594481, 16.670477, 21.423853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.093847, 15.938609, 21.269318>,  <13.289393, 16.751440, 21.400574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.093847, 15.938609, 21.269318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.762516, 16.144855, 21.181669>,  <12.563718, 16.268604, 21.129080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.762516, 16.144855, 21.181669>,  <13.093847, 15.938609, 21.269318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.762516, 16.144855, 21.181669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006895, -0.381703, -0.924259,
		-0.560204, -0.767099, 0.312619,
		-0.828326, 0.515618, -0.219121,
		12.514018, 16.299541, 21.115932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.714271, 15.505551, 21.018204>,  <13.093847, 15.938609, 21.269318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.714271, 15.505551, 21.018204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.533878, 15.836643, 20.884649>,  <12.425643, 16.035299, 20.804516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.533878, 15.836643, 20.884649>,  <12.714271, 15.505551, 21.018204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.533878, 15.836643, 20.884649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096199, -0.416987, -0.903807,
		-0.887334, -0.375480, 0.267680,
		-0.450980, 0.827730, -0.333886,
		12.398584, 16.084963, 20.784483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.212826, 15.273880, 20.629900>,  <12.714271, 15.505551, 21.018204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.212826, 15.273880, 20.629900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.221367, 15.652412, 20.500902>,  <12.226491, 15.879532, 20.423504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.221367, 15.652412, 20.500902>,  <12.212826, 15.273880, 20.629900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.221367, 15.652412, 20.500902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191650, -0.312713, -0.930312,
		-0.981231, 0.081670, 0.174687,
		0.021352, 0.946330, -0.322496,
		12.227773, 15.936312, 20.404154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.593808, 15.410762, 20.191601>,  <12.212826, 15.273880, 20.629900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.593808, 15.410762, 20.191601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.882228, 15.670713, 20.095480>,  <12.055280, 15.826684, 20.037807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.882228, 15.670713, 20.095480>,  <11.593808, 15.410762, 20.191601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.882228, 15.670713, 20.095480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160633, -0.180577, -0.970355,
		-0.674005, 0.738275, -0.025814,
		0.721051, 0.649878, -0.240301,
		12.098543, 15.865677, 20.023390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.357648, 15.850734, 19.644415>,  <11.593808, 15.410762, 20.191601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.357648, 15.850734, 19.644415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.752195, 15.907436, 19.610992>,  <11.988924, 15.941458, 19.590939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.752195, 15.907436, 19.610992>,  <11.357648, 15.850734, 19.644415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.752195, 15.907436, 19.610992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097982, 0.098026, -0.990349,
		-0.132198, 0.985036, 0.110580,
		0.986369, 0.141757, -0.083557,
		12.048106, 15.949964, 19.585926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.397938, 16.448233, 19.377312>,  <11.357648, 15.850734, 19.644415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.397938, 16.448233, 19.377312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.739257, 16.257992, 19.291819>,  <11.944049, 16.143847, 19.240522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.739257, 16.257992, 19.291819>,  <11.397938, 16.448233, 19.377312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.739257, 16.257992, 19.291819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108058, 0.239709, -0.964813,
		0.510103, 0.846369, 0.153150,
		0.853299, -0.475604, -0.213733,
		11.995247, 16.115311, 19.227699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.825175, 16.802601, 18.935005>,  <11.397938, 16.448233, 19.377312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.825175, 16.802601, 18.935005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.965109, 16.433298, 18.871487>,  <12.049069, 16.211718, 18.833376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.965109, 16.433298, 18.871487>,  <11.825175, 16.802601, 18.935005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.965109, 16.433298, 18.871487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027761, 0.159218, -0.986853,
		0.936400, 0.349644, 0.030070,
		0.349835, -0.923254, -0.158798,
		12.070059, 16.156322, 18.823847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.352449, 16.898199, 18.388323>,  <11.825175, 16.802601, 18.935005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.352449, 16.898199, 18.388323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.227482, 16.519846, 18.423424>,  <12.152501, 16.292833, 18.444485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.227482, 16.519846, 18.423424>,  <12.352449, 16.898199, 18.388323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.227482, 16.519846, 18.423424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087303, -0.063396, -0.994163,
		0.945924, -0.318256, -0.062773,
		-0.312418, -0.945883, 0.087753,
		12.133757, 16.236080, 18.449749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.034539, 17.213945, 18.173559>,  <12.352449, 16.898199, 18.388323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.034539, 17.213945, 18.173559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.903689, 17.575026, 18.061756>,  <12.825180, 17.791674, 17.994675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.903689, 17.575026, 18.061756>,  <13.034539, 17.213945, 18.173559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.903689, 17.575026, 18.061756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024736, 0.287502, 0.957460,
		0.944658, 0.320122, -0.071720,
		-0.327124, 0.902698, -0.279510,
		12.805552, 17.845835, 17.977903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.217626, 17.644915, 18.808640>,  <13.034539, 17.213945, 18.173559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.217626, 17.644915, 18.808640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.016833, 17.889668, 18.564142>,  <12.896358, 18.036520, 18.417444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.016833, 17.889668, 18.564142>,  <13.217626, 17.644915, 18.808640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.016833, 17.889668, 18.564142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171805, 0.622105, 0.763851,
		0.847643, 0.488452, -0.207160,
		-0.501980, 0.611882, -0.611242,
		12.866240, 18.073233, 18.380770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.550584, 18.385597, 18.910347>,  <13.217626, 17.644915, 18.808640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.550584, 18.385597, 18.910347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.161190, 18.398991, 18.819830>,  <12.927554, 18.407026, 18.765520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.161190, 18.398991, 18.819830>,  <13.550584, 18.385597, 18.910347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.161190, 18.398991, 18.819830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153550, 0.637609, 0.754902,
		0.169560, 0.769632, -0.615561,
		-0.973484, 0.033482, -0.226290,
		12.869144, 18.409035, 18.751944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.378574, 19.082996, 18.872187>,  <13.550584, 18.385597, 18.910347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.378574, 19.082996, 18.872187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.030416, 18.904915, 18.956289>,  <12.821522, 18.798065, 19.006752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.030416, 18.904915, 18.956289>,  <13.378574, 19.082996, 18.872187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.030416, 18.904915, 18.956289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199717, 0.709583, 0.675725,
		-0.450031, 0.546155, -0.706531,
		-0.870394, -0.445204, 0.210258,
		12.769299, 18.771355, 19.019367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.853114, 19.638504, 19.085199>,  <13.378574, 19.082996, 18.872187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.853114, 19.638504, 19.085199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.699270, 19.287729, 19.200476>,  <12.606964, 19.077265, 19.269642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.699270, 19.287729, 19.200476>,  <12.853114, 19.638504, 19.085199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.699270, 19.287729, 19.200476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340676, 0.425017, 0.838630,
		-0.857913, 0.224366, -0.462218,
		-0.384610, -0.876938, 0.288192,
		12.583887, 19.024649, 19.286934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.237039, 19.772377, 19.269426>,  <12.853114, 19.638504, 19.085199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.237039, 19.772377, 19.269426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.317824, 19.433249, 19.465551>,  <12.366296, 19.229771, 19.583227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.317824, 19.433249, 19.465551>,  <12.237039, 19.772377, 19.269426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.317824, 19.433249, 19.465551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492379, 0.344869, 0.799142,
		-0.846624, -0.402819, -0.347799,
		0.201965, -0.847822, 0.490314,
		12.378414, 19.178902, 19.612646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.689320, 19.542732, 19.655386>,  <12.237039, 19.772377, 19.269426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.689320, 19.542732, 19.655386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.994741, 19.357918, 19.835833>,  <12.177995, 19.247030, 19.944101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.994741, 19.357918, 19.835833>,  <11.689320, 19.542732, 19.655386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.994741, 19.357918, 19.835833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379503, 0.244145, 0.892396,
		-0.522456, -0.852594, 0.011074,
		0.763555, -0.462035, 0.451117,
		12.223808, 19.219307, 19.971169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.405439, 19.211813, 20.278637>,  <11.689320, 19.542732, 19.655386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.405439, 19.211813, 20.278637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.791898, 19.225830, 20.380878>,  <12.023773, 19.234240, 20.442223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.791898, 19.225830, 20.380878>,  <11.405439, 19.211813, 20.278637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.791898, 19.225830, 20.380878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257170, 0.209876, 0.943300,
		-0.020590, -0.977100, 0.211783,
		0.966147, 0.035042, 0.255602,
		12.081741, 19.236343, 20.457560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.473415, 18.787186, 20.827497>,  <11.405439, 19.211813, 20.278637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.473415, 18.787186, 20.827497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.777693, 19.046452, 20.841515>,  <11.960259, 19.202011, 20.849924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.777693, 19.046452, 20.841515>,  <11.473415, 18.787186, 20.827497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.777693, 19.046452, 20.841515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137466, 0.108102, 0.984590,
		0.634388, -0.753789, 0.171333,
		0.760694, 0.648164, 0.035042,
		12.005901, 19.240900, 20.852028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.763397, 18.539392, 21.462660>,  <11.473415, 18.787186, 20.827497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.763397, 18.539392, 21.462660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.955894, 18.887444, 21.420172>,  <12.071391, 19.096275, 21.394678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.955894, 18.887444, 21.420172>,  <11.763397, 18.539392, 21.462660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.955894, 18.887444, 21.420172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199616, 0.226772, 0.953272,
		0.853558, -0.437550, 0.282823,
		0.481241, 0.870129, -0.106221,
		12.100266, 19.148481, 21.388306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.286115, 18.594765, 21.951359>,  <11.763397, 18.539392, 21.462660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.286115, 18.594765, 21.951359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.177401, 18.968185, 21.857878>,  <12.112172, 19.192238, 21.801788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.177401, 18.968185, 21.857878>,  <12.286115, 18.594765, 21.951359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.177401, 18.968185, 21.857878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189781, 0.186082, 0.964032,
		0.943459, 0.306363, 0.126595,
		-0.271786, 0.933550, -0.233702,
		12.095864, 19.248251, 21.787767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.757514, 19.089170, 22.266897>,  <12.286115, 18.594765, 21.951359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.757514, 19.089170, 22.266897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.413454, 19.275671, 22.184191>,  <12.207018, 19.387571, 22.134567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.413454, 19.275671, 22.184191>,  <12.757514, 19.089170, 22.266897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.413454, 19.275671, 22.184191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148072, 0.159662, 0.976003,
		0.488076, 0.870125, -0.068294,
		-0.860149, 0.466251, -0.206768,
		12.155409, 19.415546, 22.122160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.797651, 19.770948, 22.492683>,  <12.757514, 19.089170, 22.266897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.797651, 19.770948, 22.492683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.402134, 19.749943, 22.436783>,  <12.164824, 19.737339, 22.403242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.402134, 19.749943, 22.436783>,  <12.797651, 19.770948, 22.492683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.402134, 19.749943, 22.436783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149184, 0.383544, 0.911394,
		0.005739, 0.922028, -0.387080,
		-0.988793, -0.052515, -0.139753,
		12.105496, 19.734188, 22.394857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.519095, 20.339497, 22.768312>,  <12.797651, 19.770948, 22.492683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.519095, 20.339497, 22.768312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.226772, 20.066660, 22.778667>,  <12.051378, 19.902958, 22.784880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.226772, 20.066660, 22.778667>,  <12.519095, 20.339497, 22.768312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.226772, 20.066660, 22.778667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148816, 0.196227, 0.969200,
		-0.666163, 0.704447, -0.244910,
		-0.730808, -0.682092, 0.025886,
		12.007530, 19.862032, 22.786434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.366882, 21.027643, 22.648735>,  <12.519095, 20.339497, 22.768312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.366882, 21.027643, 22.648735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.686092, 21.268490, 22.658613>,  <12.877619, 21.412998, 22.664539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.686092, 21.268490, 22.658613>,  <12.366882, 21.027643, 22.648735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.686092, 21.268490, 22.658613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003000, 0.037007, -0.999311,
		-0.602617, 0.797549, 0.027726,
		0.798025, 0.602118, 0.024694,
		12.925500, 21.449125, 22.666021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.235318, 21.556303, 22.188393>,  <12.366882, 21.027643, 22.648735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.235318, 21.556303, 22.188393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.632111, 21.576801, 22.234606>,  <12.870186, 21.589100, 22.262335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.632111, 21.576801, 22.234606>,  <12.235318, 21.556303, 22.188393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.632111, 21.576801, 22.234606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110061, 0.099146, -0.988967,
		-0.062137, 0.993752, 0.092711,
		0.991981, 0.051248, 0.115534,
		12.929705, 21.592176, 22.269266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.420090, 22.105566, 21.765501>,  <12.235318, 21.556303, 22.188393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.420090, 22.105566, 21.765501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.769030, 21.919291, 21.825020>,  <12.978394, 21.807526, 21.860731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.769030, 21.919291, 21.825020>,  <12.420090, 22.105566, 21.765501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.769030, 21.919291, 21.825020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273043, 0.211623, -0.938436,
		0.405531, 0.859272, 0.311763,
		0.872349, -0.465690, 0.148799,
		13.030734, 21.779583, 21.869659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.035435, 22.630045, 21.557566>,  <12.420090, 22.105566, 21.765501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.035435, 22.630045, 21.557566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.155241, 22.248806, 21.540152>,  <13.227124, 22.020063, 21.529703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.155241, 22.248806, 21.540152>,  <13.035435, 22.630045, 21.557566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.155241, 22.248806, 21.540152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249099, 0.122167, -0.960742,
		0.921000, 0.276912, 0.274006,
		0.299515, -0.953098, -0.043537,
		13.245095, 21.962877, 21.527090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.643099, 22.640827, 21.123501>,  <13.035435, 22.630045, 21.557566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.643099, 22.640827, 21.123501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.503860, 22.265907, 21.116617>,  <13.420318, 22.040955, 21.112486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.503860, 22.265907, 21.116617>,  <13.643099, 22.640827, 21.123501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.503860, 22.265907, 21.116617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231641, -0.068208, -0.970407,
		0.908390, -0.341780, 0.240860,
		-0.348095, -0.937301, -0.017211,
		13.399432, 21.984716, 21.111454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.128737, 22.332165, 20.788925>,  <13.643099, 22.640827, 21.123501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.128737, 22.332165, 20.788925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.841080, 22.054893, 20.769602>,  <13.668486, 21.888531, 20.758007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.841080, 22.054893, 20.769602>,  <14.128737, 22.332165, 20.788925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.841080, 22.054893, 20.769602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223072, -0.164464, -0.960828,
		0.658082, -0.701750, 0.272903,
		-0.719143, -0.693180, -0.048310,
		13.625337, 21.846939, 20.755108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.420711, 21.829195, 20.285965>,  <14.128737, 22.332165, 20.788925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.420711, 21.829195, 20.285965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.024887, 21.773441, 20.300634>,  <13.787393, 21.739990, 20.309437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.024887, 21.773441, 20.300634>,  <14.420711, 21.829195, 20.285965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.024887, 21.773441, 20.300634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007957, -0.201233, -0.979511,
		0.143908, -0.969576, 0.198023,
		-0.989559, -0.139384, 0.036674,
		13.728020, 21.731627, 20.311636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.289269, 21.228453, 19.836462>,  <14.420711, 21.829195, 20.285965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.289269, 21.228453, 19.836462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.952937, 21.439331, 19.885569>,  <13.751138, 21.565857, 19.915031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.952937, 21.439331, 19.885569>,  <14.289269, 21.228453, 19.836462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.952937, 21.439331, 19.885569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171772, -0.044796, -0.984118,
		-0.513322, -0.848563, 0.128223,
		-0.840830, 0.527194, 0.122765,
		13.700688, 21.597488, 19.922398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.785769, 20.876337, 19.591566>,  <14.289269, 21.228453, 19.836462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.785769, 20.876337, 19.591566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.730122, 21.270748, 19.554909>,  <13.696733, 21.507395, 19.532913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.730122, 21.270748, 19.554909>,  <13.785769, 20.876337, 19.591566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.730122, 21.270748, 19.554909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037702, -0.097752, -0.994496,
		-0.989558, -0.134896, 0.050774,
		-0.139117, 0.986026, -0.091645,
		13.688387, 21.566557, 19.527414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.276588, 20.872757, 19.177818>,  <13.785769, 20.876337, 19.591566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.276588, 20.872757, 19.177818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.468660, 21.221466, 19.138964>,  <13.583903, 21.430693, 19.115650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.468660, 21.221466, 19.138964>,  <13.276588, 20.872757, 19.177818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.468660, 21.221466, 19.138964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094803, -0.058514, -0.993775,
		-0.872031, 0.486401, 0.054549,
		0.480181, 0.871774, -0.097139,
		13.612715, 21.482998, 19.109821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.837402, 21.156336, 18.672935>,  <13.276588, 20.872757, 19.177818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.837402, 21.156336, 18.672935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.183315, 21.356838, 18.684906>,  <13.390863, 21.477139, 18.692089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.183315, 21.356838, 18.684906>,  <12.837402, 21.156336, 18.672935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.183315, 21.356838, 18.684906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157377, -0.213949, -0.964084,
		-0.476848, 0.838433, -0.263905,
		0.864782, 0.501254, 0.029929,
		13.442750, 21.507214, 18.693884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.912314, 21.447578, 18.027115>,  <12.837402, 21.156336, 18.672935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.912314, 21.447578, 18.027115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.280195, 21.424479, 18.182453>,  <13.500924, 21.410618, 18.275656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.280195, 21.424479, 18.182453>,  <12.912314, 21.447578, 18.027115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.280195, 21.424479, 18.182453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355522, -0.297190, -0.886161,
		0.166590, 0.953070, -0.252794,
		0.919702, -0.057752, 0.388346,
		13.556106, 21.407152, 18.298958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.313730, 21.796518, 17.558168>,  <12.912314, 21.447578, 18.027115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.313730, 21.796518, 17.558168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.563548, 21.546450, 17.745403>,  <13.713439, 21.396408, 17.857744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.563548, 21.546450, 17.745403>,  <13.313730, 21.796518, 17.558168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.563548, 21.546450, 17.745403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294804, -0.366294, -0.882564,
		0.723211, 0.689194, -0.044464,
		0.624545, -0.625172, 0.468085,
		13.750912, 21.358898, 17.885828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.904128, 21.856733, 17.114666>,  <13.313730, 21.796518, 17.558168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.904128, 21.856733, 17.114666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.000125, 21.541172, 17.340954>,  <14.057723, 21.351835, 17.476727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.000125, 21.541172, 17.340954>,  <13.904128, 21.856733, 17.114666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.000125, 21.541172, 17.340954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531173, -0.381065, -0.756733,
		0.812563, 0.482105, 0.327591,
		0.239991, -0.788901, 0.565720,
		14.072123, 21.304502, 17.510670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<3.750907, 19.563091, 8.236624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.080586, 19.518742, 8.458760>,  <4.278394, 19.492132, 8.592042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.080586, 19.518742, 8.458760>,  <3.750907, 19.563091, 8.236624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.080586, 19.518742, 8.458760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506034, -0.296029, -0.810121,
		0.254219, 0.948722, -0.187881,
		0.824198, -0.110874, 0.555342,
		4.327846, 19.485479, 8.625362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.400415, 19.905272, 7.910056>,  <3.750907, 19.563091, 8.236624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.400415, 19.905272, 7.910056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.464550, 19.572575, 8.122659>,  <4.503031, 19.372957, 8.250220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.464550, 19.572575, 8.122659>,  <4.400415, 19.905272, 7.910056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.464550, 19.572575, 8.122659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373328, -0.447374, -0.812701,
		0.913738, 0.328733, 0.238781,
		0.160337, -0.831740, 0.531508,
		4.512651, 19.323053, 8.282111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.997688, 19.720116, 7.577633>,  <4.400415, 19.905272, 7.910056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.997688, 19.720116, 7.577633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.885343, 19.418484, 7.815113>,  <4.817935, 19.237505, 7.957600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.885343, 19.418484, 7.815113>,  <4.997688, 19.720116, 7.577633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.885343, 19.418484, 7.815113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417226, -0.653021, -0.632049,
		0.864314, 0.070187, 0.498031,
		-0.280863, -0.754081, 0.593699,
		4.801084, 19.192259, 7.993222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.551862, 19.190987, 7.494611>,  <4.997688, 19.720116, 7.577633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.551862, 19.190987, 7.494611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.187840, 19.066061, 7.603610>,  <4.969426, 18.991106, 7.669009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.187840, 19.066061, 7.603610>,  <5.551862, 19.190987, 7.494611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.187840, 19.066061, 7.603610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039303, -0.719501, -0.693378,
		0.412615, -0.620304, 0.667062,
		-0.910057, -0.312316, 0.272497,
		4.914822, 18.972366, 7.685359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.535778, 18.906397, 6.798049>,  <5.551862, 19.190987, 7.494611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.535778, 18.906397, 6.798049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.147905, 19.003578, 6.808548>,  <4.915181, 19.061886, 6.814847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.147905, 19.003578, 6.808548>,  <5.535778, 18.906397, 6.798049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.147905, 19.003578, 6.808548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098328, 0.486252, -0.868268,
		-0.223710, -0.839365, -0.495400,
		-0.969683, 0.242952, 0.026247,
		4.857000, 19.076464, 6.816422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.995216, 19.076920, 6.099168>,  <5.535778, 18.906397, 6.798049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.995216, 19.076920, 6.099168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.927182, 19.409145, 6.311294>,  <5.886361, 19.608480, 6.438570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.927182, 19.409145, 6.311294>,  <5.995216, 19.076920, 6.099168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.927182, 19.409145, 6.311294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958559, 0.014633, 0.284519,
		0.228551, 0.556731, -0.798633,
		-0.170087, 0.830564, 0.530315,
		5.876156, 19.658314, 6.470388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.454960, 19.721815, 5.944073>,  <5.995216, 19.076920, 6.099168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.454960, 19.721815, 5.944073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.338187, 19.703201, 6.326196>,  <6.268124, 19.692032, 6.555469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.338187, 19.703201, 6.326196>,  <6.454960, 19.721815, 5.944073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.338187, 19.703201, 6.326196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956208, 0.007754, 0.292585,
		-0.021023, 0.998887, 0.042235,
		-0.291932, -0.046536, 0.955306,
		6.250607, 19.689240, 6.612788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.775489, 20.246321, 6.397264>,  <6.454960, 19.721815, 5.944073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.775489, 20.246321, 6.397264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.671165, 19.931139, 6.620372>,  <6.608572, 19.742029, 6.754237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.671165, 19.931139, 6.620372>,  <6.775489, 20.246321, 6.397264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.671165, 19.931139, 6.620372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844599, 0.093599, 0.527153,
		-0.467580, 0.608579, 0.641094,
		-0.260808, -0.787954, 0.557770,
		6.592923, 19.694754, 6.787703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.620409, 20.442862, 7.124619>,  <6.775489, 20.246321, 6.397264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.620409, 20.442862, 7.124619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.741506, 20.063683, 7.085145>,  <6.814163, 19.836174, 7.061460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.741506, 20.063683, 7.085145>,  <6.620409, 20.442862, 7.124619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.741506, 20.063683, 7.085145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779977, 0.186920, 0.597242,
		-0.547708, -0.257784, 0.795967,
		0.302741, -0.947950, -0.098688,
		6.832328, 19.779297, 7.055538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.132579, 20.671122, 7.767921>,  <6.620409, 20.442862, 7.124619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.132579, 20.671122, 7.767921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.282971, 21.029341, 7.863111>,  <6.373206, 21.244272, 7.920226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.282971, 21.029341, 7.863111>,  <6.132579, 20.671122, 7.767921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.282971, 21.029341, 7.863111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404806, -0.389756, 0.827177,
		0.833530, -0.214667, -0.509064,
		0.375979, 0.895549, 0.237975,
		6.395764, 21.298006, 7.934504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.838676, 20.735851, 7.746789>,  <6.132579, 20.671122, 7.767921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.838676, 20.735851, 7.746789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.670728, 20.954086, 8.036904>,  <6.569959, 21.085028, 8.210974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.670728, 20.954086, 8.036904>,  <6.838676, 20.735851, 7.746789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.670728, 20.954086, 8.036904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279244, -0.682718, 0.675218,
		0.863557, 0.486037, 0.134302,
		-0.419871, 0.545586, 0.725289,
		6.544766, 21.117762, 8.254491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.336611, 20.808086, 8.318048>,  <6.838676, 20.735851, 7.746789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.336611, 20.808086, 8.318048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.989549, 20.888815, 8.499791>,  <6.781312, 20.937252, 8.608837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.989549, 20.888815, 8.499791>,  <7.336611, 20.808086, 8.318048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.989549, 20.888815, 8.499791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224681, -0.656073, 0.720476,
		0.443501, 0.727211, 0.523900,
		-0.867655, 0.201822, 0.454359,
		6.729252, 20.949362, 8.636099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.369656, 20.972969, 9.109334>,  <7.336611, 20.808086, 8.318048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.369656, 20.972969, 9.109334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.995742, 20.845476, 9.046611>,  <6.771394, 20.768980, 9.008977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.995742, 20.845476, 9.046611>,  <7.369656, 20.972969, 9.109334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.995742, 20.845476, 9.046611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144554, -0.744575, 0.651699,
		-0.324472, 0.586531, 0.742091,
		-0.934785, -0.318730, -0.156808,
		6.715307, 20.749857, 8.999568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.917850, 21.101740, 9.678233>,  <7.369656, 20.972969, 9.109334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.917850, 21.101740, 9.678233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.789979, 20.792545, 9.459037>,  <6.713256, 20.607029, 9.327518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.789979, 20.792545, 9.459037>,  <6.917850, 21.101740, 9.678233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.789979, 20.792545, 9.459037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068056, -0.595577, 0.800410,
		-0.945079, 0.218579, 0.242999,
		-0.319677, -0.772989, -0.547992,
		6.694076, 20.560648, 9.294640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.441238, 20.854609, 10.099259>,  <6.917850, 21.101740, 9.678233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.441238, 20.854609, 10.099259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.492742, 20.554638, 9.839712>,  <6.523644, 20.374655, 9.683984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.492742, 20.554638, 9.839712>,  <6.441238, 20.854609, 10.099259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.492742, 20.554638, 9.839712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035000, -0.657345, 0.752777,
		-0.991058, -0.074217, -0.110887,
		0.128760, -0.749927, -0.648869,
		6.531370, 20.329660, 9.645051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.950502, 20.335356, 10.309358>,  <6.441238, 20.854609, 10.099259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.950502, 20.335356, 10.309358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.183097, 20.131071, 10.056046>,  <6.322654, 20.008499, 9.904058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.183097, 20.131071, 10.056046>,  <5.950502, 20.335356, 10.309358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.183097, 20.131071, 10.056046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031095, -0.791795, 0.609995,
		-0.812965, -0.335009, -0.476294,
		0.581481, -0.510715, -0.633285,
		6.357543, 19.977858, 9.866061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.643140, 19.718731, 10.146019>,  <5.950502, 20.335356, 10.309358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.643140, 19.718731, 10.146019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.026062, 19.624733, 10.078675>,  <6.255815, 19.568335, 10.038269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.026062, 19.624733, 10.078675>,  <5.643140, 19.718731, 10.146019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.026062, 19.624733, 10.078675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090760, -0.797267, 0.596764,
		-0.274464, -0.556005, -0.784556,
		0.957305, -0.234996, -0.168358,
		6.313253, 19.554234, 10.028168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.606636, 19.035986, 9.966410>,  <5.643140, 19.718731, 10.146019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.606636, 19.035986, 9.966410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.990364, 19.087187, 10.067065>,  <6.220600, 19.117907, 10.127459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.990364, 19.087187, 10.067065>,  <5.606636, 19.035986, 9.966410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.990364, 19.087187, 10.067065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023134, -0.852678, 0.521924,
		0.281375, -0.506513, -0.815029,
		0.959319, 0.128002, 0.251640,
		6.278159, 19.125587, 10.142557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.898880, 18.473661, 9.880492>,  <5.606636, 19.035986, 9.966410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.898880, 18.473661, 9.880492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.192962, 18.620565, 10.108383>,  <6.369412, 18.708708, 10.245118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.192962, 18.620565, 10.108383>,  <5.898880, 18.473661, 9.880492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.192962, 18.620565, 10.108383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126407, -0.900042, 0.417068,
		0.665952, -0.234614, -0.708141,
		0.735207, 0.367262, 0.569728,
		6.413524, 18.730743, 10.279302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.377877, 17.905573, 9.977009>,  <5.898880, 18.473661, 9.880492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.377877, 17.905573, 9.977009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.482344, 18.162333, 10.265387>,  <6.545024, 18.316387, 10.438414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.482344, 18.162333, 10.265387>,  <6.377877, 17.905573, 9.977009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.482344, 18.162333, 10.265387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263962, -0.765889, 0.586292,
		0.928502, 0.037182, -0.369461,
		0.261167, 0.641897, 0.720944,
		6.560694, 18.354902, 10.481669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.925161, 17.617685, 10.219118>,  <6.377877, 17.905573, 9.977009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.925161, 17.617685, 10.219118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.806617, 17.869892, 10.506065>,  <6.735491, 18.021217, 10.678234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.806617, 17.869892, 10.506065>,  <6.925161, 17.617685, 10.219118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.806617, 17.869892, 10.506065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046553, -0.759755, 0.648541,
		0.953941, 0.158806, 0.254513,
		-0.296359, 0.630519, 0.717368,
		6.717710, 18.059048, 10.721276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.227524, 17.399988, 10.879191>,  <6.925161, 17.617685, 10.219118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.227524, 17.399988, 10.879191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.919782, 17.626410, 10.997630>,  <6.735136, 17.762262, 11.068693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.919782, 17.626410, 10.997630>,  <7.227524, 17.399988, 10.879191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.919782, 17.626410, 10.997630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101506, -0.565940, 0.818174,
		0.630704, 0.599411, 0.492867,
		-0.769356, 0.566054, 0.296097,
		6.688975, 17.796227, 11.086459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.501937, 17.578932, 11.568109>,  <7.227524, 17.399988, 10.879191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.501937, 17.578932, 11.568109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.109209, 17.651737, 11.546576>,  <6.873571, 17.695421, 11.533657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.109209, 17.651737, 11.546576>,  <7.501937, 17.578932, 11.568109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.109209, 17.651737, 11.546576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158562, -0.630642, 0.759703,
		0.104328, 0.754428, 0.648039,
		-0.981822, 0.182013, -0.053830,
		6.814662, 17.706341, 11.530428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.142274, 17.672150, 12.277728>,  <7.501937, 17.578932, 11.568109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.142274, 17.672150, 12.277728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.858438, 17.558008, 12.020030>,  <6.688136, 17.489523, 11.865411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.858438, 17.558008, 12.020030>,  <7.142274, 17.672150, 12.277728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.858438, 17.558008, 12.020030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260994, -0.742846, 0.616491,
		-0.654493, 0.605602, 0.452642,
		-0.709592, -0.285353, -0.644246,
		6.645560, 17.472403, 11.826756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.660870, 17.391420, 12.750258>,  <7.142274, 17.672150, 12.277728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.660870, 17.391420, 12.750258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.516609, 17.269928, 12.397514>,  <6.430053, 17.197033, 12.185867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.516609, 17.269928, 12.397514>,  <6.660870, 17.391420, 12.750258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.516609, 17.269928, 12.397514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403210, -0.801805, 0.441056,
		-0.841042, 0.514643, 0.166706,
		-0.360653, -0.303729, -0.881861,
		6.408413, 17.178808, 12.132957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.969828, 17.376495, 12.794171>,  <6.660870, 17.391420, 12.750258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.969828, 17.376495, 12.794171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.098093, 17.117834, 12.517328>,  <6.175052, 16.962637, 12.351222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.098093, 17.117834, 12.517328>,  <5.969828, 17.376495, 12.794171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.098093, 17.117834, 12.517328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289797, -0.762633, 0.578281,
		-0.901772, 0.015138, -0.431947,
		0.320663, -0.646655, -0.692108,
		6.194292, 16.923838, 12.309696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.431709, 16.845968, 12.752115>,  <5.969828, 17.376495, 12.794171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.431709, 16.845968, 12.752115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.745933, 16.650942, 12.599709>,  <5.934467, 16.533926, 12.508265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.745933, 16.650942, 12.599709>,  <5.431709, 16.845968, 12.752115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.745933, 16.650942, 12.599709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369490, -0.863527, 0.343218,
		-0.496361, -0.128836, -0.858503,
		0.785560, -0.487568, -0.381017,
		5.981601, 16.504671, 12.485403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.152267, 16.125324, 12.610749>,  <5.431709, 16.845968, 12.752115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.152267, 16.125324, 12.610749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.551767, 16.105461, 12.612998>,  <5.791468, 16.093544, 12.614347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.551767, 16.105461, 12.612998>,  <5.152267, 16.125324, 12.610749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.551767, 16.105461, 12.612998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048703, -0.941914, 0.332304,
		-0.011206, -0.332163, -0.943156,
		0.998751, -0.049658, 0.005623,
		5.851393, 16.090563, 12.614685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.313323, 15.551290, 12.262341>,  <5.152267, 16.125324, 12.610749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.313323, 15.551290, 12.262341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.623150, 15.625533, 12.504197>,  <5.809047, 15.670079, 12.649311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.623150, 15.625533, 12.504197>,  <5.313323, 15.551290, 12.262341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.623150, 15.625533, 12.504197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064075, -0.974081, 0.216935,
		0.629235, -0.129289, -0.766386,
		0.774569, 0.185609, 0.604642,
		5.855521, 15.681216, 12.685590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.624062, 14.961768, 12.136473>,  <5.313323, 15.551290, 12.262341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.624062, 14.961768, 12.136473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.825516, 15.110708, 12.448295>,  <5.946388, 15.200072, 12.635388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.825516, 15.110708, 12.448295>,  <5.624062, 14.961768, 12.136473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.825516, 15.110708, 12.448295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023051, -0.907822, 0.418722,
		0.863609, -0.192914, -0.465794,
		0.503635, 0.372349, 0.779556,
		5.976606, 15.222413, 12.682161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.285332, 14.518918, 12.237757>,  <5.624062, 14.961768, 12.136473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.285332, 14.518918, 12.237757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.156826, 14.692367, 12.574509>,  <6.079722, 14.796436, 12.776560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.156826, 14.692367, 12.574509>,  <6.285332, 14.518918, 12.237757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.156826, 14.692367, 12.574509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049130, -0.880177, 0.472096,
		0.945714, 0.193029, 0.261466,
		-0.321265, 0.433622, 0.841879,
		6.060446, 14.822453, 12.827072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.629492, 14.090553, 11.760729>,  <6.285332, 14.518918, 12.237757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.629492, 14.090553, 11.760729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.921279, 13.822558, 11.705603>,  <7.096352, 13.661761, 11.672527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.921279, 13.822558, 11.705603>,  <6.629492, 14.090553, 11.760729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.921279, 13.822558, 11.705603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644578, 0.740736, -0.189286,
		0.228903, 0.049246, 0.972203,
		0.729468, -0.669988, -0.137814,
		7.140120, 13.621562, 11.664258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.147912, 14.313443, 12.126964>,  <6.629492, 14.090553, 11.760729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.147912, 14.313443, 12.126964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.316238, 14.062542, 11.864828>,  <7.417233, 13.912002, 11.707547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.316238, 14.062542, 11.864828>,  <7.147912, 14.313443, 12.126964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.316238, 14.062542, 11.864828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548641, 0.751299, -0.366801,
		0.722432, -0.205190, 0.660295,
		0.420815, -0.627253, -0.655338,
		7.442482, 13.874366, 11.668227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.857255, 14.321667, 12.204538>,  <7.147912, 14.313443, 12.126964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.857255, 14.321667, 12.204538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.793987, 14.196221, 11.830025>,  <7.756026, 14.120955, 11.605316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.793987, 14.196221, 11.830025>,  <7.857255, 14.321667, 12.204538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.793987, 14.196221, 11.830025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454200, 0.818840, -0.351003,
		0.876747, -0.480779, 0.012927,
		-0.158170, -0.313613, -0.936285,
		7.746536, 14.102138, 11.549139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.458862, 14.648979, 11.791571>,  <7.857255, 14.321667, 12.204538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.458862, 14.648979, 11.791571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.211693, 14.548933, 11.493413>,  <8.063391, 14.488905, 11.314519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.211693, 14.548933, 11.493413>,  <8.458862, 14.648979, 11.791571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.211693, 14.548933, 11.493413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428031, 0.688233, -0.585768,
		0.659515, -0.681012, -0.318219,
		-0.617924, -0.250115, -0.745394,
		8.026316, 14.473899, 11.269794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.903909, 14.595553, 11.219711>,  <8.458862, 14.648979, 11.791571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.903909, 14.595553, 11.219711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.548635, 14.635732, 11.040363>,  <8.335470, 14.659839, 10.932755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.548635, 14.635732, 11.040363>,  <8.903909, 14.595553, 11.219711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.548635, 14.635732, 11.040363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431317, 0.518657, -0.738214,
		0.158400, -0.849062, -0.503988,
		-0.888186, 0.100445, -0.448370,
		8.282179, 14.665865, 10.905852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.025454, 14.508567, 10.489752>,  <8.903909, 14.595553, 11.219711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.025454, 14.508567, 10.489752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.679744, 14.708790, 10.509635>,  <8.472318, 14.828924, 10.521565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.679744, 14.708790, 10.509635>,  <9.025454, 14.508567, 10.489752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.679744, 14.708790, 10.509635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231316, 0.483247, -0.844373,
		-0.446679, -0.718271, -0.533445,
		-0.864275, 0.500558, 0.049709,
		8.420462, 14.858957, 10.524548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.696095, 14.535213, 9.852895>,  <9.025454, 14.508567, 10.489752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.696095, 14.535213, 9.852895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.557865, 14.853847, 10.051300>,  <8.474927, 15.045027, 10.170343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.557865, 14.853847, 10.051300>,  <8.696095, 14.535213, 9.852895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.557865, 14.853847, 10.051300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078351, 0.551226, -0.830669,
		-0.935114, -0.248196, -0.252904,
		-0.345576, 0.796586, 0.496012,
		8.454192, 15.092822, 10.200104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.269592, 14.807579, 9.372993>,  <8.696095, 14.535213, 9.852895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.269592, 14.807579, 9.372993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.315894, 15.105024, 9.636398>,  <8.343676, 15.283491, 9.794441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.315894, 15.105024, 9.636398>,  <8.269592, 14.807579, 9.372993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.315894, 15.105024, 9.636398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088335, 0.668051, -0.738854,
		-0.989342, 0.027357, 0.143018,
		0.115756, 0.743613, 0.658514,
		8.350621, 15.328108, 9.833953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.005227, 15.380155, 9.053310>,  <8.269592, 14.807579, 9.372993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.005227, 15.380155, 9.053310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.181575, 15.591859, 9.343281>,  <8.287383, 15.718882, 9.517263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.181575, 15.591859, 9.343281>,  <8.005227, 15.380155, 9.053310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.181575, 15.591859, 9.343281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023418, 0.800596, -0.598746,
		-0.897266, 0.280945, 0.340564,
		0.440869, 0.529260, 0.724927,
		8.313835, 15.750637, 9.560759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.576789, 16.026714, 9.190961>,  <8.005227, 15.380155, 9.053310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.576789, 16.026714, 9.190961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.951413, 16.091181, 9.315464>,  <8.176188, 16.129862, 9.390165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.951413, 16.091181, 9.315464>,  <7.576789, 16.026714, 9.190961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.951413, 16.091181, 9.315464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041129, 0.831351, -0.554223,
		-0.348086, 0.531865, 0.771982,
		0.936560, 0.161167, 0.311257,
		8.232381, 16.139530, 9.408841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.687946, 16.706367, 9.359201>,  <7.576789, 16.026714, 9.190961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.687946, 16.706367, 9.359201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.069161, 16.600300, 9.300681>,  <8.297891, 16.536659, 9.265569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.069161, 16.600300, 9.300681>,  <7.687946, 16.706367, 9.359201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.069161, 16.600300, 9.300681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063944, 0.648381, -0.758626,
		0.296021, 0.713645, 0.634888,
		0.953039, -0.265167, -0.146301,
		8.355073, 16.520750, 9.256791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.954891, 17.326460, 9.291265>,  <7.687946, 16.706367, 9.359201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.954891, 17.326460, 9.291265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.175714, 17.050024, 9.104665>,  <8.308208, 16.884163, 8.992704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.175714, 17.050024, 9.104665>,  <7.954891, 17.326460, 9.291265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.175714, 17.050024, 9.104665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058398, 0.590158, -0.805172,
		0.831758, 0.417260, 0.366160,
		0.552059, -0.691091, -0.466502,
		8.341332, 16.842697, 8.964714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.617549, 17.616642, 9.123098>,  <7.954891, 17.326460, 9.291265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.617549, 17.616642, 9.123098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.541656, 17.328520, 8.856216>,  <8.496119, 17.155647, 8.696088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.541656, 17.328520, 8.856216>,  <8.617549, 17.616642, 9.123098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.541656, 17.328520, 8.856216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183343, 0.641602, -0.744803,
		0.964565, -0.263641, 0.010330,
		-0.189733, -0.720306, -0.667204,
		8.484735, 17.112429, 8.656055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.071589, 17.807394, 8.665539>,  <8.617549, 17.616642, 9.123098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.071589, 17.807394, 8.665539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.831908, 17.560549, 8.461527>,  <8.688100, 17.412441, 8.339120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.831908, 17.560549, 8.461527>,  <9.071589, 17.807394, 8.665539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.831908, 17.560549, 8.461527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278326, 0.757894, -0.590027,
		0.750651, -0.211602, -0.625898,
		-0.599215, -0.617108, -0.510019,
		8.652147, 17.375416, 8.308517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.178137, 17.927637, 7.940176>,  <9.071589, 17.807394, 8.665539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.178137, 17.927637, 7.940176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.830854, 17.736837, 7.885491>,  <8.622485, 17.622358, 7.852681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.830854, 17.736837, 7.885491>,  <9.178137, 17.927637, 7.940176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.830854, 17.736837, 7.885491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219400, 0.616145, -0.756458,
		0.445062, -0.626768, -0.639595,
		-0.868207, -0.476998, -0.136710,
		8.570393, 17.593739, 7.844478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.141404, 17.939919, 7.220899>,  <9.178137, 17.927637, 7.940176>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.141404, 17.939919, 7.220899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.770121, 17.867609, 7.350974>,  <8.547350, 17.824223, 7.429018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.770121, 17.867609, 7.350974>,  <9.141404, 17.939919, 7.220899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.770121, 17.867609, 7.350974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367612, 0.580314, -0.726703,
		-0.057341, -0.794076, -0.605108,
		-0.928210, -0.180774, 0.325188,
		8.491657, 17.813377, 7.448530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.763998, 17.858719, 6.614214>,  <9.141404, 17.939919, 7.220899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.763998, 17.858719, 6.614214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.475466, 17.945469, 6.877318>,  <8.302346, 17.997519, 7.035181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.475466, 17.945469, 6.877318>,  <8.763998, 17.858719, 6.614214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.475466, 17.945469, 6.877318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425452, 0.610643, -0.667911,
		-0.546511, -0.761629, -0.348205,
		-0.721330, 0.216876, 0.657760,
		8.259067, 18.010532, 7.074646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.140245, 17.827244, 6.272998>,  <8.763998, 17.858719, 6.614214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.140245, 17.827244, 6.272998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.053512, 18.051386, 6.592743>,  <8.001472, 18.185871, 6.784591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.053512, 18.051386, 6.592743>,  <8.140245, 17.827244, 6.272998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.053512, 18.051386, 6.592743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543419, 0.610960, -0.575694,
		-0.810974, -0.559220, 0.172031,
		-0.216835, 0.560357, 0.799363,
		7.988461, 18.219494, 6.832552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.363938, 17.889256, 6.278408>,  <8.140245, 17.827244, 6.272998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.363938, 17.889256, 6.278408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.517414, 18.197105, 6.482549>,  <7.609500, 18.381815, 6.605033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.517414, 18.197105, 6.482549>,  <7.363938, 17.889256, 6.278408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.517414, 18.197105, 6.482549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479372, 0.638352, -0.602253,
		-0.789293, -0.013570, 0.613867,
		0.383691, 0.769625, 0.510352,
		7.632521, 18.427994, 6.635654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.785797, 18.336239, 6.440621>,  <7.363938, 17.889256, 6.278408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.785797, 18.336239, 6.440621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.122096, 18.552643, 6.449093>,  <7.323875, 18.682486, 6.454176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.122096, 18.552643, 6.449093>,  <6.785797, 18.336239, 6.440621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.122096, 18.552643, 6.449093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352537, 0.576704, -0.736974,
		-0.410926, 0.612143, 0.675589,
		0.840748, 0.541012, 0.021180,
		7.374321, 18.714947, 6.455447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.588734, 18.960054, 6.555755>,  <6.785797, 18.336239, 6.440621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.588734, 18.960054, 6.555755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.954265, 19.024069, 6.406458>,  <7.173584, 19.062477, 6.316880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.954265, 19.024069, 6.406458>,  <6.588734, 18.960054, 6.555755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.954265, 19.024069, 6.406458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389581, 0.604959, -0.694443,
		0.114661, 0.780009, 0.615174,
		0.913827, 0.160035, -0.373242,
		7.228413, 19.072079, 6.294486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<14.667895, 19.705627, 23.545685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.642828, 19.352520, 23.731930>,  <14.627788, 19.140656, 23.843678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.642828, 19.352520, 23.731930>,  <14.667895, 19.705627, 23.545685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.642828, 19.352520, 23.731930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707053, 0.368530, 0.603541,
		-0.704378, -0.291391, -0.647258,
		-0.062668, -0.882767, 0.465613,
		14.624027, 19.087690, 23.871614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.058299, 19.790503, 23.910093>,  <14.667895, 19.705627, 23.545685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.058299, 19.790503, 23.910093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.255131, 19.483162, 24.073797>,  <14.373230, 19.298758, 24.172020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.255131, 19.483162, 24.073797>,  <14.058299, 19.790503, 23.910093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.255131, 19.483162, 24.073797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281379, 0.304503, 0.910002,
		-0.823823, -0.562950, -0.066358,
		0.492080, -0.768352, 0.409259,
		14.402755, 19.252657, 24.196575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.544138, 19.589939, 24.510828>,  <14.058299, 19.790503, 23.910093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.544138, 19.589939, 24.510828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.888371, 19.401678, 24.588678>,  <14.094912, 19.288721, 24.635387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.888371, 19.401678, 24.588678>,  <13.544138, 19.589939, 24.510828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.888371, 19.401678, 24.588678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048916, 0.303988, 0.951419,
		-0.506953, -0.828297, 0.238584,
		0.860584, -0.470654, 0.194625,
		14.146547, 19.260483, 24.647066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.359232, 19.108158, 25.027689>,  <13.544138, 19.589939, 24.510828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.359232, 19.108158, 25.027689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.751452, 19.186474, 25.033112>,  <13.986785, 19.233463, 25.036366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.751452, 19.186474, 25.033112>,  <13.359232, 19.108158, 25.027689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.751452, 19.186474, 25.033112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068331, 0.275840, 0.958772,
		0.183979, -0.941052, 0.283854,
		0.980552, 0.195790, 0.013554,
		14.045618, 19.245211, 25.037178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.713607, 18.735762, 25.623947>,  <13.359232, 19.108158, 25.027689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.713607, 18.735762, 25.623947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.918176, 19.059971, 25.509752>,  <14.040916, 19.254496, 25.441235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.918176, 19.059971, 25.509752>,  <13.713607, 18.735762, 25.623947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.918176, 19.059971, 25.509752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000267, 0.332071, 0.943255,
		0.859330, -0.482477, 0.169612,
		0.511421, 0.810522, -0.285487,
		14.071602, 19.303127, 25.424107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.147434, 18.813486, 26.210615>,  <13.713607, 18.735762, 25.623947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.147434, 18.813486, 26.210615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.166080, 19.158594, 26.009237>,  <14.177267, 19.365660, 25.888411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.166080, 19.158594, 26.009237>,  <14.147434, 18.813486, 26.210615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.166080, 19.158594, 26.009237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095051, 0.505536, 0.857554,
		0.994380, 0.007880, 0.105572,
		0.046613, 0.862769, -0.503444,
		14.180063, 19.417425, 25.858204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.745275, 19.310091, 26.478947>,  <14.147434, 18.813486, 26.210615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.745275, 19.310091, 26.478947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.509233, 19.579535, 26.300947>,  <14.367608, 19.741201, 26.194147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.509233, 19.579535, 26.300947>,  <14.745275, 19.310091, 26.478947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.509233, 19.579535, 26.300947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048564, 0.579823, 0.813294,
		0.805863, 0.458318, -0.374871,
		-0.590106, 0.673609, -0.445000,
		14.332202, 19.781618, 26.167448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.011053, 19.860165, 26.677771>,  <14.745275, 19.310091, 26.478947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.011053, 19.860165, 26.677771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.651570, 19.981237, 26.550829>,  <14.435881, 20.053881, 26.474665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.651570, 19.981237, 26.550829>,  <15.011053, 19.860165, 26.677771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.651570, 19.981237, 26.550829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002182, 0.720542, 0.693407,
		0.438547, 0.623862, -0.646895,
		-0.898706, 0.302680, -0.317353,
		14.381959, 20.072041, 26.455624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.999876, 20.693192, 26.741135>,  <15.011053, 19.860165, 26.677771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.999876, 20.693192, 26.741135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.621866, 20.562542, 26.747375>,  <14.395061, 20.484152, 26.751120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.621866, 20.562542, 26.747375>,  <14.999876, 20.693192, 26.741135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.621866, 20.562542, 26.747375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179795, 0.558871, 0.809529,
		-0.273131, 0.762221, -0.586872,
		-0.945026, -0.326624, 0.015601,
		14.338359, 20.464554, 26.752056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.655185, 21.116602, 27.160364>,  <14.999876, 20.693192, 26.741135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.655185, 21.116602, 27.160364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.341474, 20.870617, 27.127558>,  <14.153247, 20.723026, 27.107874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.341474, 20.870617, 27.127558>,  <14.655185, 21.116602, 27.160364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.341474, 20.870617, 27.127558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331563, 0.303724, 0.893206,
		-0.524379, 0.727716, -0.442104,
		-0.784278, -0.614964, -0.082017,
		14.106190, 20.686129, 27.102953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.304362, 21.463453, 27.550360>,  <14.655185, 21.116602, 27.160364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.304362, 21.463453, 27.550360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.115376, 21.111904, 27.523945>,  <14.001985, 20.900974, 27.508097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.115376, 21.111904, 27.523945>,  <14.304362, 21.463453, 27.550360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.115376, 21.111904, 27.523945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301470, 0.090748, 0.949147,
		-0.828186, 0.468347, -0.307829,
		-0.472465, -0.878872, -0.066037,
		13.973637, 20.848242, 27.504133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.648839, 21.539879, 27.831890>,  <14.304362, 21.463453, 27.550360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.648839, 21.539879, 27.831890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.716881, 21.147930, 27.873684>,  <13.757706, 20.912762, 27.898760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.716881, 21.147930, 27.873684>,  <13.648839, 21.539879, 27.831890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.716881, 21.147930, 27.873684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146893, 0.079632, 0.985942,
		-0.974416, -0.183060, -0.130390,
		0.170103, -0.979871, 0.104485,
		13.767912, 20.853970, 27.905029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.817348, 21.473265, 28.640574>,  <13.648839, 21.539879, 27.831890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.817348, 21.473265, 28.640574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.590533, 21.550194, 28.960943>,  <13.454444, 21.596352, 29.153164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.590533, 21.550194, 28.960943>,  <13.817348, 21.473265, 28.640574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.590533, 21.550194, 28.960943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017430, 0.969340, -0.245105,
		-0.823507, -0.152944, -0.546301,
		-0.567039, 0.192324, 0.800923,
		13.420422, 21.607891, 29.201220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.213389, 21.923763, 28.384642>,  <13.817348, 21.473265, 28.640574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.213389, 21.923763, 28.384642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.332908, 21.951019, 28.765394>,  <13.404618, 21.967373, 28.993845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.332908, 21.951019, 28.765394>,  <13.213389, 21.923763, 28.384642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.332908, 21.951019, 28.765394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157000, 0.980347, -0.119462,
		-0.941314, 0.185140, 0.282224,
		0.298795, 0.068142, 0.951881,
		13.422546, 21.971462, 29.050959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.774482, 22.614510, 28.323830>,  <13.213389, 21.923763, 28.384642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.774482, 22.614510, 28.323830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.444328, 22.717354, 28.122778>,  <12.246237, 22.779060, 28.002148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.444328, 22.717354, 28.122778>,  <12.774482, 22.614510, 28.323830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.444328, 22.717354, 28.122778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472248, -0.173468, -0.864228,
		-0.309394, -0.950685, 0.021756,
		-0.825383, 0.257113, -0.502629,
		12.196713, 22.794487, 27.971989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.625653, 22.013756, 27.853868>,  <12.774482, 22.614510, 28.323830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.625653, 22.013756, 27.853868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.447090, 22.343082, 27.713655>,  <12.339952, 22.540678, 27.629528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.447090, 22.343082, 27.713655>,  <12.625653, 22.013756, 27.853868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.447090, 22.343082, 27.713655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308616, -0.226040, -0.923939,
		-0.839926, -0.520633, -0.153182,
		-0.446408, 0.823315, -0.350532,
		12.313168, 22.590076, 27.608496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.358231, 21.723782, 27.315262>,  <12.625653, 22.013756, 27.853868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.358231, 21.723782, 27.315262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.316687, 22.118288, 27.263887>,  <12.291760, 22.354992, 27.233063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.316687, 22.118288, 27.263887>,  <12.358231, 21.723782, 27.315262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.316687, 22.118288, 27.263887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036585, -0.132836, -0.990463,
		-0.993919, -0.098170, 0.049879,
		-0.103859, 0.986264, -0.128436,
		12.285529, 22.414167, 27.225357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.693222, 21.781364, 26.810057>,  <12.358231, 21.723782, 27.315262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.693222, 21.781364, 26.810057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.940282, 22.095341, 26.790541>,  <12.088517, 22.283726, 26.778831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.940282, 22.095341, 26.790541>,  <11.693222, 21.781364, 26.810057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.940282, 22.095341, 26.790541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168209, -0.192452, -0.966782,
		-0.768255, 0.588925, -0.250902,
		0.617649, 0.784939, -0.048789,
		12.125577, 22.330822, 26.775904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.550951, 22.139021, 26.160576>,  <11.693222, 21.781364, 26.810057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.550951, 22.139021, 26.160576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.912825, 22.279724, 26.256754>,  <12.129949, 22.364145, 26.314461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.912825, 22.279724, 26.256754>,  <11.550951, 22.139021, 26.160576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.912825, 22.279724, 26.256754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272122, -0.042762, -0.961312,
		-0.327867, 0.935114, -0.134407,
		0.904684, 0.351758, 0.240444,
		12.184230, 22.385252, 26.328888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.724809, 22.525799, 25.596533>,  <11.550951, 22.139021, 26.160576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.724809, 22.525799, 25.596533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.085204, 22.504280, 25.768730>,  <12.301441, 22.491369, 25.872049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.085204, 22.504280, 25.768730>,  <11.724809, 22.525799, 25.596533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.085204, 22.504280, 25.768730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428480, -0.045211, -0.902420,
		0.068012, 0.997528, -0.017683,
		0.900988, -0.053799, 0.430495,
		12.355500, 22.488140, 25.897879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.143785, 23.129997, 25.317730>,  <11.724809, 22.525799, 25.596533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.143785, 23.129997, 25.317730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.370280, 22.825991, 25.445324>,  <12.506178, 22.643587, 25.521879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.370280, 22.825991, 25.445324>,  <12.143785, 23.129997, 25.317730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.370280, 22.825991, 25.445324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269294, -0.195181, -0.943072,
		0.779008, 0.619906, 0.094148,
		0.566240, -0.760014, 0.318984,
		12.540153, 22.597986, 25.541019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.644124, 23.192753, 24.992401>,  <12.143785, 23.129997, 25.317730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.644124, 23.192753, 24.992401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.731084, 22.829636, 25.135870>,  <12.783259, 22.611765, 25.221952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.731084, 22.829636, 25.135870>,  <12.644124, 23.192753, 24.992401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.731084, 22.829636, 25.135870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416986, -0.245867, -0.875027,
		0.882531, 0.339792, 0.325086,
		0.217399, -0.907794, 0.358674,
		12.796304, 22.557297, 25.243473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.289719, 23.107744, 24.752726>,  <12.644124, 23.192753, 24.992401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.289719, 23.107744, 24.752726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.130559, 22.758343, 24.864918>,  <13.035063, 22.548702, 24.932232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.130559, 22.758343, 24.864918>,  <13.289719, 23.107744, 24.752726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.130559, 22.758343, 24.864918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209845, -0.384272, -0.899055,
		0.893108, -0.298877, 0.336202,
		-0.397900, -0.873503, 0.280479,
		13.011189, 22.496292, 24.949062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.833312, 22.545288, 24.663076>,  <13.289719, 23.107744, 24.752726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.833312, 22.545288, 24.663076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.473868, 22.369831, 24.659199>,  <13.258202, 22.264557, 24.656872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.473868, 22.369831, 24.659199>,  <13.833312, 22.545288, 24.663076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.473868, 22.369831, 24.659199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220541, -0.432487, -0.874252,
		0.379292, -0.787749, 0.485376,
		-0.898610, -0.438641, -0.009692,
		13.204286, 22.238239, 24.656292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.983184, 21.921356, 24.393883>,  <13.833312, 22.545288, 24.663076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.983184, 21.921356, 24.393883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.587117, 21.955944, 24.349899>,  <13.349477, 21.976696, 24.323509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.587117, 21.955944, 24.349899>,  <13.983184, 21.921356, 24.393883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.587117, 21.955944, 24.349899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062646, -0.428725, -0.901261,
		-0.125073, -0.899288, 0.419092,
		-0.990168, 0.086469, -0.109959,
		13.290067, 21.981884, 24.316912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.769159, 21.338858, 24.130621>,  <13.983184, 21.921356, 24.393883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.769159, 21.338858, 24.130621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.470664, 21.574078, 24.005831>,  <13.291567, 21.715210, 23.930956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.470664, 21.574078, 24.005831>,  <13.769159, 21.338858, 24.130621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.470664, 21.574078, 24.005831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195748, -0.254090, -0.947164,
		-0.636248, -0.767878, 0.074502,
		-0.746237, 0.588048, -0.311976,
		13.246793, 21.750492, 23.912237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.316575, 20.897943, 23.737511>,  <13.769159, 21.338858, 24.130621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.316575, 20.897943, 23.737511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.233908, 21.276793, 23.639328>,  <13.184307, 21.504101, 23.580418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.233908, 21.276793, 23.639328>,  <13.316575, 20.897943, 23.737511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.233908, 21.276793, 23.639328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026751, -0.256250, -0.966240,
		-0.978045, -0.193126, 0.078295,
		-0.206669, 0.947121, -0.245458,
		13.171906, 21.560928, 23.565691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.740880, 20.908588, 23.319201>,  <13.316575, 20.897943, 23.737511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.740880, 20.908588, 23.319201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.916148, 21.250853, 23.209038>,  <13.021309, 21.456211, 23.142941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.916148, 21.250853, 23.209038>,  <12.740880, 20.908588, 23.319201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.916148, 21.250853, 23.209038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124914, -0.245452, -0.961327,
		-0.890170, 0.455628, -0.000666,
		0.438171, 0.855661, -0.275408,
		13.047600, 21.507551, 23.126415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.087320, 20.610403, 23.269196>,  <12.740880, 20.908588, 23.319201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.087320, 20.610403, 23.269196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.876163, 20.272505, 23.234011>,  <11.749470, 20.069767, 23.212900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.876163, 20.272505, 23.234011>,  <12.087320, 20.610403, 23.269196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.876163, 20.272505, 23.234011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044094, -0.076169, 0.996119,
		-0.848167, 0.529721, 0.002961,
		-0.527891, -0.844745, -0.087962,
		11.717796, 20.019081, 23.207623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.446535, 20.702629, 23.607571>,  <12.087320, 20.610403, 23.269196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.446535, 20.702629, 23.607571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.524475, 20.311134, 23.581942>,  <11.571239, 20.076237, 23.566565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.524475, 20.311134, 23.581942>,  <11.446535, 20.702629, 23.607571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.524475, 20.311134, 23.581942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125874, -0.089736, 0.987979,
		-0.972723, -0.184443, -0.140682,
		0.194850, -0.978738, -0.064072,
		11.582931, 20.017513, 23.562719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.951233, 20.318689, 24.047043>,  <11.446535, 20.702629, 23.607571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.951233, 20.318689, 24.047043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.259697, 20.066078, 24.014835>,  <11.444776, 19.914511, 23.995510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.259697, 20.066078, 24.014835>,  <10.951233, 20.318689, 24.047043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.259697, 20.066078, 24.014835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102421, -0.247892, 0.963358,
		-0.628348, -0.734657, -0.255846,
		0.771160, -0.631528, -0.080518,
		11.491045, 19.876619, 23.990681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.873591, 19.828377, 24.474142>,  <10.951233, 20.318689, 24.047043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.873591, 19.828377, 24.474142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.250748, 19.711485, 24.410192>,  <11.477041, 19.641350, 24.371822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.250748, 19.711485, 24.410192>,  <10.873591, 19.828377, 24.474142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.250748, 19.711485, 24.410192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014916, -0.442429, 0.896679,
		-0.332765, -0.847856, -0.412804,
		0.942892, -0.292226, -0.159871,
		11.533615, 19.623816, 24.362230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.854846, 19.148262, 24.740988>,  <10.873591, 19.828377, 24.474142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.854846, 19.148262, 24.740988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.223599, 19.303154, 24.746368>,  <11.444852, 19.396090, 24.749598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.223599, 19.303154, 24.746368>,  <10.854846, 19.148262, 24.740988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.223599, 19.303154, 24.746368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100127, -0.271624, 0.957181,
		0.374305, -0.881063, -0.289178,
		0.921884, 0.387232, 0.013452,
		11.500165, 19.419323, 24.750404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.042886, 18.776762, 25.303282>,  <10.854846, 19.148262, 24.740988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.042886, 18.776762, 25.303282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.316362, 19.063280, 25.247440>,  <11.480449, 19.235191, 25.213936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.316362, 19.063280, 25.247440>,  <11.042886, 18.776762, 25.303282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.316362, 19.063280, 25.247440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097546, 0.099881, 0.990206,
		0.723223, -0.690613, -0.001584,
		0.683691, 0.716294, -0.139602,
		11.521470, 19.278168, 25.205559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.550917, 18.597788, 25.635466>,  <11.042886, 18.776762, 25.303282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.550917, 18.597788, 25.635466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.617349, 18.991547, 25.612209>,  <11.657207, 19.227802, 25.598255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.617349, 18.991547, 25.612209>,  <11.550917, 18.597788, 25.635466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.617349, 18.991547, 25.612209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076372, 0.045943, 0.996021,
		0.983151, -0.169858, -0.067550,
		0.166079, 0.984397, -0.058141,
		11.667172, 19.286865, 25.594767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.967091, 18.158651, 25.870550>,  <11.550917, 18.597788, 25.635466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.967091, 18.158651, 25.870550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.800979, 17.806870, 25.963591>,  <11.701311, 17.595800, 26.019415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.800979, 17.806870, 25.963591>,  <11.967091, 18.158651, 25.870550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.800979, 17.806870, 25.963591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218049, -0.344469, -0.913124,
		0.883174, -0.328484, 0.334815,
		-0.415280, -0.879454, 0.232600,
		11.676394, 17.543034, 26.033371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.329253, 17.653654, 25.607140>,  <11.967091, 18.158651, 25.870550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.329253, 17.653654, 25.607140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.973679, 17.474012, 25.643137>,  <11.760334, 17.366228, 25.664736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.973679, 17.474012, 25.643137>,  <12.329253, 17.653654, 25.607140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.973679, 17.474012, 25.643137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114270, -0.407718, -0.905930,
		0.443547, -0.795030, 0.413754,
		-0.888937, -0.449103, 0.089994,
		11.706998, 17.339281, 25.670135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.501310, 17.024008, 25.459484>,  <12.329253, 17.653654, 25.607140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.501310, 17.024008, 25.459484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.108958, 17.067472, 25.394905>,  <11.873547, 17.093552, 25.356157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.108958, 17.067472, 25.394905>,  <12.501310, 17.024008, 25.459484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.108958, 17.067472, 25.394905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099372, -0.433634, -0.895593,
		-0.167328, -0.894513, 0.414545,
		-0.980881, 0.108663, -0.161449,
		11.814694, 17.100071, 25.346470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.274515, 16.378830, 25.060247>,  <12.501310, 17.024008, 25.459484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.274515, 16.378830, 25.060247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.957693, 16.615351, 24.999567>,  <11.767600, 16.757263, 24.963158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.957693, 16.615351, 24.999567>,  <12.274515, 16.378830, 25.060247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.957693, 16.615351, 24.999567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115511, -0.389191, -0.913886,
		-0.599423, -0.706323, 0.376562,
		-0.792053, 0.591301, -0.151702,
		11.720077, 16.792742, 24.954056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.908463, 15.978672, 24.699274>,  <12.274515, 16.378830, 25.060247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.908463, 15.978672, 24.699274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.771442, 16.349548, 24.638641>,  <11.689230, 16.572075, 24.602262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.771442, 16.349548, 24.638641>,  <11.908463, 15.978672, 24.699274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.771442, 16.349548, 24.638641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172635, -0.220716, -0.959938,
		-0.923502, -0.302659, 0.235672,
		-0.342551, 0.927190, -0.151582,
		11.668677, 16.627705, 24.593166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.350033, 15.928894, 24.244625>,  <11.908463, 15.978672, 24.699274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.350033, 15.928894, 24.244625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.492273, 16.299538, 24.195724>,  <11.577618, 16.521923, 24.166384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.492273, 16.299538, 24.195724>,  <11.350033, 15.928894, 24.244625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.492273, 16.299538, 24.195724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075457, -0.158835, -0.984418,
		-0.931587, 0.340834, -0.126401,
		0.355600, 0.926609, -0.122250,
		11.598953, 16.577520, 24.159050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.995255, 16.052753, 23.696394>,  <11.350033, 15.928894, 24.244625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.995255, 16.052753, 23.696394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.313282, 16.293329, 23.727741>,  <11.504098, 16.437674, 23.746550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.313282, 16.293329, 23.727741>,  <10.995255, 16.052753, 23.696394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.313282, 16.293329, 23.727741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152199, -0.072763, -0.985668,
		-0.587115, 0.795600, -0.149390,
		0.795067, 0.601437, 0.078369,
		11.551802, 16.473761, 23.751251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<17.424421, 20.466257, 25.770008> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.469427, 20.383547, 26.158768>,  <17.496431, 20.333920, 26.392023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.469427, 20.383547, 26.158768>,  <17.424421, 20.466257, 25.770008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.469427, 20.383547, 26.158768> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763735, -0.607709, -0.217712,
		0.635648, 0.766768, 0.089546,
		0.112517, -0.206778, 0.971897,
		17.503181, 20.321514, 26.450336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.863417, 19.985003, 26.043104>,  <17.424421, 20.466257, 25.770008>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.863417, 19.985003, 26.043104> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.505028, 19.903460, 26.200928>,  <16.289995, 19.854534, 26.295622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.505028, 19.903460, 26.200928>,  <16.863417, 19.985003, 26.043104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.505028, 19.903460, 26.200928> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124783, -0.968190, -0.216880,
		0.426221, -0.145084, 0.892909,
		-0.895971, -0.203859, 0.394559,
		16.236237, 19.842302, 26.319296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.893789, 19.577221, 26.709803>,  <16.863417, 19.985003, 26.043104>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.893789, 19.577221, 26.709803> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.549784, 19.512856, 26.516108>,  <16.343380, 19.474236, 26.399891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.549784, 19.512856, 26.516108>,  <16.893789, 19.577221, 26.709803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.549784, 19.512856, 26.516108> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263399, -0.952766, -0.151190,
		-0.437035, -0.257573, 0.861775,
		-0.860012, -0.160916, -0.484236,
		16.291780, 19.464581, 26.370836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.567541, 18.981686, 26.922449>,  <16.893789, 19.577221, 26.709803>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.567541, 18.981686, 26.922449> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.471312, 19.015619, 26.535683>,  <16.413574, 19.035980, 26.303623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.471312, 19.015619, 26.535683>,  <16.567541, 18.981686, 26.922449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.471312, 19.015619, 26.535683> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319670, -0.933672, -0.161455,
		-0.916480, -0.347936, 0.197500,
		-0.240576, 0.084835, -0.966916,
		16.399139, 19.041069, 26.245607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.228861, 18.329203, 26.743971>,  <16.567541, 18.981686, 26.922449>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.228861, 18.329203, 26.743971> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.402412, 18.527870, 26.443287>,  <16.506544, 18.647070, 26.262877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.402412, 18.527870, 26.443287>,  <16.228861, 18.329203, 26.743971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.402412, 18.527870, 26.443287> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321952, -0.864716, -0.385504,
		-0.841484, -0.074753, -0.535085,
		0.433879, 0.496668, -0.751711,
		16.532576, 18.676870, 26.217773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.999310, 18.033203, 26.103731>,  <16.228861, 18.329203, 26.743971>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.999310, 18.033203, 26.103731> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.316658, 18.255886, 26.005226>,  <16.507067, 18.389496, 25.946123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.316658, 18.255886, 26.005226>,  <15.999310, 18.033203, 26.103731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.316658, 18.255886, 26.005226> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383653, -0.771360, -0.507754,
		-0.472628, 0.308356, -0.825554,
		0.793368, 0.556705, -0.246265,
		16.554668, 18.422897, 25.931347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.463326, 17.645805, 25.847603>,  <15.999310, 18.033203, 26.103731>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.463326, 17.645805, 25.847603> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.232569, 17.374916, 26.030277>,  <15.094114, 17.212383, 26.139883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.232569, 17.374916, 26.030277>,  <15.463326, 17.645805, 25.847603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.232569, 17.374916, 26.030277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319830, -0.701743, -0.636604,
		0.751601, -0.221190, 0.621427,
		-0.576892, -0.677223, 0.456688,
		15.059501, 17.171749, 26.167284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.873306, 17.103226, 25.906113>,  <15.463326, 17.645805, 25.847603>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.873306, 17.103226, 25.906113> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.499104, 16.962376, 25.917702>,  <15.274584, 16.877865, 25.924654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.499104, 16.962376, 25.917702>,  <15.873306, 17.103226, 25.906113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.499104, 16.962376, 25.917702> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234672, -0.680566, -0.694088,
		0.264124, -0.642524, 0.719306,
		-0.935504, -0.352126, 0.028972,
		15.218453, 16.856737, 25.926394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.923492, 16.369524, 26.223280>,  <15.873306, 17.103226, 25.906113>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.923492, 16.369524, 26.223280> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.586843, 16.423080, 26.013998>,  <15.384852, 16.455214, 25.888430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.586843, 16.423080, 26.013998>,  <15.923492, 16.369524, 26.223280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.586843, 16.423080, 26.013998> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282733, -0.716182, -0.638079,
		-0.460142, -0.684950, 0.564901,
		-0.841624, 0.133890, -0.523203,
		15.334355, 16.463247, 25.857037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.695004, 15.622699, 26.027491>,  <15.923492, 16.369524, 26.223280>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.695004, 15.622699, 26.027491> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.522836, 15.886203, 25.780663>,  <15.419535, 16.044306, 25.632566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.522836, 15.886203, 25.780663>,  <15.695004, 15.622699, 26.027491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.522836, 15.886203, 25.780663> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175137, -0.609692, -0.773048,
		-0.885474, -0.440808, 0.147052,
		-0.430422, 0.658760, -0.617068,
		15.393709, 16.083830, 25.595543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.264401, 15.158675, 25.669689>,  <15.695004, 15.622699, 26.027491>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.264401, 15.158675, 25.669689> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.262891, 15.504195, 25.468161>,  <15.261984, 15.711507, 25.347244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.262891, 15.504195, 25.468161>,  <15.264401, 15.158675, 25.669689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.262891, 15.504195, 25.468161> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151241, -0.497536, -0.854157,
		-0.988490, -0.079425, -0.128763,
		-0.003778, 0.863799, -0.503822,
		15.261758, 15.763335, 25.317015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.695048, 15.289531, 25.194874>,  <15.264401, 15.158675, 25.669689>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.695048, 15.289531, 25.194874> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.981553, 15.506695, 25.019503>,  <15.153456, 15.636993, 24.914280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.981553, 15.506695, 25.019503>,  <14.695048, 15.289531, 25.194874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.981553, 15.506695, 25.019503> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192865, -0.449788, -0.872063,
		-0.670650, 0.709183, -0.217458,
		0.716262, 0.542910, -0.438426,
		15.196432, 15.669568, 24.887974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.060285, 14.963722, 25.449308>,  <14.695048, 15.289531, 25.194874>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.060285, 14.963722, 25.449308> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.682584, 14.853643, 25.521593>,  <13.455963, 14.787597, 25.564964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.682584, 14.853643, 25.521593>,  <14.060285, 14.963722, 25.449308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.682584, 14.853643, 25.521593> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100776, 0.280947, 0.954418,
		-0.313422, 0.919422, -0.237551,
		-0.944251, -0.275196, 0.180711,
		13.399308, 14.771085, 25.575806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.716511, 15.542394, 25.747066>,  <14.060285, 14.963722, 25.449308>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.716511, 15.542394, 25.747066> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.503418, 15.224900, 25.864494>,  <13.375563, 15.034404, 25.934952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.503418, 15.224900, 25.864494>,  <13.716511, 15.542394, 25.747066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.503418, 15.224900, 25.864494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058506, 0.311522, 0.948436,
		-0.844259, 0.522438, -0.119519,
		-0.532732, -0.793734, 0.293571,
		13.343598, 14.986780, 25.952566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.352118, 15.875653, 26.203056>,  <13.716511, 15.542394, 25.747066>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.352118, 15.875653, 26.203056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.312889, 15.481979, 26.262066>,  <13.289351, 15.245775, 26.297472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.312889, 15.481979, 26.262066>,  <13.352118, 15.875653, 26.203056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.312889, 15.481979, 26.262066> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128670, 0.134455, 0.982530,
		-0.986826, 0.115341, 0.113448,
		-0.098073, -0.984184, 0.147524,
		13.283467, 15.186724, 26.306324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.808828, 15.748240, 26.671740>,  <13.352118, 15.875653, 26.203056>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.808828, 15.748240, 26.671740> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.034754, 15.418966, 26.694887>,  <13.170309, 15.221401, 26.708776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.034754, 15.418966, 26.694887>,  <12.808828, 15.748240, 26.671740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.034754, 15.418966, 26.694887> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096716, 0.135676, 0.986021,
		-0.819531, -0.551322, 0.156247,
		0.564814, -0.823187, 0.057869,
		13.204198, 15.172010, 26.712248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.614868, 15.482432, 27.298290>,  <12.808828, 15.748240, 26.671740>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.614868, 15.482432, 27.298290> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.975861, 15.334694, 27.209648>,  <13.192456, 15.246051, 27.156462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.975861, 15.334694, 27.209648>,  <12.614868, 15.482432, 27.298290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.975861, 15.334694, 27.209648> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274038, 0.095419, 0.956974,
		-0.332310, -0.924380, 0.187329,
		0.902482, -0.369347, -0.221606,
		13.246605, 15.223890, 27.143166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.715880, 15.140153, 27.861937>,  <12.614868, 15.482432, 27.298290>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.715880, 15.140153, 27.861937> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.080764, 15.193498, 27.706970>,  <13.299694, 15.225504, 27.613991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.080764, 15.193498, 27.706970>,  <12.715880, 15.140153, 27.861937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.080764, 15.193498, 27.706970> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322748, 0.348607, 0.879947,
		0.252403, -0.927733, 0.274962,
		0.912210, 0.133358, -0.387413,
		13.354426, 15.233506, 27.590746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.124090, 14.884729, 28.390038>,  <12.715880, 15.140153, 27.861937>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.124090, 14.884729, 28.390038> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.396993, 15.096198, 28.188034>,  <13.560735, 15.223080, 28.066832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.396993, 15.096198, 28.188034>,  <13.124090, 14.884729, 28.390038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.396993, 15.096198, 28.188034> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379518, 0.334290, 0.862680,
		0.624893, -0.780228, 0.027431,
		0.682257, 0.528672, -0.505006,
		13.601670, 15.254800, 28.036531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.645111, 14.974366, 28.795998>,  <13.124090, 14.884729, 28.390038>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.645111, 14.974366, 28.795998> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.731779, 15.253875, 28.523302>,  <13.783780, 15.421580, 28.359684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.731779, 15.253875, 28.523302>,  <13.645111, 14.974366, 28.795998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.731779, 15.253875, 28.523302> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299555, 0.617055, 0.727675,
		0.929151, -0.361885, -0.075623,
		0.216671, 0.698773, -0.681741,
		13.796781, 15.463507, 28.318779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.353251, 15.254288, 28.992094>,  <13.645111, 14.974366, 28.795998>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.353251, 15.254288, 28.992094> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.154540, 15.510463, 28.757811>,  <14.035314, 15.664167, 28.617241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.154540, 15.510463, 28.757811>,  <14.353251, 15.254288, 28.992094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.154540, 15.510463, 28.757811> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136115, 0.724015, 0.676221,
		0.857137, 0.256209, -0.446848,
		-0.496779, 0.640437, -0.585706,
		14.005507, 15.702594, 28.582098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.769070, 15.940226, 28.984697>,  <14.353251, 15.254288, 28.992094>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.769070, 15.940226, 28.984697> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.382203, 15.977996, 28.890320>,  <14.150083, 16.000658, 28.833693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.382203, 15.977996, 28.890320>,  <14.769070, 15.940226, 28.984697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.382203, 15.977996, 28.890320> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057627, 0.822745, 0.565482,
		0.247520, 0.560513, -0.790291,
		-0.967168, 0.094426, -0.235946,
		14.092052, 16.006323, 28.819536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.756328, 16.580126, 29.058340>,  <14.769070, 15.940226, 28.984697>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.756328, 16.580126, 29.058340> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.363377, 16.508577, 29.036657>,  <14.127605, 16.465649, 29.023647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.363377, 16.508577, 29.036657>,  <14.756328, 16.580126, 29.058340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.363377, 16.508577, 29.036657> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176664, 0.793964, 0.581730,
		-0.061014, 0.581056, -0.811573,
		-0.982378, -0.178870, -0.054209,
		14.068663, 16.454916, 29.020395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.475967, 17.171061, 28.804535>,  <14.756328, 16.580126, 29.058340>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.475967, 17.171061, 28.804535> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.184037, 16.956038, 28.973478>,  <14.008880, 16.827023, 29.074844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.184037, 16.956038, 28.973478>,  <14.475967, 17.171061, 28.804535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.184037, 16.956038, 28.973478> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183083, 0.748935, 0.636850,
		-0.658662, 0.387462, -0.645009,
		-0.729825, -0.537559, 0.422357,
		13.965090, 16.794769, 29.100185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.896223, 17.678860, 28.841099>,  <14.475967, 17.171061, 28.804535>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.896223, 17.678860, 28.841099> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.837272, 17.379620, 29.099903>,  <13.801901, 17.200075, 29.255186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.837272, 17.379620, 29.099903>,  <13.896223, 17.678860, 28.841099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.837272, 17.379620, 29.099903> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245873, 0.661330, 0.708653,
		-0.958032, -0.054642, -0.281404,
		-0.147379, -0.748102, 0.647010,
		13.793058, 17.155190, 29.294006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.223816, 17.807434, 29.044685>,  <13.896223, 17.678860, 28.841099>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.223816, 17.807434, 29.044685> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.422281, 17.581766, 29.308666>,  <13.541361, 17.446365, 29.467054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.422281, 17.581766, 29.308666>,  <13.223816, 17.807434, 29.044685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.422281, 17.581766, 29.308666> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138955, 0.698715, 0.701776,
		-0.857038, -0.439899, 0.268282,
		0.496163, -0.564169, 0.659951,
		13.571130, 17.412516, 29.506651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.724581, 17.384922, 28.664726>,  <13.223816, 17.807434, 29.044685>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.724581, 17.384922, 28.664726> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.427288, 17.639164, 28.748259>,  <12.248912, 17.791710, 28.798378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.427288, 17.639164, 28.748259>,  <12.724581, 17.384922, 28.664726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.427288, 17.639164, 28.748259> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510768, -0.337462, -0.790718,
		-0.432114, -0.694350, 0.575461,
		-0.743231, 0.635608, 0.208830,
		12.204318, 17.829845, 28.810907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.123661, 17.001425, 28.692171>,  <12.724581, 17.384922, 28.664726>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.123661, 17.001425, 28.692171> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.069084, 17.375807, 28.562328>,  <12.036338, 17.600437, 28.484423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.069084, 17.375807, 28.562328>,  <12.123661, 17.001425, 28.692171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.069084, 17.375807, 28.562328> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654166, -0.331193, -0.679984,
		-0.743942, 0.119567, 0.657460,
		-0.136442, 0.935956, -0.324606,
		12.028152, 17.656593, 28.464947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.359643, 17.264898, 28.655018>,  <12.123661, 17.001425, 28.692171>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.359643, 17.264898, 28.655018> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.568822, 17.480227, 28.390673>,  <11.694329, 17.609423, 28.232065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.568822, 17.480227, 28.390673>,  <11.359643, 17.264898, 28.655018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.568822, 17.480227, 28.390673> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637365, -0.267830, -0.722519,
		-0.565944, 0.799050, 0.203044,
		0.522947, 0.538319, -0.660863,
		11.725706, 17.641722, 28.192413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.880331, 17.437429, 28.146862>,  <11.359643, 17.264898, 28.655018>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.880331, 17.437429, 28.146862> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.215255, 17.540939, 27.954218>,  <11.416209, 17.603045, 27.838633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.215255, 17.540939, 27.954218>,  <10.880331, 17.437429, 28.146862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.215255, 17.540939, 27.954218> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447759, -0.180906, -0.875662,
		-0.313724, 0.948846, -0.035607,
		0.837310, 0.258774, -0.481609,
		11.466448, 17.618572, 27.809734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.681792, 17.864283, 27.500967>,  <10.880331, 17.437429, 28.146862>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.681792, 17.864283, 27.500967> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.049506, 17.722435, 27.432659>,  <11.270135, 17.637327, 27.391674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.049506, 17.722435, 27.432659>,  <10.681792, 17.864283, 27.500967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.049506, 17.722435, 27.432659> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266196, -0.240575, -0.933415,
		0.289922, 0.903532, -0.315555,
		0.919285, -0.354617, -0.170769,
		11.325292, 17.616051, 27.381428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.776857, 18.029396, 26.872305>,  <10.681792, 17.864283, 27.500967>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.776857, 18.029396, 26.872305> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.083014, 17.772316, 26.885635>,  <11.266707, 17.618067, 26.893635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.083014, 17.772316, 26.885635>,  <10.776857, 18.029396, 26.872305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.083014, 17.772316, 26.885635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101959, -0.172229, -0.979766,
		0.635438, 0.746506, -0.197352,
		0.765391, -0.642702, 0.033328,
		11.312631, 17.579506, 26.895634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.285483, 18.296270, 26.314163>,  <10.776857, 18.029396, 26.872305>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.285483, 18.296270, 26.314163> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.397758, 17.919018, 26.385403>,  <11.465124, 17.692667, 26.428146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.397758, 17.919018, 26.385403>,  <11.285483, 18.296270, 26.314163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.397758, 17.919018, 26.385403> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381804, -0.060527, -0.922259,
		0.880590, 0.326866, 0.343102,
		0.280689, -0.943130, 0.178099,
		11.481965, 17.636078, 26.438831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.977540, 18.782600, 26.281096>,  <11.285483, 18.296270, 26.314163>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.977540, 18.782600, 26.281096> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.896290, 19.155565, 26.161531>,  <11.847540, 19.379345, 26.089794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.896290, 19.155565, 26.161531>,  <11.977540, 18.782600, 26.281096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.896290, 19.155565, 26.161531> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265591, 0.241361, 0.933384,
		0.942444, 0.268982, 0.198614,
		-0.203126, 0.932413, -0.298908,
		11.835352, 19.435289, 26.071859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.274873, 19.182241, 26.729811>,  <11.977540, 18.782600, 26.281096>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.274873, 19.182241, 26.729811> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.021585, 19.446968, 26.569296>,  <11.869612, 19.605804, 26.472986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.021585, 19.446968, 26.569296>,  <12.274873, 19.182241, 26.729811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.021585, 19.446968, 26.569296> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112726, 0.434089, 0.893790,
		0.765719, 0.611201, -0.200270,
		-0.633220, 0.661816, -0.401288,
		11.831618, 19.645514, 26.448910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.415904, 19.953497, 27.020624>,  <12.274873, 19.182241, 26.729811>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.415904, 19.953497, 27.020624> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.036693, 19.941158, 26.893950>,  <11.809166, 19.933756, 26.817945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.036693, 19.941158, 26.893950>,  <12.415904, 19.953497, 27.020624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.036693, 19.941158, 26.893950> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294396, 0.462644, 0.836236,
		0.120718, 0.886007, -0.447681,
		-0.948028, -0.030846, -0.316687,
		11.752284, 19.931904, 26.798943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.169134, 20.628981, 27.005465>,  <12.415904, 19.953497, 27.020624>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.169134, 20.628981, 27.005465> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.835287, 20.410822, 27.036335>,  <11.634978, 20.279926, 27.054857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.835287, 20.410822, 27.036335>,  <12.169134, 20.628981, 27.005465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.835287, 20.410822, 27.036335> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308431, 0.578812, 0.754882,
		-0.456379, 0.606235, -0.651304,
		-0.834619, -0.545395, 0.077176,
		11.584902, 20.247204, 27.059488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.625278, 21.099567, 27.087137>,  <12.169134, 20.628981, 27.005465>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.625278, 21.099567, 27.087137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.480623, 20.755787, 27.231670>,  <11.393830, 20.549519, 27.318390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.480623, 20.755787, 27.231670>,  <11.625278, 21.099567, 27.087137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.480623, 20.755787, 27.231670> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514253, 0.507156, 0.691619,
		-0.777665, 0.064299, -0.625382,
		-0.361636, -0.859452, 0.361331,
		11.372132, 20.497952, 27.340069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.968624, 21.280661, 27.180429>,  <11.625278, 21.099567, 27.087137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.968624, 21.280661, 27.180429> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.031129, 20.953962, 27.402603>,  <11.068632, 20.757944, 27.535908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.031129, 20.953962, 27.402603>,  <10.968624, 21.280661, 27.180429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.031129, 20.953962, 27.402603> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450620, 0.441458, 0.775922,
		-0.878933, -0.371538, -0.299059,
		0.156263, -0.816746, 0.555435,
		11.078008, 20.708939, 27.569233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.392867, 21.130470, 27.457085>,  <10.968624, 21.280661, 27.180429>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.392867, 21.130470, 27.457085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.639702, 20.947533, 27.713223>,  <10.787803, 20.837770, 27.866905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.639702, 20.947533, 27.713223>,  <10.392867, 21.130470, 27.457085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.639702, 20.947533, 27.713223> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460751, 0.449674, 0.765181,
		-0.637898, -0.767222, 0.066766,
		0.617086, -0.457345, 0.640344,
		10.824828, 20.810329, 27.905325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.954182, 20.708569, 28.014914>,  <10.392867, 21.130470, 27.457085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.954182, 20.708569, 28.014914> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.318110, 20.761717, 28.172176>,  <10.536467, 20.793606, 28.266535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.318110, 20.761717, 28.172176>,  <9.954182, 20.708569, 28.014914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.318110, 20.761717, 28.172176> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414169, 0.350718, 0.839917,
		-0.026289, -0.927008, 0.374120,
		0.909820, 0.132868, 0.393158,
		10.591056, 20.801577, 28.290123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.971493, 20.318214, 28.673609>,  <9.954182, 20.708569, 28.014914>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.971493, 20.318214, 28.673609> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.257097, 20.598015, 28.661690>,  <10.428460, 20.765896, 28.654539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.257097, 20.598015, 28.661690>,  <9.971493, 20.318214, 28.673609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.257097, 20.598015, 28.661690> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408383, 0.450667, 0.793803,
		0.568694, -0.554615, 0.607445,
		0.714010, 0.699501, -0.029796,
		10.471300, 20.807865, 28.652750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<13.543890, 17.418032, 12.805321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.806920, 17.666809, 12.975395>,  <13.964738, 17.816074, 13.077440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.806920, 17.666809, 12.975395>,  <13.543890, 17.418032, 12.805321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.806920, 17.666809, 12.975395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357020, -0.239726, 0.902811,
		0.663425, -0.745466, 0.064408,
		0.657575, 0.621943, 0.425187,
		14.004192, 17.853392, 13.102951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.781052, 16.978632, 13.409651>,  <13.543890, 17.418032, 12.805321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.781052, 16.978632, 13.409651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.899715, 17.344833, 13.518350>,  <13.970914, 17.564554, 13.583569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.899715, 17.344833, 13.518350>,  <13.781052, 16.978632, 13.409651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.899715, 17.344833, 13.518350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136872, -0.240858, 0.960861,
		0.945124, -0.322242, 0.053854,
		0.296659, 0.915504, 0.271746,
		13.988713, 17.619484, 13.599874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.117451, 16.810516, 14.043867>,  <13.781052, 16.978632, 13.409651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.117451, 16.810516, 14.043867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.050016, 17.204746, 14.037971>,  <14.009556, 17.441284, 14.034432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.050016, 17.204746, 14.037971>,  <14.117451, 16.810516, 14.043867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.050016, 17.204746, 14.037971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072671, 0.002488, 0.997353,
		0.983004, 0.169212, 0.071203,
		-0.168587, 0.985577, -0.014742,
		13.999440, 17.500420, 14.033547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.508417, 16.992975, 14.563621>,  <14.117451, 16.810516, 14.043867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.508417, 16.992975, 14.563621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.215486, 17.259136, 14.505746>,  <14.039726, 17.418833, 14.471021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.215486, 17.259136, 14.505746>,  <14.508417, 16.992975, 14.563621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.215486, 17.259136, 14.505746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163831, 0.034069, 0.985900,
		0.660948, 0.745708, 0.084063,
		-0.732330, 0.665401, -0.144688,
		13.995787, 17.458757, 14.462339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.575330, 17.439116, 15.098310>,  <14.508417, 16.992975, 14.563621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.575330, 17.439116, 15.098310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.203416, 17.517870, 14.973900>,  <13.980268, 17.565123, 14.899253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.203416, 17.517870, 14.973900>,  <14.575330, 17.439116, 15.098310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.203416, 17.517870, 14.973900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313284, 0.020392, 0.949440,
		0.193273, 0.980214, 0.042720,
		-0.929784, 0.196885, -0.311027,
		13.924480, 17.576935, 14.880591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.354487, 17.958652, 15.630486>,  <14.575330, 17.439116, 15.098310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.354487, 17.958652, 15.630486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.018662, 17.837626, 15.450005>,  <13.817167, 17.765009, 15.341715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.018662, 17.837626, 15.450005>,  <14.354487, 17.958652, 15.630486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.018662, 17.837626, 15.450005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500073, 0.105889, 0.859485,
		-0.212274, 0.947228, -0.240205,
		-0.839564, -0.302566, -0.451206,
		13.766793, 17.746855, 15.314643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.801398, 18.466406, 15.808647>,  <14.354487, 17.958652, 15.630486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.801398, 18.466406, 15.808647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.644005, 18.111622, 15.711922>,  <13.549569, 17.898752, 15.653887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.644005, 18.111622, 15.711922>,  <13.801398, 18.466406, 15.808647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.644005, 18.111622, 15.711922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627037, 0.066573, 0.776140,
		-0.672307, 0.457024, -0.582351,
		-0.393483, -0.886960, -0.241814,
		13.525960, 17.845533, 15.639378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.982057, 18.589678, 15.758926>,  <13.801398, 18.466406, 15.808647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.982057, 18.589678, 15.758926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.024219, 18.196997, 15.822356>,  <13.049516, 17.961388, 15.860414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.024219, 18.196997, 15.822356>,  <12.982057, 18.589678, 15.758926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.024219, 18.196997, 15.822356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447361, 0.095603, 0.889229,
		-0.888120, -0.164668, -0.429100,
		0.105405, -0.981705, 0.158573,
		13.055840, 17.902485, 15.869928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.348357, 18.422190, 16.151070>,  <12.982057, 18.589678, 15.758926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.348357, 18.422190, 16.151070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.582912, 18.104496, 16.214741>,  <12.723645, 17.913879, 16.252943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.582912, 18.104496, 16.214741>,  <12.348357, 18.422190, 16.151070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.582912, 18.104496, 16.214741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303466, -0.033200, 0.952264,
		-0.751038, -0.606701, -0.260492,
		0.586388, -0.794236, 0.159178,
		12.758829, 17.866224, 16.262495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.942949, 17.891293, 16.497740>,  <12.348357, 18.422190, 16.151070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.942949, 17.891293, 16.497740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.326405, 17.835373, 16.596910>,  <12.556478, 17.801821, 16.656414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.326405, 17.835373, 16.596910>,  <11.942949, 17.891293, 16.497740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.326405, 17.835373, 16.596910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243277, 0.049709, 0.968682,
		-0.147745, -0.988932, 0.013643,
		0.958639, -0.139799, 0.247928,
		12.613997, 17.793434, 16.671289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.908134, 17.524031, 17.141388>,  <11.942949, 17.891293, 16.497740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.908134, 17.524031, 17.141388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.283792, 17.661322, 17.135714>,  <12.509187, 17.743696, 17.132309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.283792, 17.661322, 17.135714>,  <11.908134, 17.524031, 17.141388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.283792, 17.661322, 17.135714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045610, 0.165514, 0.985152,
		0.340479, -0.924554, 0.171096,
		0.939145, 0.343227, -0.014185,
		12.565536, 17.764290, 17.131458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.250723, 17.139971, 17.615711>,  <11.908134, 17.524031, 17.141388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.250723, 17.139971, 17.615711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.464290, 17.474030, 17.562855>,  <12.592430, 17.674465, 17.531141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.464290, 17.474030, 17.562855>,  <12.250723, 17.139971, 17.615711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.464290, 17.474030, 17.562855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081059, 0.206117, 0.975164,
		0.841642, -0.509946, 0.177745,
		0.533917, 0.835148, -0.132141,
		12.624465, 17.724573, 17.523212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.833672, 16.567268, 17.392797>,  <12.250723, 17.139971, 17.615711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.833672, 16.567268, 17.392797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.610370, 16.305975, 17.597401>,  <12.476389, 16.149199, 17.720161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.610370, 16.305975, 17.597401>,  <12.833672, 16.567268, 17.392797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.610370, 16.305975, 17.597401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344689, -0.378186, -0.859165,
		0.754679, -0.655944, -0.014038,
		-0.558255, -0.653233, 0.511506,
		12.442893, 16.110004, 17.750853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.944817, 15.796935, 17.124062>,  <12.833672, 16.567268, 17.392797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.944817, 15.796935, 17.124062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.586433, 15.820032, 17.300209>,  <12.371404, 15.833891, 17.405897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.586433, 15.820032, 17.300209>,  <12.944817, 15.796935, 17.124062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.586433, 15.820032, 17.300209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432991, -0.334320, -0.837107,
		0.098888, -0.940689, 0.324539,
		-0.895957, 0.057742, 0.440371,
		12.317646, 15.837355, 17.432320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.599411, 15.158787, 16.978634>,  <12.944817, 15.796935, 17.124062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.599411, 15.158787, 16.978634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.294313, 15.396548, 17.080542>,  <12.111255, 15.539205, 17.141685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.294313, 15.396548, 17.080542>,  <12.599411, 15.158787, 16.978634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.294313, 15.396548, 17.080542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518694, -0.327012, -0.789949,
		-0.386239, -0.734674, 0.557740,
		-0.762743, 0.594405, 0.254766,
		12.065490, 15.574869, 17.156973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.013887, 14.693059, 16.848484>,  <12.599411, 15.158787, 16.978634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.013887, 14.693059, 16.848484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.872257, 15.065897, 16.879028>,  <11.787279, 15.289599, 16.897356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.872257, 15.065897, 16.879028>,  <12.013887, 14.693059, 16.848484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.872257, 15.065897, 16.879028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672791, -0.197154, -0.713080,
		-0.649603, -0.303859, 0.696912,
		-0.354075, 0.932094, 0.076362,
		11.766035, 15.345526, 16.901937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.355930, 14.705069, 17.055298>,  <12.013887, 14.693059, 16.848484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.355930, 14.705069, 17.055298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.420158, 15.021694, 16.819452>,  <11.458695, 15.211669, 16.677944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.420158, 15.021694, 16.819452>,  <11.355930, 14.705069, 17.055298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.420158, 15.021694, 16.819452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645187, -0.367900, -0.669614,
		-0.746961, 0.487931, 0.451633,
		0.160570, 0.791563, -0.589614,
		11.468329, 15.259163, 16.642569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.819245, 14.712488, 16.749264>,  <11.355930, 14.705069, 17.055298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.819245, 14.712488, 16.749264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.016350, 14.968591, 16.513550>,  <11.134612, 15.122252, 16.372122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.016350, 14.968591, 16.513550>,  <10.819245, 14.712488, 16.749264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.016350, 14.968591, 16.513550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457690, -0.385263, -0.801306,
		-0.740072, 0.664563, 0.103196,
		0.492761, 0.640256, -0.589287,
		11.164178, 15.160667, 16.336763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.317636, 15.030485, 16.338242>,  <10.819245, 14.712488, 16.749264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.317636, 15.030485, 16.338242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.664898, 15.083511, 16.146936>,  <10.873255, 15.115327, 16.032154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.664898, 15.083511, 16.146936>,  <10.317636, 15.030485, 16.338242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.664898, 15.083511, 16.146936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424661, -0.300304, -0.854096,
		-0.256847, 0.944586, -0.204415,
		0.868155, 0.132565, -0.478261,
		10.925344, 15.123281, 16.003458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.972280, 15.430075, 15.769276>,  <10.317636, 15.030485, 16.338242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.972280, 15.430075, 15.769276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.326761, 15.287336, 15.651087>,  <10.539450, 15.201694, 15.580173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.326761, 15.287336, 15.651087>,  <9.972280, 15.430075, 15.769276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.326761, 15.287336, 15.651087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415242, -0.328938, -0.848159,
		0.205470, 0.874334, -0.439684,
		0.886203, -0.356846, -0.295473,
		10.592623, 15.180283, 15.562445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.123136, 15.655608, 15.051104>,  <9.972280, 15.430075, 15.769276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.123136, 15.655608, 15.051104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.329976, 15.318601, 15.111459>,  <10.454081, 15.116396, 15.147672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.329976, 15.318601, 15.111459>,  <10.123136, 15.655608, 15.051104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.329976, 15.318601, 15.111459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489482, -0.435701, -0.755362,
		0.702149, 0.316743, -0.637699,
		0.517102, -0.842519, 0.150887,
		10.485106, 15.065845, 15.156725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.404099, 15.476775, 14.352199>,  <10.123136, 15.655608, 15.051104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.404099, 15.476775, 14.352199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.416745, 15.128651, 14.548794>,  <10.424333, 14.919776, 14.666751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.416745, 15.128651, 14.548794>,  <10.404099, 15.476775, 14.352199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.416745, 15.128651, 14.548794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185877, -0.488275, -0.852665,
		0.982064, -0.064399, -0.177207,
		0.031615, -0.870311, 0.491487,
		10.426229, 14.867558, 14.696240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.828314, 15.004734, 13.904330>,  <10.404099, 15.476775, 14.352199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.828314, 15.004734, 13.904330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.598902, 14.771469, 14.134456>,  <10.461254, 14.631511, 14.272531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.598902, 14.771469, 14.134456>,  <10.828314, 15.004734, 13.904330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.598902, 14.771469, 14.134456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026481, -0.688736, -0.724529,
		0.818756, -0.430774, 0.379568,
		-0.573530, -0.583161, 0.575314,
		10.426843, 14.596520, 14.307050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.223192, 14.441416, 14.064683>,  <10.828314, 15.004734, 13.904330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.223192, 14.441416, 14.064683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.842566, 14.325082, 14.104567>,  <10.614191, 14.255281, 14.128496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.842566, 14.325082, 14.104567>,  <11.223192, 14.441416, 14.064683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.842566, 14.325082, 14.104567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159253, -0.743656, -0.649318,
		0.262993, -0.601988, 0.753953,
		-0.951563, -0.290836, 0.099708,
		10.557097, 14.237831, 14.134479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.211128, 13.713825, 13.979000>,  <11.223192, 14.441416, 14.064683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.211128, 13.713825, 13.979000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.811609, 13.730356, 13.989560>,  <10.571898, 13.740274, 13.995896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.811609, 13.730356, 13.989560>,  <11.211128, 13.713825, 13.979000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.811609, 13.730356, 13.989560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048936, -0.804977, -0.591284,
		-0.003185, -0.591865, 0.806031,
		-0.998797, 0.041327, 0.026400,
		10.511971, 13.742754, 13.997480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.032410, 12.993903, 14.087208>,  <11.211128, 13.713825, 13.979000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.032410, 12.993903, 14.087208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.719267, 13.193037, 13.937918>,  <10.531382, 13.312517, 13.848344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.719267, 13.193037, 13.937918>,  <11.032410, 12.993903, 14.087208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.719267, 13.193037, 13.937918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251575, -0.801889, -0.541926,
		-0.569074, -0.330356, 0.753007,
		-0.782857, 0.497834, -0.373225,
		10.484410, 13.342387, 13.825950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.260984, 13.312695, 14.685122>,  <11.032410, 12.993903, 14.087208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.260984, 13.312695, 14.685122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.268326, 12.931997, 14.807661>,  <11.272731, 12.703579, 14.881185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.268326, 12.931997, 14.807661>,  <11.260984, 13.312695, 14.685122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.268326, 12.931997, 14.807661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066391, 0.304563, 0.950176,
		-0.997625, -0.037777, -0.057598,
		0.018353, -0.951743, 0.306348,
		11.273831, 12.646475, 14.899566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.633254, 13.100844, 15.149989>,  <11.260984, 13.312695, 14.685122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.633254, 13.100844, 15.149989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.978247, 12.917804, 15.236454>,  <11.185243, 12.807980, 15.288333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.978247, 12.917804, 15.236454>,  <10.633254, 13.100844, 15.149989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.978247, 12.917804, 15.236454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095695, 0.271958, 0.957539,
		-0.496958, -0.846546, 0.190768,
		0.862481, -0.457601, 0.216162,
		11.236991, 12.780523, 15.301303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.523916, 12.809457, 15.755793>,  <10.633254, 13.100844, 15.149989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.523916, 12.809457, 15.755793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.923823, 12.808125, 15.747255>,  <11.163768, 12.807326, 15.742133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.923823, 12.808125, 15.747255>,  <10.523916, 12.809457, 15.755793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.923823, 12.808125, 15.747255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021575, 0.104431, 0.994298,
		-0.001084, -0.994526, 0.104478,
		0.999766, -0.003332, -0.021344,
		11.223753, 12.807127, 15.740852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.764687, 12.411604, 16.358686>,  <10.523916, 12.809457, 15.755793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.764687, 12.411604, 16.358686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.083329, 12.643859, 16.291424>,  <11.274515, 12.783212, 16.251066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.083329, 12.643859, 16.291424>,  <10.764687, 12.411604, 16.358686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.083329, 12.643859, 16.291424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028038, 0.242388, 0.969774,
		0.603848, -0.777243, 0.176808,
		0.796606, 0.580638, -0.168158,
		11.322311, 12.818050, 16.240976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.230898, 12.216552, 16.792208>,  <10.764687, 12.411604, 16.358686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.230898, 12.216552, 16.792208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.341797, 12.589515, 16.699471>,  <11.408337, 12.813293, 16.643827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.341797, 12.589515, 16.699471>,  <11.230898, 12.216552, 16.792208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.341797, 12.589515, 16.699471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319157, 0.138226, 0.937567,
		0.906241, -0.333933, -0.259261,
		0.277248, 0.932407, -0.231843,
		11.424972, 12.869237, 16.629917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.938778, 12.318302, 17.108660>,  <11.230898, 12.216552, 16.792208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.938778, 12.318302, 17.108660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.767876, 12.672655, 17.036367>,  <11.665335, 12.885267, 16.992992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.767876, 12.672655, 17.036367>,  <11.938778, 12.318302, 17.108660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.767876, 12.672655, 17.036367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296151, 0.325992, 0.897789,
		0.854253, 0.330060, -0.401636,
		-0.427254, 0.885884, -0.180732,
		11.639699, 12.938420, 16.982147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.438992, 12.853672, 17.144451>,  <11.938778, 12.318302, 17.108660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.438992, 12.853672, 17.144451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.090035, 13.040467, 17.202221>,  <11.880662, 13.152545, 17.236883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.090035, 13.040467, 17.202221>,  <12.438992, 12.853672, 17.144451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.090035, 13.040467, 17.202221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283771, 0.243267, 0.927521,
		0.398009, 0.850143, -0.344742,
		-0.872389, 0.466989, 0.144423,
		11.828319, 13.180564, 17.245548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.597864, 13.334495, 17.617872>,  <12.438992, 12.853672, 17.144451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.597864, 13.334495, 17.617872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.198200, 13.326786, 17.632343>,  <11.958402, 13.322161, 17.641026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.198200, 13.326786, 17.632343>,  <12.597864, 13.334495, 17.617872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.198200, 13.326786, 17.632343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033240, 0.135478, 0.990223,
		-0.023984, 0.990593, -0.134723,
		-0.999160, -0.019271, 0.036177,
		11.898453, 13.321005, 17.643196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.488868, 13.760637, 18.131649>,  <12.597864, 13.334495, 17.617872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.488868, 13.760637, 18.131649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.132667, 13.579904, 18.110294>,  <11.918946, 13.471463, 18.097483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.132667, 13.579904, 18.110294>,  <12.488868, 13.760637, 18.131649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.132667, 13.579904, 18.110294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045533, -0.028245, 0.998563,
		-0.452693, 0.891655, 0.004579,
		-0.890503, -0.451834, -0.053386,
		11.865516, 13.444353, 18.094278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.942280, 14.236465, 18.402308>,  <12.488868, 13.760637, 18.131649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.942280, 14.236465, 18.402308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.792996, 13.866980, 18.436886>,  <11.703426, 13.645288, 18.457632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.792996, 13.866980, 18.436886>,  <11.942280, 14.236465, 18.402308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.792996, 13.866980, 18.436886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126941, 0.143144, 0.981527,
		-0.919022, 0.355342, -0.170680,
		-0.373209, -0.923711, 0.086444,
		11.681034, 13.589867, 18.462820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.315837, 14.245620, 18.837049>,  <11.942280, 14.236465, 18.402308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.315837, 14.245620, 18.837049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.441609, 13.866273, 18.853699>,  <11.517073, 13.638665, 18.863688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.441609, 13.866273, 18.853699>,  <11.315837, 14.245620, 18.837049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.441609, 13.866273, 18.853699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000657, 0.043630, 0.999048,
		-0.949280, -0.314159, 0.013096,
		0.314431, -0.948367, 0.041624,
		11.535938, 13.581762, 18.866186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.723424, 13.940186, 19.251297>,  <11.315837, 14.245620, 18.837049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.723424, 13.940186, 19.251297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.037067, 13.695362, 19.292393>,  <11.225254, 13.548468, 19.317051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.037067, 13.695362, 19.292393>,  <10.723424, 13.940186, 19.251297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.037067, 13.695362, 19.292393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023702, 0.194957, 0.980525,
		-0.620169, -0.766404, 0.167375,
		0.784110, -0.612059, 0.102741,
		11.272301, 13.511744, 19.323215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.602289, 13.570935, 19.872513>,  <10.723424, 13.940186, 19.251297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.602289, 13.570935, 19.872513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.986956, 13.469001, 19.832003>,  <11.217755, 13.407840, 19.807697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.986956, 13.469001, 19.832003>,  <10.602289, 13.570935, 19.872513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.986956, 13.469001, 19.832003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108014, 0.012557, 0.994070,
		-0.252054, -0.966902, 0.039602,
		0.961666, -0.254837, -0.101274,
		11.275455, 13.392550, 19.801620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.743837, 12.972118, 20.348469>,  <10.602289, 13.570935, 19.872513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.743837, 12.972118, 20.348469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.100799, 13.130965, 20.262758>,  <11.314976, 13.226274, 20.211332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.100799, 13.130965, 20.262758>,  <10.743837, 12.972118, 20.348469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.100799, 13.130965, 20.262758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259672, -0.063601, 0.963600,
		0.369034, -0.915561, -0.159878,
		0.892403, 0.397117, -0.214274,
		11.368520, 13.250100, 20.198477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.274352, 12.506239, 20.625383>,  <10.743837, 12.972118, 20.348469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.274352, 12.506239, 20.625383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.399455, 12.884797, 20.593094>,  <11.474517, 13.111933, 20.573719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.399455, 12.884797, 20.593094>,  <11.274352, 12.506239, 20.625383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.399455, 12.884797, 20.593094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144422, 0.036619, 0.988838,
		0.938789, -0.320924, -0.125228,
		0.312757, 0.946396, -0.080726,
		11.493282, 13.168716, 20.568876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.982284, 12.568026, 21.124269>,  <11.274352, 12.506239, 20.625383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.982284, 12.568026, 21.124269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.840716, 12.931437, 21.035435>,  <11.755776, 13.149483, 20.982134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.840716, 12.931437, 21.035435>,  <11.982284, 12.568026, 21.124269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.840716, 12.931437, 21.035435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312523, 0.338686, 0.887481,
		0.881517, 0.244687, -0.403801,
		-0.353917, 0.908526, -0.222087,
		11.734541, 13.203995, 20.968809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.347154, 12.791696, 21.588253>,  <11.982284, 12.568026, 21.124269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.347154, 12.791696, 21.588253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.158663, 13.121815, 21.463785>,  <12.045568, 13.319886, 21.389105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.158663, 13.121815, 21.463785>,  <12.347154, 12.791696, 21.588253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.158663, 13.121815, 21.463785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122178, 0.410475, 0.903650,
		0.873508, 0.387807, -0.294261,
		-0.471228, 0.825298, -0.311171,
		12.017294, 13.369404, 21.370434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.783010, 13.427650, 21.510799>,  <12.347154, 12.791696, 21.588253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.783010, 13.427650, 21.510799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.413517, 13.568138, 21.571939>,  <12.191821, 13.652431, 21.608624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.413517, 13.568138, 21.571939>,  <12.783010, 13.427650, 21.510799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.413517, 13.568138, 21.571939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304251, 0.430357, 0.849838,
		0.232701, 0.831527, -0.504393,
		-0.923733, 0.351220, 0.152848,
		12.136397, 13.673504, 21.617794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.827098, 14.216084, 21.630222>,  <12.783010, 13.427650, 21.510799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.827098, 14.216084, 21.630222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.482885, 14.088700, 21.789255>,  <12.276358, 14.012270, 21.884674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.482885, 14.088700, 21.789255>,  <12.827098, 14.216084, 21.630222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.482885, 14.088700, 21.789255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171474, 0.553845, 0.814771,
		-0.479671, 0.769310, -0.421993,
		-0.860530, -0.318461, 0.397580,
		12.224726, 13.993162, 21.908529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.500636, 14.802439, 21.958082>,  <12.827098, 14.216084, 21.630222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.500636, 14.802439, 21.958082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.292058, 14.501234, 22.118614>,  <12.166911, 14.320511, 22.214933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.292058, 14.501234, 22.118614>,  <12.500636, 14.802439, 21.958082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.292058, 14.501234, 22.118614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130344, 0.394524, 0.909594,
		-0.843271, 0.526614, -0.107572,
		-0.521445, -0.753013, 0.401331,
		12.135625, 14.275331, 22.239014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.021152, 15.059844, 22.455540>,  <12.500636, 14.802439, 21.958082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.021152, 15.059844, 22.455540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.087344, 14.676472, 22.548513>,  <12.127059, 14.446448, 22.604298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.087344, 14.676472, 22.548513>,  <12.021152, 15.059844, 22.455540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.087344, 14.676472, 22.548513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085494, 0.248739, 0.964790,
		-0.982500, -0.139781, 0.123101,
		0.165479, -0.958431, 0.232436,
		12.136988, 14.388943, 22.618244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.761438, 15.014871, 23.065992>,  <12.021152, 15.059844, 22.455540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.761438, 15.014871, 23.065992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.985677, 14.683737, 23.057756>,  <12.120220, 14.485057, 23.052814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.985677, 14.683737, 23.057756>,  <11.761438, 15.014871, 23.065992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.985677, 14.683737, 23.057756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060761, 0.016321, 0.998019,
		-0.825857, -0.560736, 0.059449,
		0.560596, -0.827834, -0.020592,
		12.153855, 14.435387, 23.051579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.644859, 14.733540, 23.741667>,  <11.761438, 15.014871, 23.065992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.644859, 14.733540, 23.741667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.968471, 14.520423, 23.642384>,  <12.162637, 14.392552, 23.582813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.968471, 14.520423, 23.642384>,  <11.644859, 14.733540, 23.741667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.968471, 14.520423, 23.642384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263468, -0.048757, 0.963435,
		-0.525413, -0.844840, 0.100928,
		0.809028, -0.532793, -0.248206,
		12.211179, 14.360585, 23.567923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.666026, 14.213988, 24.290270>,  <11.644859, 14.733540, 23.741667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.666026, 14.213988, 24.290270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.020491, 14.257397, 24.110073>,  <12.233170, 14.283442, 24.001955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.020491, 14.257397, 24.110073>,  <11.666026, 14.213988, 24.290270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.020491, 14.257397, 24.110073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453981, -0.008544, 0.890970,
		0.092840, -0.994057, -0.056838,
		0.886161, 0.108522, -0.450490,
		12.286339, 14.289953, 23.974926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.200260, 13.569554, 24.473259>,  <11.666026, 14.213988, 24.290270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.200260, 13.569554, 24.473259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.416912, 13.887175, 24.362900>,  <12.546904, 14.077747, 24.296684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.416912, 13.887175, 24.362900>,  <12.200260, 13.569554, 24.473259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.416912, 13.887175, 24.362900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483588, -0.025868, 0.874913,
		0.687590, -0.607300, -0.398005,
		0.541630, 0.794052, -0.275896,
		12.579401, 14.125390, 24.280130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.913131, 13.476851, 24.775532>,  <12.200260, 13.569554, 24.473259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.913131, 13.476851, 24.775532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.901325, 13.869245, 24.698799>,  <12.894241, 14.104681, 24.652760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.901325, 13.869245, 24.698799>,  <12.913131, 13.476851, 24.775532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.901325, 13.869245, 24.698799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498651, 0.180781, 0.847741,
		0.866300, -0.070637, -0.494504,
		-0.029515, 0.980984, -0.191834,
		12.892470, 14.163540, 24.641249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.601893, 13.673157, 24.890915>,  <12.913131, 13.476851, 24.775532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.601893, 13.673157, 24.890915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.377000, 14.003918, 24.895370>,  <13.242064, 14.202374, 24.898045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.377000, 14.003918, 24.895370>,  <13.601893, 13.673157, 24.890915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.377000, 14.003918, 24.895370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513783, 0.338718, 0.788224,
		0.648012, 0.448889, -0.615287,
		-0.562234, 0.826903, 0.011138,
		13.208329, 14.251988, 24.898712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.997246, 14.266699, 25.081947>,  <13.601893, 13.673157, 24.890915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.997246, 14.266699, 25.081947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.624669, 14.403932, 25.130465>,  <13.401123, 14.486272, 25.159575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.624669, 14.403932, 25.130465>,  <13.997246, 14.266699, 25.081947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.624669, 14.403932, 25.130465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261428, 0.399037, 0.878877,
		0.253126, 0.850331, -0.461371,
		-0.931441, 0.343082, 0.121294,
		13.345237, 14.506856, 25.166853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
