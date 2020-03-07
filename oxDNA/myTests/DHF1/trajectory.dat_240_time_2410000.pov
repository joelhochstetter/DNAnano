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
	<-0.388316, 6.403730, 2.012840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.003143, 6.355568, 2.079475>,  <0.238019, 6.326671, 2.119457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.003143, 6.355568, 2.079475>,  <-0.388316, 6.403730, 2.012840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.003143, 6.355568, 2.079475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159137, -0.956803, 0.243319,
		0.130096, -0.264634, -0.955533,
		0.978647, -0.120406, 0.166589,
		0.296738, 6.319446, 2.129452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.105387, 5.859941, 1.544730>,  <-0.388316, 6.403730, 2.012840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.105387, 5.859941, 1.544730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.096275, 5.893951, 1.888496>,  <0.217273, 5.914358, 2.094756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.096275, 5.893951, 1.888496>,  <-0.105387, 5.859941, 1.544730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.096275, 5.893951, 1.888496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271961, -0.928879, 0.251439,
		0.819673, -0.360493, -0.445175,
		0.504156, 0.085028, 0.859417,
		0.247522, 5.919460, 2.146322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.449439, 5.313583, 1.583246>,  <-0.105387, 5.859941, 1.544730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.449439, 5.313583, 1.583246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.314579, 5.380493, 1.953835>,  <0.233663, 5.420640, 2.176188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.314579, 5.380493, 1.953835>,  <0.449439, 5.313583, 1.583246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.314579, 5.380493, 1.953835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184915, -0.976685, 0.109051,
		0.923113, -0.134553, 0.360220,
		-0.337149, 0.167276, 0.926471,
		0.213434, 5.430676, 2.231776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.868926, 5.052621, 2.146314>,  <0.449439, 5.313583, 1.583246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.868926, 5.052621, 2.146314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.484009, 5.053093, 2.255119>,  <0.253059, 5.053376, 2.320403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.484009, 5.053093, 2.255119>,  <0.868926, 5.052621, 2.146314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.484009, 5.053093, 2.255119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033634, -0.991801, 0.123284,
		0.269929, 0.127784, 0.954363,
		-0.962293, 0.001179, 0.272014,
		0.195321, 5.053447, 2.336724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.540743, 4.720651, 2.859076>,  <0.868926, 5.052621, 2.146314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.540743, 4.720651, 2.859076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.264755, 4.648888, 2.578575>,  <0.099163, 4.605830, 2.410275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.264755, 4.648888, 2.578575>,  <0.540743, 4.720651, 2.859076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.264755, 4.648888, 2.578575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083294, -0.982040, 0.169289,
		-0.719031, 0.058394, 0.692521,
		-0.689969, -0.179407, -0.701253,
		0.057765, 4.595066, 2.368199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.145173, 4.114845, 3.067323>,  <0.540743, 4.720651, 2.859076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.145173, 4.114845, 3.067323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.083900, 4.139854, 2.672836>,  <0.047137, 4.154860, 2.436144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.083900, 4.139854, 2.672836>,  <0.145173, 4.114845, 3.067323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.083900, 4.139854, 2.672836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275348, -0.955772, -0.103362,
		-0.949062, -0.287386, 0.129192,
		-0.153183, 0.062524, -0.986218,
		0.037946, 4.158612, 2.376971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.250694, 3.588309, 2.875828>,  <0.145173, 4.114845, 3.067323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.250694, 3.588309, 2.875828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.055092, 3.691383, 2.542488>,  <0.062269, 3.753228, 2.342484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.055092, 3.691383, 2.542488>,  <-0.250694, 3.588309, 2.875828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.055092, 3.691383, 2.542488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499890, -0.865709, 0.025640,
		-0.714831, -0.429121, -0.552152,
		0.489006, 0.257687, -0.833349,
		0.091610, 3.768689, 2.292483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.331658, 3.017966, 2.422614>,  <-0.250694, 3.588309, 2.875828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.331658, 3.017966, 2.422614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.000561, 3.190460, 2.281631>,  <0.199892, 3.293957, 2.197042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.000561, 3.190460, 2.281631>,  <-0.331658, 3.017966, 2.422614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.000561, 3.190460, 2.281631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498911, -0.857343, 0.126689,
		-0.247544, -0.281065, -0.927213,
		0.830548, 0.431236, -0.352456,
		0.249725, 3.319831, 2.175894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.374698, 2.365354, 2.929406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.007399, 2.240067, 2.832481>,  <-0.212981, 2.164894, 2.774327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.007399, 2.240067, 2.832481>,  <0.374698, 2.365354, 2.929406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.007399, 2.240067, 2.832481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011881, -0.589824, 0.807444,
		-0.395828, 0.744313, 0.537884,
		-0.918248, -0.313219, -0.242312,
		-0.268076, 2.146101, 2.759788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.955785, 2.637507, 2.599709>,  <0.374698, 2.365354, 2.929406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.955785, 2.637507, 2.599709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.194054, 2.692535, 2.283165>,  <1.337015, 2.725553, 2.093239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.194054, 2.692535, 2.283165>,  <0.955785, 2.637507, 2.599709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.194054, 2.692535, 2.283165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583464, 0.751226, -0.308591,
		0.552036, 0.645549, 0.527753,
		0.595673, 0.137571, -0.791359,
		1.372755, 2.733807, 2.045757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.368956, 3.224316, 2.679509>,  <0.955785, 2.637507, 2.599709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.368956, 3.224316, 2.679509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.265411, 3.129242, 2.305023>,  <1.203285, 3.072198, 2.080332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.265411, 3.129242, 2.305023>,  <1.368956, 3.224316, 2.679509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.265411, 3.129242, 2.305023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574630, 0.816973, -0.048527,
		0.776396, 0.525415, -0.348063,
		-0.258861, -0.237684, -0.936214,
		1.187753, 3.057937, 2.024159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.369548, 3.777994, 2.244328>,  <1.368956, 3.224316, 2.679509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.369548, 3.777994, 2.244328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.102926, 3.525505, 2.085701>,  <0.942953, 3.374012, 1.990525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.102926, 3.525505, 2.085701>,  <1.369548, 3.777994, 2.244328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.102926, 3.525505, 2.085701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665882, 0.743314, -0.063923,
		0.335123, 0.221458, -0.915778,
		-0.666554, -0.631222, -0.396566,
		0.902960, 3.336138, 1.966731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.177915, 4.007731, 1.574330>,  <1.369548, 3.777994, 2.244328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.177915, 4.007731, 1.574330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.884953, 3.790123, 1.738098>,  <0.709175, 3.659558, 1.836359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.884953, 3.790123, 1.738098>,  <1.177915, 4.007731, 1.574330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.884953, 3.790123, 1.738098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632122, 0.766734, -0.111987,
		-0.252992, -0.340823, -0.905447,
		-0.732405, -0.544021, 0.409420,
		0.665231, 3.626917, 1.860924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.607199, 4.038779, 1.123345>,  <1.177915, 4.007731, 1.574330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.607199, 4.038779, 1.123345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.461216, 3.974327, 1.490135>,  <0.373626, 3.935656, 1.710209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.461216, 3.974327, 1.490135>,  <0.607199, 4.038779, 1.123345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.461216, 3.974327, 1.490135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676808, 0.722244, -0.142458,
		-0.639326, -0.672607, -0.372642,
		-0.364957, -0.161130, 0.916975,
		0.351729, 3.925988, 1.765228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.045877, 4.170236, 1.086009>,  <0.607199, 4.038779, 1.123345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.045877, 4.170236, 1.086009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.024591, 4.182289, 1.485260>,  <-0.011820, 4.189521, 1.724811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.024591, 4.182289, 1.485260>,  <-0.045877, 4.170236, 1.086009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.024591, 4.182289, 1.485260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737388, 0.675204, 0.018929,
		-0.673370, -0.737015, 0.058149,
		0.053214, 0.030132, 0.998128,
		-0.008627, 4.191329, 1.784698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.733203, 4.025980, 1.379966>,  <-0.045877, 4.170236, 1.086009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.733203, 4.025980, 1.379966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.524832, 4.234421, 1.650398>,  <-0.399809, 4.359486, 1.812657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.524832, 4.234421, 1.650398>,  <-0.733203, 4.025980, 1.379966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.524832, 4.234421, 1.650398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801425, 0.571239, 0.177214,
		-0.293856, -0.634144, 0.715200,
		0.520929, 0.521103, 0.676080,
		-0.368553, 4.390752, 1.853222>
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
