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
	right 1.6 * <0.724836, 0, 0.688921>
	location <12.1561, 44.2, 77.9145>
	look_at <46.7464, 44.2, 41.5209>
	direction <34.5903, 0, -36.3936>
	angle 67.0682
}


# declare cpy_camera_pos = <12.1561, 44.2, 77.9145>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 70.72
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.0359156, -1, 1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.0359156, 1, -1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<50.347843, 41.428993, 47.256214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.253609, 41.814156, 47.308849>,  <50.197067, 42.045254, 47.340431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.253609, 41.814156, 47.308849>,  <50.347843, 41.428993, 47.256214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.253609, 41.814156, 47.308849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081236, -0.115417, 0.989990,
		0.968451, 0.243922, -0.051031,
		-0.235590, 0.962902, 0.131591,
		50.182930, 42.103027, 47.348328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.735439, 41.759804, 47.809086>,  <50.347843, 41.428993, 47.256214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.735439, 41.759804, 47.809086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.401382, 41.978386, 47.784039>,  <50.200947, 42.109535, 47.769009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.401382, 41.978386, 47.784039>,  <50.735439, 41.759804, 47.809086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.401382, 41.978386, 47.784039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075523, 0.226696, 0.971033,
		0.544824, 0.806222, -0.230594,
		-0.835143, 0.546457, -0.062621,
		50.150841, 42.142323, 47.765251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.911900, 42.378323, 48.101219>,  <50.735439, 41.759804, 47.809086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.911900, 42.378323, 48.101219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.514740, 42.333778, 48.117931>,  <50.276443, 42.307053, 48.127960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.514740, 42.333778, 48.117931>,  <50.911900, 42.378323, 48.101219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.514740, 42.333778, 48.117931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020011, 0.189865, 0.981606,
		-0.117246, 0.975474, -0.186288,
		-0.992901, -0.111362, 0.041781,
		50.216869, 42.300369, 48.130466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.753376, 42.951111, 48.602818>,  <50.911900, 42.378323, 48.101219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.753376, 42.951111, 48.602818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.459671, 42.680206, 48.584133>,  <50.283447, 42.517666, 48.572922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.459671, 42.680206, 48.584133>,  <50.753376, 42.951111, 48.602818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.459671, 42.680206, 48.584133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226128, 0.179116, 0.957488,
		-0.640099, 0.713610, -0.284665,
		-0.734261, -0.677258, -0.046715,
		50.239391, 42.477028, 48.570118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.276352, 43.306854, 48.815514>,  <50.753376, 42.951111, 48.602818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.276352, 43.306854, 48.815514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.181900, 42.923157, 48.877605>,  <50.125229, 42.692940, 48.914860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.181900, 42.923157, 48.877605>,  <50.276352, 43.306854, 48.815514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.181900, 42.923157, 48.877605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248892, 0.214126, 0.944565,
		-0.939306, 0.184403, -0.289309,
		-0.236129, -0.959242, 0.155234,
		50.111061, 42.635384, 48.924175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.805141, 43.327736, 49.375294>,  <50.276352, 43.306854, 48.815514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.805141, 43.327736, 49.375294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.861267, 42.931725, 49.380241>,  <49.894943, 42.694118, 49.383209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.861267, 42.931725, 49.380241>,  <49.805141, 43.327736, 49.375294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.861267, 42.931725, 49.380241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225200, -0.019744, 0.974112,
		-0.964156, -0.139465, -0.225726,
		0.140311, -0.990030, 0.012371,
		49.903362, 42.634716, 49.383953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.290211, 43.019722, 49.899685>,  <49.805141, 43.327736, 49.375294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.290211, 43.019722, 49.899685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.585381, 42.757278, 49.836441>,  <49.762482, 42.599812, 49.798496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.585381, 42.757278, 49.836441>,  <49.290211, 43.019722, 49.899685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.585381, 42.757278, 49.836441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053299, -0.290199, 0.955481,
		-0.672779, -0.696643, -0.249114,
		0.737922, -0.656105, -0.158110,
		49.806755, 42.560448, 49.789009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.027405, 42.313915, 49.855392>,  <49.290211, 43.019722, 49.899685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.027405, 42.313915, 49.855392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.404709, 42.283661, 49.984718>,  <49.631092, 42.265507, 50.062313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.404709, 42.283661, 49.984718>,  <49.027405, 42.313915, 49.855392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.404709, 42.283661, 49.984718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323463, -0.429252, 0.843276,
		0.074998, -0.900012, -0.429364,
		0.943264, -0.075639, 0.323314,
		49.687687, 42.260967, 50.081711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.175022, 41.580288, 50.019318>,  <49.027405, 42.313915, 49.855392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.175022, 41.580288, 50.019318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.463135, 41.756966, 50.233273>,  <49.636002, 41.862972, 50.361645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.463135, 41.756966, 50.233273>,  <49.175022, 41.580288, 50.019318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.463135, 41.756966, 50.233273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375046, -0.400698, 0.835932,
		0.583557, -0.802710, -0.122957,
		0.720280, 0.441699, 0.534883,
		49.679218, 41.889477, 50.393738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.502983, 41.034431, 50.519817>,  <49.175022, 41.580288, 50.019318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.502983, 41.034431, 50.519817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.600121, 41.396469, 50.659435>,  <49.658401, 41.613693, 50.743206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.600121, 41.396469, 50.659435>,  <49.502983, 41.034431, 50.519817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.600121, 41.396469, 50.659435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415673, -0.228016, 0.880468,
		0.876496, -0.358900, 0.320853,
		0.242841, 0.905096, 0.349040,
		49.672974, 41.667999, 50.764149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.808960, 40.958912, 51.113556>,  <49.502983, 41.034431, 50.519817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.808960, 40.958912, 51.113556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.702232, 41.343918, 51.132999>,  <49.638195, 41.574921, 51.144665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.702232, 41.343918, 51.132999>,  <49.808960, 40.958912, 51.113556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.702232, 41.343918, 51.132999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335856, -0.140143, 0.931430,
		0.903331, 0.232201, 0.360661,
		-0.266823, 0.962519, 0.048609,
		49.622185, 41.632675, 51.147583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.010384, 41.162666, 51.775093>,  <49.808960, 40.958912, 51.113556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.010384, 41.162666, 51.775093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.710762, 41.409645, 51.679020>,  <49.530991, 41.557831, 51.621376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.710762, 41.409645, 51.679020>,  <50.010384, 41.162666, 51.775093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.710762, 41.409645, 51.679020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422763, -0.166341, 0.890844,
		0.510094, 0.768826, 0.385630,
		-0.749050, 0.617445, -0.240181,
		49.486046, 41.594879, 51.606964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.944283, 41.549915, 52.311802>,  <50.010384, 41.162666, 51.775093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.944283, 41.549915, 52.311802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.599190, 41.620972, 52.122425>,  <49.392136, 41.663605, 52.008801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.599190, 41.620972, 52.122425>,  <49.944283, 41.549915, 52.311802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.599190, 41.620972, 52.122425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457848, 0.123018, 0.880478,
		0.214650, 0.976376, -0.024799,
		-0.862729, 0.177640, -0.473438,
		49.340370, 41.674263, 51.980392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.542576, 42.062138, 52.680618>,  <49.944283, 41.549915, 52.311802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.542576, 42.062138, 52.680618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.243378, 41.910484, 52.462715>,  <49.063858, 41.819492, 52.331974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.243378, 41.910484, 52.462715>,  <49.542576, 42.062138, 52.680618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.243378, 41.910484, 52.462715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639626, 0.192704, 0.744140,
		-0.177153, 0.905053, -0.386646,
		-0.747994, -0.379136, -0.544757,
		49.018978, 41.796745, 52.299290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.041851, 42.544651, 52.445606>,  <49.542576, 42.062138, 52.680618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.041851, 42.544651, 52.445606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.843925, 42.197380, 52.430515>,  <48.725170, 41.989017, 52.421463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.843925, 42.197380, 52.430515>,  <49.041851, 42.544651, 52.445606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.843925, 42.197380, 52.430515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598866, 0.309224, 0.738742,
		-0.629694, 0.388134, -0.672932,
		-0.494817, -0.868178, -0.037724,
		48.695480, 41.936928, 52.419197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.426960, 42.694740, 52.696571>,  <49.041851, 42.544651, 52.445606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.426960, 42.694740, 52.696571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.372742, 42.298447, 52.700104>,  <48.340210, 42.060673, 52.702221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.372742, 42.298447, 52.700104>,  <48.426960, 42.694740, 52.696571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.372742, 42.298447, 52.700104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472101, 0.072421, 0.878565,
		-0.871061, 0.114921, -0.477542,
		-0.135550, -0.990731, 0.008829,
		48.332077, 42.001228, 52.702751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.781258, 42.687374, 52.892017>,  <48.426960, 42.694740, 52.696571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.781258, 42.687374, 52.892017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.953926, 42.338707, 52.984848>,  <48.057529, 42.129509, 53.040546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.953926, 42.338707, 52.984848>,  <47.781258, 42.687374, 52.892017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.953926, 42.338707, 52.984848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527569, -0.035287, 0.848779,
		-0.731660, -0.488832, -0.475096,
		0.431675, -0.871664, 0.232075,
		48.083427, 42.077209, 53.054470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.239719, 42.274860, 52.971016>,  <47.781258, 42.687374, 52.892017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.239719, 42.274860, 52.971016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.530502, 42.085754, 53.170223>,  <47.704971, 41.972290, 53.289745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.530502, 42.085754, 53.170223>,  <47.239719, 42.274860, 52.971016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.530502, 42.085754, 53.170223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582868, -0.041412, 0.811511,
		-0.363035, -0.880212, -0.305668,
		0.726960, -0.472771, 0.498013,
		47.748589, 41.943924, 53.319626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.893139, 41.926266, 53.456978>,  <47.239719, 42.274860, 52.971016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.893139, 41.926266, 53.456978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.261650, 41.938103, 53.612091>,  <47.482758, 41.945206, 53.705158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.261650, 41.938103, 53.612091>,  <46.893139, 41.926266, 53.456978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.261650, 41.938103, 53.612091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386566, -0.039549, 0.921413,
		0.042612, -0.998779, -0.024993,
		0.921277, 0.029602, 0.387780,
		47.538033, 41.946983, 53.728424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.885223, 41.436352, 53.987309>,  <46.893139, 41.926266, 53.456978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.885223, 41.436352, 53.987309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.207680, 41.657959, 54.070446>,  <47.401154, 41.790924, 54.120327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.207680, 41.657959, 54.070446>,  <46.885223, 41.436352, 53.987309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.207680, 41.657959, 54.070446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230405, -0.029632, 0.972644,
		0.545021, -0.831977, 0.103761,
		0.806143, 0.554018, 0.207842,
		47.449524, 41.824165, 54.132797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.162811, 41.132973, 54.560230>,  <46.885223, 41.436352, 53.987309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.162811, 41.132973, 54.560230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.304985, 41.506447, 54.577656>,  <47.390289, 41.730530, 54.588112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.304985, 41.506447, 54.577656>,  <47.162811, 41.132973, 54.560230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.304985, 41.506447, 54.577656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156963, 0.013678, 0.987510,
		0.921428, -0.357832, 0.151416,
		0.355433, 0.933686, 0.043563,
		47.411613, 41.786552, 54.590725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.754818, 41.134323, 55.047455>,  <47.162811, 41.132973, 54.560230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.754818, 41.134323, 55.047455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.653999, 41.521225, 55.035538>,  <47.593510, 41.753368, 55.028389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.653999, 41.521225, 55.035538>,  <47.754818, 41.134323, 55.047455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.653999, 41.521225, 55.035538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173480, -0.014873, 0.984725,
		0.952040, 0.253361, 0.171549,
		-0.252043, 0.967257, -0.029793,
		47.578388, 41.811401, 55.026600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.098114, 41.563889, 55.600189>,  <47.754818, 41.134323, 55.047455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.098114, 41.563889, 55.600189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.779732, 41.785873, 55.503464>,  <47.588703, 41.919064, 55.445427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.779732, 41.785873, 55.503464>,  <48.098114, 41.563889, 55.600189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.779732, 41.785873, 55.503464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248298, 0.065010, 0.966500,
		0.552092, 0.829331, 0.086051,
		-0.795954, 0.554963, -0.241813,
		47.540947, 41.952362, 55.430920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.167503, 42.128811, 56.003471>,  <48.098114, 41.563889, 55.600189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.167503, 42.128811, 56.003471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.782242, 42.110390, 55.897480>,  <47.551086, 42.099339, 55.833885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.782242, 42.110390, 55.897480>,  <48.167503, 42.128811, 56.003471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.782242, 42.110390, 55.897480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268717, 0.123978, 0.955207,
		-0.011136, 0.991216, -0.131784,
		-0.963155, -0.046050, -0.264976,
		47.493294, 42.096577, 55.817986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.901852, 42.616600, 56.424339>,  <48.167503, 42.128811, 56.003471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.901852, 42.616600, 56.424339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.589905, 42.395180, 56.307449>,  <47.402737, 42.262329, 56.237316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.589905, 42.395180, 56.307449>,  <47.901852, 42.616600, 56.424339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.589905, 42.395180, 56.307449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387226, 0.059840, 0.920041,
		-0.491800, 0.830665, -0.261015,
		-0.779865, -0.553548, -0.292226,
		47.355946, 42.229115, 56.219780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.254189, 42.991592, 56.559761>,  <47.901852, 42.616600, 56.424339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.254189, 42.991592, 56.559761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.113403, 42.618912, 56.523884>,  <47.028931, 42.395302, 56.502357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.113403, 42.618912, 56.523884>,  <47.254189, 42.991592, 56.559761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.113403, 42.618912, 56.523884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543833, 0.125560, 0.829747,
		-0.761817, 0.340825, -0.550885,
		-0.351967, -0.931705, -0.089698,
		47.007812, 42.339401, 56.496975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.587635, 43.104439, 56.588108>,  <47.254189, 42.991592, 56.559761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.587635, 43.104439, 56.588108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.613800, 42.711113, 56.656017>,  <46.629501, 42.475117, 56.696762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.613800, 42.711113, 56.656017>,  <46.587635, 43.104439, 56.588108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.613800, 42.711113, 56.656017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699004, 0.076262, 0.711039,
		-0.712119, -0.165183, -0.682349,
		0.065414, -0.983310, 0.169772,
		46.633423, 42.416119, 56.706947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.976646, 42.895615, 56.772701>,  <46.587635, 43.104439, 56.588108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.976646, 42.895615, 56.772701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.192772, 42.585938, 56.904572>,  <46.322449, 42.400131, 56.983692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.192772, 42.585938, 56.904572>,  <45.976646, 42.895615, 56.772701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.192772, 42.585938, 56.904572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595450, -0.074955, 0.799888,
		-0.594559, -0.628493, -0.501494,
		0.540314, -0.774195, 0.329671,
		46.354866, 42.353680, 57.003471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.485176, 42.334476, 57.002037>,  <45.976646, 42.895615, 56.772701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.485176, 42.334476, 57.002037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.827492, 42.278770, 57.201332>,  <46.032879, 42.245346, 57.320908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.827492, 42.278770, 57.201332>,  <45.485176, 42.334476, 57.002037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.827492, 42.278770, 57.201332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506130, -0.026069, 0.862063,
		-0.107072, -0.989911, -0.092799,
		0.855785, -0.139271, 0.498233,
		46.084229, 42.236992, 57.350803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.215858, 41.988419, 57.548397>,  <45.485176, 42.334476, 57.002037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.215858, 41.988419, 57.548397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.593132, 42.027618, 57.675392>,  <45.819496, 42.051140, 57.751591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.593132, 42.027618, 57.675392>,  <45.215858, 41.988419, 57.548397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.593132, 42.027618, 57.675392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328629, 0.134080, 0.934893,
		0.049050, -0.986113, 0.158667,
		0.943185, 0.097999, 0.317488,
		45.876087, 42.057018, 57.770638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.358349, 41.427055, 57.979858>,  <45.215858, 41.988419, 57.548397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.358349, 41.427055, 57.979858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.602814, 41.733612, 58.058975>,  <45.749493, 41.917545, 58.106445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.602814, 41.733612, 58.058975>,  <45.358349, 41.427055, 57.979858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.602814, 41.733612, 58.058975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321738, 0.012229, 0.946750,
		0.723165, -0.642254, 0.254052,
		0.611161, 0.766394, 0.197794,
		45.786163, 41.963531, 58.118313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.706825, 41.269630, 58.694180>,  <45.358349, 41.427055, 57.979858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.706825, 41.269630, 58.694180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.746681, 41.664787, 58.646606>,  <45.770596, 41.901882, 58.618061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.746681, 41.664787, 58.646606>,  <45.706825, 41.269630, 58.694180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.746681, 41.664787, 58.646606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421267, 0.150170, 0.894418,
		0.901447, -0.039018, 0.431128,
		0.099641, 0.987890, -0.118933,
		45.776573, 41.961155, 58.610928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.938950, 41.515705, 59.438519>,  <45.706825, 41.269630, 58.694180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.938950, 41.515705, 59.438519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.782600, 41.808090, 59.214767>,  <45.688789, 41.983521, 59.080517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.782600, 41.808090, 59.214767>,  <45.938950, 41.515705, 59.438519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.782600, 41.808090, 59.214767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559191, 0.294136, 0.775106,
		0.731110, 0.615770, 0.293779,
		-0.390876, 0.730966, -0.559378,
		45.665337, 42.027382, 59.046955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.903412, 42.103168, 59.811844>,  <45.938950, 41.515705, 59.438519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.903412, 42.103168, 59.811844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.663338, 42.217896, 59.513176>,  <45.519291, 42.286732, 59.333977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.663338, 42.217896, 59.513176>,  <45.903412, 42.103168, 59.811844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.663338, 42.217896, 59.513176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626483, 0.411806, 0.661767,
		0.497287, 0.864958, -0.067476,
		-0.600188, 0.286815, -0.746667,
		45.483280, 42.303940, 59.289177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.786674, 42.843704, 59.832371>,  <45.903412, 42.103168, 59.811844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.786674, 42.843704, 59.832371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.483727, 42.669815, 59.637474>,  <45.301956, 42.565483, 59.520538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.483727, 42.669815, 59.637474>,  <45.786674, 42.843704, 59.832371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.483727, 42.669815, 59.637474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652937, 0.512973, 0.557254,
		0.007690, 0.740187, -0.672358,
		-0.757373, -0.434722, -0.487240,
		45.256516, 42.539398, 59.491302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.261471, 43.368694, 59.692650>,  <45.786674, 42.843704, 59.832371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.261471, 43.368694, 59.692650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.075333, 43.014809, 59.681854>,  <44.963650, 42.802479, 59.675377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.075333, 43.014809, 59.681854>,  <45.261471, 43.368694, 59.692650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.075333, 43.014809, 59.681854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684446, 0.340345, 0.644748,
		-0.561234, 0.318503, -0.763919,
		-0.465350, -0.884715, -0.026985,
		44.935726, 42.749393, 59.673759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.630959, 43.581093, 59.763916>,  <45.261471, 43.368694, 59.692650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.630959, 43.581093, 59.763916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.610939, 43.195656, 59.868973>,  <44.598927, 42.964394, 59.932007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.610939, 43.195656, 59.868973>,  <44.630959, 43.581093, 59.763916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.610939, 43.195656, 59.868973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588147, 0.240971, 0.772021,
		-0.807204, -0.115829, -0.578797,
		-0.050051, -0.963596, 0.262637,
		44.595924, 42.906578, 59.947765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.890022, 43.365170, 59.618507>,  <44.630959, 43.581093, 59.763916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.890022, 43.365170, 59.618507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.088997, 43.139664, 59.882240>,  <44.208382, 43.004360, 60.040482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.088997, 43.139664, 59.882240>,  <43.890022, 43.365170, 59.618507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.088997, 43.139664, 59.882240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692637, 0.199504, 0.693146,
		-0.522313, -0.801477, -0.291245,
		0.497436, -0.563767, 0.659336,
		44.238228, 42.970535, 60.080040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.358170, 43.030254, 59.904457>,  <43.890022, 43.365170, 59.618507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.358170, 43.030254, 59.904457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.645096, 42.957329, 60.173447>,  <43.817249, 42.913574, 60.334843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.645096, 42.957329, 60.173447>,  <43.358170, 43.030254, 59.904457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.645096, 42.957329, 60.173447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570986, 0.399303, 0.717309,
		-0.399297, -0.898509, 0.182326,
		0.717312, -0.182314, 0.672477,
		43.860291, 42.902634, 60.375191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.047955, 42.762230, 60.462502>,  <43.358170, 43.030254, 59.904457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.047955, 42.762230, 60.462502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.387814, 42.910614, 60.612427>,  <43.591728, 42.999645, 60.702381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.387814, 42.910614, 60.612427>,  <43.047955, 42.762230, 60.462502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.387814, 42.910614, 60.612427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474910, 0.229259, 0.849648,
		0.229259, -0.899904, 0.370963,
		-0.849648, -0.370963, -0.374814,
		43.642708, 43.021904, 60.724873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.157906, 42.525265, 61.165295>,  <43.047955, 42.762230, 60.462502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.157906, 42.525265, 61.165295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.402969, 42.841370, 61.170025>,  <43.550007, 43.031033, 61.172863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.402969, 42.841370, 61.170025>,  <43.157906, 42.525265, 61.165295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.402969, 42.841370, 61.170025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376696, 0.278822, 0.883379,
		0.694804, -0.545661, 0.468511,
		0.612657, 0.790261, 0.011821,
		43.586765, 43.078449, 61.173573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.390823, 42.475887, 61.895855>,  <43.157906, 42.525265, 61.165295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.390823, 42.475887, 61.895855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.461868, 42.833366, 61.731052>,  <43.504498, 43.047855, 61.632172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.461868, 42.833366, 61.731052>,  <43.390823, 42.475887, 61.895855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.461868, 42.833366, 61.731052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520703, 0.440603, 0.731258,
		0.835058, 0.084651, 0.543611,
		0.177615, 0.893702, -0.412007,
		43.515152, 43.101479, 61.607449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.667694, 42.863770, 62.441540>,  <43.390823, 42.475887, 61.895855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.667694, 42.863770, 62.441540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.465134, 43.072693, 62.167091>,  <43.343597, 43.198048, 62.002422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.465134, 43.072693, 62.167091>,  <43.667694, 42.863770, 62.441540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.465134, 43.072693, 62.167091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396788, 0.565297, 0.723186,
		0.765585, 0.638463, -0.079020,
		-0.506398, 0.522306, -0.686118,
		43.313213, 43.229385, 61.961258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.871132, 43.488449, 62.420998>,  <43.667694, 42.863770, 62.441540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.871132, 43.488449, 62.420998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.491776, 43.494827, 62.294319>,  <43.264160, 43.498653, 62.218311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.491776, 43.494827, 62.294319>,  <43.871132, 43.488449, 62.420998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.491776, 43.494827, 62.294319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243046, 0.604897, 0.758306,
		0.203660, 0.796144, -0.569805,
		-0.948394, 0.015948, -0.316693,
		43.207256, 43.499611, 62.199310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.572361, 44.162952, 62.303608>,  <43.871132, 43.488449, 62.420998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.572361, 44.162952, 62.303608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.275017, 43.909317, 62.388786>,  <43.096611, 43.757133, 62.439896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.275017, 43.909317, 62.388786>,  <43.572361, 44.162952, 62.303608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.275017, 43.909317, 62.388786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244205, 0.553655, 0.796134,
		-0.622721, 0.539811, -0.566413,
		-0.743359, -0.634090, 0.212948,
		43.052010, 43.719090, 62.452671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.024845, 44.554935, 62.372646>,  <43.572361, 44.162952, 62.303608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.024845, 44.554935, 62.372646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.001488, 44.235046, 62.611656>,  <42.987473, 44.043114, 62.755062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.001488, 44.235046, 62.611656>,  <43.024845, 44.554935, 62.372646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.001488, 44.235046, 62.611656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046528, 0.600075, 0.798589,
		-0.997209, 0.018830, -0.072249,
		-0.058392, -0.799722, 0.597524,
		42.983971, 43.995129, 62.790913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.484905, 44.702377, 62.820335>,  <43.024845, 44.554935, 62.372646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.484905, 44.702377, 62.820335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.765961, 44.459229, 62.968281>,  <42.934593, 44.313339, 63.057049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.765961, 44.459229, 62.968281>,  <42.484905, 44.702377, 62.820335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.765961, 44.459229, 62.968281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048506, 0.559511, 0.827402,
		-0.709896, -0.563420, 0.422616,
		0.702634, -0.607869, 0.369866,
		42.976749, 44.276867, 63.079239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.934525, 44.556885, 62.365746>,  <42.484905, 44.702377, 62.820335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.934525, 44.556885, 62.365746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607872, 44.440224, 62.166527>,  <41.411880, 44.370228, 62.046997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607872, 44.440224, 62.166527>,  <41.934525, 44.556885, 62.365746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.607872, 44.440224, 62.166527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379095, 0.379624, -0.843903,
		0.435199, -0.877965, -0.199447,
		-0.816632, -0.291657, -0.498045,
		41.362881, 44.352726, 62.017113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.033161, 44.158806, 61.664345>,  <41.934525, 44.556885, 62.365746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.033161, 44.158806, 61.664345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735134, 44.424873, 61.684063>,  <41.556320, 44.584515, 61.695892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735134, 44.424873, 61.684063>,  <42.033161, 44.158806, 61.664345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.735134, 44.424873, 61.684063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379063, 0.483088, -0.789264,
		-0.548808, -0.569366, -0.612072,
		-0.745064, 0.665168, 0.049297,
		41.511616, 44.624424, 61.698853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630478, 44.231915, 61.046768>,  <42.033161, 44.158806, 61.664345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630478, 44.231915, 61.046768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.671944, 44.575485, 61.247368>,  <41.696823, 44.781628, 61.367725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.671944, 44.575485, 61.247368>,  <41.630478, 44.231915, 61.046768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.671944, 44.575485, 61.247368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449668, 0.409266, -0.793915,
		-0.887160, 0.307808, -0.343805,
		0.103666, 0.858927, 0.501496,
		41.703045, 44.833164, 61.397816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301449, 44.824127, 60.691406>,  <41.630478, 44.231915, 61.046768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301449, 44.824127, 60.691406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630329, 44.910728, 60.901970>,  <41.827660, 44.962688, 61.028309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630329, 44.910728, 60.901970>,  <41.301449, 44.824127, 60.691406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.630329, 44.910728, 60.901970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377757, 0.484238, -0.789185,
		-0.425769, 0.847726, 0.316356,
		0.822204, 0.216505, 0.526408,
		41.876991, 44.975681, 61.059891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422562, 45.495323, 60.643425>,  <41.301449, 44.824127, 60.691406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.422562, 45.495323, 60.643425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.771053, 45.312164, 60.714191>,  <41.980148, 45.202271, 60.756649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.771053, 45.312164, 60.714191>,  <41.422562, 45.495323, 60.643425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.771053, 45.312164, 60.714191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366410, 0.366778, -0.855113,
		0.326664, 0.809819, 0.487324,
		0.871226, -0.457895, 0.176913,
		42.032421, 45.174797, 60.767265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.987282, 45.830280, 60.959370>,  <41.422562, 45.495323, 60.643425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.987282, 45.830280, 60.959370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.293915, 45.580238, 61.018150>,  <42.477894, 45.430214, 61.053417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.293915, 45.580238, 61.018150>,  <41.987282, 45.830280, 60.959370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.293915, 45.580238, 61.018150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307249, 0.156114, -0.938737,
		0.563866, 0.764772, 0.311736,
		0.766585, -0.625102, 0.146948,
		42.523891, 45.392708, 61.062233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.444942, 46.120560, 60.647419>,  <41.987282, 45.830280, 60.959370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.444942, 46.120560, 60.647419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.557266, 45.736656, 60.646584>,  <42.624660, 45.506313, 60.646084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.557266, 45.736656, 60.646584>,  <42.444942, 46.120560, 60.647419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.557266, 45.736656, 60.646584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288851, 0.086588, -0.953451,
		0.915266, 0.267133, 0.301543,
		0.280808, -0.959762, -0.002089,
		42.641510, 45.448727, 60.645958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.151638, 45.988934, 60.366371>,  <42.444942, 46.120560, 60.647419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.151638, 45.988934, 60.366371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.956882, 45.644188, 60.309612>,  <42.840031, 45.437340, 60.275558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.956882, 45.644188, 60.309612>,  <43.151638, 45.988934, 60.366371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.956882, 45.644188, 60.309612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246059, 0.020535, -0.969037,
		0.838090, -0.506728, 0.202071,
		-0.486889, -0.861861, -0.141896,
		42.810814, 45.385628, 60.267044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.593571, 45.666870, 59.944901>,  <43.151638, 45.988934, 60.366371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.593571, 45.666870, 59.944901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.240005, 45.486038, 59.897022>,  <43.027866, 45.377541, 59.868294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.240005, 45.486038, 59.897022>,  <43.593571, 45.666870, 59.944901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.240005, 45.486038, 59.897022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154441, -0.040592, -0.987168,
		0.441422, -0.891052, 0.105700,
		-0.883909, -0.452082, -0.119697,
		42.974834, 45.350414, 59.861115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.767048, 45.141697, 59.495228>,  <43.593571, 45.666870, 59.944901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.767048, 45.141697, 59.495228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.372208, 45.184753, 59.447830>,  <43.135303, 45.210587, 59.419392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.372208, 45.184753, 59.447830>,  <43.767048, 45.141697, 59.495228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.372208, 45.184753, 59.447830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115864, -0.030355, -0.992801,
		-0.110463, -0.993726, 0.017491,
		-0.987103, 0.107642, -0.118490,
		43.076077, 45.217045, 59.412285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.658680, 44.754372, 58.992393>,  <43.767048, 45.141697, 59.495228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.658680, 44.754372, 58.992393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.338882, 44.992882, 59.021412>,  <43.147003, 45.135986, 59.038822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.338882, 44.992882, 59.021412>,  <43.658680, 44.754372, 58.992393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.338882, 44.992882, 59.021412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017262, 0.097922, -0.995044,
		-0.600421, -0.796788, -0.067996,
		-0.799498, 0.596272, 0.072549,
		43.099033, 45.171764, 59.043175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.284340, 44.438633, 58.427040>,  <43.658680, 44.754372, 58.992393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.284340, 44.438633, 58.427040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.149673, 44.807426, 58.503559>,  <43.068874, 45.028702, 58.549473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.149673, 44.807426, 58.503559>,  <43.284340, 44.438633, 58.427040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.149673, 44.807426, 58.503559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106310, 0.164643, -0.980607,
		-0.935603, -0.350476, 0.042586,
		-0.336668, 0.921987, 0.191300,
		43.048672, 45.084023, 58.560947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.679111, 44.477966, 58.001255>,  <43.284340, 44.438633, 58.427040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.679111, 44.477966, 58.001255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742298, 44.866180, 58.074039>,  <42.780212, 45.099110, 58.117710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742298, 44.866180, 58.074039>,  <42.679111, 44.477966, 58.001255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.742298, 44.866180, 58.074039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129061, 0.202990, -0.970638,
		-0.978974, 0.129846, 0.157324,
		0.157969, 0.970534, 0.181964,
		42.789688, 45.157341, 58.128628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.083096, 44.866470, 57.722477>,  <42.679111, 44.477966, 58.001255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.083096, 44.866470, 57.722477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.398262, 45.112747, 57.726501>,  <42.587364, 45.260513, 57.728916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.398262, 45.112747, 57.726501>,  <42.083096, 44.866470, 57.722477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.398262, 45.112747, 57.726501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027855, -0.019322, -0.999425,
		-0.615147, 0.787747, -0.032374,
		0.787920, 0.615696, 0.010057,
		42.634640, 45.297455, 57.729519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.932804, 45.448483, 57.257919>,  <42.083096, 44.866470, 57.722477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.932804, 45.448483, 57.257919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.330391, 45.442490, 57.301365>,  <42.568943, 45.438892, 57.327431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.330391, 45.442490, 57.301365>,  <41.932804, 45.448483, 57.257919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.330391, 45.442490, 57.301365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109599, 0.108304, -0.988058,
		0.003043, 0.994005, 0.109293,
		0.993971, -0.014985, 0.108613,
		42.628582, 45.437996, 57.333950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.248489, 46.010532, 56.762772>,  <41.932804, 45.448483, 57.257919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.248489, 46.010532, 56.762772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.554550, 45.769188, 56.852661>,  <42.738186, 45.624382, 56.906593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.554550, 45.769188, 56.852661>,  <42.248489, 46.010532, 56.762772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.554550, 45.769188, 56.852661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354092, 0.102831, -0.929540,
		0.537737, 0.790812, 0.292326,
		0.765152, -0.603359, 0.224724,
		42.784096, 45.588181, 56.920078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.884251, 46.309444, 56.532516>,  <42.248489, 46.010532, 56.762772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.884251, 46.309444, 56.532516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.980728, 45.922813, 56.567299>,  <43.038612, 45.690834, 56.588169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.980728, 45.922813, 56.567299>,  <42.884251, 46.309444, 56.532516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.980728, 45.922813, 56.567299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464616, 0.036338, -0.884766,
		0.852032, 0.253800, 0.457850,
		0.241191, -0.966574, 0.086959,
		43.053085, 45.632843, 56.593388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.637489, 46.198990, 56.424988>,  <42.884251, 46.309444, 56.532516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.637489, 46.198990, 56.424988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.475945, 45.835823, 56.380119>,  <43.379017, 45.617924, 56.353199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.475945, 45.835823, 56.380119>,  <43.637489, 46.198990, 56.424988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.475945, 45.835823, 56.380119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465730, -0.098514, -0.879427,
		0.787396, -0.407408, 0.462630,
		-0.403861, -0.907918, -0.112172,
		43.354786, 45.563446, 56.346466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.116814, 45.730431, 56.383461>,  <43.637489, 46.198990, 56.424988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.116814, 45.730431, 56.383461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.819427, 45.557709, 56.179184>,  <43.640995, 45.454075, 56.056618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.819427, 45.557709, 56.179184>,  <44.116814, 45.730431, 56.383461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.819427, 45.557709, 56.179184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619786, -0.157990, -0.768703,
		0.251247, -0.888022, 0.385087,
		-0.743465, -0.431806, -0.510689,
		43.596390, 45.428165, 56.025978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.429039, 45.147987, 56.080593>,  <44.116814, 45.730431, 56.383461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.429039, 45.147987, 56.080593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.107044, 45.184212, 55.846058>,  <43.913849, 45.205948, 55.705338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.107044, 45.184212, 55.846058>,  <44.429039, 45.147987, 56.080593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.107044, 45.184212, 55.846058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509494, -0.400851, -0.761403,
		-0.303990, -0.911656, 0.276538,
		-0.804988, 0.090564, -0.586338,
		43.865547, 45.211380, 55.670155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.427647, 44.573215, 55.770531>,  <44.429039, 45.147987, 56.080593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.427647, 44.573215, 55.770531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.159744, 44.756645, 55.536903>,  <43.999004, 44.866703, 55.396729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.159744, 44.756645, 55.536903>,  <44.427647, 44.573215, 55.770531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.159744, 44.756645, 55.536903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374189, -0.470964, -0.798859,
		-0.641416, -0.753590, 0.143834,
		-0.669753, 0.458580, -0.584069,
		43.958817, 44.894218, 55.361683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.136524, 44.104263, 55.396431>,  <44.427647, 44.573215, 55.770531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.136524, 44.104263, 55.396431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.114876, 44.451103, 55.198360>,  <44.101887, 44.659206, 55.079517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.114876, 44.451103, 55.198360>,  <44.136524, 44.104263, 55.396431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.114876, 44.451103, 55.198360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533215, -0.394183, -0.748533,
		-0.844247, -0.304551, -0.441017,
		-0.054125, 0.867103, -0.495179,
		44.098637, 44.711235, 55.049809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.913212, 43.935947, 54.692730>,  <44.136524, 44.104263, 55.396431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.913212, 43.935947, 54.692730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.110069, 44.282448, 54.658333>,  <44.228184, 44.490349, 54.637695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.110069, 44.282448, 54.658333>,  <43.913212, 43.935947, 54.692730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.110069, 44.282448, 54.658333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439686, -0.332622, -0.834289,
		-0.751312, 0.372780, -0.544579,
		0.492145, 0.866255, -0.085997,
		44.257713, 44.542324, 54.632534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.750210, 44.148628, 54.086739>,  <43.913212, 43.935947, 54.692730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.750210, 44.148628, 54.086739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.090263, 44.336761, 54.181442>,  <44.294296, 44.449642, 54.238262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.090263, 44.336761, 54.181442>,  <43.750210, 44.148628, 54.086739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.090263, 44.336761, 54.181442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384296, -0.246812, -0.889607,
		-0.359976, 0.847273, -0.390571,
		0.850137, 0.470332, 0.236758,
		44.345306, 44.477859, 54.252468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.904961, 44.314266, 53.360500>,  <43.750210, 44.148628, 54.086739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.904961, 44.314266, 53.360500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.205433, 44.413956, 53.604996>,  <44.385715, 44.473770, 53.751694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.205433, 44.413956, 53.604996>,  <43.904961, 44.314266, 53.360500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.205433, 44.413956, 53.604996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632470, -0.006675, -0.774556,
		-0.188956, 0.968423, -0.162640,
		0.751184, 0.249222, 0.611237,
		44.430790, 44.488724, 53.788368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.291271, 44.996098, 53.128155>,  <43.904961, 44.314266, 53.360500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.291271, 44.996098, 53.128155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.535984, 44.774216, 53.353729>,  <44.682812, 44.641087, 53.489075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.535984, 44.774216, 53.353729>,  <44.291271, 44.996098, 53.128155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.535984, 44.774216, 53.353729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626958, -0.094675, -0.773279,
		0.482329, 0.826646, 0.289853,
		0.611786, -0.554700, 0.563937,
		44.719521, 44.607807, 53.522911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.975731, 45.203876, 52.943729>,  <44.291271, 44.996098, 53.128155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.975731, 45.203876, 52.943729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.029015, 44.845139, 53.112457>,  <45.060986, 44.629898, 53.213696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.029015, 44.845139, 53.112457>,  <44.975731, 45.203876, 52.943729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.029015, 44.845139, 53.112457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622820, -0.255324, -0.739530,
		0.770942, 0.361227, 0.524561,
		0.133206, -0.896842, 0.421819,
		45.068977, 44.576088, 53.239002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.709255, 45.095558, 53.033203>,  <44.975731, 45.203876, 52.943729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.709255, 45.095558, 53.033203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.532150, 44.739197, 52.992706>,  <45.425888, 44.525379, 52.968407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.532150, 44.739197, 52.992706>,  <45.709255, 45.095558, 53.033203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.532150, 44.739197, 52.992706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664961, -0.250509, -0.703614,
		0.601491, -0.378856, 0.703333,
		-0.442760, -0.890906, -0.101245,
		45.399323, 44.471924, 52.962334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.312538, 44.699566, 53.076397>,  <45.709255, 45.095558, 53.033203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.312538, 44.699566, 53.076397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.015610, 44.494469, 52.903862>,  <45.837452, 44.371410, 52.800343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.015610, 44.494469, 52.903862>,  <46.312538, 44.699566, 53.076397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.015610, 44.494469, 52.903862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653223, -0.410449, -0.636264,
		0.149201, -0.754070, 0.639623,
		-0.742320, -0.512747, -0.431337,
		45.792915, 44.340645, 52.774460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.585121, 44.061829, 53.060608>,  <46.312538, 44.699566, 53.076397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.585121, 44.061829, 53.060608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.294823, 44.077728, 52.785881>,  <46.120644, 44.087269, 52.621044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.294823, 44.077728, 52.785881>,  <46.585121, 44.061829, 53.060608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.294823, 44.077728, 52.785881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641396, -0.321965, -0.696383,
		-0.248808, -0.945917, 0.208172,
		-0.725745, 0.039745, -0.686815,
		46.077099, 44.089653, 52.579838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.777172, 43.648670, 52.621811>,  <46.585121, 44.061829, 53.060608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.777172, 43.648670, 52.621811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.517418, 43.858276, 52.401371>,  <46.361565, 43.984039, 52.269108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.517418, 43.858276, 52.401371>,  <46.777172, 43.648670, 52.621811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.517418, 43.858276, 52.401371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606523, -0.080259, -0.791005,
		-0.458730, -0.847918, -0.265709,
		-0.649382, 0.524016, -0.551099,
		46.322605, 44.015480, 52.236042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.699081, 43.238194, 51.981899>,  <46.777172, 43.648670, 52.621811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.699081, 43.238194, 51.981899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.571075, 43.609039, 51.903873>,  <46.494270, 43.831547, 51.857059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.571075, 43.609039, 51.903873>,  <46.699081, 43.238194, 51.981899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.571075, 43.609039, 51.903873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498263, -0.010418, -0.866964,
		-0.805807, -0.374632, -0.458613,
		-0.320014, 0.927115, -0.195060,
		46.475071, 43.887173, 51.845356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.364372, 43.184181, 51.335361>,  <46.699081, 43.238194, 51.981899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.364372, 43.184181, 51.335361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.453094, 43.569939, 51.392971>,  <46.506329, 43.801395, 51.427536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.453094, 43.569939, 51.392971>,  <46.364372, 43.184181, 51.335361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.453094, 43.569939, 51.392971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480291, 0.020489, -0.876870,
		-0.848601, 0.263664, -0.458647,
		0.221802, 0.964397, 0.144023,
		46.519634, 43.859257, 51.436176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.189579, 43.452511, 50.752918>,  <46.364372, 43.184181, 51.335361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.189579, 43.452511, 50.752918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.442276, 43.724297, 50.902176>,  <46.593895, 43.887367, 50.991730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.442276, 43.724297, 50.902176>,  <46.189579, 43.452511, 50.752918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.442276, 43.724297, 50.902176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422360, 0.101931, -0.900679,
		-0.650012, 0.726596, -0.222584,
		0.631741, 0.679462, 0.373141,
		46.631798, 43.928135, 51.014118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.073997, 43.880249, 50.297009>,  <46.189579, 43.452511, 50.752918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.073997, 43.880249, 50.297009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.398468, 44.048355, 50.459671>,  <46.593151, 44.149220, 50.557266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.398468, 44.048355, 50.459671>,  <46.073997, 43.880249, 50.297009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.398468, 44.048355, 50.459671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382896, 0.143906, -0.912514,
		-0.442019, 0.895917, -0.044185,
		0.811178, 0.420267, 0.406652,
		46.641823, 44.174435, 50.581665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.220531, 44.543964, 50.048672>,  <46.073997, 43.880249, 50.297009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.220531, 44.543964, 50.048672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.575096, 44.387299, 50.147358>,  <46.787834, 44.293297, 50.206570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.575096, 44.387299, 50.147358>,  <46.220531, 44.543964, 50.048672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.575096, 44.387299, 50.147358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372009, 0.285578, -0.883207,
		0.275465, 0.874667, 0.398844,
		0.886413, -0.391666, 0.246717,
		46.841019, 44.269798, 50.221375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.604652, 44.931244, 49.619179>,  <46.220531, 44.543964, 50.048672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.604652, 44.931244, 49.619179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.900322, 44.692802, 49.744579>,  <47.077724, 44.549740, 49.819820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.900322, 44.692802, 49.744579>,  <46.604652, 44.931244, 49.619179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.900322, 44.692802, 49.744579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534150, 0.235329, -0.811975,
		0.410244, 0.767649, 0.492357,
		0.739178, -0.596100, 0.313497,
		47.122074, 44.513973, 49.838627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.238796, 45.205528, 49.465378>,  <46.604652, 44.931244, 49.619179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.238796, 45.205528, 49.465378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.328682, 44.821373, 49.531300>,  <47.382614, 44.590881, 49.570854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.328682, 44.821373, 49.531300>,  <47.238796, 45.205528, 49.465378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.328682, 44.821373, 49.531300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540169, -0.017991, -0.841365,
		0.811000, 0.278090, 0.514728,
		0.224715, -0.960387, 0.164806,
		47.396095, 44.533257, 49.580742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.900795, 45.190769, 49.317154>,  <47.238796, 45.205528, 49.465378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.900795, 45.190769, 49.317154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.792610, 44.806442, 49.292923>,  <47.727699, 44.575844, 49.278385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.792610, 44.806442, 49.292923>,  <47.900795, 45.190769, 49.317154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.792610, 44.806442, 49.292923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771003, -0.178489, -0.611307,
		0.576544, -0.212045, 0.789071,
		-0.270465, -0.960822, -0.060580,
		47.711472, 44.518196, 49.274750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.514427, 44.791897, 49.276997>,  <47.900795, 45.190769, 49.317154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.514427, 44.791897, 49.276997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.213875, 44.572243, 49.130642>,  <48.033543, 44.440449, 49.042828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.213875, 44.572243, 49.130642>,  <48.514427, 44.791897, 49.276997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.213875, 44.572243, 49.130642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529799, -0.171491, -0.830605,
		0.393367, -0.817950, 0.419786,
		-0.751383, -0.549134, -0.365890,
		47.988461, 44.407501, 49.020874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.807945, 44.191093, 49.030998>,  <48.514427, 44.791897, 49.276997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.807945, 44.191093, 49.030998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.460564, 44.201843, 48.832981>,  <48.252136, 44.208294, 48.714172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.460564, 44.201843, 48.832981>,  <48.807945, 44.191093, 49.030998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.460564, 44.201843, 48.832981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482164, -0.186571, -0.855984,
		-0.115359, -0.982074, 0.149073,
		-0.868452, 0.026868, -0.495043,
		48.200027, 44.209904, 48.684467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.761745, 43.600170, 48.719921>,  <48.807945, 44.191093, 49.030998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.761745, 43.600170, 48.719921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.504890, 43.814529, 48.500660>,  <48.350777, 43.943146, 48.369102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.504890, 43.814529, 48.500660>,  <48.761745, 43.600170, 48.719921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.504890, 43.814529, 48.500660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485550, -0.269003, -0.831792,
		-0.593214, -0.800279, -0.087471,
		-0.642136, 0.535902, -0.548152,
		48.312248, 43.975300, 48.336216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.659622, 43.197952, 48.071877>,  <48.761745, 43.600170, 48.719921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.659622, 43.197952, 48.071877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.498589, 43.546532, 47.959801>,  <48.401970, 43.755680, 47.892555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.498589, 43.546532, 47.959801>,  <48.659622, 43.197952, 48.071877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.498589, 43.546532, 47.959801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331150, -0.146714, -0.932102,
		-0.853387, -0.468031, -0.229515,
		-0.402580, 0.871448, -0.280193,
		48.377815, 43.807964, 47.875744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.434448, 42.993332, 47.482689>,  <48.659622, 43.197952, 48.071877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.434448, 42.993332, 47.482689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.478439, 43.390785, 47.472904>,  <48.504833, 43.629257, 47.467033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.478439, 43.390785, 47.472904>,  <48.434448, 42.993332, 47.482689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.478439, 43.390785, 47.472904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522065, -0.078695, -0.849267,
		-0.845785, 0.080632, -0.527396,
		0.109982, 0.993632, -0.024463,
		48.511433, 43.688873, 47.465565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.078793, 43.226402, 46.914791>,  <48.434448, 42.993332, 47.482689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.078793, 43.226402, 46.914791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.348671, 43.507034, 47.006496>,  <48.510597, 43.675415, 47.061520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.348671, 43.507034, 47.006496>,  <48.078793, 43.226402, 46.914791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.348671, 43.507034, 47.006496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498351, -0.203890, -0.842660,
		-0.544450, 0.682797, -0.487198,
		0.674700, 0.701582, 0.229265,
		48.551083, 43.717510, 47.075275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.364994, 43.063847, 47.249821>,  <48.078793, 43.226402, 46.914791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.364994, 43.063847, 47.249821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.058327, 43.005249, 46.999779>,  <46.874325, 42.970093, 46.849754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.058327, 43.005249, 46.999779>,  <47.364994, 43.063847, 47.249821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.058327, 43.005249, 46.999779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632551, 0.339122, 0.696330,
		0.109980, 0.929266, -0.352658,
		-0.766670, -0.146492, -0.625106,
		46.828327, 42.961300, 46.812248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.941021, 43.638847, 47.326107>,  <47.364994, 43.063847, 47.249821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.941021, 43.638847, 47.326107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.728661, 43.339607, 47.166862>,  <46.601242, 43.160065, 47.071316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.728661, 43.339607, 47.166862>,  <46.941021, 43.638847, 47.326107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.728661, 43.339607, 47.166862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771280, 0.231916, 0.592742,
		-0.351098, 0.621745, -0.700116,
		-0.530903, -0.748096, -0.398114,
		46.569389, 43.115177, 47.047428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.334309, 43.846970, 46.968803>,  <46.941021, 43.638847, 47.326107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.334309, 43.846970, 46.968803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.264427, 43.467033, 47.072556>,  <46.222500, 43.239071, 47.134808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.264427, 43.467033, 47.072556>,  <46.334309, 43.846970, 46.968803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.264427, 43.467033, 47.072556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753588, 0.298531, 0.585649,
		-0.633706, -0.093147, -0.767945,
		-0.174704, -0.949844, 0.259376,
		46.212017, 43.182079, 47.150368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.527851, 43.823009, 47.154831>,  <46.334309, 43.846970, 46.968803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.527851, 43.823009, 47.154831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.654503, 43.464363, 47.278660>,  <45.730492, 43.249176, 47.352959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.654503, 43.464363, 47.278660>,  <45.527851, 43.823009, 47.154831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.654503, 43.464363, 47.278660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574268, 0.078562, 0.814889,
		-0.754960, -0.435792, -0.490021,
		0.316625, -0.896612, 0.309572,
		45.749489, 43.195381, 47.371532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.926941, 43.449627, 47.281418>,  <45.527851, 43.823009, 47.154831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.926941, 43.449627, 47.281418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.209999, 43.283394, 47.509987>,  <45.379833, 43.183655, 47.647129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.209999, 43.283394, 47.509987>,  <44.926941, 43.449627, 47.281418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.209999, 43.283394, 47.509987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658871, -0.096038, 0.746100,
		-0.255189, -0.904470, -0.341777,
		0.707649, -0.415584, 0.571422,
		45.422295, 43.158718, 47.681412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.546463, 42.944653, 47.586266>,  <44.926941, 43.449627, 47.281418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.546463, 42.944653, 47.586266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.875481, 42.984352, 47.810257>,  <45.072891, 43.008171, 47.944653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.875481, 42.984352, 47.810257>,  <44.546463, 42.944653, 47.586266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.875481, 42.984352, 47.810257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558063, -0.048731, 0.828367,
		0.109504, -0.993868, 0.015305,
		0.822541, 0.099251, 0.559977,
		45.122242, 43.014126, 47.978249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.514919, 42.506847, 48.193134>,  <44.546463, 42.944653, 47.586266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.514919, 42.506847, 48.193134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.761524, 42.806656, 48.289577>,  <44.909485, 42.986542, 48.347443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.761524, 42.806656, 48.289577>,  <44.514919, 42.506847, 48.193134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.761524, 42.806656, 48.289577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386650, 0.021450, 0.921977,
		0.685870, -0.661632, 0.303027,
		0.616510, 0.749522, 0.241108,
		44.946476, 43.031513, 48.361912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.837669, 42.367760, 48.810799>,  <44.514919, 42.506847, 48.193134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.837669, 42.367760, 48.810799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.839195, 42.765808, 48.771366>,  <44.840111, 43.004639, 48.747707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.839195, 42.765808, 48.771366>,  <44.837669, 42.367760, 48.810799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.839195, 42.765808, 48.771366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362405, 0.093252, 0.927344,
		0.932013, 0.032191, 0.360993,
		0.003812, 0.995122, -0.098578,
		44.840340, 43.064346, 48.741791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.735115, 42.600056, 49.418301>,  <44.837669, 42.367760, 48.810799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.735115, 42.600056, 49.418301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.731430, 42.965561, 49.255844>,  <44.729221, 43.184864, 49.158371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.731430, 42.965561, 49.255844>,  <44.735115, 42.600056, 49.418301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.731430, 42.965561, 49.255844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298448, 0.385132, 0.873271,
		0.954382, 0.129255, 0.269164,
		-0.009211, 0.913765, -0.406139,
		44.728668, 43.239689, 49.134003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.038441, 43.088650, 49.929016>,  <44.735115, 42.600056, 49.418301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.038441, 43.088650, 49.929016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.804920, 43.293098, 49.676689>,  <44.664806, 43.415768, 49.525291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.804920, 43.293098, 49.676689>,  <45.038441, 43.088650, 49.929016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.804920, 43.293098, 49.676689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371427, 0.522759, 0.767310,
		0.721951, 0.682263, -0.115347,
		-0.583806, 0.511117, -0.630817,
		44.629780, 43.446434, 49.487446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.092285, 43.720379, 50.250420>,  <45.038441, 43.088650, 49.929016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.092285, 43.720379, 50.250420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.771683, 43.722130, 50.011230>,  <44.579323, 43.723183, 49.867718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.771683, 43.722130, 50.011230>,  <45.092285, 43.720379, 50.250420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.771683, 43.722130, 50.011230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537105, 0.434326, 0.723104,
		0.262881, 0.900745, -0.345763,
		-0.801506, 0.004379, -0.597971,
		44.531231, 43.723442, 49.831841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.794510, 44.316967, 50.393349>,  <45.092285, 43.720379, 50.250420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.794510, 44.316967, 50.393349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.488960, 44.115356, 50.232132>,  <44.305630, 43.994389, 50.135403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.488960, 44.115356, 50.232132>,  <44.794510, 44.316967, 50.393349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.488960, 44.115356, 50.232132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626279, 0.428205, 0.651471,
		-0.155774, 0.750064, -0.642759,
		-0.763877, -0.504029, -0.403046,
		44.259796, 43.964149, 50.111217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.302994, 44.809204, 50.251282>,  <44.794510, 44.316967, 50.393349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.302994, 44.809204, 50.251282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.099808, 44.466507, 50.286980>,  <43.977894, 44.260891, 50.308399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.099808, 44.466507, 50.286980>,  <44.302994, 44.809204, 50.251282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.099808, 44.466507, 50.286980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589327, 0.421229, 0.689391,
		-0.628221, 0.297595, -0.718871,
		-0.507968, -0.856740, 0.089245,
		43.947418, 44.209484, 50.313755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.613438, 45.040295, 50.233963>,  <44.302994, 44.809204, 50.251282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.613438, 45.040295, 50.233963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.599655, 44.670441, 50.385685>,  <43.591385, 44.448528, 50.476719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.599655, 44.670441, 50.385685>,  <43.613438, 45.040295, 50.233963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.599655, 44.670441, 50.385685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623447, 0.316514, 0.714936,
		-0.781106, -0.211841, -0.587364,
		-0.034456, -0.924631, 0.379302,
		43.589317, 44.393051, 50.499477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.881119, 44.888947, 50.211681>,  <43.613438, 45.040295, 50.233963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.881119, 44.888947, 50.211681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.030792, 44.648911, 50.494488>,  <43.120598, 44.504890, 50.664173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.030792, 44.648911, 50.494488>,  <42.881119, 44.888947, 50.211681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.030792, 44.648911, 50.494488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770028, 0.223787, 0.597475,
		-0.516761, -0.767991, -0.378350,
		0.374186, -0.600092, 0.707019,
		43.143047, 44.468884, 50.706593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.341667, 44.521450, 50.521233>,  <42.881119, 44.888947, 50.211681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.341667, 44.521450, 50.521233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.636612, 44.479790, 50.788200>,  <42.813580, 44.454796, 50.948383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.636612, 44.479790, 50.788200>,  <42.341667, 44.521450, 50.521233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.636612, 44.479790, 50.788200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643306, 0.193127, 0.740850,
		-0.206055, -0.975631, 0.075405,
		0.737359, -0.104148, 0.667424,
		42.857819, 44.448547, 50.988426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.001831, 44.097836, 51.047050>,  <42.341667, 44.521450, 50.521233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.001831, 44.097836, 51.047050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.323769, 44.245239, 51.233139>,  <42.516930, 44.333679, 51.344791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.323769, 44.245239, 51.233139>,  <42.001831, 44.097836, 51.047050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.323769, 44.245239, 51.233139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519035, 0.056917, 0.852856,
		0.287803, -0.927882, 0.237076,
		0.804844, 0.368505, 0.465222,
		42.565220, 44.355789, 51.372707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.986603, 43.845985, 51.770420>,  <42.001831, 44.097836, 51.047050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.986603, 43.845985, 51.770420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.215630, 44.173401, 51.788994>,  <42.353046, 44.369850, 51.800137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.215630, 44.173401, 51.788994>,  <41.986603, 43.845985, 51.770420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.215630, 44.173401, 51.788994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411435, 0.237887, 0.879847,
		0.709143, -0.522880, 0.472983,
		0.572571, 0.818540, 0.046435,
		42.387402, 44.418964, 51.802925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.378708, 43.859116, 52.381329>,  <41.986603, 43.845985, 51.770420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.378708, 43.859116, 52.381329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354851, 44.245003, 52.278759>,  <42.340538, 44.476536, 52.217216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354851, 44.245003, 52.278759>,  <42.378708, 43.859116, 52.381329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.354851, 44.245003, 52.278759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226021, 0.237160, 0.944812,
		0.972295, 0.114304, 0.203904,
		-0.059638, 0.964722, -0.256425,
		42.336960, 44.534420, 52.201832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.789722, 44.206585, 52.839886>,  <42.378708, 43.859116, 52.381329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.789722, 44.206585, 52.839886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.542370, 44.477516, 52.680466>,  <42.393959, 44.640076, 52.584816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.542370, 44.477516, 52.680466>,  <42.789722, 44.206585, 52.839886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.542370, 44.477516, 52.680466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160315, 0.387750, 0.907717,
		0.769355, 0.625205, -0.131191,
		-0.618379, 0.677325, -0.398547,
		42.356857, 44.680714, 52.560902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.901882, 44.737095, 53.196133>,  <42.789722, 44.206585, 52.839886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.901882, 44.737095, 53.196133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.547466, 44.792023, 53.019012>,  <42.334816, 44.824978, 52.912743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.547466, 44.792023, 53.019012>,  <42.901882, 44.737095, 53.196133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.547466, 44.792023, 53.019012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362342, 0.390687, 0.846210,
		0.289197, 0.910223, -0.296409,
		-0.886044, 0.137320, -0.442798,
		42.281654, 44.833218, 52.886173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.719574, 45.307953, 53.414635>,  <42.901882, 44.737095, 53.196133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.719574, 45.307953, 53.414635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.365685, 45.154587, 53.308609>,  <42.153351, 45.062569, 53.244995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.365685, 45.154587, 53.308609>,  <42.719574, 45.307953, 53.414635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.365685, 45.154587, 53.308609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388415, 0.292059, 0.873976,
		-0.257682, 0.876181, -0.407316,
		-0.884722, -0.383416, -0.265064,
		42.100269, 45.039562, 53.229092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.233627, 45.794640, 53.728500>,  <42.719574, 45.307953, 53.414635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.233627, 45.794640, 53.728500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.011173, 45.474998, 53.637165>,  <41.877701, 45.283211, 53.582363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.011173, 45.474998, 53.637165>,  <42.233627, 45.794640, 53.728500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.011173, 45.474998, 53.637165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528954, 0.128421, 0.838878,
		-0.641030, 0.587312, -0.494111,
		-0.556137, -0.799107, -0.228339,
		41.844334, 45.235268, 53.568665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.539986, 45.999901, 53.827572>,  <42.233627, 45.794640, 53.728500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.539986, 45.999901, 53.827572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.559311, 45.600975, 53.849564>,  <41.570908, 45.361618, 53.862759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.559311, 45.600975, 53.849564>,  <41.539986, 45.999901, 53.827572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.559311, 45.600975, 53.849564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548293, 0.019527, 0.836058,
		-0.834890, -0.070536, -0.545879,
		0.048313, -0.997318, 0.054977,
		41.573807, 45.301781, 53.866058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.880562, 45.794014, 54.140251>,  <41.539986, 45.999901, 53.827572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.880562, 45.794014, 54.140251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.125229, 45.480461, 54.182964>,  <41.272030, 45.292332, 54.208591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.125229, 45.480461, 54.182964>,  <40.880562, 45.794014, 54.140251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.125229, 45.480461, 54.182964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482991, -0.263115, 0.835159,
		-0.626568, -0.562410, -0.539544,
		0.611664, -0.783878, 0.106780,
		41.308727, 45.245296, 54.215000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402763, 45.328869, 54.410469>,  <40.880562, 45.794014, 54.140251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402763, 45.328869, 54.410469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.769630, 45.193832, 54.495163>,  <40.989750, 45.112812, 54.545979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.769630, 45.193832, 54.495163>,  <40.402763, 45.328869, 54.410469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.769630, 45.193832, 54.495163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304452, -0.250776, 0.918924,
		-0.257146, -0.907263, -0.332790,
		0.917161, -0.337616, 0.211732,
		41.044781, 45.092556, 54.558685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309109, 44.734386, 54.753204>,  <40.402763, 45.328869, 54.410469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309109, 44.734386, 54.753204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695438, 44.798416, 54.834747>,  <40.927235, 44.836834, 54.883675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695438, 44.798416, 54.834747>,  <40.309109, 44.734386, 54.753204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695438, 44.798416, 54.834747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098490, -0.500861, 0.859906,
		0.239758, -0.850596, -0.467977,
		0.965824, 0.160078, 0.203861,
		40.985184, 44.846439, 54.895905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506428, 44.145618, 54.986523>,  <40.309109, 44.734386, 54.753204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506428, 44.145618, 54.986523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764458, 44.403595, 55.150440>,  <40.919277, 44.558380, 55.248791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764458, 44.403595, 55.150440>,  <40.506428, 44.145618, 54.986523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764458, 44.403595, 55.150440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085629, -0.471906, 0.877481,
		0.759305, -0.601132, -0.249190,
		0.645077, 0.644938, 0.409795,
		40.957981, 44.597076, 55.273380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995132, 43.719574, 55.344273>,  <40.506428, 44.145618, 54.986523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.995132, 43.719574, 55.344273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.990215, 44.086014, 55.504574>,  <40.987263, 44.305878, 55.600754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.990215, 44.086014, 55.504574>,  <40.995132, 43.719574, 55.344273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990215, 44.086014, 55.504574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328131, -0.382289, 0.863820,
		0.944552, -0.120878, 0.305303,
		-0.012297, 0.916103, 0.400756,
		40.986526, 44.360844, 55.624802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178722, 43.604855, 55.992306>,  <40.995132, 43.719574, 55.344273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.178722, 43.604855, 55.992306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.021645, 43.972237, 56.011196>,  <40.927399, 44.192665, 56.022530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.021645, 43.972237, 56.011196>,  <41.178722, 43.604855, 55.992306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.021645, 43.972237, 56.011196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293102, -0.173656, 0.940178,
		0.871714, 0.355359, 0.337395,
		-0.392691, 0.918457, 0.047222,
		40.903839, 44.247772, 56.025364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584286, 43.967796, 56.469616>,  <41.178722, 43.604855, 55.992306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.584286, 43.967796, 56.469616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.222206, 44.137558, 56.478542>,  <41.004959, 44.239414, 56.483898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.222206, 44.137558, 56.478542>,  <41.584286, 43.967796, 56.469616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.222206, 44.137558, 56.478542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160859, -0.390736, 0.906339,
		0.393375, 0.816825, 0.421962,
		-0.905196, 0.424408, 0.022312,
		40.950645, 44.264881, 56.485237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.541309, 44.080200, 57.181572>,  <41.584286, 43.967796, 56.469616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.541309, 44.080200, 57.181572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.171730, 44.103088, 57.030289>,  <40.949982, 44.116821, 56.939518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.171730, 44.103088, 57.030289>,  <41.541309, 44.080200, 57.181572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.171730, 44.103088, 57.030289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349595, -0.527607, 0.774218,
		-0.155247, 0.847559, 0.507486,
		-0.923949, 0.057220, -0.378212,
		40.894547, 44.120255, 56.916824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114952, 44.311302, 57.724888>,  <41.541309, 44.080200, 57.181572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114952, 44.311302, 57.724888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.885490, 44.125809, 57.454815>,  <40.747814, 44.014511, 57.292770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.885490, 44.125809, 57.454815>,  <41.114952, 44.311302, 57.724888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885490, 44.125809, 57.454815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343310, -0.612274, 0.712221,
		-0.743679, 0.640365, 0.192028,
		-0.573655, -0.463738, -0.675179,
		40.713394, 43.986687, 57.252262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446621, 44.254200, 58.052425>,  <41.114952, 44.311302, 57.724888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446621, 44.254200, 58.052425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.424263, 43.991791, 57.751358>,  <40.410847, 43.834347, 57.570717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.424263, 43.991791, 57.751358>,  <40.446621, 44.254200, 58.052425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424263, 43.991791, 57.751358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349366, -0.693340, 0.630256,
		-0.935317, 0.298187, -0.190436,
		-0.055898, -0.656021, -0.752669,
		40.407494, 43.794983, 57.525558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740238, 43.982922, 58.157158>,  <40.446621, 44.254200, 58.052425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740238, 43.982922, 58.157158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979630, 43.737602, 57.950977>,  <40.123264, 43.590412, 57.827271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979630, 43.737602, 57.950977>,  <39.740238, 43.982922, 58.157158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979630, 43.737602, 57.950977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293388, -0.766485, 0.571335,
		-0.745482, -0.190707, -0.638661,
		0.598481, -0.613296, -0.515449,
		40.159172, 43.553612, 57.796341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346260, 43.461014, 58.144348>,  <39.740238, 43.982922, 58.157158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346260, 43.461014, 58.144348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707825, 43.318199, 58.050140>,  <39.924763, 43.232510, 57.993618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707825, 43.318199, 58.050140>,  <39.346260, 43.461014, 58.144348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707825, 43.318199, 58.050140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147441, -0.776980, 0.612015,
		-0.401505, -0.518483, -0.754963,
		0.903911, -0.357040, -0.235516,
		39.978996, 43.211086, 57.979485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210117, 42.753735, 58.003044>,  <39.346260, 43.461014, 58.144348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210117, 42.753735, 58.003044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592579, 42.816406, 58.102013>,  <39.822056, 42.854008, 58.161392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592579, 42.816406, 58.102013>,  <39.210117, 42.753735, 58.003044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592579, 42.816406, 58.102013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035452, -0.776708, 0.628862,
		0.290700, -0.610063, -0.737100,
		0.956157, 0.156679, 0.247417,
		39.879425, 42.863411, 58.176239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478519, 42.075375, 58.073071>,  <39.210117, 42.753735, 58.003044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478519, 42.075375, 58.073071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703400, 42.326973, 58.287842>,  <39.838329, 42.477932, 58.416702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703400, 42.326973, 58.287842>,  <39.478519, 42.075375, 58.073071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703400, 42.326973, 58.287842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147601, -0.562502, 0.813514,
		0.813722, -0.536610, -0.223398,
		0.562202, 0.629001, 0.536924,
		39.872059, 42.515675, 58.448917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905430, 41.548340, 58.432224>,  <39.478519, 42.075375, 58.073071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905430, 41.548340, 58.432224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.574188, 41.338295, 58.353737>,  <39.375443, 41.212269, 58.306644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.574188, 41.338295, 58.353737>,  <39.905430, 41.548340, 58.432224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574188, 41.338295, 58.353737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433459, -0.377856, -0.818131,
		0.355472, -0.762547, 0.540520,
		-0.828102, -0.525115, -0.196216,
		39.325756, 41.180759, 58.294872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156067, 40.784275, 58.344551>,  <39.905430, 41.548340, 58.432224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.156067, 40.784275, 58.344551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799736, 40.833839, 58.169701>,  <39.585938, 40.863579, 58.064793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799736, 40.833839, 58.169701>,  <40.156067, 40.784275, 58.344551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799736, 40.833839, 58.169701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361011, -0.391115, -0.846582,
		-0.275866, -0.911963, 0.303681,
		-0.890825, 0.123911, -0.437124,
		39.532490, 40.871014, 58.038563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057468, 40.204239, 58.097359>,  <40.156067, 40.784275, 58.344551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057468, 40.204239, 58.097359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804714, 40.445366, 57.902493>,  <39.653061, 40.590042, 57.785572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804714, 40.445366, 57.902493>,  <40.057468, 40.204239, 58.097359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804714, 40.445366, 57.902493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261237, -0.426122, -0.866127,
		-0.729710, -0.674558, 0.111781,
		-0.631885, 0.602819, -0.487165,
		39.615150, 40.626213, 57.756344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795250, 39.840652, 57.573067>,  <40.057468, 40.204239, 58.097359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795250, 39.840652, 57.573067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728600, 40.214302, 57.446793>,  <39.688610, 40.438492, 57.371029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728600, 40.214302, 57.446793>,  <39.795250, 39.840652, 57.573067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728600, 40.214302, 57.446793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105308, -0.301466, -0.947644,
		-0.980381, -0.191142, -0.048139,
		-0.166622, 0.934122, -0.315681,
		39.678612, 40.494537, 57.352089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393799, 39.781078, 56.970699>,  <39.795250, 39.840652, 57.573067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393799, 39.781078, 56.970699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564880, 40.142014, 56.949303>,  <39.667530, 40.358574, 56.936462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564880, 40.142014, 56.949303>,  <39.393799, 39.781078, 56.970699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564880, 40.142014, 56.949303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064428, -0.028599, -0.997513,
		-0.901622, 0.430082, 0.045904,
		0.427700, 0.902336, -0.053495,
		39.693192, 40.412716, 56.933254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109936, 40.096424, 56.414772>,  <39.393799, 39.781078, 56.970699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109936, 40.096424, 56.414772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415066, 40.354164, 56.436348>,  <39.598145, 40.508808, 56.449291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415066, 40.354164, 56.436348>,  <39.109936, 40.096424, 56.414772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415066, 40.354164, 56.436348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039118, 0.037275, -0.998539,
		-0.645424, 0.763818, 0.003228,
		0.762823, 0.644354, 0.053937,
		39.643913, 40.547470, 56.452530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946846, 40.664139, 56.004169>,  <39.109936, 40.096424, 56.414772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946846, 40.664139, 56.004169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.344017, 40.697914, 56.037540>,  <39.582321, 40.718182, 56.057564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.344017, 40.697914, 56.037540>,  <38.946846, 40.664139, 56.004169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344017, 40.697914, 56.037540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064073, 0.210396, -0.975514,
		-0.099926, 0.973963, 0.203498,
		0.992930, 0.084440, 0.083429,
		39.641895, 40.723248, 56.062569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104916, 41.254238, 55.586746>,  <38.946846, 40.664139, 56.004169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104916, 41.254238, 55.586746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.442249, 41.042931, 55.626202>,  <39.644650, 40.916145, 55.649876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.442249, 41.042931, 55.626202>,  <39.104916, 41.254238, 55.586746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442249, 41.042931, 55.626202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188211, 0.118424, -0.974963,
		0.503358, 0.840781, 0.199296,
		0.843331, -0.528265, 0.098635,
		39.695248, 40.884453, 55.655792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578281, 41.593639, 55.239853>,  <39.104916, 41.254238, 55.586746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578281, 41.593639, 55.239853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.751797, 41.233276, 55.245377>,  <39.855904, 41.017059, 55.248692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.751797, 41.233276, 55.245377>,  <39.578281, 41.593639, 55.239853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751797, 41.233276, 55.245377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275383, 0.117975, -0.954068,
		0.857901, 0.417664, 0.299271,
		0.433786, -0.900910, 0.013806,
		39.881931, 40.963005, 55.249519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287220, 41.631191, 54.953514>,  <39.578281, 41.593639, 55.239853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287220, 41.631191, 54.953514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162910, 41.253098, 54.913616>,  <40.088326, 41.026241, 54.889679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162910, 41.253098, 54.913616>,  <40.287220, 41.631191, 54.953514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162910, 41.253098, 54.913616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267245, 0.013808, -0.963530,
		0.912139, -0.326099, 0.248317,
		-0.310778, -0.945235, -0.099743,
		40.069675, 40.969528, 54.883694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761879, 41.351398, 54.576363>,  <40.287220, 41.631191, 54.953514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.761879, 41.351398, 54.576363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474060, 41.078712, 54.523407>,  <40.301369, 40.915100, 54.491634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474060, 41.078712, 54.523407>,  <40.761879, 41.351398, 54.576363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.474060, 41.078712, 54.523407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289035, -0.120650, -0.949685,
		0.631440, -0.721604, 0.283852,
		-0.719543, -0.681712, -0.132386,
		40.258198, 40.874199, 54.483692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143734, 40.800587, 54.328453>,  <40.761879, 41.351398, 54.576363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.143734, 40.800587, 54.328453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770294, 40.711166, 54.216438>,  <40.546230, 40.657513, 54.149231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770294, 40.711166, 54.216438>,  <41.143734, 40.800587, 54.328453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.770294, 40.711166, 54.216438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312914, -0.127869, -0.941135,
		0.174585, -0.966268, 0.189331,
		-0.933598, -0.223553, -0.280035,
		40.490215, 40.644100, 54.132427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.157570, 40.086494, 53.926949>,  <41.143734, 40.800587, 54.328453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.157570, 40.086494, 53.926949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833984, 40.298775, 53.825809>,  <40.639832, 40.426144, 53.765125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833984, 40.298775, 53.825809>,  <41.157570, 40.086494, 53.926949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833984, 40.298775, 53.825809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261558, -0.060253, -0.963305,
		-0.526464, -0.845413, -0.090068,
		-0.808963, 0.530703, -0.252846,
		40.591293, 40.457985, 53.749954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751022, 39.738060, 53.358410>,  <41.157570, 40.086494, 53.926949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751022, 39.738060, 53.358410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678547, 40.130058, 53.325485>,  <40.635063, 40.365257, 53.305733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678547, 40.130058, 53.325485>,  <40.751022, 39.738060, 53.358410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678547, 40.130058, 53.325485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115950, -0.061822, -0.991329,
		-0.976589, -0.189162, -0.102429,
		-0.181190, 0.979998, -0.082308,
		40.624191, 40.424057, 53.300793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577969, 39.784126, 52.659657>,  <40.751022, 39.738060, 53.358410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577969, 39.784126, 52.659657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613274, 40.169144, 52.762207>,  <40.634457, 40.400154, 52.823738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613274, 40.169144, 52.762207>,  <40.577969, 39.784126, 52.659657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613274, 40.169144, 52.762207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185139, 0.237043, -0.953695,
		-0.978741, 0.131639, -0.157282,
		0.088261, 0.962539, 0.256375,
		40.639751, 40.457905, 52.839119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264641, 40.184910, 52.121769>,  <40.577969, 39.784126, 52.659657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264641, 40.184910, 52.121769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513550, 40.430962, 52.315426>,  <40.662895, 40.578594, 52.431622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513550, 40.430962, 52.315426>,  <40.264641, 40.184910, 52.121769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513550, 40.430962, 52.315426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433294, 0.244428, -0.867474,
		-0.651949, 0.749578, -0.114433,
		0.622269, 0.615132, 0.484142,
		40.700230, 40.615501, 52.460667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186916, 40.823055, 51.829475>,  <40.264641, 40.184910, 52.121769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186916, 40.823055, 51.829475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.540756, 40.838936, 52.015339>,  <40.753059, 40.848465, 52.126858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.540756, 40.838936, 52.015339>,  <40.186916, 40.823055, 51.829475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540756, 40.838936, 52.015339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410065, 0.408323, -0.815548,
		-0.222108, 0.911974, 0.344923,
		0.884598, 0.039699, 0.464661,
		40.806137, 40.850845, 52.154736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422401, 41.529705, 51.762402>,  <40.186916, 40.823055, 51.829475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422401, 41.529705, 51.762402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742584, 41.304497, 51.844639>,  <40.934696, 41.169373, 51.893982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742584, 41.304497, 51.844639>,  <40.422401, 41.529705, 51.762402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.742584, 41.304497, 51.844639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522459, 0.487286, -0.699706,
		0.293770, 0.667500, 0.684210,
		0.800459, -0.563025, 0.205592,
		40.982723, 41.135590, 51.906315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.952538, 42.029793, 51.596130>,  <40.422401, 41.529705, 51.762402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.952538, 42.029793, 51.596130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.148003, 41.681450, 51.574871>,  <41.265282, 41.472446, 51.562115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.148003, 41.681450, 51.574871>,  <40.952538, 42.029793, 51.596130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.148003, 41.681450, 51.574871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567585, 0.363566, -0.738693,
		0.662616, 0.330804, 0.671944,
		0.488659, -0.870855, -0.053146,
		41.294601, 41.420193, 51.558926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.606045, 42.219738, 51.455311>,  <40.952538, 42.029793, 51.596130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.606045, 42.219738, 51.455311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612915, 41.827301, 51.378204>,  <41.617039, 41.591839, 51.331940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612915, 41.827301, 51.378204>,  <41.606045, 42.219738, 51.455311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.612915, 41.827301, 51.378204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500698, 0.175323, -0.847681,
		0.865451, -0.081955, 0.494244,
		0.017180, -0.981094, -0.192769,
		41.618069, 41.532974, 51.320374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.360916, 42.006981, 51.494129>,  <41.606045, 42.219738, 51.455311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.360916, 42.006981, 51.494129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123230, 41.781586, 51.264557>,  <41.980618, 41.646347, 51.126816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123230, 41.781586, 51.264557>,  <42.360916, 42.006981, 51.494129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.123230, 41.781586, 51.264557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502009, 0.297680, -0.812018,
		0.628408, -0.770629, 0.105990,
		-0.594214, -0.563487, -0.573927,
		41.944965, 41.612541, 51.092381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.714939, 41.591145, 51.031544>,  <42.360916, 42.006981, 51.494129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.714939, 41.591145, 51.031544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.350861, 41.612106, 50.867203>,  <42.132412, 41.624683, 50.768600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.350861, 41.612106, 50.867203>,  <42.714939, 41.591145, 51.031544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.350861, 41.612106, 50.867203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404443, 0.326255, -0.854391,
		0.089270, -0.943828, -0.318150,
		-0.910196, 0.052402, -0.410849,
		42.077801, 41.627827, 50.743946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.899796, 41.407364, 50.467247>,  <42.714939, 41.591145, 51.031544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.899796, 41.407364, 50.467247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528725, 41.543457, 50.405712>,  <42.306084, 41.625111, 50.368793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528725, 41.543457, 50.405712>,  <42.899796, 41.407364, 50.467247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.528725, 41.543457, 50.405712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235381, 0.213036, -0.948268,
		-0.289858, -0.915893, -0.277711,
		-0.927674, 0.340230, -0.153833,
		42.250423, 41.645527, 50.359562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.607658, 41.022617, 49.896835>,  <42.899796, 41.407364, 50.467247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.607658, 41.022617, 49.896835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412052, 41.371071, 49.914665>,  <42.294689, 41.580143, 49.925362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412052, 41.371071, 49.914665>,  <42.607658, 41.022617, 49.896835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.412052, 41.371071, 49.914665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177114, 0.149195, -0.972816,
		-0.854106, -0.467825, -0.227249,
		-0.489013, 0.871137, 0.044570,
		42.265347, 41.632412, 49.928036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.300274, 41.019047, 49.208939>,  <42.607658, 41.022617, 49.896835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.300274, 41.019047, 49.208939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.261948, 41.400360, 49.323524>,  <42.238953, 41.629150, 49.392277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.261948, 41.400360, 49.323524>,  <42.300274, 41.019047, 49.208939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.261948, 41.400360, 49.323524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273167, 0.301922, -0.913358,
		-0.957183, -0.009262, -0.289336,
		-0.095816, 0.953288, 0.286464,
		42.233204, 41.686348, 49.409462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.944096, 41.357143, 48.656536>,  <42.300274, 41.019047, 49.208939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.944096, 41.357143, 48.656536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.083797, 41.668465, 48.865253>,  <42.167618, 41.855259, 48.990482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.083797, 41.668465, 48.865253>,  <41.944096, 41.357143, 48.656536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.083797, 41.668465, 48.865253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224182, 0.471282, -0.853016,
		-0.909815, 0.414898, -0.009884,
		0.349256, 0.778302, 0.521792,
		42.188576, 41.901955, 49.021790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.600979, 41.959839, 48.376854>,  <41.944096, 41.357143, 48.656536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.600979, 41.959839, 48.376854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.932674, 42.089012, 48.559315>,  <42.131691, 42.166515, 48.668793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.932674, 42.089012, 48.559315>,  <41.600979, 41.959839, 48.376854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.932674, 42.089012, 48.559315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381275, 0.269889, -0.884188,
		-0.408647, 0.907123, 0.100675,
		0.829239, 0.322936, 0.456153,
		42.181446, 42.185894, 48.696159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.759079, 42.571514, 48.030209>,  <41.600979, 41.959839, 48.376854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.759079, 42.571514, 48.030209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.114059, 42.502159, 48.201023>,  <42.327049, 42.460545, 48.303513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.114059, 42.502159, 48.201023>,  <41.759079, 42.571514, 48.030209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.114059, 42.502159, 48.201023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455909, 0.194342, -0.868549,
		0.067609, 0.965488, 0.251521,
		0.887455, -0.173392, 0.427035,
		42.380295, 42.450142, 48.329132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.192535, 43.130558, 47.816479>,  <41.759079, 42.571514, 48.030209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.192535, 43.130558, 47.816479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.432259, 42.823311, 47.906658>,  <42.576092, 42.638962, 47.960766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.432259, 42.823311, 47.906658>,  <42.192535, 43.130558, 47.816479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.432259, 42.823311, 47.906658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383041, 0.027857, -0.923311,
		0.702928, 0.639706, 0.310915,
		0.599309, -0.768115, 0.225452,
		42.612053, 42.592876, 47.974293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.830879, 43.231678, 47.446281>,  <42.192535, 43.130558, 47.816479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.830879, 43.231678, 47.446281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.834187, 42.836662, 47.509136>,  <42.836170, 42.599651, 47.546848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.834187, 42.836662, 47.509136>,  <42.830879, 43.231678, 47.446281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.834187, 42.836662, 47.509136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490773, -0.132907, -0.861091,
		0.871248, 0.084238, 0.483561,
		0.008268, -0.987542, 0.157136,
		42.836666, 42.540401, 47.556278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.403606, 43.083218, 47.177406>,  <42.830879, 43.231678, 47.446281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.403606, 43.083218, 47.177406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.253662, 42.712654, 47.163338>,  <43.163696, 42.490314, 47.154896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.253662, 42.712654, 47.163338>,  <43.403606, 43.083218, 47.177406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.253662, 42.712654, 47.163338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333157, -0.099213, -0.937637,
		0.865150, -0.363203, 0.345832,
		-0.374863, -0.926413, -0.035169,
		43.141205, 42.434731, 47.152786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.943203, 42.646599, 46.905319>,  <43.403606, 43.083218, 47.177406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.943203, 42.646599, 46.905319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.602119, 42.443550, 46.855999>,  <43.397469, 42.321720, 46.826408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.602119, 42.443550, 46.855999>,  <43.943203, 42.646599, 46.905319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.602119, 42.443550, 46.855999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284042, -0.252459, -0.924978,
		0.438414, -0.823760, 0.359461,
		-0.852710, -0.507626, -0.123301,
		43.346306, 42.291264, 46.819008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.193497, 42.093460, 46.706684>,  <43.943203, 42.646599, 46.905319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.193497, 42.093460, 46.706684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.821243, 42.134682, 46.566223>,  <43.597893, 42.159416, 46.481945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.821243, 42.134682, 46.566223>,  <44.193497, 42.093460, 46.706684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.821243, 42.134682, 46.566223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303034, -0.320967, -0.897302,
		-0.205180, -0.941467, 0.267473,
		-0.930630, 0.103055, -0.351152,
		43.542053, 42.165600, 46.460876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.108730, 41.498268, 46.322323>,  <44.193497, 42.093460, 46.706684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.108730, 41.498268, 46.322323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.799118, 41.713310, 46.188545>,  <43.613350, 41.842335, 46.108276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.799118, 41.713310, 46.188545>,  <44.108730, 41.498268, 46.322323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.799118, 41.713310, 46.188545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104796, -0.412162, -0.905064,
		-0.624416, -0.735596, 0.262686,
		-0.774030, 0.537608, -0.334447,
		43.566910, 41.874592, 46.088211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.733761, 41.025730, 46.031780>,  <44.108730, 41.498268, 46.322323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.733761, 41.025730, 46.031780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.613945, 41.366043, 45.859062>,  <43.542057, 41.570232, 45.755432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.613945, 41.366043, 45.859062>,  <43.733761, 41.025730, 46.031780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.613945, 41.366043, 45.859062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083748, -0.427383, -0.900183,
		-0.950401, -0.305803, 0.056767,
		-0.299541, 0.850781, -0.431795,
		43.524082, 41.621277, 45.729523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267132, 40.901424, 45.518707>,  <43.733761, 41.025730, 46.031780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.267132, 40.901424, 45.518707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.405067, 41.265106, 45.425385>,  <43.487831, 41.483315, 45.369392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.405067, 41.265106, 45.425385>,  <43.267132, 40.901424, 45.518707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.405067, 41.265106, 45.425385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089969, -0.279425, -0.955943,
		-0.934339, 0.308658, -0.178157,
		0.344841, 0.909204, -0.233308,
		43.508518, 41.537868, 45.355392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.915451, 41.141582, 44.916866>,  <43.267132, 40.901424, 45.518707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.915451, 41.141582, 44.916866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.244492, 41.368607, 44.930782>,  <43.441914, 41.504822, 44.939133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.244492, 41.368607, 44.930782>,  <42.915451, 41.141582, 44.916866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.244492, 41.368607, 44.930782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136392, -0.137554, -0.981059,
		-0.552022, 0.811763, -0.190562,
		0.822599, 0.567557, 0.034786,
		43.491272, 41.538872, 44.941219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.939331, 41.402443, 44.222439>,  <42.915451, 41.141582, 44.916866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.939331, 41.402443, 44.222439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.308792, 41.447487, 44.368961>,  <43.530468, 41.474514, 44.456875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.308792, 41.447487, 44.368961>,  <42.939331, 41.402443, 44.222439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.308792, 41.447487, 44.368961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383186, -0.285261, -0.878518,
		0.005560, 0.951811, -0.306635,
		0.923655, 0.112614, 0.366306,
		43.585888, 41.481270, 44.478851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.325268, 41.776390, 43.625175>,  <42.939331, 41.402443, 44.222439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.325268, 41.776390, 43.625175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.577103, 41.592224, 43.875500>,  <43.728203, 41.481724, 44.025696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.577103, 41.592224, 43.875500>,  <43.325268, 41.776390, 43.625175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.577103, 41.592224, 43.875500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535491, -0.326457, -0.778894,
		0.562916, 0.825496, 0.041016,
		0.629584, -0.460415, 0.625813,
		43.765976, 41.454098, 44.063244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.028545, 42.004871, 43.455921>,  <43.325268, 41.776390, 43.625175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.028545, 42.004871, 43.455921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.057732, 41.655281, 43.648106>,  <44.075241, 41.445526, 43.763416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.057732, 41.655281, 43.648106>,  <44.028545, 42.004871, 43.455921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.057732, 41.655281, 43.648106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439625, -0.404232, -0.802076,
		0.895213, 0.269743, 0.354729,
		0.072962, -0.873977, 0.480460,
		44.079620, 41.393089, 43.792244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<45.347588, 39.027519, 54.728981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.680763, 39.173386, 54.895466>,  <45.880669, 39.260906, 54.995358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.680763, 39.173386, 54.895466>,  <45.347588, 39.027519, 54.728981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.680763, 39.173386, 54.895466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403057, 0.115541, -0.907852,
		-0.379153, 0.923942, -0.050743,
		0.832939, 0.364667, 0.416209,
		45.930645, 39.282787, 55.020329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.482368, 39.652309, 54.383083>,  <45.347588, 39.027519, 54.728981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.482368, 39.652309, 54.383083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.829498, 39.547546, 54.551979>,  <46.037777, 39.484688, 54.653316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.829498, 39.547546, 54.551979>,  <45.482368, 39.652309, 54.383083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.829498, 39.547546, 54.551979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487648, 0.285999, -0.824866,
		0.095276, 0.921744, 0.375914,
		0.867826, -0.261903, 0.422238,
		46.089848, 39.468975, 54.678650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.942928, 40.271587, 54.348713>,  <45.482368, 39.652309, 54.383083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.942928, 40.271587, 54.348713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.155357, 39.933464, 54.372101>,  <46.282814, 39.730591, 54.386135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.155357, 39.933464, 54.372101>,  <45.942928, 40.271587, 54.348713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.155357, 39.933464, 54.372101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351140, 0.156750, -0.923109,
		0.771146, 0.510768, 0.380067,
		0.531070, -0.845308, 0.058473,
		46.314678, 39.679871, 54.389645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.626389, 40.453465, 54.124622>,  <45.942928, 40.271587, 54.348713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.626389, 40.453465, 54.124622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.586990, 40.057587, 54.083054>,  <46.563351, 39.820061, 54.058113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.586990, 40.057587, 54.083054>,  <46.626389, 40.453465, 54.124622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.586990, 40.057587, 54.083054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377818, 0.059415, -0.923972,
		0.920626, -0.130273, 0.368073,
		-0.098500, -0.989696, -0.103919,
		46.557442, 39.760677, 54.051876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.243004, 40.279869, 53.837711>,  <46.626389, 40.453465, 54.124622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.243004, 40.279869, 53.837711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.989403, 39.981087, 53.757622>,  <46.837242, 39.801815, 53.709568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.989403, 39.981087, 53.757622>,  <47.243004, 40.279869, 53.837711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.989403, 39.981087, 53.757622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296489, 0.004339, -0.955026,
		0.714236, -0.664855, 0.218714,
		-0.634005, -0.746960, -0.200221,
		46.799202, 39.757000, 53.697556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.565472, 39.966602, 53.360268>,  <47.243004, 40.279869, 53.837711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.565472, 39.966602, 53.360268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.206482, 39.800995, 53.299438>,  <46.991089, 39.701630, 53.262939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.206482, 39.800995, 53.299438>,  <47.565472, 39.966602, 53.360268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.206482, 39.800995, 53.299438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157565, 0.021081, -0.987284,
		0.411956, -0.910026, 0.046315,
		-0.897477, -0.414015, -0.152072,
		46.937241, 39.676792, 53.253819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.763523, 39.485447, 52.886471>,  <47.565472, 39.966602, 53.360268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.763523, 39.485447, 52.886471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.371376, 39.541054, 52.830536>,  <47.136089, 39.574417, 52.796974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.371376, 39.541054, 52.830536>,  <47.763523, 39.485447, 52.886471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.371376, 39.541054, 52.830536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132653, -0.059742, -0.989361,
		-0.145891, -0.988486, 0.040128,
		-0.980367, 0.139015, -0.139841,
		47.077267, 39.582756, 52.788582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.649273, 39.085865, 52.322166>,  <47.763523, 39.485447, 52.886471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.649273, 39.085865, 52.322166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.345917, 39.345894, 52.341145>,  <47.163902, 39.501911, 52.352531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.345917, 39.345894, 52.341145>,  <47.649273, 39.085865, 52.322166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.345917, 39.345894, 52.341145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027500, 0.104635, -0.994130,
		-0.651221, -0.752634, -0.097231,
		-0.758390, 0.650072, 0.047443,
		47.118401, 39.540916, 52.355377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.116821, 38.816040, 51.915337>,  <47.649273, 39.085865, 52.322166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.116821, 38.816040, 51.915337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.019432, 39.202858, 51.945118>,  <46.960999, 39.434948, 51.962986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.019432, 39.202858, 51.945118>,  <47.116821, 38.816040, 51.915337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.019432, 39.202858, 51.945118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055532, 0.062741, -0.996484,
		-0.968316, -0.246754, 0.038426,
		-0.243476, 0.967045, 0.074456,
		46.946388, 39.492973, 51.967453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.639374, 38.982002, 51.340763>,  <47.116821, 38.816040, 51.915337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.639374, 38.982002, 51.340763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.772217, 39.343246, 51.449642>,  <46.851921, 39.559994, 51.514969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.772217, 39.343246, 51.449642>,  <46.639374, 38.982002, 51.340763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.772217, 39.343246, 51.449642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000931, 0.288889, -0.957362,
		-0.943242, 0.317692, 0.096782,
		0.332106, 0.903114, 0.272196,
		46.871849, 39.614182, 51.531300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.172501, 39.436039, 50.971100>,  <46.639374, 38.982002, 51.340763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.172501, 39.436039, 50.971100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.505669, 39.642517, 51.050896>,  <46.705570, 39.766403, 51.098774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.505669, 39.642517, 51.050896>,  <46.172501, 39.436039, 50.971100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.505669, 39.642517, 51.050896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004269, 0.366470, -0.930420,
		-0.553383, 0.774110, 0.307442,
		0.832916, 0.516191, 0.199493,
		46.755543, 39.797375, 51.110744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.046047, 40.191299, 50.809666>,  <46.172501, 39.436039, 50.971100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.046047, 40.191299, 50.809666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.438957, 40.119781, 50.787125>,  <46.674702, 40.076870, 50.773598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.438957, 40.119781, 50.787125>,  <46.046047, 40.191299, 50.809666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.438957, 40.119781, 50.787125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009571, 0.348056, -0.937425,
		0.187225, 0.920265, 0.343597,
		0.982270, -0.178798, -0.056357,
		46.733639, 40.066143, 50.770218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.208862, 40.732594, 50.465462>,  <46.046047, 40.191299, 50.809666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.208862, 40.732594, 50.465462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.542427, 40.514008, 50.434563>,  <46.742565, 40.382854, 50.416023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.542427, 40.514008, 50.434563>,  <46.208862, 40.732594, 50.465462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.542427, 40.514008, 50.434563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130895, 0.331806, -0.934222,
		0.536154, 0.768946, 0.348226,
		0.833910, -0.546468, -0.077248,
		46.792599, 40.350067, 50.411388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.733536, 41.198757, 50.243885>,  <46.208862, 40.732594, 50.465462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.733536, 41.198757, 50.243885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.843010, 40.826714, 50.145908>,  <46.908695, 40.603489, 50.087124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.843010, 40.826714, 50.145908>,  <46.733536, 41.198757, 50.243885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.843010, 40.826714, 50.145908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177456, 0.299123, -0.937569,
		0.945307, 0.213133, 0.246919,
		0.273686, -0.930107, -0.244941,
		46.925117, 40.547680, 50.072426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.295784, 41.372475, 49.778572>,  <46.733536, 41.198757, 50.243885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.295784, 41.372475, 49.778572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.221748, 40.981773, 49.735329>,  <47.177326, 40.747353, 49.709381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.221748, 40.981773, 49.735329>,  <47.295784, 41.372475, 49.778572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.221748, 40.981773, 49.735329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513260, -0.002268, -0.858230,
		0.838038, -0.214333, 0.501751,
		-0.185086, -0.976758, -0.108108,
		47.166222, 40.688747, 49.702896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.943176, 41.056923, 49.544685>,  <47.295784, 41.372475, 49.778572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.943176, 41.056923, 49.544685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.616753, 40.857735, 49.427334>,  <47.420898, 40.738220, 49.356922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.616753, 40.857735, 49.427334>,  <47.943176, 41.056923, 49.544685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.616753, 40.857735, 49.427334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295979, 0.075929, -0.952172,
		0.496432, -0.863862, 0.085427,
		-0.816058, -0.497973, -0.293378,
		47.371937, 40.708344, 49.339321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.146564, 40.701134, 49.050468>,  <47.943176, 41.056923, 49.544685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.146564, 40.701134, 49.050468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.757538, 40.656647, 48.968746>,  <47.524120, 40.629955, 48.919712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.757538, 40.656647, 48.968746>,  <48.146564, 40.701134, 49.050468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.757538, 40.656647, 48.968746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199564, 0.052311, -0.978487,
		0.119512, -0.992418, -0.028681,
		-0.972569, -0.111217, -0.204303,
		47.465767, 40.623283, 48.907455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.123779, 40.138138, 48.521400>,  <48.146564, 40.701134, 49.050468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.123779, 40.138138, 48.521400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.784454, 40.345123, 48.476501>,  <47.580860, 40.469315, 48.449562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.784454, 40.345123, 48.476501>,  <48.123779, 40.138138, 48.521400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.784454, 40.345123, 48.476501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047665, -0.136496, -0.989493,
		-0.527348, -0.844749, 0.091127,
		-0.848312, 0.517464, -0.112246,
		47.529961, 40.500362, 48.442829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.587044, 39.771614, 48.106297>,  <48.123779, 40.138138, 48.521400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.587044, 39.771614, 48.106297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.467850, 40.148651, 48.046005>,  <47.396336, 40.374874, 48.009830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.467850, 40.148651, 48.046005>,  <47.587044, 39.771614, 48.106297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.467850, 40.148651, 48.046005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137960, -0.198772, -0.970287,
		-0.944549, -0.268334, 0.189272,
		-0.297983, 0.942595, -0.150731,
		47.378456, 40.431431, 48.000786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.113194, 39.775562, 47.547287>,  <47.587044, 39.771614, 48.106297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.113194, 39.775562, 47.547287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.195755, 40.166420, 47.567608>,  <47.245293, 40.400936, 47.579800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.195755, 40.166420, 47.567608>,  <47.113194, 39.775562, 47.547287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.195755, 40.166420, 47.567608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073399, 0.067232, -0.995034,
		-0.975710, 0.201650, 0.085599,
		0.206404, 0.977147, 0.050798,
		47.257675, 40.459564, 47.582848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.614426, 40.048862, 47.070850>,  <47.113194, 39.775562, 47.547287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.614426, 40.048862, 47.070850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.922157, 40.300926, 47.112885>,  <47.106796, 40.452164, 47.138103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.922157, 40.300926, 47.112885>,  <46.614426, 40.048862, 47.070850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.922157, 40.300926, 47.112885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071801, 0.078161, -0.994352,
		-0.634811, 0.772524, 0.014885,
		0.769324, 0.630156, 0.105086,
		47.152954, 40.489975, 47.144409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.388599, 40.568874, 46.623375>,  <46.614426, 40.048862, 47.070850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.388599, 40.568874, 46.623375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.784096, 40.590607, 46.679134>,  <47.021393, 40.603645, 46.712589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.784096, 40.590607, 46.679134>,  <46.388599, 40.568874, 46.623375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.784096, 40.590607, 46.679134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145267, -0.125752, -0.981368,
		-0.035791, 0.990573, -0.132229,
		0.988745, 0.054333, 0.139397,
		47.080719, 40.606907, 46.720955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.114429, 40.548382, 45.896473>,  <46.388599, 40.568874, 46.623375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.114429, 40.548382, 45.896473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.884750, 40.221642, 45.874378>,  <45.746944, 40.025597, 45.861122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.884750, 40.221642, 45.874378>,  <46.114429, 40.548382, 45.896473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.884750, 40.221642, 45.874378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325650, 0.165969, 0.930809,
		-0.751167, 0.552453, -0.361308,
		-0.574195, -0.816854, -0.055236,
		45.712494, 39.976585, 45.857807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.537617, 40.731724, 46.220158>,  <46.114429, 40.548382, 45.896473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.537617, 40.731724, 46.220158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.527176, 40.332115, 46.234398>,  <45.520912, 40.092350, 46.242943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.527176, 40.332115, 46.234398>,  <45.537617, 40.731724, 46.220158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.527176, 40.332115, 46.234398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285585, 0.041583, 0.957451,
		-0.957998, 0.014819, -0.286392,
		-0.026097, -0.999025, 0.035604,
		45.519348, 40.032406, 46.245079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.984669, 40.468418, 46.564674>,  <45.537617, 40.731724, 46.220158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.984669, 40.468418, 46.564674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.154259, 40.106522, 46.581161>,  <45.256012, 39.889385, 46.591053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.154259, 40.106522, 46.581161>,  <44.984669, 40.468418, 46.564674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.154259, 40.106522, 46.581161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328583, -0.111246, 0.937900,
		-0.843967, -0.411188, -0.344447,
		0.423972, -0.904737, 0.041221,
		45.281452, 39.835102, 46.593529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.503418, 39.938442, 46.748817>,  <44.984669, 40.468418, 46.564674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.503418, 39.938442, 46.748817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.863419, 39.796890, 46.850620>,  <45.079418, 39.711960, 46.911701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.863419, 39.796890, 46.850620>,  <44.503418, 39.938442, 46.748817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.863419, 39.796890, 46.850620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325965, -0.158738, 0.931960,
		-0.289401, -0.921722, -0.258216,
		0.899996, -0.353880, 0.254510,
		45.133419, 39.690727, 46.926975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.328121, 39.461090, 47.291973>,  <44.503418, 39.938442, 46.748817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.328121, 39.461090, 47.291973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.725021, 39.503334, 47.318157>,  <44.963161, 39.528683, 47.333866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.725021, 39.503334, 47.318157>,  <44.328121, 39.461090, 47.291973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.725021, 39.503334, 47.318157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044473, -0.190044, 0.980768,
		0.116022, -0.976079, -0.183874,
		0.992251, 0.105613, 0.065458,
		45.022697, 39.535019, 47.337795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.545773, 38.874542, 47.524342>,  <44.328121, 39.461090, 47.291973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.545773, 38.874542, 47.524342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.834988, 39.139938, 47.601280>,  <45.008514, 39.299175, 47.647446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.834988, 39.139938, 47.601280>,  <44.545773, 38.874542, 47.524342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.834988, 39.139938, 47.601280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060170, -0.216895, 0.974339,
		0.688186, -0.716055, -0.116900,
		0.723035, 0.663492, 0.192349,
		45.051899, 39.338985, 47.658985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.970398, 38.530624, 48.013035>,  <44.545773, 38.874542, 47.524342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.970398, 38.530624, 48.013035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.033661, 38.924980, 48.034966>,  <45.071617, 39.161594, 48.048126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.033661, 38.924980, 48.034966>,  <44.970398, 38.530624, 48.013035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.033661, 38.924980, 48.034966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117673, -0.036316, 0.992388,
		0.980377, -0.163404, 0.110269,
		0.158155, 0.985891, 0.054831,
		45.081108, 39.220749, 48.051414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.414139, 38.586388, 48.593620>,  <44.970398, 38.530624, 48.013035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.414139, 38.586388, 48.593620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.233330, 38.940010, 48.546101>,  <45.124844, 39.152184, 48.517590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.233330, 38.940010, 48.546101>,  <45.414139, 38.586388, 48.593620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.233330, 38.940010, 48.546101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204658, 0.026840, 0.978465,
		0.868210, 0.466603, 0.168797,
		-0.452024, 0.884060, -0.118796,
		45.097721, 39.205227, 48.510460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.667858, 38.971668, 49.084911>,  <45.414139, 38.586388, 48.593620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.667858, 38.971668, 49.084911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.335968, 39.162193, 48.968517>,  <45.136833, 39.276508, 48.898682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.335968, 39.162193, 48.968517>,  <45.667858, 38.971668, 49.084911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.335968, 39.162193, 48.968517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340866, -0.019576, 0.939908,
		0.441995, 0.879057, 0.178602,
		-0.829729, 0.476314, -0.290988,
		45.087048, 39.305088, 48.881222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.574139, 39.466236, 49.609119>,  <45.667858, 38.971668, 49.084911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.574139, 39.466236, 49.609119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.210205, 39.431122, 49.446892>,  <44.991844, 39.410053, 49.349556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.210205, 39.431122, 49.446892>,  <45.574139, 39.466236, 49.609119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.210205, 39.431122, 49.446892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405948, -0.014329, 0.913784,
		-0.086030, 0.996036, -0.022600,
		-0.909838, -0.087787, -0.405572,
		44.937252, 39.404785, 49.325222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.175610, 39.890854, 50.078537>,  <45.574139, 39.466236, 49.609119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.175610, 39.890854, 50.078537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.871590, 39.706192, 49.895584>,  <44.689178, 39.595394, 49.785812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.871590, 39.706192, 49.895584>,  <45.175610, 39.890854, 50.078537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.871590, 39.706192, 49.895584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426349, -0.176945, 0.887084,
		-0.490458, 0.869232, -0.062339,
		-0.760051, -0.461655, -0.457380,
		44.643574, 39.567696, 49.758369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.570164, 40.165638, 50.371265>,  <45.175610, 39.890854, 50.078537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.570164, 40.165638, 50.371265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.485226, 39.806839, 50.216187>,  <44.434265, 39.591560, 50.123138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.485226, 39.806839, 50.216187>,  <44.570164, 40.165638, 50.371265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.485226, 39.806839, 50.216187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586391, -0.200409, 0.784845,
		-0.781701, 0.393999, -0.483434,
		-0.212343, -0.896995, -0.387698,
		44.421524, 39.537739, 50.099876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.890629, 40.187405, 50.333084>,  <44.570164, 40.165638, 50.371265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.890629, 40.187405, 50.333084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.984993, 39.800934, 50.374733>,  <44.041611, 39.569050, 50.399723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.984993, 39.800934, 50.374733>,  <43.890629, 40.187405, 50.333084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.984993, 39.800934, 50.374733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433728, -0.008803, 0.901001,
		-0.869612, -0.257721, -0.421135,
		0.235914, -0.966179, 0.104125,
		44.055767, 39.511082, 50.405972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.333206, 39.824467, 50.543583>,  <43.890629, 40.187405, 50.333084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.333206, 39.824467, 50.543583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.627342, 39.580513, 50.661777>,  <43.803825, 39.434139, 50.732693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.627342, 39.580513, 50.661777>,  <43.333206, 39.824467, 50.543583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.627342, 39.580513, 50.661777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419700, -0.067492, 0.905150,
		-0.532097, -0.789608, -0.305599,
		0.735340, -0.609888, 0.295487,
		43.847942, 39.397545, 50.750423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.015305, 39.203892, 50.980247>,  <43.333206, 39.824467, 50.543583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.015305, 39.203892, 50.980247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.403027, 39.251595, 51.066242>,  <43.635662, 39.280216, 51.117840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.403027, 39.251595, 51.066242>,  <43.015305, 39.203892, 50.980247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.403027, 39.251595, 51.066242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210679, -0.047786, 0.976387,
		0.126713, -0.991713, -0.021195,
		0.969308, 0.119255, 0.214989,
		43.693817, 39.287373, 51.130737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.135921, 38.704071, 51.323364>,  <43.015305, 39.203892, 50.980247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.135921, 38.704071, 51.323364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.444466, 38.945923, 51.402794>,  <43.629593, 39.091034, 51.450451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.444466, 38.945923, 51.402794>,  <43.135921, 38.704071, 51.323364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.444466, 38.945923, 51.402794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123560, -0.163799, 0.978725,
		0.624293, -0.779482, -0.051640,
		0.771357, 0.604630, 0.198571,
		43.675873, 39.127312, 51.462364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.545067, 38.286396, 51.824997>,  <43.135921, 38.704071, 51.323364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.545067, 38.286396, 51.824997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.639969, 38.673889, 51.854034>,  <43.696911, 38.906384, 51.871456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.639969, 38.673889, 51.854034>,  <43.545067, 38.286396, 51.824997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.639969, 38.673889, 51.854034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213245, -0.020971, 0.976774,
		0.947754, -0.247221, 0.201602,
		0.237252, 0.968732, 0.072594,
		43.711143, 38.964508, 51.875813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.001087, 38.199703, 52.403599>,  <43.545067, 38.286396, 51.824997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.001087, 38.199703, 52.403599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.922699, 38.589500, 52.359875>,  <43.875668, 38.823380, 52.333641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.922699, 38.589500, 52.359875>,  <44.001087, 38.199703, 52.403599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.922699, 38.589500, 52.359875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067091, 0.124539, 0.989944,
		0.978312, 0.186667, -0.089786,
		-0.195971, 0.974498, -0.109315,
		43.863907, 38.881851, 52.327080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<44.637100, 38.661091, 52.743534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.289032, 38.858101, 52.737556>,  <44.080193, 38.976307, 52.733971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.289032, 38.858101, 52.737556>,  <44.637100, 38.661091, 52.743534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.289032, 38.858101, 52.737556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009631, 0.047320, 0.998833,
		0.492657, 0.869011, -0.045920,
		-0.870170, 0.492525, -0.014944,
		44.027981, 39.005859, 52.733074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.707943, 39.280556, 53.277348>,  <44.637100, 38.661091, 52.743534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.707943, 39.280556, 53.277348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.321579, 39.210190, 53.201378>,  <44.089760, 39.167969, 53.155796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.321579, 39.210190, 53.201378>,  <44.707943, 39.280556, 53.277348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.321579, 39.210190, 53.201378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231049, 0.254893, 0.938960,
		-0.116767, 0.950833, -0.286849,
		-0.965910, -0.175915, -0.189926,
		44.031807, 39.157413, 53.144402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.353577, 39.854408, 53.520802>,  <44.707943, 39.280556, 53.277348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.353577, 39.854408, 53.520802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.053139, 39.591095, 53.500732>,  <43.872875, 39.433105, 53.488689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.053139, 39.591095, 53.500732>,  <44.353577, 39.854408, 53.520802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.053139, 39.591095, 53.500732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246991, 0.209707, 0.946054,
		-0.612250, 0.722970, -0.320101,
		-0.751096, -0.658283, -0.050174,
		43.827808, 39.393608, 53.485680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.728321, 40.239803, 53.787067>,  <44.353577, 39.854408, 53.520802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.728321, 40.239803, 53.787067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.603146, 39.860001, 53.796021>,  <43.528042, 39.632118, 53.801392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.603146, 39.860001, 53.796021>,  <43.728321, 40.239803, 53.787067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.603146, 39.860001, 53.796021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530292, 0.194226, 0.825267,
		-0.787947, 0.246389, -0.564298,
		-0.312939, -0.949510, 0.022382,
		43.509266, 39.575150, 53.802734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.044533, 40.284325, 53.879765>,  <43.728321, 40.239803, 53.787067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.044533, 40.284325, 53.879765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.135277, 39.910965, 53.990978>,  <43.189724, 39.686951, 54.057705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.135277, 39.910965, 53.990978>,  <43.044533, 40.284325, 53.879765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.135277, 39.910965, 53.990978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482830, 0.140140, 0.864428,
		-0.845819, -0.330348, -0.418880,
		0.226860, -0.933397, 0.278035,
		43.203335, 39.630947, 54.074390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.592602, 40.099072, 54.396160>,  <43.044533, 40.284325, 53.879765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.592602, 40.099072, 54.396160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.851692, 39.798653, 54.447346>,  <43.007145, 39.618401, 54.478058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.851692, 39.798653, 54.447346>,  <42.592602, 40.099072, 54.396160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.851692, 39.798653, 54.447346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136274, 0.051041, 0.989356,
		-0.749587, -0.658269, -0.069288,
		0.647726, -0.751051, 0.127965,
		43.046009, 39.573338, 54.485737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.231106, 39.584763, 54.781296>,  <42.592602, 40.099072, 54.396160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.231106, 39.584763, 54.781296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.614059, 39.496277, 54.855579>,  <42.843830, 39.443184, 54.900150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.614059, 39.496277, 54.855579>,  <42.231106, 39.584763, 54.781296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.614059, 39.496277, 54.855579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247372, -0.296096, 0.922569,
		-0.149097, -0.929189, -0.338198,
		0.957381, -0.221214, 0.185709,
		42.901272, 39.429913, 54.911293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.271976, 39.005814, 55.108810>,  <42.231106, 39.584763, 54.781296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.271976, 39.005814, 55.108810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.625320, 39.134964, 55.244713>,  <42.837326, 39.212456, 55.326252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.625320, 39.134964, 55.244713>,  <42.271976, 39.005814, 55.108810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.625320, 39.134964, 55.244713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234062, -0.324138, 0.916597,
		0.406075, -0.889205, -0.210756,
		0.883356, 0.322877, 0.339754,
		42.890327, 39.231827, 55.346638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.400425, 38.554890, 55.497719>,  <42.271976, 39.005814, 55.108810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.400425, 38.554890, 55.497719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.648052, 38.849777, 55.605988>,  <42.796627, 39.026711, 55.670948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.648052, 38.849777, 55.605988>,  <42.400425, 38.554890, 55.497719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.648052, 38.849777, 55.605988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123192, -0.249232, 0.960577,
		0.775618, -0.628003, -0.063471,
		0.619064, 0.737222, 0.270674,
		42.833771, 39.070942, 55.687191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.813881, 38.320759, 55.944942>,  <42.400425, 38.554890, 55.497719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.813881, 38.320759, 55.944942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.862114, 38.710205, 56.022438>,  <42.891052, 38.943871, 56.068935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.862114, 38.710205, 56.022438>,  <42.813881, 38.320759, 55.944942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.862114, 38.710205, 56.022438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262117, -0.157013, 0.952177,
		0.957473, -0.165599, 0.236267,
		0.120583, 0.973614, 0.193742,
		42.898289, 39.002289, 56.080559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.214134, 38.371426, 56.553047>,  <42.813881, 38.320759, 55.944942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.214134, 38.371426, 56.553047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.011253, 38.715508, 56.531910>,  <42.889526, 38.921955, 56.519226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.011253, 38.715508, 56.531910>,  <43.214134, 38.371426, 56.553047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.011253, 38.715508, 56.531910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296615, -0.116666, 0.947844,
		0.809175, 0.496423, 0.314323,
		-0.507203, 0.860205, -0.052843,
		42.859093, 38.973568, 56.516056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.340569, 38.775372, 57.162529>,  <43.214134, 38.371426, 56.553047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.340569, 38.775372, 57.162529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.992592, 38.902954, 57.012081>,  <42.783806, 38.979504, 56.921810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.992592, 38.902954, 57.012081>,  <43.340569, 38.775372, 57.162529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.992592, 38.902954, 57.012081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451298, -0.207398, 0.867938,
		0.198831, 0.924798, 0.324370,
		-0.869941, 0.318961, -0.376122,
		42.731609, 38.998642, 56.899246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.021423, 39.164764, 57.734863>,  <43.340569, 38.775372, 57.162529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.021423, 39.164764, 57.734863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.701981, 39.098495, 57.503426>,  <42.510315, 39.058735, 57.364563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.701981, 39.098495, 57.503426>,  <43.021423, 39.164764, 57.734863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.701981, 39.098495, 57.503426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567514, -0.112776, 0.815604,
		-0.200378, 0.979710, -0.003960,
		-0.798609, -0.165676, -0.578597,
		42.462399, 39.048794, 57.329845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.451248, 39.488312, 58.043594>,  <43.021423, 39.164764, 57.734863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.451248, 39.488312, 58.043594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.231026, 39.273125, 57.788258>,  <42.098892, 39.144012, 57.635056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.231026, 39.273125, 57.788258>,  <42.451248, 39.488312, 58.043594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.231026, 39.273125, 57.788258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697283, -0.124090, 0.705973,
		-0.458999, 0.833785, -0.306794,
		-0.550559, -0.537963, -0.638341,
		42.065857, 39.111736, 57.596756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.775623, 39.838726, 58.136761>,  <42.451248, 39.488312, 58.043594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.775623, 39.838726, 58.136761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.719917, 39.475220, 57.979408>,  <41.686493, 39.257114, 57.884995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.719917, 39.475220, 57.979408>,  <41.775623, 39.838726, 58.136761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.719917, 39.475220, 57.979408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726280, -0.176310, 0.664404,
		-0.673145, 0.378233, -0.635465,
		-0.139261, -0.908765, -0.393385,
		41.678139, 39.202591, 57.861393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031593, 39.789497, 58.072807>,  <41.775623, 39.838726, 58.136761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031593, 39.789497, 58.072807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.163933, 39.412170, 58.083290>,  <41.243336, 39.185772, 58.089581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.163933, 39.412170, 58.083290>,  <41.031593, 39.789497, 58.072807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163933, 39.412170, 58.083290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707576, -0.229599, 0.668296,
		-0.624400, -0.239648, -0.743433,
		0.330847, -0.943320, 0.026207,
		41.263187, 39.129173, 58.091152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485931, 39.361729, 57.840145>,  <41.031593, 39.789497, 58.072807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.485931, 39.361729, 57.840145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.728153, 39.140152, 58.068687>,  <40.873486, 39.007206, 58.205814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.728153, 39.140152, 58.068687>,  <40.485931, 39.361729, 57.840145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728153, 39.140152, 58.068687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766636, -0.213473, 0.605556,
		-0.213473, -0.804722, -0.553942,
		-0.605556, 0.553942, -0.571359,
		40.909821, 38.973969, 58.240093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037018, 38.796841, 58.025482>,  <40.485931, 39.361729, 57.840145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037018, 38.796841, 58.025482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.343815, 38.755203, 58.278744>,  <40.527893, 38.730221, 58.430698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.343815, 38.755203, 58.278744>,  <40.037018, 38.796841, 58.025482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343815, 38.755203, 58.278744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638652, -0.219133, 0.737634,
		0.061958, -0.970126, -0.234556,
		0.766997, -0.104098, 0.633150,
		40.573914, 38.723972, 58.468689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850712, 38.275146, 58.542591>,  <40.037018, 38.796841, 58.025482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850712, 38.275146, 58.542591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.146797, 38.483681, 58.712433>,  <40.324448, 38.608803, 58.814339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.146797, 38.483681, 58.712433>,  <39.850712, 38.275146, 58.542591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146797, 38.483681, 58.712433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506527, 0.017084, 0.862055,
		0.442167, -0.853180, 0.276717,
		0.740215, 0.521337, 0.424604,
		40.368862, 38.640083, 58.839813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801929, 38.009552, 59.280396>,  <39.850712, 38.275146, 58.542591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801929, 38.009552, 59.280396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.022400, 38.342491, 59.257080>,  <40.154682, 38.542255, 59.243092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.022400, 38.342491, 59.257080>,  <39.801929, 38.009552, 59.280396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022400, 38.342491, 59.257080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432200, 0.344558, 0.833357,
		0.713728, -0.434136, 0.549654,
		0.551177, 0.832350, -0.058287,
		40.187752, 38.592197, 59.239594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064331, 38.127708, 59.929932>,  <39.801929, 38.009552, 59.280396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064331, 38.127708, 59.929932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.081635, 38.491333, 59.764172>,  <40.092018, 38.709507, 59.664715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.081635, 38.491333, 59.764172>,  <40.064331, 38.127708, 59.929932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081635, 38.491333, 59.764172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386189, 0.397762, 0.832251,
		0.921404, 0.124033, 0.368279,
		0.043261, 0.909066, -0.414400,
		40.094612, 38.764053, 59.639851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256172, 38.496513, 60.425812>,  <40.064331, 38.127708, 59.929932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256172, 38.496513, 60.425812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.116089, 38.777611, 60.178101>,  <40.032040, 38.946270, 60.029472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.116089, 38.777611, 60.178101>,  <40.256172, 38.496513, 60.425812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.116089, 38.777611, 60.178101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396925, 0.487511, 0.777678,
		0.848413, 0.518158, 0.108205,
		-0.350209, 0.702742, -0.619280,
		40.011024, 38.988434, 59.992317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448849, 39.138252, 60.736038>,  <40.256172, 38.496513, 60.425812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448849, 39.138252, 60.736038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.140579, 39.170525, 60.483200>,  <39.955616, 39.189888, 60.331497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.140579, 39.170525, 60.483200>,  <40.448849, 39.138252, 60.736038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140579, 39.170525, 60.483200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554310, 0.404411, 0.727456,
		0.314322, 0.911011, -0.266946,
		-0.770676, 0.080684, -0.632098,
		39.909378, 39.194729, 60.293571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119930, 39.728745, 60.659382>,  <40.448849, 39.138252, 60.736038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119930, 39.728745, 60.659382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.818558, 39.482544, 60.566864>,  <39.637733, 39.334824, 60.511353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.818558, 39.482544, 60.566864>,  <40.119930, 39.728745, 60.659382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818558, 39.482544, 60.566864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623611, 0.557400, 0.548101,
		-0.208431, 0.557197, -0.803796,
		-0.753436, -0.615497, -0.231295,
		39.592525, 39.297894, 60.497475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487774, 40.422340, 60.504913>,  <40.119930, 39.728745, 60.659382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487774, 40.422340, 60.504913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.746574, 40.493134, 60.801582>,  <40.901855, 40.535610, 60.979584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.746574, 40.493134, 60.801582>,  <40.487774, 40.422340, 60.504913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.746574, 40.493134, 60.801582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747455, 0.045013, -0.662786,
		-0.150686, 0.983184, -0.103163,
		0.646997, 0.176982, 0.741668,
		40.940674, 40.546227, 61.024082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876842, 40.976162, 60.344444>,  <40.487774, 40.422340, 60.504913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.876842, 40.976162, 60.344444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.131020, 40.836571, 60.619957>,  <41.283527, 40.752815, 60.785267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.131020, 40.836571, 60.619957>,  <40.876842, 40.976162, 60.344444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131020, 40.836571, 60.619957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772074, 0.274938, -0.572984,
		0.010587, 0.895892, 0.444145,
		0.635444, -0.348979, 0.688784,
		41.321651, 40.731876, 60.826591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.448742, 41.471394, 60.463833>,  <40.876842, 40.976162, 60.344444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.448742, 41.471394, 60.463833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.586479, 41.133102, 60.626892>,  <41.669121, 40.930130, 60.724728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.586479, 41.133102, 60.626892>,  <41.448742, 41.471394, 60.463833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.586479, 41.133102, 60.626892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867327, 0.120338, -0.482973,
		0.359406, 0.519873, 0.774958,
		0.344341, -0.845725, 0.407649,
		41.689781, 40.879383, 60.749187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.146675, 41.629429, 60.686413>,  <41.448742, 41.471394, 60.463833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.146675, 41.629429, 60.686413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.139435, 41.233482, 60.630089>,  <42.135090, 40.995914, 60.596294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.139435, 41.233482, 60.630089>,  <42.146675, 41.629429, 60.686413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.139435, 41.233482, 60.630089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910037, 0.042020, -0.412392,
		0.414131, -0.135611, 0.900058,
		-0.018104, -0.989871, -0.140813,
		42.134003, 40.936520, 60.587845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896267, 41.407398, 60.820496>,  <42.146675, 41.629429, 60.686413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.896267, 41.407398, 60.820496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.709259, 41.126541, 60.605675>,  <42.597054, 40.958027, 60.476784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.709259, 41.126541, 60.605675>,  <42.896267, 41.407398, 60.820496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.709259, 41.126541, 60.605675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824720, -0.127742, -0.550926,
		0.318225, -0.700484, 0.638793,
		-0.467515, -0.702143, -0.537052,
		42.569004, 40.915897, 60.444557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.405716, 40.822041, 60.834251>,  <42.896267, 41.407398, 60.820496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.405716, 40.822041, 60.834251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.149620, 40.754120, 60.534584>,  <42.995964, 40.713367, 60.354782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.149620, 40.754120, 60.534584>,  <43.405716, 40.822041, 60.834251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.149620, 40.754120, 60.534584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767995, -0.162587, -0.619474,
		-0.016616, -0.971973, 0.234504,
		-0.640240, -0.169804, -0.749173,
		42.957546, 40.703178, 60.309834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.713039, 40.239475, 60.581741>,  <43.405716, 40.822041, 60.834251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.713039, 40.239475, 60.581741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.470215, 40.384064, 60.298668>,  <43.324520, 40.470818, 60.128822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.470215, 40.384064, 60.298668>,  <43.713039, 40.239475, 60.581741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.470215, 40.384064, 60.298668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680502, -0.223409, -0.697858,
		-0.410355, -0.905224, -0.110355,
		-0.607063, 0.361466, -0.707684,
		43.288097, 40.492504, 60.086361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.723461, 39.756989, 59.961182>,  <43.713039, 40.239475, 60.581741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.723461, 39.756989, 59.961182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.571068, 40.095085, 59.811295>,  <43.479630, 40.297943, 59.721363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.571068, 40.095085, 59.811295>,  <43.723461, 39.756989, 59.961182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.571068, 40.095085, 59.811295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435700, -0.193331, -0.879084,
		-0.815485, -0.498182, -0.294617,
		-0.380986, 0.845244, -0.374716,
		43.456772, 40.348660, 59.698879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.234791, 39.592869, 59.266724>,  <43.723461, 39.756989, 59.961182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.234791, 39.592869, 59.266724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.318848, 39.981743, 59.225357>,  <43.369282, 40.215069, 59.200535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.318848, 39.981743, 59.225357>,  <43.234791, 39.592869, 59.266724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.318848, 39.981743, 59.225357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445598, -0.189396, -0.874970,
		-0.870220, 0.137784, -0.473004,
		0.210142, 0.972185, -0.103420,
		43.381889, 40.273399, 59.194332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.026310, 39.796494, 58.615875>,  <43.234791, 39.592869, 59.266724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.026310, 39.796494, 58.615875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.311455, 40.056465, 58.721272>,  <43.482540, 40.212448, 58.784512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.311455, 40.056465, 58.721272>,  <43.026310, 39.796494, 58.615875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.311455, 40.056465, 58.721272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528906, -0.251504, -0.810558,
		-0.460534, 0.717176, -0.523037,
		0.712858, 0.649927, 0.263492,
		43.525311, 40.251442, 58.800320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.037422, 40.309525, 58.042156>,  <43.026310, 39.796494, 58.615875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.037422, 40.309525, 58.042156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.391441, 40.304199, 58.228279>,  <43.603855, 40.301003, 58.339954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.391441, 40.304199, 58.228279>,  <43.037422, 40.309525, 58.042156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.391441, 40.304199, 58.228279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453165, -0.203901, -0.867793,
		0.106433, 0.978901, -0.174428,
		0.885050, -0.013317, 0.465306,
		43.656956, 40.300205, 58.367870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.517052, 40.683849, 57.623741>,  <43.037422, 40.309525, 58.042156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.517052, 40.683849, 57.623741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.795231, 40.495354, 57.840733>,  <43.962139, 40.382256, 57.970928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.795231, 40.495354, 57.840733>,  <43.517052, 40.683849, 57.623741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.795231, 40.495354, 57.840733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585438, -0.066172, -0.808012,
		0.416666, 0.879518, 0.229864,
		0.695451, -0.471242, 0.542475,
		44.003864, 40.353981, 58.003475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.083855, 40.994576, 57.391159>,  <43.517052, 40.683849, 57.623741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.083855, 40.994576, 57.391159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.208145, 40.654808, 57.561775>,  <44.282719, 40.450947, 57.664143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.208145, 40.654808, 57.561775>,  <44.083855, 40.994576, 57.391159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.208145, 40.654808, 57.561775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611749, -0.164737, -0.773709,
		0.727471, 0.501345, 0.468444,
		0.310725, -0.849421, 0.426538,
		44.301361, 40.399982, 57.689735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.792263, 41.087200, 57.487305>,  <44.083855, 40.994576, 57.391159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.792263, 41.087200, 57.487305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.703510, 40.697678, 57.467419>,  <44.650261, 40.463963, 57.455486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.703510, 40.697678, 57.467419>,  <44.792263, 41.087200, 57.487305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.703510, 40.697678, 57.467419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697565, -0.122898, -0.705903,
		0.681303, -0.191304, 0.706562,
		-0.221878, -0.973806, -0.049716,
		44.636948, 40.405537, 57.452503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.478649, 40.672398, 57.502052>,  <44.792263, 41.087200, 57.487305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.478649, 40.672398, 57.502052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.209736, 40.418930, 57.348953>,  <45.048389, 40.266850, 57.257095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.209736, 40.418930, 57.348953>,  <45.478649, 40.672398, 57.502052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.209736, 40.418930, 57.348953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654025, -0.266169, -0.708100,
		0.346828, -0.726369, 0.593378,
		-0.672281, -0.633673, -0.382749,
		45.008053, 40.228828, 57.234127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.918758, 40.276642, 57.158039>,  <45.478649, 40.672398, 57.502052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.918758, 40.276642, 57.158039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.559105, 40.158432, 57.028900>,  <45.343315, 40.087505, 56.951416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.559105, 40.158432, 57.028900>,  <45.918758, 40.276642, 57.158039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.559105, 40.158432, 57.028900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429994, -0.458815, -0.777556,
		0.081664, -0.837945, 0.539610,
		-0.899131, -0.295527, -0.322843,
		45.289364, 40.069775, 56.932049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.953121, 39.522476, 57.127995>,  <45.918758, 40.276642, 57.158039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.953121, 39.522476, 57.127995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.679634, 39.655640, 56.868240>,  <45.515541, 39.735538, 56.712387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.679634, 39.655640, 56.868240>,  <45.953121, 39.522476, 57.127995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.679634, 39.655640, 56.868240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471067, -0.478292, -0.741170,
		-0.557343, -0.812653, 0.170189,
		-0.683714, 0.332915, -0.649386,
		45.474518, 39.755512, 56.673424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.696865, 38.889389, 56.717388>,  <45.953121, 39.522476, 57.127995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.696865, 38.889389, 56.717388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.577309, 39.186768, 56.478073>,  <45.505577, 39.365196, 56.334484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.577309, 39.186768, 56.478073>,  <45.696865, 38.889389, 56.717388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.577309, 39.186768, 56.478073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364770, -0.490333, -0.791528,
		-0.881822, -0.454815, -0.124634,
		-0.298887, 0.743449, -0.598289,
		45.487644, 39.409801, 56.298588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.432476, 38.583027, 56.089069>,  <45.696865, 38.889389, 56.717388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.432476, 38.583027, 56.089069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.539680, 38.958832, 56.003761>,  <45.604004, 39.184315, 55.952576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.539680, 38.958832, 56.003761>,  <45.432476, 38.583027, 56.089069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.539680, 38.958832, 56.003761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482140, -0.322448, -0.814597,
		-0.834094, 0.115493, -0.539396,
		0.268007, 0.939515, -0.213268,
		45.620083, 39.240685, 55.939781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.380302, 38.585514, 55.368305>,  <45.432476, 38.583027, 56.089069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.380302, 38.585514, 55.368305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.634193, 38.887932, 55.432205>,  <45.786530, 39.069382, 55.470547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.634193, 38.887932, 55.432205>,  <45.380302, 38.585514, 55.368305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.634193, 38.887932, 55.432205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511029, -0.255620, -0.820675,
		-0.579630, 0.602542, -0.548609,
		0.634727, 0.756043, 0.159752,
		45.824612, 39.114746, 55.480129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.131088, 38.303673, 49.731285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.205971, 38.677521, 49.852242>,  <44.250900, 38.901829, 49.924816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.205971, 38.677521, 49.852242>,  <44.131088, 38.303673, 49.731285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.205971, 38.677521, 49.852242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253718, 0.251387, -0.934040,
		-0.948989, 0.251583, -0.190068,
		0.187208, 0.934618, 0.302395,
		44.262135, 38.957905, 49.942959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.790791, 38.717346, 49.227211>,  <44.131088, 38.303673, 49.731285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.790791, 38.717346, 49.227211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.068447, 38.963852, 49.376011>,  <44.235043, 39.111755, 49.465290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.068447, 38.963852, 49.376011>,  <43.790791, 38.717346, 49.227211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.068447, 38.963852, 49.376011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251772, 0.276292, -0.927509,
		-0.674370, 0.737484, 0.036629,
		0.694144, 0.616263, 0.372001,
		44.276691, 39.148731, 49.487610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.705452, 39.372494, 48.961216>,  <43.790791, 38.717346, 49.227211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.705452, 39.372494, 48.961216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.091454, 39.359184, 49.065266>,  <44.323055, 39.351200, 49.127697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.091454, 39.359184, 49.065266>,  <43.705452, 39.372494, 48.961216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.091454, 39.359184, 49.065266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258425, 0.289367, -0.921674,
		-0.044608, 0.956640, 0.287837,
		0.965001, -0.033270, 0.260128,
		44.380955, 39.349205, 49.143303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.965134, 39.926620, 48.470226>,  <43.705452, 39.372494, 48.961216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.965134, 39.926620, 48.470226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.296806, 39.745827, 48.601784>,  <44.495808, 39.637348, 48.680717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.296806, 39.745827, 48.601784>,  <43.965134, 39.926620, 48.470226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.296806, 39.745827, 48.601784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424260, 0.125777, -0.896763,
		0.363958, 0.883112, 0.296052,
		0.829179, -0.451987, 0.328892,
		44.545559, 39.610229, 48.700451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.564690, 40.387661, 48.390171>,  <43.965134, 39.926620, 48.470226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.564690, 40.387661, 48.390171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.752556, 40.036339, 48.425911>,  <44.865276, 39.825546, 48.447353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.752556, 40.036339, 48.425911>,  <44.564690, 40.387661, 48.390171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.752556, 40.036339, 48.425911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524696, 0.196316, -0.828344,
		0.710003, 0.435928, 0.553049,
		0.469670, -0.878309, 0.089345,
		44.893456, 39.772846, 48.452713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.280834, 40.488926, 48.132973>,  <44.564690, 40.387661, 48.390171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.280834, 40.488926, 48.132973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.231720, 40.092354, 48.115112>,  <45.202251, 39.854412, 48.104397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.231720, 40.092354, 48.115112>,  <45.280834, 40.488926, 48.132973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.231720, 40.092354, 48.115112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413038, -0.010137, -0.910657,
		0.902398, -0.130261, 0.410742,
		-0.122787, -0.991428, -0.044655,
		45.194885, 39.794926, 48.101715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.924149, 40.215561, 47.957077>,  <45.280834, 40.488926, 48.132973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.924149, 40.215561, 47.957077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.653091, 39.934319, 47.870880>,  <45.490456, 39.765572, 47.819160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.653091, 39.934319, 47.870880>,  <45.924149, 40.215561, 47.957077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.653091, 39.934319, 47.870880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361557, -0.063368, -0.930194,
		0.640373, -0.708252, 0.297155,
		-0.677642, -0.703110, -0.215495,
		45.449799, 39.723385, 47.806232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.274109, 39.555855, 47.582226>,  <45.924149, 40.215561, 47.957077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.274109, 39.555855, 47.582226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.887985, 39.585335, 47.482033>,  <45.656311, 39.603024, 47.421917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.887985, 39.585335, 47.482033>,  <46.274109, 39.555855, 47.582226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.887985, 39.585335, 47.482033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240663, -0.120936, -0.963045,
		-0.101264, -0.989921, 0.099005,
		-0.965312, 0.073695, -0.250483,
		45.598392, 39.607445, 47.406887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.331444, 39.222328, 47.059772>,  <46.274109, 39.555855, 47.582226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.331444, 39.222328, 47.059772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.951706, 39.342926, 47.024342>,  <45.723862, 39.415283, 47.003082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.951706, 39.342926, 47.024342>,  <46.331444, 39.222328, 47.059772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.951706, 39.342926, 47.024342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072605, -0.063814, -0.995317,
		-0.305735, -0.951330, 0.038692,
		-0.949345, 0.301494, -0.088582,
		45.666901, 39.433372, 46.997768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.006897, 38.759190, 46.625378>,  <46.331444, 39.222328, 47.059772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.006897, 38.759190, 46.625378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.794449, 39.097992, 46.616478>,  <45.666981, 39.301273, 46.611137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.794449, 39.097992, 46.616478>,  <46.006897, 38.759190, 46.625378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.794449, 39.097992, 46.616478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062798, 0.013166, -0.997939,
		-0.844966, -0.531424, -0.060183,
		-0.531121, 0.847004, -0.022248,
		45.635113, 39.352093, 46.609802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.454918, 38.660938, 46.143993>,  <46.006897, 38.759190, 46.625378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.454918, 38.660938, 46.143993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.492020, 39.057259, 46.183392>,  <45.514282, 39.295052, 46.207031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.492020, 39.057259, 46.183392>,  <45.454918, 38.660938, 46.143993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.492020, 39.057259, 46.183392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187253, 0.079802, -0.979065,
		-0.977922, 0.109259, -0.178129,
		0.092757, 0.990805, 0.098500,
		45.519848, 39.354500, 46.212940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.972260, 38.913471, 45.717922>,  <45.454918, 38.660938, 46.143993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.972260, 38.913471, 45.717922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.199257, 39.239731, 45.762928>,  <45.335457, 39.435486, 45.789932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.199257, 39.239731, 45.762928>,  <44.972260, 38.913471, 45.717922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.199257, 39.239731, 45.762928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094199, 0.071440, -0.992987,
		-0.817968, 0.574117, -0.036292,
		0.567498, 0.815650, 0.112517,
		45.369507, 39.484425, 45.796684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.673611, 39.528713, 45.277977>,  <44.972260, 38.913471, 45.717922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.673611, 39.528713, 45.277977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.061443, 39.584518, 45.358421>,  <45.294144, 39.618004, 45.406689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.061443, 39.584518, 45.358421>,  <44.673611, 39.528713, 45.277977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.061443, 39.584518, 45.358421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154239, 0.289732, -0.944598,
		-0.190056, 0.946884, 0.259400,
		0.969582, 0.139517, 0.201112,
		45.352318, 39.626373, 45.418755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.759430, 40.087215, 44.996868>,  <44.673611, 39.528713, 45.277977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.759430, 40.087215, 44.996868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.132744, 39.950172, 45.039940>,  <45.356731, 39.867947, 45.065784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.132744, 39.950172, 45.039940>,  <44.759430, 40.087215, 44.996868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.132744, 39.950172, 45.039940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249739, 0.403672, -0.880159,
		0.258079, 0.848334, 0.462304,
		0.933288, -0.342606, 0.107682,
		45.412731, 39.847389, 45.072243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.355026, 40.302753, 44.352234>,  <44.759430, 40.087215, 44.996868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.355026, 40.302753, 44.352234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.285500, 40.647812, 44.162231>,  <44.243782, 40.854847, 44.048229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.285500, 40.647812, 44.162231>,  <44.355026, 40.302753, 44.352234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.285500, 40.647812, 44.162231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361653, 0.392722, 0.845562,
		0.915966, 0.318762, 0.243716,
		-0.173820, 0.862647, -0.475002,
		44.233353, 40.906605, 44.019730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.613556, 40.802242, 44.836399>,  <44.355026, 40.302753, 44.352234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.613556, 40.802242, 44.836399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.368816, 41.010254, 44.598000>,  <44.221973, 41.135059, 44.454960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.368816, 41.010254, 44.598000>,  <44.613556, 40.802242, 44.836399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.368816, 41.010254, 44.598000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265295, 0.574932, 0.773998,
		0.745158, 0.631684, -0.213810,
		-0.611848, 0.520027, -0.595998,
		44.185261, 41.166264, 44.419201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.824478, 41.552525, 44.862621>,  <44.613556, 40.802242, 44.836399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.824478, 41.552525, 44.862621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.439671, 41.552887, 44.753429>,  <44.208786, 41.553104, 44.687916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.439671, 41.552887, 44.753429>,  <44.824478, 41.552525, 44.862621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.439671, 41.552887, 44.753429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215613, 0.610783, 0.761876,
		0.167422, 0.791798, -0.587389,
		-0.962019, 0.000906, -0.272981,
		44.151066, 41.553158, 44.671535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.583324, 42.245079, 44.971348>,  <44.824478, 41.552525, 44.862621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.583324, 42.245079, 44.971348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.254860, 42.016876, 44.977276>,  <44.057781, 41.879955, 44.980831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.254860, 42.016876, 44.977276>,  <44.583324, 42.245079, 44.971348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.254860, 42.016876, 44.977276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360907, 0.539237, 0.760901,
		-0.442092, 0.619471, -0.648699,
		-0.821158, -0.570508, 0.014821,
		44.008511, 41.845722, 44.981724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.008667, 42.640484, 45.019829>,  <44.583324, 42.245079, 44.971348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.008667, 42.640484, 45.019829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.865082, 42.285095, 45.134205>,  <43.778931, 42.071861, 45.202831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.865082, 42.285095, 45.134205>,  <44.008667, 42.640484, 45.019829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.865082, 42.285095, 45.134205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544633, 0.448188, 0.708874,
		-0.757970, 0.098728, -0.644775,
		-0.358966, -0.888471, 0.285942,
		43.757393, 42.018555, 45.219986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.357117, 42.835438, 45.305336>,  <44.008667, 42.640484, 45.019829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.357117, 42.835438, 45.305336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.382290, 42.456100, 45.429710>,  <43.397396, 42.228497, 45.504333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.382290, 42.456100, 45.429710>,  <43.357117, 42.835438, 45.305336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.382290, 42.456100, 45.429710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500266, 0.239610, 0.832058,
		-0.863581, -0.207916, -0.459345,
		0.062934, -0.948344, 0.310937,
		43.401169, 42.171597, 45.522991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.635937, 42.656933, 45.561329>,  <43.357117, 42.835438, 45.305336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.635937, 42.656933, 45.561329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.915909, 42.422615, 45.724766>,  <43.083893, 42.282024, 45.822830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.915909, 42.422615, 45.724766>,  <42.635937, 42.656933, 45.561329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.915909, 42.422615, 45.724766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323836, 0.249613, 0.912592,
		-0.636581, -0.771064, -0.014990,
		0.699926, -0.585793, 0.408597,
		43.125885, 42.246876, 45.847343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.339806, 42.073265, 45.911430>,  <42.635937, 42.656933, 45.561329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.339806, 42.073265, 45.911430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.690929, 42.155060, 46.084698>,  <42.901604, 42.204136, 46.188660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.690929, 42.155060, 46.084698>,  <42.339806, 42.073265, 45.911430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.690929, 42.155060, 46.084698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453649, 0.064539, 0.888840,
		0.153805, -0.976738, 0.149421,
		0.877808, 0.204492, 0.433170,
		42.954273, 42.216408, 46.214649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219650, 41.798592, 46.532249>,  <42.339806, 42.073265, 45.911430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.219650, 41.798592, 46.532249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.580002, 41.955154, 46.607315>,  <42.796211, 42.049091, 46.652355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.580002, 41.955154, 46.607315>,  <42.219650, 41.798592, 46.532249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.580002, 41.955154, 46.607315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202338, -0.003826, 0.979308,
		0.384023, -0.920211, 0.075749,
		0.900881, 0.391404, 0.187663,
		42.850266, 42.072575, 46.663612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.539307, 41.315243, 47.086082>,  <42.219650, 41.798592, 46.532249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.539307, 41.315243, 47.086082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.684105, 41.687744, 47.102707>,  <42.770985, 41.911243, 47.112682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.684105, 41.687744, 47.102707>,  <42.539307, 41.315243, 47.086082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.684105, 41.687744, 47.102707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106512, -0.002976, 0.994307,
		0.926073, -0.364367, 0.098112,
		0.362000, 0.931251, 0.041565,
		42.792706, 41.967121, 47.115177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.855659, 41.305401, 47.812904>,  <42.539307, 41.315243, 47.086082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.855659, 41.305401, 47.812904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.883404, 41.698402, 47.743774>,  <42.900051, 41.934204, 47.702297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.883404, 41.698402, 47.743774>,  <42.855659, 41.305401, 47.812904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.883404, 41.698402, 47.743774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104642, 0.179455, 0.978185,
		0.992088, -0.049762, 0.115259,
		0.069360, 0.982507, -0.172828,
		42.904213, 41.993153, 47.691925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.464165, 41.657780, 48.239872>,  <42.855659, 41.305401, 47.812904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.464165, 41.657780, 48.239872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.187317, 41.936111, 48.163147>,  <43.021210, 42.103111, 48.117111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.187317, 41.936111, 48.163147>,  <43.464165, 41.657780, 48.239872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.187317, 41.936111, 48.163147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253532, 0.014447, 0.967219,
		0.675794, 0.718059, 0.166417,
		-0.692116, 0.695832, -0.191814,
		42.979683, 42.144859, 48.105602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.532608, 42.024113, 48.776566>,  <43.464165, 41.657780, 48.239872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.532608, 42.024113, 48.776566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.171944, 42.128105, 48.638336>,  <42.955547, 42.190502, 48.555397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.171944, 42.128105, 48.638336>,  <43.532608, 42.024113, 48.776566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.171944, 42.128105, 48.638336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347026, 0.041831, 0.936922,
		0.258039, 0.964707, 0.052504,
		-0.901659, 0.259982, -0.345573,
		42.901447, 42.206100, 48.534664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.298019, 42.561954, 49.220478>,  <43.532608, 42.024113, 48.776566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.298019, 42.561954, 49.220478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.947533, 42.448303, 49.064781>,  <42.737240, 42.380112, 48.971363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.947533, 42.448303, 49.064781>,  <43.298019, 42.561954, 49.220478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.947533, 42.448303, 49.064781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383434, -0.078224, 0.920250,
		-0.291920, 0.955589, -0.040404,
		-0.876220, -0.284132, -0.389240,
		42.684666, 42.363064, 48.948009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.246925, 43.364632, 49.505226>,  <43.298019, 42.561954, 49.220478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.246925, 43.364632, 49.505226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.549324, 43.552101, 49.688007>,  <43.730762, 43.664585, 49.797676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.549324, 43.552101, 49.688007>,  <43.246925, 43.364632, 49.505226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.549324, 43.552101, 49.688007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562830, -0.109019, -0.819351,
		-0.334195, 0.876616, -0.346205,
		0.756000, 0.468678, 0.456952,
		43.776123, 43.692703, 49.825092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.400070, 43.957047, 49.112740>,  <43.246925, 43.364632, 49.505226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.400070, 43.957047, 49.112740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.731094, 43.862175, 49.316265>,  <43.929710, 43.805252, 49.438381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.731094, 43.862175, 49.316265>,  <43.400070, 43.957047, 49.112740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.731094, 43.862175, 49.316265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537262, 0.071813, -0.840352,
		0.162775, 0.968808, 0.186857,
		0.827559, -0.237180, 0.508814,
		43.979362, 43.791019, 49.468910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.928501, 44.247448, 48.736916>,  <43.400070, 43.957047, 49.112740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.928501, 44.247448, 48.736916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.159981, 44.021172, 48.971897>,  <44.298866, 43.885406, 49.112888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.159981, 44.021172, 48.971897>,  <43.928501, 44.247448, 48.736916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.159981, 44.021172, 48.971897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657873, -0.101914, -0.746201,
		0.481988, 0.818297, 0.313174,
		0.578697, -0.565689, 0.587457,
		44.333591, 43.851463, 49.148132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.569378, 44.380569, 48.436440>,  <43.928501, 44.247448, 48.736916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.569378, 44.380569, 48.436440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.621071, 44.051819, 48.658367>,  <44.652084, 43.854568, 48.791523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.621071, 44.051819, 48.658367>,  <44.569378, 44.380569, 48.436440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.621071, 44.051819, 48.658367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711291, -0.313015, -0.629355,
		0.690916, 0.475967, 0.544141,
		0.129228, -0.821874, 0.554818,
		44.659840, 43.805256, 48.824814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.259789, 44.349415, 48.652508>,  <44.569378, 44.380569, 48.436440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.259789, 44.349415, 48.652508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.102394, 43.981995, 48.667694>,  <45.007957, 43.761543, 48.676804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.102394, 43.981995, 48.667694>,  <45.259789, 44.349415, 48.652508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.102394, 43.981995, 48.667694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721303, -0.334065, -0.606731,
		0.569993, -0.211359, 0.794000,
		-0.393486, -0.918547, 0.037961,
		44.984348, 43.706432, 48.679081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.865036, 43.962749, 48.679276>,  <45.259789, 44.349415, 48.652508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.865036, 43.962749, 48.679276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.579468, 43.697083, 48.590553>,  <45.408127, 43.537682, 48.537319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.579468, 43.697083, 48.590553>,  <45.865036, 43.962749, 48.679276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.579468, 43.697083, 48.590553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644348, -0.499126, -0.579387,
		0.274097, -0.556560, 0.784290,
		-0.713924, -0.664164, -0.221810,
		45.365292, 43.497833, 48.524010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.203213, 43.288536, 48.669792>,  <45.865036, 43.962749, 48.679276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.203213, 43.288536, 48.669792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.872269, 43.177910, 48.474251>,  <45.673702, 43.111534, 48.356926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.872269, 43.177910, 48.474251>,  <46.203213, 43.288536, 48.669792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.872269, 43.177910, 48.474251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559539, -0.330144, -0.760211,
		0.048858, -0.902504, 0.427901,
		-0.827362, -0.276570, -0.488856,
		45.624062, 43.094940, 48.327595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.293308, 42.614182, 48.423252>,  <46.203213, 43.288536, 48.669792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.293308, 42.614182, 48.423252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.020393, 42.783478, 48.184807>,  <45.856644, 42.885056, 48.041740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.020393, 42.783478, 48.184807>,  <46.293308, 42.614182, 48.423252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.020393, 42.783478, 48.184807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510974, -0.307081, -0.802874,
		-0.522864, -0.852390, -0.006747,
		-0.682290, 0.423242, -0.596111,
		45.815708, 42.910450, 48.005974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.137051, 42.109707, 47.908993>,  <46.293308, 42.614182, 48.423252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.137051, 42.109707, 47.908993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.006462, 42.455292, 47.755634>,  <45.928108, 42.662643, 47.663620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.006462, 42.455292, 47.755634>,  <46.137051, 42.109707, 47.908993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.006462, 42.455292, 47.755634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521719, -0.173521, -0.835284,
		-0.788177, -0.472724, -0.394092,
		-0.326475, 0.863958, -0.383394,
		45.908520, 42.714478, 47.640617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.934612, 41.943214, 47.304272>,  <46.137051, 42.109707, 47.908993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.934612, 41.943214, 47.304272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.036827, 42.329407, 47.284111>,  <46.098156, 42.561123, 47.272015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.036827, 42.329407, 47.284111>,  <45.934612, 41.943214, 47.304272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.036827, 42.329407, 47.284111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578805, -0.194535, -0.791922,
		-0.774394, 0.173193, -0.608538,
		0.255537, 0.965485, -0.050402,
		46.113487, 42.619053, 47.268990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.859077, 42.077042, 46.561676>,  <45.934612, 41.943214, 47.304272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.859077, 42.077042, 46.561676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.082321, 42.362556, 46.730919>,  <46.216267, 42.533867, 46.832466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.082321, 42.362556, 46.730919>,  <45.859077, 42.077042, 46.561676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.082321, 42.362556, 46.730919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636137, -0.040667, -0.770504,
		-0.532771, 0.699178, -0.476765,
		0.558108, 0.713790, 0.423107,
		46.249752, 42.576694, 46.857849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.013084, 42.319679, 45.977127>,  <45.859077, 42.077042, 46.561676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.013084, 42.319679, 45.977127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.278137, 42.461525, 46.240997>,  <46.437168, 42.546631, 46.399319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.278137, 42.461525, 46.240997>,  <46.013084, 42.319679, 45.977127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.278137, 42.461525, 46.240997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684636, 0.070283, -0.725489,
		-0.303630, 0.932369, -0.196208,
		0.662633, 0.354611, 0.659673,
		46.476929, 42.567909, 46.438900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.198624, 45.189865, 52.284443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532391, 45.076515, 52.473522>,  <41.732651, 45.008507, 52.586967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532391, 45.076515, 52.473522>,  <41.198624, 45.189865, 52.284443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532391, 45.076515, 52.473522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460757, -0.111918, -0.880442,
		0.302398, 0.952456, 0.037180,
		0.834421, -0.283375, 0.472695,
		41.782719, 44.991501, 52.615330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.719185, 45.556423, 51.904774>,  <41.198624, 45.189865, 52.284443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.719185, 45.556423, 51.904774> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931770, 45.299934, 52.126183>,  <42.059322, 45.146042, 52.259029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931770, 45.299934, 52.126183>,  <41.719185, 45.556423, 51.904774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.931770, 45.299934, 52.126183> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552354, -0.233089, -0.800359,
		0.642225, 0.731101, 0.230302,
		0.531462, -0.641219, 0.553523,
		42.091209, 45.107571, 52.292240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.482086, 45.750488, 51.964413>,  <41.719185, 45.556423, 51.904774>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.482086, 45.750488, 51.964413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.421055, 45.357704, 52.009083>,  <42.384438, 45.122032, 52.035885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.421055, 45.357704, 52.009083>,  <42.482086, 45.750488, 51.964413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.421055, 45.357704, 52.009083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720911, -0.187876, -0.667076,
		0.676024, -0.021271, 0.736572,
		-0.152574, -0.981962, 0.111674,
		42.375282, 45.063114, 52.042583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.097538, 45.465019, 51.791149>,  <42.482086, 45.750488, 51.964413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.097538, 45.465019, 51.791149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.888294, 45.124290, 51.802086>,  <42.762749, 44.919853, 51.808647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.888294, 45.124290, 51.802086>,  <43.097538, 45.465019, 51.791149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.888294, 45.124290, 51.802086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565938, -0.371182, -0.736164,
		0.637233, -0.369621, 0.676250,
		-0.523114, -0.851824, 0.027346,
		42.731361, 44.868744, 51.810291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.608570, 44.843689, 51.842636>,  <43.097538, 45.465019, 51.791149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.608570, 44.843689, 51.842636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267384, 44.691475, 51.699726>,  <43.062672, 44.600147, 51.613979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267384, 44.691475, 51.699726>,  <43.608570, 44.843689, 51.842636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.267384, 44.691475, 51.699726> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518564, -0.539764, -0.663133,
		0.059501, -0.750899, 0.657732,
		-0.852966, -0.380534, -0.357272,
		43.011494, 44.577316, 51.592545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.829441, 44.186874, 51.862831>,  <43.608570, 44.843689, 51.842636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.829441, 44.186874, 51.862831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.544403, 44.281265, 51.598553>,  <43.373383, 44.337902, 51.439983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.544403, 44.281265, 51.598553>,  <43.829441, 44.186874, 51.862831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.544403, 44.281265, 51.598553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552959, -0.390694, -0.735931,
		-0.431795, -0.889760, 0.147921,
		-0.712594, 0.235977, -0.660700,
		43.330624, 44.352058, 51.400341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.652431, 43.557423, 51.492943>,  <43.829441, 44.186874, 51.862831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.652431, 43.557423, 51.492943> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.534554, 43.861794, 51.261719>,  <43.463829, 44.044415, 51.122986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.534554, 43.861794, 51.261719>,  <43.652431, 43.557423, 51.492943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.534554, 43.861794, 51.261719> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297072, -0.501997, -0.812248,
		-0.908243, -0.411088, -0.078115,
		-0.294692, 0.760924, -0.578058,
		43.446144, 44.090073, 51.088303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.440128, 43.177086, 50.932362>,  <43.652431, 43.557423, 51.492943>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.440128, 43.177086, 50.932362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.488358, 43.552773, 50.803783>,  <43.517296, 43.778187, 50.726635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.488358, 43.552773, 50.803783>,  <43.440128, 43.177086, 50.932362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.488358, 43.552773, 50.803783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334174, -0.343309, -0.877762,
		-0.934768, -0.001588, -0.355256,
		0.120569, 0.939221, -0.321445,
		43.524529, 43.834538, 50.707352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.255447, 43.139801, 50.276802>,  <43.440128, 43.177086, 50.932362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.255447, 43.139801, 50.276802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.465065, 43.480392, 50.284378>,  <43.590836, 43.684746, 50.288925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.465065, 43.480392, 50.284378>,  <43.255447, 43.139801, 50.276802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.465065, 43.480392, 50.284378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453024, -0.259844, -0.852789,
		-0.721210, 0.455483, -0.521911,
		0.524046, 0.851479, 0.018942,
		43.622280, 43.735836, 50.290062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.854561, 42.777779, 49.753700>,  <43.255447, 43.139801, 50.276802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.854561, 42.777779, 49.753700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.637207, 42.533730, 49.523056>,  <42.506794, 42.387299, 49.384670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.637207, 42.533730, 49.523056>,  <42.854561, 42.777779, 49.753700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.637207, 42.533730, 49.523056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615054, -0.178126, 0.768101,
		-0.571348, 0.772020, -0.278470,
		-0.543387, -0.610127, -0.576607,
		42.474190, 42.350693, 49.350075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.226452, 42.926109, 49.816513>,  <42.854561, 42.777779, 49.753700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.226452, 42.926109, 49.816513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.210602, 42.545433, 49.694717>,  <42.201092, 42.317028, 49.621639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.210602, 42.545433, 49.694717>,  <42.226452, 42.926109, 49.816513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.210602, 42.545433, 49.694717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645433, -0.208249, 0.734880,
		-0.762788, 0.225649, -0.606001,
		-0.039626, -0.951690, -0.304491,
		42.198715, 42.259926, 49.603371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478676, 42.643604, 49.933369>,  <42.226452, 42.926109, 49.816513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.478676, 42.643604, 49.933369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738029, 42.339104, 49.929375>,  <41.893642, 42.156403, 49.926979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738029, 42.339104, 49.929375>,  <41.478676, 42.643604, 49.933369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.738029, 42.339104, 49.929375> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499197, -0.435010, 0.749379,
		-0.574809, -0.480898, -0.662067,
		0.648380, -0.761251, -0.009985,
		41.932545, 42.110729, 49.926380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054192, 42.074211, 49.901821>,  <41.478676, 42.643604, 49.933369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054192, 42.074211, 49.901821> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.405025, 41.939705, 50.039017>,  <41.615528, 41.859001, 50.121334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.405025, 41.939705, 50.039017>,  <41.054192, 42.074211, 49.901821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.405025, 41.939705, 50.039017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478828, -0.555700, 0.679648,
		-0.037942, -0.760345, -0.648411,
		0.877088, -0.336264, 0.342990,
		41.668152, 41.838825, 50.141914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.914356, 41.459019, 50.153225>,  <41.054192, 42.074211, 49.901821>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.914356, 41.459019, 50.153225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273212, 41.504135, 50.324066>,  <41.488525, 41.531204, 50.426571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273212, 41.504135, 50.324066>,  <40.914356, 41.459019, 50.153225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273212, 41.504135, 50.324066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233599, -0.699469, 0.675406,
		0.374929, -0.705705, -0.601173,
		0.897139, 0.112796, 0.427103,
		41.542355, 41.537975, 50.452198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206921, 40.832317, 50.294266>,  <40.914356, 41.459019, 50.153225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.206921, 40.832317, 50.294266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.386822, 41.077919, 50.553719>,  <41.494762, 41.225281, 50.709389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.386822, 41.077919, 50.553719>,  <41.206921, 40.832317, 50.294266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.386822, 41.077919, 50.553719> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314305, -0.570968, 0.758425,
		0.836023, -0.544972, -0.063811,
		0.449754, 0.614004, 0.648630,
		41.521748, 41.262119, 50.748306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.507244, 40.377628, 50.789074>,  <41.206921, 40.832317, 50.294266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.507244, 40.377628, 50.789074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533920, 40.739243, 50.957962>,  <41.549927, 40.956211, 51.059296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533920, 40.739243, 50.957962>,  <41.507244, 40.377628, 50.789074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.533920, 40.739243, 50.957962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087730, -0.416211, 0.905026,
		0.993910, -0.097396, 0.051554,
		0.066688, 0.904037, 0.422221,
		41.553928, 41.010452, 51.084629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976219, 40.322250, 51.425804>,  <41.507244, 40.377628, 50.789074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976219, 40.322250, 51.425804> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.749878, 40.647087, 51.482826>,  <41.614075, 40.841988, 51.517040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.749878, 40.647087, 51.482826>,  <41.976219, 40.322250, 51.425804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.749878, 40.647087, 51.482826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111319, -0.246559, 0.962713,
		0.816960, 0.528881, 0.229916,
		-0.565848, 0.812092, 0.142554,
		41.580124, 40.890717, 51.525593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.068588, 40.506775, 52.201759>,  <41.976219, 40.322250, 51.425804>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.068588, 40.506775, 52.201759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.725277, 40.681465, 52.093960>,  <41.519291, 40.786278, 52.029282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.725277, 40.681465, 52.093960>,  <42.068588, 40.506775, 52.201759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.725277, 40.681465, 52.093960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338123, -0.086190, 0.937147,
		0.386049, 0.895456, 0.221642,
		-0.858277, 0.436727, -0.269500,
		41.467793, 40.812485, 52.013111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.932175, 40.989876, 52.698097>,  <42.068588, 40.506775, 52.201759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.932175, 40.989876, 52.698097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.572670, 40.935448, 52.531384>,  <41.356968, 40.902790, 52.431355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.572670, 40.935448, 52.531384>,  <41.932175, 40.989876, 52.698097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.572670, 40.935448, 52.531384> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432352, 0.117225, 0.894052,
		-0.072796, 0.983739, -0.164187,
		-0.898762, -0.136070, -0.416788,
		41.303043, 40.894627, 52.406345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.539108, 41.413578, 53.095818>,  <41.932175, 40.989876, 52.698097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.539108, 41.413578, 53.095818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.277248, 41.185860, 52.896889>,  <41.120132, 41.049229, 52.777531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.277248, 41.185860, 52.896889>,  <41.539108, 41.413578, 53.095818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.277248, 41.185860, 52.896889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603686, -0.002228, 0.797219,
		-0.454962, 0.822129, -0.342218,
		-0.654654, -0.569297, -0.497322,
		41.080853, 41.015072, 52.747692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826370, 41.719532, 53.186935>,  <41.539108, 41.413578, 53.095818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826370, 41.719532, 53.186935> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773285, 41.332176, 53.102455>,  <40.741436, 41.099762, 53.051765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773285, 41.332176, 53.102455>,  <40.826370, 41.719532, 53.186935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773285, 41.332176, 53.102455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455495, -0.129662, 0.880745,
		-0.880291, 0.213085, -0.423890,
		-0.132711, -0.968392, -0.211200,
		40.733471, 41.041660, 53.039097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140476, 41.669357, 53.492088>,  <40.826370, 41.719532, 53.186935>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140476, 41.669357, 53.492088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311546, 41.314209, 53.424225>,  <40.414188, 41.101120, 53.383507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311546, 41.314209, 53.424225>,  <40.140476, 41.669357, 53.492088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311546, 41.314209, 53.424225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364726, -0.341231, 0.866335,
		-0.827084, -0.308630, -0.469765,
		0.427675, -0.887867, -0.169662,
		40.439850, 41.047848, 53.373325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495026, 41.152962, 53.564880>,  <40.140476, 41.669357, 53.492088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495026, 41.152962, 53.564880> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846298, 40.969864, 53.620396>,  <40.057064, 40.860004, 53.653706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846298, 40.969864, 53.620396>,  <39.495026, 41.152962, 53.564880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846298, 40.969864, 53.620396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299031, -0.298935, 0.906211,
		-0.373328, -0.837321, -0.399400,
		0.878184, -0.457747, 0.138784,
		40.109753, 40.832539, 53.662029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<47.056419, 41.344860, 57.447479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.832497, 41.643967, 57.304672>,  <46.698143, 41.823433, 57.218990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.832497, 41.643967, 57.304672>,  <47.056419, 41.344860, 57.447479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.832497, 41.643967, 57.304672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468318, -0.069926, -0.880789,
		-0.683593, -0.660264, -0.311050,
		-0.559803, 0.747772, -0.357014,
		46.664555, 41.868298, 57.197567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.924156, 41.125240, 56.854641>,  <47.056419, 41.344860, 57.447479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.924156, 41.125240, 56.854641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.821518, 41.510971, 56.828613>,  <46.759933, 41.742409, 56.812996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.821518, 41.510971, 56.828613>,  <46.924156, 41.125240, 56.854641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.821518, 41.510971, 56.828613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392565, 0.042460, -0.918744,
		-0.883206, -0.261290, -0.389456,
		-0.256595, 0.964326, -0.065072,
		46.744541, 41.800270, 56.809093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.499249, 41.172718, 56.336967>,  <46.924156, 41.125240, 56.854641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.499249, 41.172718, 56.336967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.662766, 41.533714, 56.391228>,  <46.760876, 41.750313, 56.423782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.662766, 41.533714, 56.391228>,  <46.499249, 41.172718, 56.336967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.662766, 41.533714, 56.391228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205316, 0.053882, -0.977211,
		-0.889232, 0.427329, -0.163269,
		0.408793, 0.902489, 0.135651,
		46.785404, 41.804462, 56.431923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.312447, 41.571434, 55.809479>,  <46.499249, 41.172718, 56.336967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.312447, 41.571434, 55.809479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.630898, 41.773117, 55.943321>,  <46.821968, 41.894127, 56.023628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.630898, 41.773117, 55.943321>,  <46.312447, 41.571434, 55.809479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.630898, 41.773117, 55.943321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198481, 0.304791, -0.931508,
		-0.571659, 0.808009, 0.142576,
		0.796123, 0.504206, 0.334611,
		46.869736, 41.924377, 56.043705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.293865, 42.256950, 55.545300>,  <46.312447, 41.571434, 55.809479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.293865, 42.256950, 55.545300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.681160, 42.197411, 55.625664>,  <46.913536, 42.161686, 55.673882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.681160, 42.197411, 55.625664>,  <46.293865, 42.256950, 55.545300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.681160, 42.197411, 55.625664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236756, 0.287324, -0.928112,
		0.080419, 0.946197, 0.313438,
		0.968235, -0.148846, 0.200911,
		46.971630, 42.152756, 55.685936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.573071, 42.789547, 55.132099>,  <46.293865, 42.256950, 55.545300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.573071, 42.789547, 55.132099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.841385, 42.512207, 55.237411>,  <47.002373, 42.345802, 55.300598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.841385, 42.512207, 55.237411>,  <46.573071, 42.789547, 55.132099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.841385, 42.512207, 55.237411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537017, 0.209224, -0.817214,
		0.511531, 0.689559, 0.512684,
		0.670782, -0.693350, 0.263281,
		47.042618, 42.304203, 55.316395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.045906, 43.002449, 54.760815>,  <46.573071, 42.789547, 55.132099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.045906, 43.002449, 54.760815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.237679, 42.670052, 54.873657>,  <47.352741, 42.470612, 54.941364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.237679, 42.670052, 54.873657>,  <47.045906, 43.002449, 54.760815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.237679, 42.670052, 54.873657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473645, -0.025597, -0.880344,
		0.738784, 0.555687, 0.381326,
		0.479435, -0.830997, 0.282109,
		47.381508, 42.420753, 54.958290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.765251, 43.009129, 54.602234>,  <47.045906, 43.002449, 54.760815>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.765251, 43.009129, 54.602234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.661591, 42.622902, 54.611313>,  <47.599396, 42.391167, 54.616760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.661591, 42.622902, 54.611313>,  <47.765251, 43.009129, 54.602234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.661591, 42.622902, 54.611313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408933, -0.130982, -0.903116,
		0.874995, -0.224761, 0.428797,
		-0.259150, -0.965570, 0.022696,
		47.583847, 42.333229, 54.618122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.435268, 42.607304, 54.501884>,  <47.765251, 43.009129, 54.602234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.435268, 42.607304, 54.501884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.127411, 42.381821, 54.381966>,  <47.942696, 42.246529, 54.310017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.127411, 42.381821, 54.381966>,  <48.435268, 42.607304, 54.501884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.127411, 42.381821, 54.381966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518469, -0.277783, -0.808719,
		0.372608, -0.777860, 0.506062,
		-0.769645, -0.563712, -0.299792,
		47.896519, 42.212708, 54.292027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.714230, 41.857719, 54.343292>,  <48.435268, 42.607304, 54.501884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.714230, 41.857719, 54.343292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.363152, 41.904076, 54.157295>,  <48.152504, 41.931889, 54.045696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.363152, 41.904076, 54.157295>,  <48.714230, 41.857719, 54.343292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.363152, 41.904076, 54.157295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427771, -0.247911, -0.869225,
		-0.216003, -0.961827, 0.168020,
		-0.877698, 0.115881, -0.464992,
		48.099842, 41.938843, 54.017796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.616238, 41.232323, 53.909279>,  <48.714230, 41.857719, 54.343292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.616238, 41.232323, 53.909279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.376419, 41.497299, 53.729626>,  <48.232529, 41.656284, 53.621834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.376419, 41.497299, 53.729626>,  <48.616238, 41.232323, 53.909279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.376419, 41.497299, 53.729626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409207, -0.228561, -0.883351,
		-0.687822, -0.713396, -0.134042,
		-0.599543, 0.662439, -0.449136,
		48.196556, 41.696030, 53.594887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.297939, 40.843075, 53.415157>,  <48.616238, 41.232323, 53.909279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.297939, 40.843075, 53.415157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.269707, 41.224655, 53.298538>,  <48.252769, 41.453602, 53.228569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.269707, 41.224655, 53.298538>,  <48.297939, 40.843075, 53.415157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.269707, 41.224655, 53.298538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347965, -0.250370, -0.903458,
		-0.934847, -0.165213, -0.314270,
		-0.070579, 0.953950, -0.291546,
		48.248531, 41.510841, 53.211075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.542843, 40.743355, 52.779346>,  <48.297939, 40.843075, 53.415157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.542843, 40.743355, 52.779346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.453621, 41.133163, 52.769936>,  <48.400085, 41.367050, 52.764290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.453621, 41.133163, 52.769936>,  <48.542843, 40.743355, 52.779346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.453621, 41.133163, 52.769936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378001, 0.064222, -0.923575,
		-0.898533, -0.214903, -0.382696,
		-0.223056, 0.974522, -0.023527,
		48.386703, 41.425522, 52.762878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.056236, 40.827156, 52.266655>,  <48.542843, 40.743355, 52.779346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.056236, 40.827156, 52.266655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.256958, 41.167175, 52.330666>,  <48.377392, 41.371189, 52.369072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.256958, 41.167175, 52.330666>,  <48.056236, 40.827156, 52.266655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.256958, 41.167175, 52.330666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557009, -0.176022, -0.811639,
		-0.661768, 0.496415, -0.561814,
		0.501801, 0.850052, 0.160022,
		48.407497, 41.422192, 52.378674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.408298, 40.787037, 51.936558>,  <48.056236, 40.827156, 52.266655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.408298, 40.787037, 51.936558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.267624, 40.437454, 51.802383>,  <47.183220, 40.227703, 51.721878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.267624, 40.437454, 51.802383>,  <47.408298, 40.787037, 51.936558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.267624, 40.437454, 51.802383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246997, -0.258994, 0.933764,
		-0.902944, 0.411246, -0.124779,
		-0.351690, -0.873956, -0.335433,
		47.162117, 40.175266, 51.701752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.774452, 40.742130, 52.205269>,  <47.408298, 40.787037, 51.936558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.774452, 40.742130, 52.205269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.818604, 40.355728, 52.111752>,  <46.845093, 40.123886, 52.055641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.818604, 40.355728, 52.111752>,  <46.774452, 40.742130, 52.205269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.818604, 40.355728, 52.111752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358228, -0.258081, 0.897255,
		-0.927087, -0.015284, -0.374534,
		0.110374, -0.966002, -0.233789,
		46.851715, 40.065926, 52.041615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.156319, 40.414631, 52.482582>,  <46.774452, 40.742130, 52.205269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.156319, 40.414631, 52.482582> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.444267, 40.139168, 52.447868>,  <46.617035, 39.973888, 52.427040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.444267, 40.139168, 52.447868>,  <46.156319, 40.414631, 52.482582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.444267, 40.139168, 52.447868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225132, -0.349928, 0.909322,
		-0.656582, -0.635057, -0.406943,
		0.719872, -0.688660, -0.086785,
		46.660229, 39.932571, 52.421833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.812962, 39.820744, 52.699886>,  <46.156319, 40.414631, 52.482582>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.812962, 39.820744, 52.699886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.205956, 39.746880, 52.709938>,  <46.441750, 39.702560, 52.715969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.205956, 39.746880, 52.709938>,  <45.812962, 39.820744, 52.699886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.205956, 39.746880, 52.709938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077686, -0.283244, 0.955896,
		-0.169392, -0.941103, -0.292628,
		0.982482, -0.184654, 0.025131,
		46.500702, 39.691483, 52.717476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.792526, 39.176342, 52.999016>,  <45.812962, 39.820744, 52.699886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.792526, 39.176342, 52.999016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.158806, 39.318268, 53.074490>,  <46.378574, 39.403423, 53.119774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.158806, 39.318268, 53.074490>,  <45.792526, 39.176342, 52.999016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.158806, 39.318268, 53.074490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119773, -0.207225, 0.970934,
		0.383604, -0.911681, -0.147258,
		0.915698, 0.354816, 0.188688,
		46.433514, 39.424713, 53.131096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.951149, 38.737499, 53.497669>,  <45.792526, 39.176342, 52.999016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.951149, 38.737499, 53.497669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.221443, 39.030678, 53.529079>,  <46.383621, 39.206585, 53.547924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.221443, 39.030678, 53.529079>,  <45.951149, 38.737499, 53.497669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.221443, 39.030678, 53.529079> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013238, -0.094441, 0.995443,
		0.737026, -0.673694, -0.054114,
		0.675734, 0.732951, 0.078524,
		46.424164, 39.250565, 53.552635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.496834, 38.479214, 53.955811>,  <45.951149, 38.737499, 53.497669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.496834, 38.479214, 53.955811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.533943, 38.876686, 53.981060>,  <46.556210, 39.115170, 53.996208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.533943, 38.876686, 53.981060>,  <46.496834, 38.479214, 53.955811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.533943, 38.876686, 53.981060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026091, -0.060945, 0.997800,
		0.995346, -0.094214, 0.020273,
		0.092771, 0.993685, 0.063119,
		46.561775, 39.174793, 53.999996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.041176, 38.606068, 54.492607>,  <46.496834, 38.479214, 53.955811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.041176, 38.606068, 54.492607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.819672, 38.937927, 54.464211>,  <46.686771, 39.137043, 54.447174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.819672, 38.937927, 54.464211>,  <47.041176, 38.606068, 54.492607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.819672, 38.937927, 54.464211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208478, -0.055603, 0.976445,
		0.806158, 0.555513, 0.203753,
		-0.553757, 0.829647, -0.070987,
		46.653545, 39.186821, 54.442913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.273746, 39.027931, 55.028000>,  <47.041176, 38.606068, 54.492607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.273746, 39.027931, 55.028000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.903915, 39.146027, 54.931675>,  <46.682018, 39.216885, 54.873878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.903915, 39.146027, 54.931675>,  <47.273746, 39.027931, 55.028000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.903915, 39.146027, 54.931675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227766, 0.078363, 0.970558,
		0.305418, 0.952204, -0.005207,
		-0.924577, 0.295240, -0.240813,
		46.626541, 39.234600, 54.859432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.132126, 39.555809, 55.526920>,  <47.273746, 39.027931, 55.028000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.132126, 39.555809, 55.526920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.774734, 39.488586, 55.360329>,  <46.560299, 39.448254, 55.260372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.774734, 39.488586, 55.360329>,  <47.132126, 39.555809, 55.526920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.774734, 39.488586, 55.360329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444908, 0.204653, 0.871880,
		-0.061289, 0.964300, -0.257621,
		-0.893477, -0.168054, -0.416482,
		46.506691, 39.438171, 55.235386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.562340, 40.158993, 55.609684>,  <47.132126, 39.555809, 55.526920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.562340, 40.158993, 55.609684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.355194, 39.817429, 55.589073>,  <46.230907, 39.612492, 55.576706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.355194, 39.817429, 55.589073>,  <46.562340, 40.158993, 55.609684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.355194, 39.817429, 55.589073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654857, 0.356958, 0.666141,
		-0.550431, 0.378714, -0.744044,
		-0.517869, -0.853907, -0.051523,
		46.199833, 39.561256, 55.573616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.875511, 40.508434, 55.742607>,  <46.562340, 40.158993, 55.609684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.875511, 40.508434, 55.742607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.780937, 40.122314, 55.786972>,  <45.724194, 39.890644, 55.813591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.780937, 40.122314, 55.786972>,  <45.875511, 40.508434, 55.742607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.780937, 40.122314, 55.786972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780039, 0.256630, 0.570684,
		-0.579343, 0.048411, -0.813645,
		-0.236433, -0.965296, 0.110914,
		45.710007, 39.832726, 55.820248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.168335, 40.395802, 55.524464>,  <45.875511, 40.508434, 55.742607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.168335, 40.395802, 55.524464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.277832, 40.100639, 55.771221>,  <45.343533, 39.923542, 55.919277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.277832, 40.100639, 55.771221>,  <45.168335, 40.395802, 55.524464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.277832, 40.100639, 55.771221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671358, 0.312688, 0.671940,
		-0.688724, -0.598097, -0.409803,
		0.273745, -0.737906, 0.616893,
		45.359955, 39.879269, 55.956287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.554260, 40.144760, 55.831680>,  <45.168335, 40.395802, 55.524464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.554260, 40.144760, 55.831680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.837547, 40.025581, 56.087700>,  <45.007519, 39.954075, 56.241310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.837547, 40.025581, 56.087700>,  <44.554260, 40.144760, 55.831680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.837547, 40.025581, 56.087700> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548570, 0.338443, 0.764543,
		-0.444412, -0.892572, 0.076246,
		0.708215, -0.297946, 0.640047,
		45.050011, 39.936199, 56.279713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.045815, 39.681747, 55.575363>,  <44.554260, 40.144760, 55.831680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.045815, 39.681747, 55.575363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.681034, 39.531189, 55.510040>,  <43.462166, 39.440853, 55.470848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.681034, 39.531189, 55.510040>,  <44.045815, 39.681747, 55.575363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.681034, 39.531189, 55.510040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242752, -0.174104, -0.954337,
		0.330774, -0.909954, 0.250145,
		-0.911954, -0.376393, -0.163304,
		43.407448, 39.418270, 55.461048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.151871, 39.168221, 55.118736>,  <44.045815, 39.681747, 55.575363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.151871, 39.168221, 55.118736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.762280, 39.246033, 55.072220>,  <43.528526, 39.292721, 55.044308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.762280, 39.246033, 55.072220>,  <44.151871, 39.168221, 55.118736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.762280, 39.246033, 55.072220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098589, -0.098369, -0.990254,
		-0.204073, -0.975952, 0.076631,
		-0.973978, 0.194529, -0.116293,
		43.470085, 39.304390, 55.037331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.868916, 38.618969, 54.818378>,  <44.151871, 39.168221, 55.118736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.868916, 38.618969, 54.818378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.624359, 38.910851, 54.695915>,  <43.477627, 39.085979, 54.622437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.624359, 38.910851, 54.695915>,  <43.868916, 38.618969, 54.818378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.624359, 38.910851, 54.695915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070939, -0.334788, -0.939619,
		-0.788142, -0.596194, 0.152922,
		-0.611392, 0.729705, -0.306154,
		43.440941, 39.129761, 54.604069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.477760, 38.384167, 54.272652>,  <43.868916, 38.618969, 54.818378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.477760, 38.384167, 54.272652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.402603, 38.775688, 54.240074>,  <43.357510, 39.010601, 54.220528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.402603, 38.775688, 54.240074>,  <43.477760, 38.384167, 54.272652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.402603, 38.775688, 54.240074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114378, -0.104160, -0.987962,
		-0.975507, -0.176314, 0.131525,
		-0.187891, 0.978808, -0.081443,
		43.346237, 39.069332, 54.215641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.992268, 38.346523, 53.798214>,  <43.477760, 38.384167, 54.272652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.992268, 38.346523, 53.798214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.176212, 38.701653, 53.805054>,  <43.286579, 38.914730, 53.809158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.176212, 38.701653, 53.805054>,  <42.992268, 38.346523, 53.798214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.176212, 38.701653, 53.805054> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131272, -0.048920, -0.990139,
		-0.878234, 0.457573, -0.139043,
		0.459862, 0.887825, 0.017104,
		43.314171, 38.967999, 53.810184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.725182, 38.678425, 53.235847>,  <42.992268, 38.346523, 53.798214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.725182, 38.678425, 53.235847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.069859, 38.869293, 53.304886>,  <43.276665, 38.983814, 53.346310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.069859, 38.869293, 53.304886>,  <42.725182, 38.678425, 53.235847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.069859, 38.869293, 53.304886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175646, 0.038623, -0.983695,
		-0.476054, 0.877963, -0.050531,
		0.861697, 0.477168, 0.172598,
		43.328369, 39.012444, 53.356667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.748379, 39.136608, 52.730968>,  <42.725182, 38.678425, 53.235847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.748379, 39.136608, 52.730968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.122223, 39.126228, 52.872860>,  <43.346531, 39.119999, 52.957996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.122223, 39.126228, 52.872860>,  <42.748379, 39.136608, 52.730968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.122223, 39.126228, 52.872860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355651, 0.056316, -0.932920,
		0.004231, 0.998076, 0.061862,
		0.934609, -0.025949, 0.354729,
		43.402607, 39.118443, 52.979279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.009495, 39.814320, 52.625977>,  <42.748379, 39.136608, 52.730968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.009495, 39.814320, 52.625977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.316811, 39.559807, 52.653900>,  <43.501202, 39.407097, 52.670654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.316811, 39.559807, 52.653900>,  <43.009495, 39.814320, 52.625977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.316811, 39.559807, 52.653900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269307, 0.222377, -0.937028,
		0.580693, 0.738709, 0.342206,
		0.768290, -0.636284, 0.069807,
		43.547298, 39.368923, 52.674843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.587193, 40.175270, 52.288887>,  <43.009495, 39.814320, 52.625977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.587193, 40.175270, 52.288887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.659149, 39.781799, 52.290253>,  <43.702324, 39.545715, 52.291073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.659149, 39.781799, 52.290253>,  <43.587193, 40.175270, 52.288887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.659149, 39.781799, 52.290253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398465, 0.069695, -0.914532,
		0.899368, 0.165882, 0.404500,
		0.179896, -0.983680, 0.003417,
		43.713120, 39.486694, 52.291279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.166912, 40.144680, 51.958736>,  <43.587193, 40.175270, 52.288887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.166912, 40.144680, 51.958736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.990089, 39.786949, 51.931129>,  <43.883995, 39.572311, 51.914566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.990089, 39.786949, 51.931129>,  <44.166912, 40.144680, 51.958736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.990089, 39.786949, 51.931129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403888, -0.129752, -0.905560,
		0.800914, -0.428181, 0.418566,
		-0.442053, -0.894330, -0.069017,
		43.857471, 39.518650, 51.910423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.748665, 39.753551, 51.768166>,  <44.166912, 40.144680, 51.958736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.748665, 39.753551, 51.768166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.409035, 39.560707, 51.681778>,  <44.205257, 39.445000, 51.629948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.409035, 39.560707, 51.681778>,  <44.748665, 39.753551, 51.768166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.409035, 39.560707, 51.681778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370247, -0.251476, -0.894247,
		0.376819, -0.839241, 0.392023,
		-0.849073, -0.482114, -0.215965,
		44.154312, 39.416073, 51.616989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.957527, 39.125725, 51.383682>,  <44.748665, 39.753551, 51.768166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.957527, 39.125725, 51.383682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.564209, 39.165619, 51.322773>,  <44.328220, 39.189556, 51.286228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.564209, 39.165619, 51.322773>,  <44.957527, 39.125725, 51.383682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.564209, 39.165619, 51.322773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130946, -0.193493, -0.972324,
		-0.126438, -0.976019, 0.177201,
		-0.983294, 0.099735, -0.152270,
		44.269222, 39.195541, 51.277092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.820572, 38.549931, 51.011326>,  <44.957527, 39.125725, 51.383682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.820572, 38.549931, 51.011326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.540070, 38.823112, 50.929539>,  <44.371769, 38.987022, 50.880466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.540070, 38.823112, 50.929539>,  <44.820572, 38.549931, 51.011326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.540070, 38.823112, 50.929539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130992, -0.158492, -0.978632,
		-0.700768, -0.713060, 0.021683,
		-0.701260, 0.682953, -0.204471,
		44.329693, 39.028000, 50.868198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.496490, 38.264622, 50.471500>,  <44.820572, 38.549931, 51.011326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.496490, 38.264622, 50.471500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.394089, 38.651031, 50.457291>,  <44.332649, 38.882877, 50.448765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.394089, 38.651031, 50.457291>,  <44.496490, 38.264622, 50.471500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.394089, 38.651031, 50.457291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082272, -0.058386, -0.994898,
		-0.963168, -0.251775, 0.094423,
		-0.256003, 0.966023, -0.035521,
		44.317287, 38.940838, 50.446632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.251778, 40.379257, 53.752312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.632759, 40.426178, 53.864792>,  <39.861347, 40.454330, 53.932281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.632759, 40.426178, 53.864792>,  <39.251778, 40.379257, 53.752312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632759, 40.426178, 53.864792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292484, 0.093403, 0.951698,
		0.085371, -0.988694, 0.123271,
		0.952452, 0.117303, 0.281203,
		39.918495, 40.461369, 53.949154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345142, 39.966652, 54.313393>,  <39.251778, 40.379257, 53.752312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345142, 39.966652, 54.313393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.638023, 40.233757, 54.367016>,  <39.813751, 40.394020, 54.399189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.638023, 40.233757, 54.367016>,  <39.345142, 39.966652, 54.313393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638023, 40.233757, 54.367016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225233, 0.051641, 0.972935,
		0.642765, -0.742582, 0.188214,
		0.732204, 0.667761, 0.134061,
		39.857685, 40.434086, 54.407234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752251, 39.722881, 54.814220>,  <39.345142, 39.966652, 54.313393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.752251, 39.722881, 54.814220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.847763, 40.111229, 54.822144>,  <39.905071, 40.344238, 54.826897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.847763, 40.111229, 54.822144>,  <39.752251, 39.722881, 54.814220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847763, 40.111229, 54.822144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114153, 0.007804, 0.993432,
		0.964341, -0.239473, 0.112692,
		0.238780, 0.970872, 0.019811,
		39.919395, 40.402489, 54.828087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202576, 39.688465, 55.397701>,  <39.752251, 39.722881, 54.814220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.202576, 39.688465, 55.397701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.113838, 40.075493, 55.349380>,  <40.060596, 40.307709, 55.320389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.113838, 40.075493, 55.349380>,  <40.202576, 39.688465, 55.397701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113838, 40.075493, 55.349380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140057, 0.154226, 0.978058,
		0.964971, 0.200056, -0.169729,
		-0.221843, 0.967570, -0.120805,
		40.047287, 40.365765, 55.313141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678177, 40.045425, 55.792194>,  <40.202576, 39.688465, 55.397701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678177, 40.045425, 55.792194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.403168, 40.329971, 55.733860>,  <40.238163, 40.500698, 55.698860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.403168, 40.329971, 55.733860>,  <40.678177, 40.045425, 55.792194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403168, 40.329971, 55.733860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083919, 0.121651, 0.989019,
		0.721299, 0.692210, -0.023940,
		-0.687522, 0.711369, -0.145836,
		40.196911, 40.543381, 55.690109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941471, 40.714165, 56.035313>,  <40.678177, 40.045425, 55.792194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941471, 40.714165, 56.035313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.541969, 40.721809, 56.053711>,  <40.302269, 40.726395, 56.064751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.541969, 40.721809, 56.053711>,  <40.941471, 40.714165, 56.035313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541969, 40.721809, 56.053711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048284, 0.144615, 0.988309,
		0.012236, 0.989303, -0.145359,
		-0.998759, 0.019111, 0.045998,
		40.242340, 40.727543, 56.067509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769432, 41.159855, 56.542191>,  <40.941471, 40.714165, 56.035313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.769432, 41.159855, 56.542191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.423462, 40.961586, 56.510647>,  <40.215881, 40.842625, 56.491722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.423462, 40.961586, 56.510647>,  <40.769432, 41.159855, 56.542191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423462, 40.961586, 56.510647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268137, 0.323523, 0.907433,
		-0.424275, 0.806005, -0.412730,
		-0.864924, -0.495670, -0.078857,
		40.163986, 40.812885, 56.486988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181324, 41.595573, 56.812279>,  <40.769432, 41.159855, 56.542191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181324, 41.595573, 56.812279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.039810, 41.222847, 56.844646>,  <39.954903, 40.999210, 56.864067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.039810, 41.222847, 56.844646>,  <40.181324, 41.595573, 56.812279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039810, 41.222847, 56.844646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454875, 0.247008, 0.855614,
		-0.817267, 0.265895, -0.511249,
		-0.353786, -0.931819, 0.080922,
		39.933674, 40.943302, 56.868923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455345, 41.710621, 56.876251>,  <40.181324, 41.595573, 56.812279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455345, 41.710621, 56.876251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.513222, 41.340561, 57.016632>,  <39.547947, 41.118526, 57.100861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.513222, 41.340561, 57.016632>,  <39.455345, 41.710621, 56.876251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513222, 41.340561, 57.016632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521970, 0.229954, 0.821382,
		-0.840602, -0.302031, -0.449628,
		0.144689, -0.925148, 0.350951,
		39.556629, 41.063015, 57.121918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855808, 41.500309, 57.107960>,  <39.455345, 41.710621, 56.876251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855808, 41.500309, 57.107960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.088425, 41.243996, 57.308441>,  <39.227993, 41.090206, 57.428730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.088425, 41.243996, 57.308441>,  <38.855808, 41.500309, 57.107960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088425, 41.243996, 57.308441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516298, 0.185413, 0.836097,
		-0.628688, -0.744995, -0.223010,
		0.581539, -0.640784, 0.501207,
		39.262886, 41.051762, 57.458805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343174, 41.044098, 57.447975>,  <38.855808, 41.500309, 57.107960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343174, 41.044098, 57.447975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.697468, 40.988640, 57.625175>,  <38.910046, 40.955364, 57.731495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.697468, 40.988640, 57.625175>,  <38.343174, 41.044098, 57.447975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697468, 40.988640, 57.625175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421799, 0.158069, 0.892804,
		-0.193809, -0.977646, 0.081526,
		0.885733, -0.138646, 0.443005,
		38.963188, 40.947048, 57.758076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253796, 40.577072, 57.950550>,  <38.343174, 41.044098, 57.447975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253796, 40.577072, 57.950550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.576180, 40.794693, 58.043880>,  <38.769611, 40.925266, 58.099876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.576180, 40.794693, 58.043880>,  <38.253796, 40.577072, 57.950550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576180, 40.794693, 58.043880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368990, 0.153502, 0.916670,
		0.462897, -0.824893, 0.324465,
		0.805961, 0.544048, 0.233321,
		38.817966, 40.957909, 58.113876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508823, 40.279293, 58.539936>,  <38.253796, 40.577072, 57.950550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508823, 40.279293, 58.539936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.610237, 40.664375, 58.502182>,  <38.671085, 40.895424, 58.479530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.610237, 40.664375, 58.502182>,  <38.508823, 40.279293, 58.539936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610237, 40.664375, 58.502182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285329, 0.167664, 0.943650,
		0.924287, -0.212318, 0.317198,
		0.253537, 0.962709, -0.094389,
		38.686298, 40.953190, 58.473866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066208, 40.437923, 59.064468>,  <38.508823, 40.279293, 58.539936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066208, 40.437923, 59.064468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.830761, 40.742767, 58.956608>,  <38.689491, 40.925674, 58.891891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.830761, 40.742767, 58.956608>,  <39.066208, 40.437923, 59.064468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830761, 40.742767, 58.956608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114143, 0.251862, 0.961008,
		0.800310, 0.596449, -0.061261,
		-0.588621, 0.762112, -0.269649,
		38.654175, 40.971401, 58.875713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312599, 39.820110, 59.250481>,  <39.066208, 40.437923, 59.064468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312599, 39.820110, 59.250481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.545216, 39.563850, 59.451027>,  <39.684788, 39.410095, 59.571354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.545216, 39.563850, 59.451027>,  <39.312599, 39.820110, 59.250481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545216, 39.563850, 59.451027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471155, -0.237174, -0.849565,
		0.663188, 0.730282, 0.163919,
		0.581545, -0.640653, 0.501368,
		39.719681, 39.371655, 59.601437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966755, 39.896877, 58.973022>,  <39.312599, 39.820110, 59.250481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966755, 39.896877, 58.973022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.011284, 39.553848, 59.173889>,  <40.038002, 39.348030, 59.294411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.011284, 39.553848, 59.173889>,  <39.966755, 39.896877, 58.973022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011284, 39.553848, 59.173889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647267, -0.320866, -0.691441,
		0.754091, 0.402011, 0.519359,
		0.111323, -0.857573, 0.502170,
		40.044682, 39.296577, 59.324539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743462, 39.760082, 59.149963>,  <39.966755, 39.896877, 58.973022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743462, 39.760082, 59.149963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.578712, 39.397392, 59.186188>,  <40.479862, 39.179779, 59.207924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.578712, 39.397392, 59.186188>,  <40.743462, 39.760082, 59.149963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578712, 39.397392, 59.186188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757131, -0.395825, -0.519687,
		0.507062, -0.145478, 0.849543,
		-0.411874, -0.906729, 0.090563,
		40.455151, 39.125374, 59.213356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.295372, 39.340767, 59.434738>,  <40.743462, 39.760082, 59.149963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.295372, 39.340767, 59.434738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.017071, 39.113235, 59.259300>,  <40.850090, 38.976719, 59.154037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.017071, 39.113235, 59.259300>,  <41.295372, 39.340767, 59.434738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.017071, 39.113235, 59.259300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671665, -0.298823, -0.677916,
		0.254553, -0.766252, 0.589966,
		-0.695750, -0.568826, -0.438599,
		40.808346, 38.942589, 59.127720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625717, 38.679474, 59.310890>,  <41.295372, 39.340767, 59.434738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.625717, 38.679474, 59.310890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.312500, 38.696442, 59.062683>,  <41.124569, 38.706623, 58.913757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.312500, 38.696442, 59.062683>,  <41.625717, 38.679474, 59.310890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.312500, 38.696442, 59.062683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602964, -0.192942, -0.774085,
		-0.152558, -0.980293, 0.125506,
		-0.783046, 0.042417, -0.620516,
		41.077587, 38.709167, 58.876530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.761852, 38.216248, 58.813507>,  <41.625717, 38.679474, 59.310890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.761852, 38.216248, 58.813507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.488998, 38.456635, 58.646881>,  <41.325287, 38.600864, 58.546906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.488998, 38.456635, 58.646881>,  <41.761852, 38.216248, 58.813507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.488998, 38.456635, 58.646881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531097, 0.015609, -0.847167,
		-0.502615, -0.799124, -0.329818,
		-0.682139, 0.600964, -0.416567,
		41.284355, 38.636925, 58.521912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686394, 37.876709, 58.169209>,  <41.761852, 38.216248, 58.813507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.686394, 37.876709, 58.169209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.544548, 38.250099, 58.147751>,  <41.459442, 38.474133, 58.134876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.544548, 38.250099, 58.147751>,  <41.686394, 37.876709, 58.169209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.544548, 38.250099, 58.147751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585875, 0.177125, -0.790808,
		-0.728697, -0.311858, -0.609710,
		-0.354614, 0.933473, -0.053639,
		41.438164, 38.530140, 58.131660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506897, 37.988243, 57.417175>,  <41.686394, 37.876709, 58.169209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.506897, 37.988243, 57.417175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.552086, 38.365921, 57.540932>,  <41.579201, 38.592529, 57.615185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.552086, 38.365921, 57.540932>,  <41.506897, 37.988243, 57.417175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552086, 38.365921, 57.540932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531461, 0.205676, -0.821734,
		-0.839516, 0.257264, -0.478570,
		0.112972, 0.944200, 0.309394,
		41.585979, 38.649181, 57.633751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426380, 38.320992, 56.753777>,  <41.506897, 37.988243, 57.417175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426380, 38.320992, 56.753777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.604702, 38.566093, 57.014786>,  <41.711697, 38.713154, 57.171391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.604702, 38.566093, 57.014786>,  <41.426380, 38.320992, 56.753777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.604702, 38.566093, 57.014786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580287, 0.357211, -0.731893,
		-0.681558, 0.704936, -0.196325,
		0.445809, 0.612752, 0.652525,
		41.738445, 38.749920, 57.210545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.351780, 38.978207, 56.607216>,  <41.426380, 38.320992, 56.753777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.351780, 38.978207, 56.607216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.691238, 39.007126, 56.816814>,  <41.894913, 39.024479, 56.942574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.691238, 39.007126, 56.816814>,  <41.351780, 38.978207, 56.607216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.691238, 39.007126, 56.816814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490714, 0.262241, -0.830921,
		-0.197488, 0.962290, 0.187071,
		0.848645, 0.072299, 0.523999,
		41.945831, 39.028816, 56.974014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.744850, 39.663830, 56.515587>,  <41.351780, 38.978207, 56.607216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.744850, 39.663830, 56.515587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.057102, 39.444130, 56.634880>,  <42.244453, 39.312309, 56.706455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.057102, 39.444130, 56.634880>,  <41.744850, 39.663830, 56.515587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.057102, 39.444130, 56.634880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507878, 0.279360, -0.814873,
		0.364257, 0.787578, 0.497029,
		0.780626, -0.549253, 0.298235,
		42.291290, 39.279354, 56.724350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.259777, 40.115860, 56.472176>,  <41.744850, 39.663830, 56.515587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.259777, 40.115860, 56.472176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.458298, 39.768600, 56.473045>,  <42.577412, 39.560246, 56.473568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.458298, 39.768600, 56.473045>,  <42.259777, 40.115860, 56.472176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.458298, 39.768600, 56.473045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496773, 0.281939, -0.820809,
		0.711969, 0.408451, 0.571199,
		0.496303, -0.868146, 0.002175,
		42.607189, 39.508156, 56.473698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.940655, 40.306812, 56.245277>,  <42.259777, 40.115860, 56.472176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.940655, 40.306812, 56.245277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.933777, 39.908096, 56.213993>,  <42.929649, 39.668865, 56.195225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.933777, 39.908096, 56.213993>,  <42.940655, 40.306812, 56.245277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.933777, 39.908096, 56.213993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366313, 0.066501, -0.928112,
		0.930333, -0.044609, 0.363993,
		-0.017196, -0.996789, -0.078208,
		42.928619, 39.609058, 56.190529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.602158, 40.032211, 56.095428>,  <42.940655, 40.306812, 56.245277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.602158, 40.032211, 56.095428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.367382, 39.743484, 55.948746>,  <43.226517, 39.570248, 55.860737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.367382, 39.743484, 55.948746>,  <43.602158, 40.032211, 56.095428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.367382, 39.743484, 55.948746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385107, 0.149511, -0.910680,
		0.712175, -0.675738, 0.190224,
		-0.586941, -0.721820, -0.366710,
		43.191299, 39.526939, 55.838734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.130535, 39.739220, 56.421562>,  <43.602158, 40.032211, 56.095428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.130535, 39.739220, 56.421562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.491684, 39.828041, 56.568810>,  <44.708374, 39.881332, 56.657158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.491684, 39.828041, 56.568810>,  <44.130535, 39.739220, 56.421562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.491684, 39.828041, 56.568810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364921, -0.056815, 0.929303,
		0.227266, -0.973379, 0.029734,
		0.902874, 0.222049, 0.368119,
		44.762547, 39.894657, 56.679245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.241203, 39.245052, 56.871868>,  <44.130535, 39.739220, 56.421562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.241203, 39.245052, 56.871868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.474579, 39.553421, 56.974068>,  <44.614605, 39.738441, 57.035385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.474579, 39.553421, 56.974068>,  <44.241203, 39.245052, 56.871868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.474579, 39.553421, 56.974068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324608, -0.067016, 0.943471,
		0.744469, -0.633389, 0.211150,
		0.583435, 0.770926, 0.255495,
		44.649609, 39.784698, 57.050716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.406509, 39.121399, 57.609833>,  <44.241203, 39.245052, 56.871868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.406509, 39.121399, 57.609833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.473408, 39.512054, 57.555862>,  <44.513546, 39.746449, 57.523479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.473408, 39.512054, 57.555862>,  <44.406509, 39.121399, 57.609833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.473408, 39.512054, 57.555862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350093, 0.186764, 0.917908,
		0.921664, -0.106275, 0.373149,
		0.167242, 0.976639, -0.134928,
		44.523579, 39.805046, 57.515385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.741585, 39.295738, 58.194202>,  <44.406509, 39.121399, 57.609833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.741585, 39.295738, 58.194202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.624001, 39.646568, 58.042244>,  <44.553452, 39.857067, 57.951069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.624001, 39.646568, 58.042244>,  <44.741585, 39.295738, 58.194202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.624001, 39.646568, 58.042244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538013, 0.176683, 0.824212,
		0.790019, 0.446676, 0.419941,
		-0.293959, 0.877077, -0.379900,
		44.535812, 39.909691, 57.928272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.810181, 39.719685, 58.755016>,  <44.741585, 39.295738, 58.194202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.810181, 39.719685, 58.755016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.558620, 39.928741, 58.524773>,  <44.407684, 40.054176, 58.386627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.558620, 39.928741, 58.524773>,  <44.810181, 39.719685, 58.755016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.558620, 39.928741, 58.524773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477764, 0.324289, 0.816442,
		0.613372, 0.788467, 0.045754,
		-0.628900, 0.522643, -0.575612,
		44.369949, 40.085533, 58.352089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.748215, 40.347984, 59.084930>,  <44.810181, 39.719685, 58.755016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.748215, 40.347984, 59.084930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.426262, 40.353981, 58.847633>,  <44.233089, 40.357578, 58.705257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.426262, 40.353981, 58.847633>,  <44.748215, 40.347984, 59.084930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.426262, 40.353981, 58.847633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539433, 0.398156, 0.741946,
		0.247324, 0.917195, -0.312384,
		-0.804887, 0.014991, -0.593239,
		44.184795, 40.358479, 58.669662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.457634, 41.065887, 59.119312>,  <44.748215, 40.347984, 59.084930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.457634, 41.065887, 59.119312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.168083, 40.800728, 59.042816>,  <43.994354, 40.641632, 58.996918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.168083, 40.800728, 59.042816>,  <44.457634, 41.065887, 59.119312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.168083, 40.800728, 59.042816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595335, 0.460054, 0.658731,
		-0.348690, 0.590691, -0.727667,
		-0.723873, -0.662899, -0.191243,
		43.950920, 40.601860, 58.985443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.406414, 41.866272, 58.827332>,  <44.457634, 41.065887, 59.119312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.406414, 41.866272, 58.827332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.641174, 42.111526, 59.038845>,  <44.782028, 42.258678, 59.165752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.641174, 42.111526, 59.038845>,  <44.406414, 41.866272, 58.827332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.641174, 42.111526, 59.038845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667505, 0.003223, -0.744598,
		-0.458245, 0.789970, -0.407380,
		0.586898, 0.613137, 0.528786,
		44.817245, 42.295467, 59.197479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.515579, 42.523735, 58.501186>,  <44.406414, 41.866272, 58.827332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.515579, 42.523735, 58.501186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.836700, 42.483353, 58.736240>,  <45.029373, 42.459126, 58.877274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.836700, 42.483353, 58.736240>,  <44.515579, 42.523735, 58.501186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.836700, 42.483353, 58.736240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593322, 0.037896, -0.804072,
		0.058905, 0.994169, 0.090322,
		0.802807, -0.100954, 0.587630,
		45.077541, 42.453068, 58.912529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.137264, 42.986298, 58.354652>,  <44.515579, 42.523735, 58.501186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.137264, 42.986298, 58.354652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.306526, 42.690567, 58.564163>,  <45.408081, 42.513130, 58.689869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.306526, 42.690567, 58.564163>,  <45.137264, 42.986298, 58.354652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.306526, 42.690567, 58.564163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724320, -0.071271, -0.685770,
		0.544337, 0.669566, 0.505350,
		0.423152, -0.739325, 0.523776,
		45.433472, 42.468769, 58.721294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.880436, 43.217945, 58.558590>,  <45.137264, 42.986298, 58.354652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.880436, 43.217945, 58.558590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.847893, 42.819275, 58.556641>,  <45.828365, 42.580074, 58.555473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.847893, 42.819275, 58.556641>,  <45.880436, 43.217945, 58.558590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.847893, 42.819275, 58.556641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726444, -0.055956, -0.684944,
		0.682393, -0.059266, 0.728579,
		-0.081362, -0.996673, -0.004870,
		45.823483, 42.520271, 58.555180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.534828, 43.007664, 58.380096>,  <45.880436, 43.217945, 58.558590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.534828, 43.007664, 58.380096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.343628, 42.660271, 58.327545>,  <46.228909, 42.451836, 58.296013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.343628, 42.660271, 58.327545>,  <46.534828, 43.007664, 58.380096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.343628, 42.660271, 58.327545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626393, -0.232195, -0.744122,
		0.615749, -0.437985, 0.654998,
		-0.478002, -0.868478, -0.131377,
		46.200226, 42.399727, 58.288132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.010616, 42.509331, 58.269299>,  <46.534828, 43.007664, 58.380096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.010616, 42.509331, 58.269299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.672630, 42.366852, 58.109718>,  <46.469841, 42.281364, 58.013969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.672630, 42.366852, 58.109718>,  <47.010616, 42.509331, 58.269299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.672630, 42.366852, 58.109718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502360, -0.272644, -0.820549,
		0.183501, -0.893752, 0.409311,
		-0.844963, -0.356193, -0.398954,
		46.419140, 42.259995, 57.990032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.187450, 41.926750, 57.943516>,  <47.010616, 42.509331, 58.269299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.187450, 41.926750, 57.943516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.846581, 42.030968, 57.762001>,  <46.642059, 42.093498, 57.653091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.846581, 42.030968, 57.762001>,  <47.187450, 41.926750, 57.943516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.846581, 42.030968, 57.762001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392301, -0.255762, -0.883564,
		-0.346267, -0.930969, 0.115742,
		-0.852173, 0.260544, -0.453782,
		46.590927, 42.109131, 57.625866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.855045, 43.346218, 59.007114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.591995, 43.081306, 58.863495>,  <40.434166, 42.922359, 58.777325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.591995, 43.081306, 58.863495>,  <40.855045, 43.346218, 59.007114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.591995, 43.081306, 58.863495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134879, 0.365393, -0.921030,
		0.741171, -0.654121, -0.150965,
		-0.657627, -0.662279, -0.359046,
		40.394707, 42.882622, 58.755779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.113632, 43.088974, 58.430603>,  <40.855045, 43.346218, 59.007114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.113632, 43.088974, 58.430603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.728218, 43.000763, 58.369987>,  <40.496967, 42.947838, 58.333618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.728218, 43.000763, 58.369987>,  <41.113632, 43.088974, 58.430603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728218, 43.000763, 58.369987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091020, 0.262451, -0.960643,
		0.251600, -0.939412, -0.232812,
		-0.963542, -0.220507, -0.151538,
		40.439156, 42.934605, 58.324524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.168190, 42.636105, 57.849297>,  <41.113632, 43.088974, 58.430603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.168190, 42.636105, 57.849297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.807533, 42.808479, 57.863850>,  <40.591137, 42.911903, 57.872581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.807533, 42.808479, 57.863850>,  <41.168190, 42.636105, 57.849297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807533, 42.808479, 57.863850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170279, 0.431081, -0.886101,
		-0.397541, -0.792754, -0.462063,
		-0.901646, 0.430941, 0.036383,
		40.537041, 42.937763, 57.874763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807049, 42.662144, 57.139133>,  <41.168190, 42.636105, 57.849297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.807049, 42.662144, 57.139133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.608246, 42.935303, 57.353291>,  <40.488964, 43.099197, 57.481785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.608246, 42.935303, 57.353291>,  <40.807049, 42.662144, 57.139133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608246, 42.935303, 57.353291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051526, 0.639123, -0.767376,
		-0.866217, -0.353802, -0.352834,
		-0.497004, 0.682895, 0.535390,
		40.459145, 43.140171, 57.513908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422035, 42.955200, 56.561344>,  <40.807049, 42.662144, 57.139133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422035, 42.955200, 56.561344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.402042, 43.210320, 56.868774>,  <40.390045, 43.363392, 57.053234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.402042, 43.210320, 56.868774>,  <40.422035, 42.955200, 56.561344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402042, 43.210320, 56.868774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143370, 0.766150, -0.626466,
		-0.988406, 0.078877, -0.129738,
		-0.049985, 0.637803, 0.768576,
		40.387047, 43.401661, 57.099346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854382, 43.428982, 56.490795>,  <40.422035, 42.955200, 56.561344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854382, 43.428982, 56.490795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.149300, 43.585564, 56.711037>,  <40.326252, 43.679512, 56.843182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.149300, 43.585564, 56.711037>,  <39.854382, 43.428982, 56.490795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149300, 43.585564, 56.711037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039273, 0.788800, -0.613394,
		-0.674429, 0.473876, 0.566204,
		0.737295, 0.391454, 0.550600,
		40.370487, 43.702999, 56.876217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693382, 44.245178, 56.522884>,  <39.854382, 43.428982, 56.490795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693382, 44.245178, 56.522884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.074898, 44.195534, 56.632347>,  <40.303806, 44.165745, 56.698025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.074898, 44.195534, 56.632347>,  <39.693382, 44.245178, 56.522884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.074898, 44.195534, 56.632347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268289, 0.761875, -0.589548,
		-0.135320, 0.635722, 0.759965,
		0.953787, -0.124113, 0.273654,
		40.361034, 44.158298, 56.714443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846088, 44.917488, 56.408825>,  <39.693382, 44.245178, 56.522884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846088, 44.917488, 56.408825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.191113, 44.716225, 56.430061>,  <40.398129, 44.595467, 56.442802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.191113, 44.716225, 56.430061>,  <39.846088, 44.917488, 56.408825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191113, 44.716225, 56.430061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304696, 0.432807, -0.848433,
		0.403917, 0.748003, 0.526633,
		0.862561, -0.503160, 0.053095,
		40.449883, 44.565277, 56.445992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.362324, 45.404713, 56.182873>,  <39.846088, 44.917488, 56.408825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.362324, 45.404713, 56.182873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.561241, 45.058823, 56.154713>,  <40.680592, 44.851288, 56.137817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.561241, 45.058823, 56.154713>,  <40.362324, 45.404713, 56.182873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.561241, 45.058823, 56.154713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479042, 0.341330, -0.808710,
		0.723338, 0.368443, 0.583979,
		0.497293, -0.864722, -0.070398,
		40.710430, 44.799408, 56.133595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007870, 45.658089, 56.096264>,  <40.362324, 45.404713, 56.182873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.007870, 45.658089, 56.096264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.001724, 45.280708, 55.963795>,  <40.998035, 45.054279, 55.884315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.001724, 45.280708, 55.963795>,  <41.007870, 45.658089, 56.096264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.001724, 45.280708, 55.963795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473420, 0.284867, -0.833501,
		0.880703, -0.169587, 0.442270,
		-0.015363, -0.943446, -0.331169,
		40.997116, 44.997673, 55.864445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.678425, 45.528137, 55.738483>,  <41.007870, 45.658089, 56.096264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.678425, 45.528137, 55.738483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.442497, 45.240280, 55.591930>,  <41.300941, 45.067566, 55.503998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.442497, 45.240280, 55.591930>,  <41.678425, 45.528137, 55.738483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.442497, 45.240280, 55.591930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390671, 0.142796, -0.909388,
		0.706749, -0.679507, 0.196918,
		-0.589816, -0.719639, -0.366385,
		41.265553, 45.024387, 55.482014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.134327, 45.164852, 55.406857>,  <41.678425, 45.528137, 55.738483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.134327, 45.164852, 55.406857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.774605, 45.098297, 55.245087>,  <41.558769, 45.058365, 55.148026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.774605, 45.098297, 55.245087>,  <42.134327, 45.164852, 55.406857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.774605, 45.098297, 55.245087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410761, -0.004037, -0.911734,
		0.150073, -0.986051, 0.071978,
		-0.899307, -0.166392, -0.404425,
		41.504814, 45.048378, 55.123760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.742592, 44.634026, 55.570560>,  <42.134327, 45.164852, 55.406857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.742592, 44.634026, 55.570560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.006691, 44.904449, 55.701416>,  <43.165150, 45.066704, 55.779930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.006691, 44.904449, 55.701416>,  <42.742592, 44.634026, 55.570560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.006691, 44.904449, 55.701416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425561, -0.022140, 0.904659,
		0.618843, -0.736517, 0.273086,
		0.660251, 0.676057, 0.327134,
		43.204765, 45.107265, 55.799557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.854694, 44.325275, 56.218430>,  <42.742592, 44.634026, 55.570560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.854694, 44.325275, 56.218430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.965675, 44.708046, 56.252640>,  <43.032265, 44.937706, 56.273167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.965675, 44.708046, 56.252640>,  <42.854694, 44.325275, 56.218430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.965675, 44.708046, 56.252640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227035, -0.021197, 0.973656,
		0.933528, -0.289561, 0.211375,
		0.277453, 0.956925, 0.085529,
		43.048912, 44.995125, 56.278297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.216133, 44.310318, 56.862656>,  <42.854694, 44.325275, 56.218430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.216133, 44.310318, 56.862656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.186256, 44.699585, 56.775608>,  <43.168331, 44.933147, 56.723377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.186256, 44.699585, 56.775608>,  <43.216133, 44.310318, 56.862656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.186256, 44.699585, 56.775608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099064, 0.209910, 0.972689,
		0.992274, 0.094207, 0.080728,
		-0.074688, 0.973172, -0.217621,
		43.163849, 44.991535, 56.710323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.697285, 44.752411, 57.257462>,  <43.216133, 44.310318, 56.862656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.697285, 44.752411, 57.257462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.421234, 45.020515, 57.148293>,  <43.255604, 45.181377, 57.082790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.421234, 45.020515, 57.148293>,  <43.697285, 44.752411, 57.257462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.421234, 45.020515, 57.148293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108354, 0.277169, 0.954692,
		0.715535, 0.688426, -0.118656,
		-0.690122, 0.670259, -0.272918,
		43.214199, 45.221592, 57.066418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.906116, 45.382553, 57.620548>,  <43.697285, 44.752411, 57.257462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.906116, 45.382553, 57.620548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.521721, 45.424088, 57.518009>,  <43.291084, 45.449009, 57.456486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.521721, 45.424088, 57.518009>,  <43.906116, 45.382553, 57.620548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.521721, 45.424088, 57.518009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220995, 0.269007, 0.937442,
		0.166303, 0.957524, -0.235565,
		-0.960992, 0.103841, -0.256344,
		43.233425, 45.455238, 57.441105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.669651, 46.053375, 57.934864>,  <43.906116, 45.382553, 57.620548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.669651, 46.053375, 57.934864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.348671, 45.824707, 57.866432>,  <43.156082, 45.687504, 57.825371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.348671, 45.824707, 57.866432>,  <43.669651, 46.053375, 57.934864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.348671, 45.824707, 57.866432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272430, 0.095893, 0.957385,
		-0.530906, 0.814858, -0.232690,
		-0.802446, -0.571674, -0.171082,
		43.107937, 45.653206, 57.815109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.137840, 46.374897, 58.346912>,  <43.669651, 46.053375, 57.934864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.137840, 46.374897, 58.346912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.037781, 45.993813, 58.277889>,  <42.977745, 45.765163, 58.236477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.037781, 45.993813, 58.277889>,  <43.137840, 46.374897, 58.346912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.037781, 45.993813, 58.277889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026341, -0.171461, 0.984839,
		-0.967849, 0.250902, 0.017795,
		-0.250149, -0.952707, -0.172557,
		42.962734, 45.708000, 58.226124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.562870, 46.289047, 58.725155>,  <43.137840, 46.374897, 58.346912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.562870, 46.289047, 58.725155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.706326, 45.918045, 58.682999>,  <42.792397, 45.695442, 58.657703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.706326, 45.918045, 58.682999>,  <42.562870, 46.289047, 58.725155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.706326, 45.918045, 58.682999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169708, -0.175802, 0.969687,
		-0.917922, -0.329878, -0.220454,
		0.358635, -0.927510, -0.105389,
		42.813915, 45.639793, 58.651382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.015152, 45.898647, 59.039040>,  <42.562870, 46.289047, 58.725155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.015152, 45.898647, 59.039040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.355751, 45.689430, 59.024200>,  <42.560112, 45.563900, 59.015297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.355751, 45.689430, 59.024200>,  <42.015152, 45.898647, 59.039040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.355751, 45.689430, 59.024200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029879, -0.119038, 0.992440,
		-0.523508, -0.843951, -0.116989,
		0.851496, -0.523046, -0.037101,
		42.611198, 45.532516, 59.013069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.790298, 45.229492, 59.339153>,  <42.015152, 45.898647, 59.039040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.790298, 45.229492, 59.339153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.189812, 45.220810, 59.356888>,  <42.429520, 45.215599, 59.367527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.189812, 45.220810, 59.356888>,  <41.790298, 45.229492, 59.339153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.189812, 45.220810, 59.356888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048096, -0.225711, 0.973006,
		-0.011110, -0.973953, -0.226479,
		0.998781, -0.021703, 0.044336,
		42.489445, 45.214298, 59.370190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.941830, 44.607826, 59.694263>,  <41.790298, 45.229492, 59.339153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.941830, 44.607826, 59.694263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.259285, 44.844971, 59.748901>,  <42.449757, 44.987255, 59.781685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.259285, 44.844971, 59.748901>,  <41.941830, 44.607826, 59.694263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259285, 44.844971, 59.748901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005028, -0.230904, 0.972964,
		0.608371, -0.771493, -0.186235,
		0.793637, 0.592859, 0.136596,
		42.497375, 45.022827, 59.789879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.359299, 44.205914, 60.045338>,  <41.941830, 44.607826, 59.694263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.359299, 44.205914, 60.045338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.503498, 44.574089, 60.105789>,  <42.590015, 44.794994, 60.142059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.503498, 44.574089, 60.105789>,  <42.359299, 44.205914, 60.045338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.503498, 44.574089, 60.105789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046860, -0.143948, 0.988475,
		0.931583, -0.363423, -0.008761,
		0.360495, 0.920436, 0.151130,
		42.611649, 44.850220, 60.151127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.872444, 44.169968, 60.531704>,  <42.359299, 44.205914, 60.045338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.872444, 44.169968, 60.531704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.728378, 44.542961, 60.542732>,  <42.641937, 44.766758, 60.549351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.728378, 44.542961, 60.542732>,  <42.872444, 44.169968, 60.531704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.728378, 44.542961, 60.542732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210025, -0.109846, 0.971506,
		0.908939, 0.344113, 0.235407,
		-0.360167, 0.932481, 0.027571,
		42.620327, 44.822704, 60.551003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.079773, 44.482422, 61.103844>,  <42.872444, 44.169968, 60.531704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.079773, 44.482422, 61.103844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.750511, 44.685257, 61.001648>,  <42.552956, 44.806957, 60.940331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.750511, 44.685257, 61.001648>,  <43.079773, 44.482422, 61.103844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.750511, 44.685257, 61.001648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305919, -0.017002, 0.951906,
		0.478360, 0.861724, 0.169125,
		-0.823156, 0.507092, -0.255485,
		42.503563, 44.837383, 60.925003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.786594, 44.335091, 61.218903>,  <43.079773, 44.482422, 61.103844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.786594, 44.335091, 61.218903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.711891, 43.960396, 61.337318>,  <43.667068, 43.735577, 61.408367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.711891, 43.960396, 61.337318>,  <43.786594, 44.335091, 61.218903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.711891, 43.960396, 61.337318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681988, -0.340521, -0.647253,
		0.707116, 0.081015, 0.702441,
		-0.186759, -0.936740, 0.296040,
		43.655865, 43.679375, 61.426128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.400257, 44.077473, 61.298267>,  <43.786594, 44.335091, 61.218903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.400257, 44.077473, 61.298267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.149517, 43.770210, 61.246140>,  <43.999073, 43.585854, 61.214863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.149517, 43.770210, 61.246140>,  <44.400257, 44.077473, 61.298267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.149517, 43.770210, 61.246140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649724, -0.423055, -0.631572,
		0.430015, -0.480577, 0.764286,
		-0.626854, -0.768160, -0.130323,
		43.961460, 43.539761, 61.207043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.758102, 43.452843, 61.282238>,  <44.400257, 44.077473, 61.298267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.758102, 43.452843, 61.282238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.426422, 43.298363, 61.120605>,  <44.227413, 43.205677, 61.023628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.426422, 43.298363, 61.120605>,  <44.758102, 43.452843, 61.282238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.426422, 43.298363, 61.120605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558784, -0.590412, -0.582386,
		-0.013657, -0.708707, 0.705371,
		-0.829201, -0.386196, -0.404078,
		44.177662, 43.182503, 60.999382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.834473, 42.725307, 61.246147>,  <44.758102, 43.452843, 61.282238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.834473, 42.725307, 61.246147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.545380, 42.821335, 60.986908>,  <44.371925, 42.878952, 60.831364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.545380, 42.821335, 60.986908>,  <44.834473, 42.725307, 61.246147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.545380, 42.821335, 60.986908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394175, -0.627091, -0.671850,
		-0.567702, -0.741031, 0.358591,
		-0.722731, 0.240064, -0.648097,
		44.328560, 42.893353, 60.792480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.851688, 42.135925, 60.890793>,  <44.834473, 42.725307, 61.246147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.851688, 42.135925, 60.890793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.622860, 42.369789, 60.660694>,  <44.485561, 42.510109, 60.522636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.622860, 42.369789, 60.660694>,  <44.851688, 42.135925, 60.890793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.622860, 42.369789, 60.660694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411955, -0.401647, -0.817908,
		-0.709241, -0.704879, -0.011080,
		-0.572075, 0.584658, -0.575243,
		44.451237, 42.545185, 60.488121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.618118, 41.654732, 60.341412>,  <44.851688, 42.135925, 60.890793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.618118, 41.654732, 60.341412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.603477, 42.034691, 60.217247>,  <44.594692, 42.262665, 60.142750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.603477, 42.034691, 60.217247>,  <44.618118, 41.654732, 60.341412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.603477, 42.034691, 60.217247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372773, -0.275223, -0.886167,
		-0.927200, -0.148147, -0.344023,
		-0.036600, 0.949897, -0.310412,
		44.592499, 42.319660, 60.124123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.252659, 41.661354, 59.656914>,  <44.618118, 41.654732, 60.341412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.252659, 41.661354, 59.656914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.473778, 41.994637, 59.662300>,  <44.606449, 42.194607, 59.665531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.473778, 41.994637, 59.662300>,  <44.252659, 41.661354, 59.656914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.473778, 41.994637, 59.662300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473818, -0.300985, -0.827589,
		-0.685497, 0.463874, -0.561172,
		0.552801, 0.833204, 0.013468,
		44.639618, 42.244598, 59.666340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.757881, 41.497551, 59.058636>,  <44.252659, 41.661354, 59.656914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.757881, 41.497551, 59.058636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.659508, 41.116753, 59.131542>,  <43.600483, 40.888275, 59.175285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.659508, 41.116753, 59.131542>,  <43.757881, 41.497551, 59.058636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.659508, 41.116753, 59.131542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650849, 0.301536, 0.696758,
		-0.718271, 0.052726, -0.693763,
		-0.245932, -0.951996, 0.182267,
		43.585728, 40.831154, 59.186222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.079601, 41.493759, 59.252277>,  <43.757881, 41.497551, 59.058636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.079601, 41.493759, 59.252277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.198814, 41.137390, 59.389351>,  <43.270344, 40.923569, 59.471596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.198814, 41.137390, 59.389351>,  <43.079601, 41.493759, 59.252277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.198814, 41.137390, 59.389351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702993, 0.037994, 0.710181,
		-0.645737, -0.452561, -0.614990,
		0.298034, -0.890924, 0.342682,
		43.288223, 40.870113, 59.492157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.536896, 41.050625, 59.175781>,  <43.079601, 41.493759, 59.252277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.536896, 41.050625, 59.175781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.767288, 40.881760, 59.455788>,  <42.905521, 40.780441, 59.623791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.767288, 40.881760, 59.455788>,  <42.536896, 41.050625, 59.175781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.767288, 40.881760, 59.455788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777848, -0.019688, 0.628144,
		-0.251396, -0.906307, -0.339718,
		0.575979, -0.422162, 0.700019,
		42.940083, 40.755112, 59.665794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.156891, 40.351841, 59.386032>,  <42.536896, 41.050625, 59.175781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.156891, 40.351841, 59.386032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.412964, 40.476334, 59.666977>,  <42.566608, 40.551029, 59.835545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.412964, 40.476334, 59.666977>,  <42.156891, 40.351841, 59.386032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.412964, 40.476334, 59.666977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718171, -0.082164, 0.691000,
		0.272767, -0.946777, 0.170916,
		0.640179, 0.311229, 0.702359,
		42.605019, 40.569702, 59.877686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.075985, 39.889465, 59.882797>,  <42.156891, 40.351841, 59.386032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.075985, 39.889465, 59.882797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.220543, 40.219086, 60.057304>,  <42.307278, 40.416859, 60.162006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.220543, 40.219086, 60.057304>,  <42.075985, 39.889465, 59.882797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.220543, 40.219086, 60.057304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528098, -0.204705, 0.824141,
		0.768442, -0.528234, 0.361201,
		0.361399, 0.824054, 0.436263,
		42.328964, 40.466301, 60.188183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.234486, 39.626926, 60.524075>,  <42.075985, 39.889465, 59.882797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.234486, 39.626926, 60.524075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.203587, 40.025726, 60.522316>,  <42.185047, 40.265007, 60.521259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.203587, 40.025726, 60.522316>,  <42.234486, 39.626926, 60.524075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.203587, 40.025726, 60.522316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791244, -0.058619, 0.608684,
		0.606602, 0.050495, 0.793400,
		-0.077244, 0.997003, -0.004395,
		42.180412, 40.324825, 60.520996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158794, 39.774807, 61.158985>,  <42.234486, 39.626926, 60.524075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.158794, 39.774807, 61.158985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.022324, 40.123337, 61.017910>,  <41.940441, 40.332455, 60.933266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.022324, 40.123337, 61.017910>,  <42.158794, 39.774807, 61.158985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.022324, 40.123337, 61.017910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744410, -0.021344, 0.667381,
		0.573981, 0.490236, 0.655907,
		-0.341174, 0.871328, -0.352686,
		41.919971, 40.384735, 60.912106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.918205, 40.109409, 61.771988>,  <42.158794, 39.774807, 61.158985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.918205, 40.109409, 61.771988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.743847, 40.333244, 61.490036>,  <41.639233, 40.467545, 61.320866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.743847, 40.333244, 61.490036>,  <41.918205, 40.109409, 61.771988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.743847, 40.333244, 61.490036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767151, 0.178512, 0.616127,
		0.470606, 0.809318, 0.351475,
		-0.435901, 0.559588, -0.704877,
		41.613075, 40.501122, 61.278572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704662, 40.792538, 62.061733>,  <41.918205, 40.109409, 61.771988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.704662, 40.792538, 62.061733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.485973, 40.682838, 61.745285>,  <41.354759, 40.617020, 61.555416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.485973, 40.682838, 61.745285>,  <41.704662, 40.792538, 62.061733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485973, 40.682838, 61.745285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832506, 0.076957, 0.548645,
		-0.089585, 0.958573, -0.270391,
		-0.546725, -0.274252, -0.791124,
		41.321957, 40.600563, 61.507946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<48.386749, 40.670395, 46.759117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.989014, 40.712891, 46.758999>,  <47.750374, 40.738388, 46.758926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.989014, 40.712891, 46.758999>,  <48.386749, 40.670395, 46.759117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.989014, 40.712891, 46.758999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009697, 0.093542, 0.995568,
		0.105799, 0.989931, -0.094043,
		-0.994340, 0.106242, -0.000297,
		47.690712, 40.744762, 46.758911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.210678, 41.216278, 47.210052>,  <48.386749, 40.670395, 46.759117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.210678, 41.216278, 47.210052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.870255, 41.007584, 47.186432>,  <47.666000, 40.882366, 47.172260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.870255, 41.007584, 47.186432>,  <48.210678, 41.216278, 47.210052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.870255, 41.007584, 47.186432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145336, 0.126009, 0.981325,
		-0.504551, 0.843750, -0.183068,
		-0.851062, -0.521735, -0.059049,
		47.614937, 40.851063, 47.168716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.718010, 41.664162, 47.610535>,  <48.210678, 41.216278, 47.210052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.718010, 41.664162, 47.610535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.564331, 41.295013, 47.599983>,  <47.472122, 41.073524, 47.593655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.564331, 41.295013, 47.599983>,  <47.718010, 41.664162, 47.610535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.564331, 41.295013, 47.599983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279506, 0.089038, 0.956007,
		-0.879926, 0.374665, -0.292157,
		-0.384196, -0.922875, -0.026374,
		47.449074, 41.018150, 47.592072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.980297, 41.666576, 47.881348>,  <47.718010, 41.664162, 47.610535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.980297, 41.666576, 47.881348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.127731, 41.297691, 47.928101>,  <47.216190, 41.076359, 47.956154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.127731, 41.297691, 47.928101>,  <46.980297, 41.666576, 47.881348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.127731, 41.297691, 47.928101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317439, -0.006686, 0.948255,
		-0.873715, -0.386616, -0.295212,
		0.368584, -0.922217, 0.116885,
		47.238308, 41.021027, 47.963165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.506615, 41.317383, 48.376633>,  <46.980297, 41.666576, 47.881348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.506615, 41.317383, 48.376633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.829002, 41.081314, 48.394974>,  <47.022434, 40.939671, 48.405979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.829002, 41.081314, 48.394974>,  <46.506615, 41.317383, 48.376633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.829002, 41.081314, 48.394974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197796, -0.195496, 0.960551,
		-0.557930, -0.783246, -0.274298,
		0.805972, -0.590175, 0.045850,
		47.070793, 40.904263, 48.408730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.215210, 40.582726, 48.694447>,  <46.506615, 41.317383, 48.376633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.215210, 40.582726, 48.694447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.610306, 40.566055, 48.754616>,  <46.847363, 40.556053, 48.790718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.610306, 40.566055, 48.754616>,  <46.215210, 40.582726, 48.694447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.610306, 40.566055, 48.754616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155514, -0.345411, 0.925476,
		0.013388, -0.937526, -0.347658,
		0.987743, -0.041676, 0.150423,
		46.906628, 40.553551, 48.799744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.446781, 39.892982, 49.048874>,  <46.215210, 40.582726, 48.694447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.446781, 39.892982, 49.048874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.735870, 40.151344, 49.147240>,  <46.909325, 40.306362, 49.206261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.735870, 40.151344, 49.147240>,  <46.446781, 39.892982, 49.048874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.735870, 40.151344, 49.147240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005609, -0.350318, 0.936614,
		0.691116, -0.678291, -0.249560,
		0.722722, 0.645909, 0.245915,
		46.952686, 40.345116, 49.221016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.884914, 39.459110, 49.355045>,  <46.446781, 39.892982, 49.048874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.884914, 39.459110, 49.355045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.958878, 39.837570, 49.461342>,  <47.003254, 40.064644, 49.525120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.958878, 39.837570, 49.461342>,  <46.884914, 39.459110, 49.355045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.958878, 39.837570, 49.461342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061147, -0.280953, 0.957772,
		0.980852, -0.160851, -0.109805,
		0.184909, 0.946146, 0.265737,
		47.014351, 40.121414, 49.541061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.421795, 39.343189, 49.829498>,  <46.884914, 39.459110, 49.355045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.421795, 39.343189, 49.829498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.258675, 39.702301, 49.896049>,  <47.160801, 39.917770, 49.935982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.258675, 39.702301, 49.896049>,  <47.421795, 39.343189, 49.829498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.258675, 39.702301, 49.896049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287336, -0.046779, 0.956687,
		0.866680, 0.437946, -0.238889,
		-0.407802, 0.897783, 0.166380,
		47.136333, 39.971638, 49.945965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.912117, 39.671833, 50.227077>,  <47.421795, 39.343189, 49.829498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.912117, 39.671833, 50.227077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.575012, 39.876106, 50.295135>,  <47.372749, 39.998672, 50.335968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.575012, 39.876106, 50.295135>,  <47.912117, 39.671833, 50.227077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.575012, 39.876106, 50.295135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076906, -0.198605, 0.977058,
		0.532761, 0.836514, 0.128102,
		-0.842764, 0.510686, 0.170142,
		47.322182, 40.029312, 50.346176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.038017, 39.886623, 50.845737>,  <47.912117, 39.671833, 50.227077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.038017, 39.886623, 50.845737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.645996, 39.959618, 50.814278>,  <47.410782, 40.003414, 50.795403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.645996, 39.959618, 50.814278>,  <48.038017, 39.886623, 50.845737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.645996, 39.959618, 50.814278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109828, -0.167597, 0.979719,
		0.165607, 0.968818, 0.184297,
		-0.980057, 0.182489, -0.078648,
		47.351978, 40.014366, 50.790684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.892696, 40.429272, 51.393196>,  <48.038017, 39.886623, 50.845737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.892696, 40.429272, 51.393196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.547226, 40.244514, 51.312481>,  <47.339943, 40.133659, 51.264053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.547226, 40.244514, 51.312481>,  <47.892696, 40.429272, 51.393196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.547226, 40.244514, 51.312481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146166, -0.153623, 0.977259,
		-0.482384, 0.873532, 0.065169,
		-0.863679, -0.461889, -0.201786,
		47.288124, 40.105949, 51.251945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.027607, 41.255745, 51.644577>,  <47.892696, 40.429272, 51.393196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.027607, 41.255745, 51.644577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.327118, 41.439339, 51.835854>,  <48.506824, 41.549496, 51.950619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.327118, 41.439339, 51.835854>,  <48.027607, 41.255745, 51.644577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.327118, 41.439339, 51.835854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456371, 0.166190, -0.874132,
		-0.480680, 0.872764, -0.085026,
		0.748781, 0.458981, 0.478188,
		48.551754, 41.577034, 51.979309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.214607, 41.813175, 51.239845>,  <48.027607, 41.255745, 51.644577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.214607, 41.813175, 51.239845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.539276, 41.808334, 51.473438>,  <48.734077, 41.805431, 51.613594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.539276, 41.808334, 51.473438>,  <48.214607, 41.813175, 51.239845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.539276, 41.808334, 51.473438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538334, 0.403484, -0.739863,
		-0.226675, 0.914907, 0.334013,
		0.811674, -0.012103, 0.583985,
		48.782780, 41.804703, 51.648632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.628040, 42.456291, 51.092381>,  <48.214607, 41.813175, 51.239845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.628040, 42.456291, 51.092381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.901596, 42.199448, 51.230942>,  <49.065727, 42.045341, 51.314079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.901596, 42.199448, 51.230942>,  <48.628040, 42.456291, 51.092381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.901596, 42.199448, 51.230942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680395, 0.389911, -0.620510,
		0.263365, 0.660052, 0.703541,
		0.683887, -0.642106, 0.346407,
		49.106762, 42.006817, 51.334866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.258572, 42.805817, 51.364456>,  <48.628040, 42.456291, 51.092381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.258572, 42.805817, 51.364456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.347832, 42.432716, 51.251186>,  <49.401386, 42.208858, 51.183224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.347832, 42.432716, 51.251186>,  <49.258572, 42.805817, 51.364456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.347832, 42.432716, 51.251186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773703, 0.346188, -0.530601,
		0.592948, -0.100692, 0.798920,
		0.223150, -0.932746, -0.283177,
		49.414776, 42.152893, 51.166233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.017811, 42.832832, 51.211327>,  <49.258572, 42.805817, 51.364456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.017811, 42.832832, 51.211327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.912575, 42.469398, 51.081551>,  <49.849434, 42.251339, 51.003685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.912575, 42.469398, 51.081551>,  <50.017811, 42.832832, 51.211327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.912575, 42.469398, 51.081551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623208, 0.096660, -0.776060,
		0.736473, -0.406372, 0.540804,
		-0.263095, -0.908581, -0.324441,
		49.833645, 42.196823, 50.984219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.630733, 42.555943, 50.978054>,  <50.017811, 42.832832, 51.211327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.630733, 42.555943, 50.978054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.348740, 42.338074, 50.796360>,  <50.179543, 42.207352, 50.687344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.348740, 42.338074, 50.796360>,  <50.630733, 42.555943, 50.978054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.348740, 42.338074, 50.796360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451419, 0.149371, -0.879721,
		0.547011, -0.825239, 0.140572,
		-0.704982, -0.544674, -0.454236,
		50.137245, 42.174671, 50.660088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.939342, 42.156834, 50.404320>,  <50.630733, 42.555943, 50.978054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.939342, 42.156834, 50.404320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.552147, 42.193344, 50.310802>,  <50.319828, 42.215252, 50.254692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.552147, 42.193344, 50.310802>,  <50.939342, 42.156834, 50.404320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.552147, 42.193344, 50.310802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249314, 0.242571, -0.937551,
		-0.028869, -0.965830, -0.257564,
		-0.967992, 0.091281, -0.233792,
		50.261749, 42.220730, 50.240665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.807182, 41.684315, 49.844051>,  <50.939342, 42.156834, 50.404320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.807182, 41.684315, 49.844051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.500992, 41.938026, 49.800720>,  <50.317276, 42.090252, 49.774723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.500992, 41.938026, 49.800720>,  <50.807182, 41.684315, 49.844051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.500992, 41.938026, 49.800720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092134, -0.058570, -0.994022,
		-0.636834, -0.770881, -0.013605,
		-0.765476, 0.634280, -0.108324,
		50.271347, 42.128311, 49.768223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.386822, 41.444366, 49.387840>,  <50.807182, 41.684315, 49.844051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.386822, 41.444366, 49.387840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.252029, 41.820969, 49.388775>,  <50.171154, 42.046932, 49.389336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.252029, 41.820969, 49.388775>,  <50.386822, 41.444366, 49.387840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.252029, 41.820969, 49.388775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303160, -0.106160, -0.947008,
		-0.891367, -0.319835, 0.321202,
		-0.336985, 0.941507, 0.002334,
		50.150932, 42.103420, 49.389477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.828796, 41.395634, 49.096004>,  <50.386822, 41.444366, 49.387840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.828796, 41.395634, 49.096004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.903107, 41.786011, 49.050369>,  <49.947693, 42.020237, 49.022987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.903107, 41.786011, 49.050369>,  <49.828796, 41.395634, 49.096004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.903107, 41.786011, 49.050369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153313, -0.085897, -0.984438,
		-0.970558, 0.200377, 0.133667,
		0.185777, 0.975946, -0.114089,
		49.958839, 42.078796, 49.016144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.311787, 41.546120, 48.598969>,  <49.828796, 41.395634, 49.096004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.311787, 41.546120, 48.598969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.596146, 41.827438, 48.599434>,  <49.766762, 41.996231, 48.599712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.596146, 41.827438, 48.599434>,  <49.311787, 41.546120, 48.598969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.596146, 41.827438, 48.599434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032668, -0.031362, -0.998974,
		-0.702541, 0.710202, -0.045271,
		0.710893, 0.703299, 0.001168,
		49.809414, 42.038429, 48.599785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.986389, 41.934944, 48.116383>,  <49.311787, 41.546120, 48.598969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.986389, 41.934944, 48.116383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.363052, 42.069374, 48.123768>,  <49.589050, 42.150032, 48.128197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.363052, 42.069374, 48.123768>,  <48.986389, 41.934944, 48.116383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.363052, 42.069374, 48.123768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051351, 0.197650, -0.978927,
		-0.332640, 0.920863, 0.203376,
		0.941655, 0.336074, 0.018459,
		49.645550, 42.170197, 48.129307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.934124, 42.433449, 47.665516>,  <48.986389, 41.934944, 48.116383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.934124, 42.433449, 47.665516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.328384, 42.372086, 47.693691>,  <49.564941, 42.335266, 47.710594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.328384, 42.372086, 47.693691>,  <48.934124, 42.433449, 47.665516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.328384, 42.372086, 47.693691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086783, 0.102614, -0.990928,
		0.144792, 0.982820, 0.114455,
		0.985649, -0.153411, 0.070434,
		49.624081, 42.326061, 47.714821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.280457, 42.985321, 47.490265>,  <48.934124, 42.433449, 47.665516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.280457, 42.985321, 47.490265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.523834, 42.680328, 47.402252>,  <49.669861, 42.497334, 47.349445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.523834, 42.680328, 47.402252>,  <49.280457, 42.985321, 47.490265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.523834, 42.680328, 47.402252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119071, 0.186411, -0.975230,
		0.784615, 0.619570, 0.022630,
		0.608442, -0.762485, -0.220034,
		49.706367, 42.451584, 47.336243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.792049, 43.214664, 47.034912>,  <49.280457, 42.985321, 47.490265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.792049, 43.214664, 47.034912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.744110, 42.831139, 46.931915>,  <49.715347, 42.601021, 46.870117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.744110, 42.831139, 46.931915>,  <49.792049, 43.214664, 47.034912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.744110, 42.831139, 46.931915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109995, 0.270589, -0.956390,
		0.986680, -0.086298, -0.137895,
		-0.119847, -0.958819, -0.257493,
		49.708157, 42.543491, 46.854668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.698952, 44.025867, 47.228252>,  <49.792049, 43.214664, 47.034912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.698952, 44.025867, 47.228252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.388313, 44.079582, 46.982040>,  <49.201931, 44.111809, 46.834312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.388313, 44.079582, 46.982040>,  <49.698952, 44.025867, 47.228252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.388313, 44.079582, 46.982040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606823, 0.103154, 0.788115,
		0.169325, 0.985559, 0.001379,
		-0.776591, 0.134285, -0.615527,
		49.155334, 44.119869, 46.797382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.338497, 44.744968, 47.369225>,  <49.698952, 44.025867, 47.228252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.338497, 44.744968, 47.369225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.105133, 44.437561, 47.264141>,  <48.965115, 44.253117, 47.201092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.105133, 44.437561, 47.264141>,  <49.338497, 44.744968, 47.369225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.105133, 44.437561, 47.264141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642867, 0.239295, 0.727640,
		-0.496338, 0.593399, -0.633661,
		-0.583412, -0.768516, -0.262706,
		48.930111, 44.207005, 47.185329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.661068, 44.993221, 47.459164>,  <49.338497, 44.744968, 47.369225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.661068, 44.993221, 47.459164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.608994, 44.596649, 47.463512>,  <48.577747, 44.358707, 47.466122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.608994, 44.596649, 47.463512>,  <48.661068, 44.993221, 47.459164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.608994, 44.596649, 47.463512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789051, 0.110236, 0.604356,
		-0.600374, 0.070103, -0.796641,
		-0.130186, -0.991430, 0.010868,
		48.569939, 44.299221, 47.466774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.024078, 44.952412, 47.406631>,  <48.661068, 44.993221, 47.459164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.024078, 44.952412, 47.406631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.123642, 44.592361, 47.549644>,  <48.183380, 44.376331, 47.635452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.123642, 44.592361, 47.549644>,  <48.024078, 44.952412, 47.406631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.123642, 44.592361, 47.549644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821827, -0.000956, 0.569737,
		-0.512491, -0.435637, -0.739982,
		0.248906, -0.900122, 0.357528,
		48.198315, 44.322327, 47.656902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.415771, 44.681450, 47.731064>,  <48.024078, 44.952412, 47.406631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.415771, 44.681450, 47.731064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.694138, 44.460388, 47.914486>,  <47.861156, 44.327751, 48.024540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.694138, 44.460388, 47.914486>,  <47.415771, 44.681450, 47.731064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.694138, 44.460388, 47.914486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574620, -0.045558, 0.817151,
		-0.430710, -0.832165, -0.349270,
		0.695917, -0.552653, 0.458557,
		47.902912, 44.294594, 48.052052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.015526, 44.234375, 48.156246>,  <47.415771, 44.681450, 47.731064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.015526, 44.234375, 48.156246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.383583, 44.233665, 48.312881>,  <47.604416, 44.233238, 48.406860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.383583, 44.233665, 48.312881>,  <47.015526, 44.234375, 48.156246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.383583, 44.233665, 48.312881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385518, -0.179520, 0.905068,
		0.068689, -0.983753, -0.165869,
		0.920140, -0.001777, 0.391585,
		47.659626, 44.233131, 48.430359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.061852, 43.616131, 48.591393>,  <47.015526, 44.234375, 48.156246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.061852, 43.616131, 48.591393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.364319, 43.835899, 48.733578>,  <47.545799, 43.967758, 48.818890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.364319, 43.835899, 48.733578>,  <47.061852, 43.616131, 48.591393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.364319, 43.835899, 48.733578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377950, -0.076754, 0.922639,
		0.534198, -0.832015, 0.149614,
		0.756166, 0.549418, 0.355462,
		47.591167, 44.000725, 48.840218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.347755, 43.264320, 49.199841>,  <47.061852, 43.616131, 48.591393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.347755, 43.264320, 49.199841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.456757, 43.648155, 49.227966>,  <47.522156, 43.878456, 49.244843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.456757, 43.648155, 49.227966>,  <47.347755, 43.264320, 49.199841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.456757, 43.648155, 49.227966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255142, 0.001601, 0.966902,
		0.927710, -0.281423, 0.245266,
		0.272502, 0.959582, 0.070318,
		47.538506, 43.936031, 49.249062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.614361, 43.266403, 49.798061>,  <47.347755, 43.264320, 49.199841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.614361, 43.266403, 49.798061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.555321, 43.655128, 49.724525>,  <47.519897, 43.888363, 49.680405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.555321, 43.655128, 49.724525>,  <47.614361, 43.266403, 49.798061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.555321, 43.655128, 49.724525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286263, 0.135946, 0.948458,
		0.946714, 0.192623, 0.258127,
		-0.147604, 0.971810, -0.183843,
		47.511040, 43.946671, 49.669373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.023743, 43.634491, 50.314880>,  <47.614361, 43.266403, 49.798061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.023743, 43.634491, 50.314880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.734230, 43.882912, 50.194595>,  <47.560520, 44.031963, 50.122425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.734230, 43.882912, 50.194595>,  <48.023743, 43.634491, 50.314880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.734230, 43.882912, 50.194595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232688, 0.190598, 0.953692,
		0.649610, 0.760239, 0.006561,
		-0.723784, 0.621054, -0.300713,
		47.517094, 44.069229, 50.104382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.020397, 44.133717, 50.764530>,  <48.023743, 43.634491, 50.314880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.020397, 44.133717, 50.764530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.660706, 44.171089, 50.593575>,  <47.444893, 44.193512, 50.491001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.660706, 44.171089, 50.593575>,  <48.020397, 44.133717, 50.764530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.660706, 44.171089, 50.593575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422853, 0.064907, 0.903871,
		0.112191, 0.993508, -0.018858,
		-0.899227, 0.093432, -0.427390,
		47.390938, 44.199120, 50.465359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.797596, 44.644501, 51.111343>,  <48.020397, 44.133717, 50.764530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.797596, 44.644501, 51.111343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.457458, 44.498940, 50.959297>,  <47.253376, 44.411602, 50.868069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.457458, 44.498940, 50.959297>,  <47.797596, 44.644501, 51.111343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.457458, 44.498940, 50.959297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437841, 0.088594, 0.894677,
		-0.291901, 0.927213, -0.234668,
		-0.850346, -0.363905, -0.380112,
		47.202354, 44.389767, 50.845264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.270393, 44.961533, 51.482304>,  <47.797596, 44.644501, 51.111343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.270393, 44.961533, 51.482304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.077538, 44.646515, 51.328773>,  <46.961823, 44.457504, 51.236656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.077538, 44.646515, 51.328773>,  <47.270393, 44.961533, 51.482304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.077538, 44.646515, 51.328773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576918, -0.044306, 0.815600,
		-0.659324, 0.614667, -0.432986,
		-0.482138, -0.787542, -0.383825,
		46.932896, 44.410252, 51.213627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.604416, 45.146072, 51.650520>,  <47.270393, 44.961533, 51.482304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.604416, 45.146072, 51.650520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.585197, 44.752800, 51.580032>,  <46.573666, 44.516838, 51.537739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.585197, 44.752800, 51.580032>,  <46.604416, 45.146072, 51.650520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.585197, 44.752800, 51.580032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734141, -0.084875, 0.673671,
		-0.677295, 0.161737, -0.717713,
		-0.048042, -0.983177, -0.176223,
		46.570786, 44.457848, 51.527164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.937084, 45.022015, 51.433693>,  <46.604416, 45.146072, 51.650520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.937084, 45.022015, 51.433693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.100578, 44.680130, 51.561691>,  <46.198673, 44.474998, 51.638489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.100578, 44.680130, 51.561691>,  <45.937084, 45.022015, 51.433693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.100578, 44.680130, 51.561691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768807, -0.133516, 0.625387,
		-0.491804, -0.501632, -0.711684,
		0.408735, -0.854716, 0.319995,
		46.223198, 44.423714, 51.657688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.443176, 44.620171, 51.595043>,  <45.937084, 45.022015, 51.433693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.443176, 44.620171, 51.595043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.713844, 44.392532, 51.781914>,  <45.876244, 44.255951, 51.894035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.713844, 44.392532, 51.781914>,  <45.443176, 44.620171, 51.595043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.713844, 44.392532, 51.781914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650965, -0.165914, 0.740755,
		-0.344048, -0.805360, -0.482729,
		0.676665, -0.569094, 0.467178,
		45.916843, 44.221806, 51.922066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.179607, 43.959450, 51.669979>,  <45.443176, 44.620171, 51.595043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.179607, 43.959450, 51.669979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.449081, 44.026947, 51.957779>,  <45.610767, 44.067444, 52.130459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.449081, 44.026947, 51.957779>,  <45.179607, 43.959450, 51.669979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.449081, 44.026947, 51.957779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717237, -0.085338, 0.691584,
		0.178098, -0.981959, 0.063536,
		0.673686, 0.168740, 0.719496,
		45.651188, 44.077568, 52.173626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.828030, 43.684559, 52.251774>,  <45.179607, 43.959450, 51.669979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.828030, 43.684559, 52.251774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.138657, 43.867722, 52.424870>,  <45.325031, 43.977619, 52.528728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.138657, 43.867722, 52.424870>,  <44.828030, 43.684559, 52.251774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.138657, 43.867722, 52.424870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500591, 0.031389, 0.865115,
		0.382560, -0.888445, 0.253601,
		0.776567, 0.457908, 0.432739,
		45.371628, 44.005093, 52.554691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.960262, 43.258129, 52.929184>,  <44.828030, 43.684559, 52.251774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.960262, 43.258129, 52.929184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.101601, 43.631866, 52.947720>,  <45.186405, 43.856110, 52.958839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.101601, 43.631866, 52.947720>,  <44.960262, 43.258129, 52.929184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.101601, 43.631866, 52.947720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656684, 0.212456, 0.723622,
		0.666267, -0.286119, 0.688639,
		0.353347, 0.934344, 0.046337,
		45.207603, 43.912170, 52.961620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.204296, 43.415581, 53.660198>,  <44.960262, 43.258129, 52.929184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.204296, 43.415581, 53.660198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.216972, 43.800888, 53.553535>,  <45.224579, 44.032074, 53.489540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.216972, 43.800888, 53.553535>,  <45.204296, 43.415581, 53.660198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.216972, 43.800888, 53.553535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517397, 0.244074, 0.820200,
		0.855159, 0.111971, 0.506129,
		0.031694, 0.963271, -0.266655,
		45.226482, 44.089870, 53.473537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.412437, 43.814823, 54.327568>,  <45.204296, 43.415581, 53.660198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.412437, 43.814823, 54.327568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.215073, 44.053642, 54.074562>,  <45.096653, 44.196934, 53.922760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.215073, 44.053642, 54.074562>,  <45.412437, 43.814823, 54.327568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.215073, 44.053642, 54.074562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551718, 0.347345, 0.758260,
		0.672419, 0.723106, 0.158017,
		-0.493416, 0.597050, -0.632512,
		45.067047, 44.232758, 53.884808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.471283, 44.585987, 54.576492>,  <45.412437, 43.814823, 54.327568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.471283, 44.585987, 54.576492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.146942, 44.578438, 54.342514>,  <44.952335, 44.573906, 54.202129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.146942, 44.578438, 54.342514>,  <45.471283, 44.585987, 54.576492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.146942, 44.578438, 54.342514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521966, 0.475376, 0.708216,
		0.264698, 0.879580, -0.395314,
		-0.810855, -0.018877, -0.584942,
		44.903687, 44.572773, 54.167030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.296204, 45.264530, 54.579311>,  <45.471283, 44.585987, 54.576492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.296204, 45.264530, 54.579311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.986786, 45.041550, 54.458729>,  <44.801136, 44.907761, 54.386379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.986786, 45.041550, 54.458729>,  <45.296204, 45.264530, 54.579311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.986786, 45.041550, 54.458729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594301, 0.472874, 0.650536,
		-0.220093, 0.682373, -0.697084,
		-0.773541, -0.557456, -0.301459,
		44.754723, 44.874313, 54.368290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.724159, 45.680679, 54.358852>,  <45.296204, 45.264530, 54.579311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.724159, 45.680679, 54.358852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.559898, 45.327492, 54.449829>,  <44.461342, 45.115582, 54.504417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.559898, 45.327492, 54.449829>,  <44.724159, 45.680679, 54.358852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.559898, 45.327492, 54.449829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665608, 0.460787, 0.587062,
		-0.623160, 0.089692, -0.776935,
		-0.410656, -0.882967, 0.227445,
		44.436703, 45.062603, 54.518063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.014427, 45.847198, 54.411621>,  <44.724159, 45.680679, 54.358852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.014427, 45.847198, 54.411621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.039719, 45.495712, 54.600880>,  <44.054893, 45.284821, 54.714436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.039719, 45.495712, 54.600880>,  <44.014427, 45.847198, 54.411621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.039719, 45.495712, 54.600880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695957, 0.300970, 0.651967,
		-0.715294, -0.370513, -0.592516,
		0.063233, -0.878714, 0.473143,
		44.058689, 45.232098, 54.742821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.271584, 45.553024, 54.483376>,  <44.014427, 45.847198, 54.411621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.271584, 45.553024, 54.483376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.483040, 45.358604, 54.761738>,  <43.609913, 45.241951, 54.928757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.483040, 45.358604, 54.761738>,  <43.271584, 45.553024, 54.483376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.483040, 45.358604, 54.761738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651546, 0.293137, 0.699685,
		-0.544081, -0.823300, -0.161721,
		0.528644, -0.486053, 0.695908,
		43.641632, 45.212788, 54.970509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.799854, 45.258190, 54.958080>,  <43.271584, 45.553024, 54.483376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.799854, 45.258190, 54.958080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.127407, 45.233627, 55.186348>,  <43.323940, 45.218891, 55.323307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.127407, 45.233627, 55.186348>,  <42.799854, 45.258190, 54.958080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.127407, 45.233627, 55.186348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565984, 0.078823, 0.820640,
		-0.095376, -0.994995, 0.029791,
		0.818881, -0.061408, 0.570669,
		43.373070, 45.215206, 55.357548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.307686, 44.715569, 54.797462>,  <42.799854, 45.258190, 54.958080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.307686, 44.715569, 54.797462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.931946, 44.827896, 54.718704>,  <41.706501, 44.895294, 54.671448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.931946, 44.827896, 54.718704>,  <42.307686, 44.715569, 54.797462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.931946, 44.827896, 54.718704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194411, -0.036971, -0.980223,
		-0.282545, -0.959049, -0.019866,
		-0.939347, 0.280819, -0.196895,
		41.650143, 44.912140, 54.659637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.040394, 44.164993, 54.290844>,  <42.307686, 44.715569, 54.797462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.040394, 44.164993, 54.290844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.830902, 44.505470, 54.277081>,  <41.705208, 44.709755, 54.268822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.830902, 44.505470, 54.277081>,  <42.040394, 44.164993, 54.290844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.830902, 44.505470, 54.277081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072800, 0.004474, -0.997337,
		-0.848769, -0.524838, -0.064310,
		-0.523728, 0.851190, -0.034410,
		41.673782, 44.760826, 54.266758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538105, 44.010948, 53.796391>,  <42.040394, 44.164993, 54.290844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538105, 44.010948, 53.796391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.546082, 44.410210, 53.819336>,  <41.550869, 44.649765, 53.833103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.546082, 44.410210, 53.819336>,  <41.538105, 44.010948, 53.796391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546082, 44.410210, 53.819336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090736, 0.055334, -0.994336,
		-0.995675, 0.025036, -0.089465,
		0.019943, 0.998154, 0.057366,
		41.552063, 44.709656, 53.836544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074593, 44.261311, 53.212627>,  <41.538105, 44.010948, 53.796391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074593, 44.261311, 53.212627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.340454, 44.537796, 53.326092>,  <41.499969, 44.703686, 53.394169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.340454, 44.537796, 53.326092>,  <41.074593, 44.261311, 53.212627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.340454, 44.537796, 53.326092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223476, 0.178355, -0.958252,
		-0.712949, 0.700295, -0.035925,
		0.664652, 0.691214, 0.283657,
		41.539848, 44.745159, 53.411190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906464, 44.702293, 52.752430>,  <41.074593, 44.261311, 53.212627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906464, 44.702293, 52.752430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.269753, 44.806725, 52.883255>,  <41.487724, 44.869385, 52.961750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.269753, 44.806725, 52.883255>,  <40.906464, 44.702293, 52.752430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.269753, 44.806725, 52.883255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318906, 0.074274, -0.944872,
		-0.270979, 0.962456, -0.015802,
		0.908223, 0.261079, 0.327059,
		41.542221, 44.885048, 52.981373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 0.000000, 88.400002>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 88.400002, 0.000000>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
