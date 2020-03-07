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
	<5.133602, 1.507739, -0.803042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.757038, 1.636665, -0.763325>,  <4.531100, 1.714021, -0.739494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.757038, 1.636665, -0.763325>,  <5.133602, 1.507739, -0.803042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.757038, 1.636665, -0.763325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161261, -0.688752, 0.706834,
		0.296213, 0.649409, 0.700375,
		-0.941410, 0.322317, 0.099293,
		4.474615, 1.733360, -0.733537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.062104, 1.704727, -0.105810>,  <5.133602, 1.507739, -0.803042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.062104, 1.704727, -0.105810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.724026, 1.587479, -0.284573>,  <4.521179, 1.517130, -0.391830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.724026, 1.587479, -0.284573>,  <5.062104, 1.704727, -0.105810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.724026, 1.587479, -0.284573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088408, -0.747989, 0.657797,
		-0.527095, 0.595477, 0.606282,
		-0.845195, -0.293121, -0.446906,
		4.470467, 1.499542, -0.418645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.337505, 1.523036, 0.250286>,  <5.062104, 1.704727, -0.105810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.337505, 1.523036, 0.250286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.422501, 1.291733, -0.064793>,  <4.473498, 1.152951, -0.253840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.422501, 1.291733, -0.064793>,  <4.337505, 1.523036, 0.250286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.422501, 1.291733, -0.064793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135407, -0.780904, 0.609797,
		-0.967736, -0.236235, -0.087633,
		0.212489, -0.578257, -0.787698,
		4.486247, 1.118256, -0.301102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.851585, 0.991954, 0.153280>,  <4.337505, 1.523036, 0.250286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.851585, 0.991954, 0.153280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.228771, 0.918457, 0.042244>,  <4.455083, 0.874359, -0.024378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.228771, 0.918457, 0.042244>,  <3.851585, 0.991954, 0.153280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.228771, 0.918457, 0.042244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043127, -0.759417, 0.649173,
		-0.330086, -0.624119, -0.708180,
		0.942965, -0.183742, -0.277589,
		4.511661, 0.863334, -0.041033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.788538, 0.313737, 0.348800>,  <3.851585, 0.991954, 0.153280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.788538, 0.313737, 0.348800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.173996, 0.408684, 0.299740>,  <4.405271, 0.465652, 0.270304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.173996, 0.408684, 0.299740>,  <3.788538, 0.313737, 0.348800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.173996, 0.408684, 0.299740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256529, -0.693652, 0.673082,
		0.074690, -0.680076, -0.729327,
		0.963646, 0.237366, -0.122650,
		4.463090, 0.479894, 0.262945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.233577, -0.319825, 0.097341>,  <3.788538, 0.313737, 0.348800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.233577, -0.319825, 0.097341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.433098, -0.058250, 0.324871>,  <4.552811, 0.098694, 0.461389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.433098, -0.058250, 0.324871>,  <4.233577, -0.319825, 0.097341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.433098, -0.058250, 0.324871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376569, -0.754633, 0.537331,
		0.780635, -0.053820, -0.622665,
		0.498803, 0.653936, 0.568826,
		4.582739, 0.137931, 0.495519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.807193, -0.715471, 0.219919>,  <4.233577, -0.319825, 0.097341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.807193, -0.715471, 0.219919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.830906, -0.408356, 0.475101>,  <4.845134, -0.224087, 0.628211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.830906, -0.408356, 0.475101>,  <4.807193, -0.715471, 0.219919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.830906, -0.408356, 0.475101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467667, -0.585969, 0.661762,
		0.881915, 0.259119, -0.393807,
		0.059283, 0.767788, 0.637956,
		4.848691, -0.178019, 0.666488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.511970, -0.634801, 0.367149>,  <4.807193, -0.715471, 0.219919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.511970, -0.634801, 0.367149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.260738, -0.496254, 0.645874>,  <5.110000, -0.413126, 0.813109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.260738, -0.496254, 0.645874>,  <5.511970, -0.634801, 0.367149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.260738, -0.496254, 0.645874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479686, -0.532755, 0.697189,
		0.612714, 0.772141, 0.168464,
		-0.628078, 0.346368, 0.696812,
		5.072315, -0.392344, 0.854918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.250380, 3.906785, 1.769036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.968031, 3.921036, 2.052013>,  <0.798622, 3.929586, 2.221800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.968031, 3.921036, 2.052013>,  <1.250380, 3.906785, 1.769036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.968031, 3.921036, 2.052013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611868, 0.472517, -0.634306,
		-0.356878, -0.880601, -0.311737,
		-0.705872, 0.035628, 0.707443,
		0.756269, 3.931724, 2.264246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.572518, 3.586332, 1.495426>,  <1.250380, 3.906785, 1.769036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.572518, 3.586332, 1.495426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.512836, 3.862808, 1.778267>,  <0.477028, 4.028694, 1.947971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.512836, 3.862808, 1.778267>,  <0.572518, 3.586332, 1.495426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.512836, 3.862808, 1.778267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516753, 0.555178, -0.651724,
		-0.843033, -0.462636, 0.274342,
		-0.149202, 0.691192, 0.707102,
		0.468076, 4.070166, 1.990397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.153479, 3.760756, 1.545066>,  <0.572518, 3.586332, 1.495426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.153479, 3.760756, 1.545066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.092716, 4.054169, 1.660378>,  <0.240434, 4.230217, 1.729564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.092716, 4.054169, 1.660378>,  <-0.153479, 3.760756, 1.545066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.092716, 4.054169, 1.660378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554236, 0.662881, -0.503400,
		-0.560354, 0.150063, 0.814546,
		0.615489, 0.733532, 0.288278,
		0.277363, 4.274229, 1.746861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.547852, 4.358572, 1.852524>,  <-0.153479, 3.760756, 1.545066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.547852, 4.358572, 1.852524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.199669, 4.500809, 1.716373>,  <0.009241, 4.586151, 1.634683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.199669, 4.500809, 1.716373>,  <-0.547852, 4.358572, 1.852524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.199669, 4.500809, 1.716373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489368, 0.550526, -0.676343,
		-0.053116, 0.755298, 0.653226,
		0.870458, 0.355592, -0.340377,
		0.061469, 4.607486, 1.614260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.382594, 5.110623, 1.904004>,  <-0.547852, 4.358572, 1.852524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.382594, 5.110623, 1.904004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.202244, 4.962830, 1.578995>,  <-0.094034, 4.874154, 1.383989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.202244, 4.962830, 1.578995>,  <-0.382594, 5.110623, 1.904004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.202244, 4.962830, 1.578995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368502, 0.752050, -0.546468,
		0.812969, 0.545805, 0.202925,
		0.450875, -0.369483, -0.812524,
		-0.066981, 4.851985, 1.335238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.106204, 5.694605, 1.598963>,  <-0.382594, 5.110623, 1.904004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.106204, 5.694605, 1.598963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.113224, 5.424988, 1.303570>,  <-0.117436, 5.263217, 1.126334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.113224, 5.424988, 1.303570>,  <-0.106204, 5.694605, 1.598963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.113224, 5.424988, 1.303570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263734, 0.715560, -0.646852,
		0.964436, 0.183411, -0.190325,
		-0.017549, -0.674043, -0.738484,
		-0.118489, 5.222775, 1.082025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.328548, 6.026168, 1.043484>,  <-0.106204, 5.694605, 1.598963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.328548, 6.026168, 1.043484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.086723, 5.757980, 0.871449>,  <-0.058371, 5.597068, 0.768227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.086723, 5.757980, 0.871449>,  <0.328548, 6.026168, 1.043484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.086723, 5.757980, 0.871449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256198, 0.674911, -0.691995,
		0.754235, -0.308163, -0.579797,
		-0.604559, -0.670470, -0.430091,
		-0.094645, 5.556839, 0.742422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.619577, 5.891158, 0.429364>,  <0.328548, 6.026168, 1.043484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.619577, 5.891158, 0.429364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.239677, 5.772064, 0.390728>,  <0.011738, 5.700608, 0.367547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.239677, 5.772064, 0.390728>,  <0.619577, 5.891158, 0.429364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.239677, 5.772064, 0.390728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118352, 0.627257, -0.769767,
		0.289773, -0.719654, -0.630975,
		-0.949750, -0.297735, -0.096589,
		-0.045247, 5.682744, 0.361751>
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
