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
	<0.759644, 3.585710, 4.750181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.891251, 3.352348, 5.047203>,  <0.970214, 3.212331, 5.225416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.891251, 3.352348, 5.047203>,  <0.759644, 3.585710, 4.750181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.891251, 3.352348, 5.047203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033618, -0.793072, -0.608199,
		0.943726, 0.175144, -0.280547,
		0.329016, -0.583405, 0.742555,
		0.989955, 3.177327, 5.269969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.358561, 3.168626, 4.585230>,  <0.759644, 3.585710, 4.750181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.358561, 3.168626, 4.585230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.184708, 2.959122, 4.878288>,  <1.080396, 2.833419, 5.054123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.184708, 2.959122, 4.878288>,  <1.358561, 3.168626, 4.585230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.184708, 2.959122, 4.878288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185216, -0.744128, -0.641848,
		0.881357, -0.414666, 0.226414,
		-0.434633, -0.523762, 0.732645,
		1.054318, 2.801993, 5.098082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.706374, 2.452799, 4.729079>,  <1.358561, 3.168626, 4.585230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.706374, 2.452799, 4.729079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.315018, 2.535500, 4.729996>,  <1.080204, 2.585120, 4.730546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.315018, 2.535500, 4.729996>,  <1.706374, 2.452799, 4.729079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.315018, 2.535500, 4.729996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105010, -0.487326, -0.866883,
		-0.178111, -0.848392, 0.498506,
		-0.978391, 0.206750, 0.002291,
		1.021500, 2.597525, 4.730683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.536902, 2.374970, 4.090146>,  <1.706374, 2.452799, 4.729079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.536902, 2.374970, 4.090146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.199707, 2.355583, 4.304443>,  <0.997390, 2.343951, 4.433022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.199707, 2.355583, 4.304443>,  <1.536902, 2.374970, 4.090146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.199707, 2.355583, 4.304443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354649, -0.698762, -0.621253,
		0.404468, -0.713710, 0.571860,
		-0.842988, -0.048468, 0.535744,
		0.946810, 2.341043, 4.465167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.419552, 1.639345, 4.121192>,  <1.536902, 2.374970, 4.090146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.419552, 1.639345, 4.121192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.082870, 1.830864, 4.221024>,  <0.880862, 1.945775, 4.280922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.082870, 1.830864, 4.221024>,  <1.419552, 1.639345, 4.121192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.082870, 1.830864, 4.221024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533200, -0.664257, -0.523890,
		-0.085051, -0.574036, 0.814401,
		-0.841703, 0.478796, 0.249580,
		0.830360, 1.974503, 4.295897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.938789, 1.088791, 4.340446>,  <1.419552, 1.639345, 4.121192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.938789, 1.088791, 4.340446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.770622, 1.419403, 4.190727>,  <0.669722, 1.617770, 4.100896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.770622, 1.419403, 4.190727>,  <0.938789, 1.088791, 4.340446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.770622, 1.419403, 4.190727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553081, -0.560473, -0.616419,
		-0.719272, -0.052136, 0.692770,
		-0.420416, 0.826531, -0.374297,
		0.644497, 1.667362, 4.078438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.229630, 0.959426, 4.293438>,  <0.938789, 1.088791, 4.340446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.229630, 0.959426, 4.293438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.316223, 1.260223, 4.044395>,  <0.368179, 1.440702, 3.894970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.316223, 1.260223, 4.044395>,  <0.229630, 0.959426, 4.293438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.316223, 1.260223, 4.044395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416543, -0.505625, -0.755536,
		-0.882965, 0.422903, 0.203778,
		0.216484, 0.751995, -0.622607,
		0.381168, 1.485822, 3.857614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.403390, 1.118012, 3.918902>,  <0.229630, 0.959426, 4.293438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.403390, 1.118012, 3.918902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.093437, 1.246643, 3.701225>,  <0.092535, 1.323822, 3.570619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.093437, 1.246643, 3.701225>,  <-0.403390, 1.118012, 3.918902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.093437, 1.246643, 3.701225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472917, -0.276296, -0.836666,
		-0.419412, 0.905675, -0.062017,
		0.774883, 0.321578, -0.544191,
		0.139028, 1.343117, 3.537968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.261687, 0.340892, 2.429813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.034828, 0.577881, 2.200966>,  <0.101287, 0.720074, 2.063657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.034828, 0.577881, 2.200966>,  <-0.261687, 0.340892, 2.429813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.034828, 0.577881, 2.200966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440811, 0.368419, 0.818507,
		0.695722, -0.716411, -0.052220,
		0.567148, 0.592472, -0.572119,
		0.135316, 0.755622, 2.029330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.401620, 0.393948, 2.727771>,  <-0.261687, 0.340892, 2.429813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.401620, 0.393948, 2.727771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.390778, 0.719147, 2.495117>,  <0.384272, 0.914266, 2.355525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.390778, 0.719147, 2.495117>,  <0.401620, 0.393948, 2.727771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.390778, 0.719147, 2.495117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461711, 0.526249, 0.714063,
		0.886616, -0.249191, -0.389634,
		-0.027106, 0.812998, -0.581635,
		0.382646, 0.963046, 2.320627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.010696, 0.703021, 2.876247>,  <0.401620, 0.393948, 2.727771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.010696, 0.703021, 2.876247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.742382, 0.965561, 2.738113>,  <0.581394, 1.123085, 2.655233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.742382, 0.965561, 2.738113>,  <1.010696, 0.703021, 2.876247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.742382, 0.965561, 2.738113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265832, 0.647465, 0.714229,
		0.692374, 0.387293, -0.608787,
		-0.670784, 0.656349, -0.345333,
		0.541147, 1.162466, 2.634513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.263713, 1.421948, 2.813206>,  <1.010696, 0.703021, 2.876247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.263713, 1.421948, 2.813206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.869289, 1.412750, 2.879128>,  <0.632635, 1.407232, 2.918680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.869289, 1.412750, 2.879128>,  <1.263713, 1.421948, 2.813206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.869289, 1.412750, 2.879128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121640, 0.576216, 0.808195,
		-0.113546, 0.816974, -0.565385,
		-0.986058, -0.022994, 0.164804,
		0.573472, 1.405852, 2.928569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.064724, 2.117132, 2.912238>,  <1.263713, 1.421948, 2.813206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.064724, 2.117132, 2.912238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.765938, 1.896072, 3.060089>,  <0.586666, 1.763437, 3.148799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.765938, 1.896072, 3.060089>,  <1.064724, 2.117132, 2.912238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.765938, 1.896072, 3.060089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078542, 0.478704, 0.874456,
		-0.660209, 0.682219, -0.314169,
		-0.746964, -0.552648, 0.369627,
		0.541848, 1.730278, 3.170977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.393826, 2.478176, 3.119578>,  <1.064724, 2.117132, 2.912238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.393826, 2.478176, 3.119578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.400162, 2.161514, 3.363884>,  <0.403963, 1.971517, 3.510468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.400162, 2.161514, 3.363884>,  <0.393826, 2.478176, 3.119578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.400162, 2.161514, 3.363884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005635, 0.610761, 0.791795,
		-0.999859, -0.015983, 0.005213,
		0.015839, -0.791654, 0.610765,
		0.404913, 1.924018, 3.547113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.060012, 2.791039, 3.660868>,  <0.393826, 2.478176, 3.119578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.060012, 2.791039, 3.660868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.220318, 2.447708, 3.789032>,  <0.316501, 2.241709, 3.865930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.220318, 2.447708, 3.789032>,  <0.060012, 2.791039, 3.660868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.220318, 2.447708, 3.789032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312591, 0.456839, 0.832818,
		-0.861206, -0.233606, 0.451390,
		0.400764, -0.858328, 0.320409,
		0.340547, 2.190210, 3.885155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.183264, 2.816085, 4.280797>,  <0.060012, 2.791039, 3.660868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.183264, 2.816085, 4.280797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.136166, 2.575699, 4.267418>,  <0.327824, 2.431467, 4.259390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.136166, 2.575699, 4.267418>,  <-0.183264, 2.816085, 4.280797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.136166, 2.575699, 4.267418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414631, 0.508986, 0.754331,
		-0.436301, -0.616259, 0.655642,
		0.798575, -0.600965, -0.033449,
		0.375738, 2.395409, 4.257383>
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
