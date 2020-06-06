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
	<23.925009, 35.208759, 35.004471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.180922, 34.925404, 34.885227>,  <24.334469, 34.755390, 34.813683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.180922, 34.925404, 34.885227>,  <23.925009, 35.208759, 35.004471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.180922, 34.925404, 34.885227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578338, 0.699200, -0.420292,
		0.506164, 0.096491, 0.857022,
		0.639784, -0.708385, -0.298106,
		24.372856, 34.712887, 34.795795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.660168, 35.540493, 35.071758>,  <23.925009, 35.208759, 35.004471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.660168, 35.540493, 35.071758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.657690, 35.224689, 34.826275>,  <24.656204, 35.035206, 34.678986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.657690, 35.224689, 34.826275>,  <24.660168, 35.540493, 35.071758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.657690, 35.224689, 34.826275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616597, 0.480147, -0.623913,
		0.787255, -0.382273, 0.483836,
		-0.006193, -0.789510, -0.613706,
		24.655832, 34.987835, 34.642162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.342678, 35.392399, 34.935818>,  <24.660168, 35.540493, 35.071758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.342678, 35.392399, 34.935818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.116926, 35.279736, 34.625427>,  <24.981476, 35.212139, 34.439194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.116926, 35.279736, 34.625427>,  <25.342678, 35.392399, 34.935818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.116926, 35.279736, 34.625427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539551, 0.585575, -0.604968,
		0.624789, -0.760112, -0.178516,
		-0.564378, -0.281659, -0.775980,
		24.947613, 35.195240, 34.392632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.737923, 35.293701, 34.314171>,  <25.342678, 35.392399, 34.935818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.737923, 35.293701, 34.314171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.358685, 35.344555, 34.197586>,  <25.131142, 35.375069, 34.127636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.358685, 35.344555, 34.197586>,  <25.737923, 35.293701, 34.314171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.358685, 35.344555, 34.197586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311713, 0.552719, -0.772875,
		0.062837, -0.823613, -0.563661,
		-0.948096, 0.127135, -0.291462,
		25.074255, 35.382694, 34.110146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.669975, 34.990742, 33.690765>,  <25.737923, 35.293701, 34.314171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.669975, 34.990742, 33.690765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.403561, 35.288002, 33.716446>,  <25.243711, 35.466358, 33.731853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.403561, 35.288002, 33.716446>,  <25.669975, 34.990742, 33.690765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.403561, 35.288002, 33.716446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471051, 0.485782, -0.736293,
		-0.578363, -0.460158, -0.673611,
		-0.666039, 0.743149, 0.064201,
		25.203749, 35.510948, 33.735706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.204741, 35.017731, 33.060860>,  <25.669975, 34.990742, 33.690765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.204741, 35.017731, 33.060860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.298035, 35.349735, 33.263515>,  <25.354012, 35.548939, 33.385109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.298035, 35.349735, 33.263515>,  <25.204741, 35.017731, 33.060860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.298035, 35.349735, 33.263515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467494, 0.361144, -0.806861,
		-0.852672, 0.425041, -0.303793,
		0.233236, 0.830009, 0.506642,
		25.368006, 35.598740, 33.415508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.013248, 35.697826, 32.675694>,  <25.204741, 35.017731, 33.060860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.013248, 35.697826, 32.675694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.314966, 35.837311, 32.898201>,  <25.495996, 35.921001, 33.031708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.314966, 35.837311, 32.898201>,  <25.013248, 35.697826, 32.675694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.314966, 35.837311, 32.898201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307500, 0.560961, -0.768613,
		-0.580070, 0.750816, 0.315903,
		0.754296, 0.348709, 0.556272,
		25.541256, 35.941925, 33.065083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.951794, 36.424694, 32.686333>,  <25.013248, 35.697826, 32.675694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.951794, 36.424694, 32.686333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.338810, 36.328335, 32.716885>,  <25.571020, 36.270519, 32.735218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.338810, 36.328335, 32.716885>,  <24.951794, 36.424694, 32.686333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.338810, 36.328335, 32.716885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199466, 0.542370, -0.816118,
		0.155172, 0.804862, 0.572816,
		0.967541, -0.240896, 0.076382,
		25.629072, 36.256065, 32.739799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.224924, 36.997234, 32.443764>,  <24.951794, 36.424694, 32.686333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.224924, 36.997234, 32.443764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.509867, 36.719425, 32.403404>,  <25.680832, 36.552738, 32.379189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.509867, 36.719425, 32.403404>,  <25.224924, 36.997234, 32.443764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.509867, 36.719425, 32.403404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200305, 0.338983, -0.919222,
		0.672626, 0.634604, 0.380594,
		0.712357, -0.694528, -0.100894,
		25.723574, 36.511066, 32.373135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.732117, 37.264423, 31.971382>,  <25.224924, 36.997234, 32.443764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.732117, 37.264423, 31.971382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.751213, 36.864891, 31.968164>,  <25.762671, 36.625172, 31.966234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.751213, 36.864891, 31.968164>,  <25.732117, 37.264423, 31.971382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.751213, 36.864891, 31.968164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014314, 0.008738, -0.999859,
		0.998757, 0.047621, 0.014714,
		0.047743, -0.998827, -0.008046,
		25.765535, 36.565243, 31.965752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.274118, 37.093590, 31.522125>,  <25.732117, 37.264423, 31.971382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.274118, 37.093590, 31.522125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.062878, 36.753967, 31.528067>,  <25.936134, 36.550194, 31.531631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.062878, 36.753967, 31.528067>,  <26.274118, 37.093590, 31.522125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.062878, 36.753967, 31.528067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231812, -0.160968, -0.959350,
		0.816930, -0.503189, 0.281828,
		-0.528100, -0.849052, 0.014854,
		25.904448, 36.499252, 31.532522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.714550, 36.489330, 31.359320>,  <26.274118, 37.093590, 31.522125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.714550, 36.489330, 31.359320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.326315, 36.435310, 31.279600>,  <26.093374, 36.402901, 31.231770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.326315, 36.435310, 31.279600>,  <26.714550, 36.489330, 31.359320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.326315, 36.435310, 31.279600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222977, -0.192163, -0.955696,
		0.090765, -0.972027, 0.216623,
		-0.970589, -0.135046, -0.199298,
		26.035139, 36.394798, 31.219810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.617754, 35.819080, 31.264538>,  <26.714550, 36.489330, 31.359320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.617754, 35.819080, 31.264538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349934, 36.029240, 31.054523>,  <26.189241, 36.155334, 30.928514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349934, 36.029240, 31.054523>,  <26.617754, 35.819080, 31.264538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.349934, 36.029240, 31.054523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253846, -0.502448, -0.826504,
		-0.698044, -0.686664, 0.203045,
		-0.669551, 0.525394, -0.525037,
		26.149069, 36.186859, 30.897013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.054419, 35.471272, 30.901268>,  <26.617754, 35.819080, 31.264538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.054419, 35.471272, 30.901268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.093046, 35.809574, 30.691362>,  <26.116222, 36.012554, 30.565418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.093046, 35.809574, 30.691362>,  <26.054419, 35.471272, 30.901268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.093046, 35.809574, 30.691362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113831, -0.533153, -0.838326,
		-0.988796, 0.021222, -0.147759,
		0.096569, 0.845752, -0.524764,
		26.122017, 36.063301, 30.533934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.418234, 35.851238, 30.852512>,  <26.054419, 35.471272, 30.901268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.418234, 35.851238, 30.852512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.625555, 35.957275, 30.527283>,  <25.749947, 36.020897, 30.332146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.625555, 35.957275, 30.527283>,  <25.418234, 35.851238, 30.852512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.625555, 35.957275, 30.527283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578395, -0.591657, -0.561607,
		-0.629939, 0.761359, -0.153327,
		0.518301, 0.265095, -0.813074,
		25.781046, 36.036804, 30.283361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.964666, 35.968697, 31.439079>,  <25.418234, 35.851238, 30.852512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.964666, 35.968697, 31.439079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.345783, 36.036213, 31.338125>,  <25.574453, 36.076725, 31.277554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.345783, 36.036213, 31.338125>,  <24.964666, 35.968697, 31.439079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.345783, 36.036213, 31.338125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239746, 0.091812, 0.966484,
		0.186310, -0.981366, 0.047010,
		0.952791, 0.168795, -0.252384,
		25.631620, 36.086849, 31.262409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.307865, 35.446621, 31.787960>,  <24.964666, 35.968697, 31.439079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.307865, 35.446621, 31.787960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.542662, 35.752277, 31.680984>,  <25.683540, 35.935673, 31.616798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.542662, 35.752277, 31.680984>,  <25.307865, 35.446621, 31.787960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.542662, 35.752277, 31.680984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177078, 0.201156, 0.963421,
		0.789990, -0.612878, -0.017236,
		0.586992, 0.764144, -0.267439,
		25.718760, 35.981522, 31.600754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.949474, 35.256382, 32.003159>,  <25.307865, 35.446621, 31.787960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.949474, 35.256382, 32.003159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.894897, 35.651409, 31.971928>,  <25.862150, 35.888424, 31.953188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.894897, 35.651409, 31.971928>,  <25.949474, 35.256382, 32.003159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.894897, 35.651409, 31.971928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168882, 0.100853, 0.980463,
		0.976147, 0.120591, -0.180542,
		-0.136443, 0.987566, -0.078082,
		25.853964, 35.947678, 31.948503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.587814, 35.529770, 32.204807>,  <25.949474, 35.256382, 32.003159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.587814, 35.529770, 32.204807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.319313, 35.820583, 32.262558>,  <26.158213, 35.995071, 32.297207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.319313, 35.820583, 32.262558>,  <26.587814, 35.529770, 32.204807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.319313, 35.820583, 32.262558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106637, -0.098030, 0.989454,
		0.733516, 0.679571, -0.011725,
		-0.671255, 0.727031, 0.144374,
		26.117937, 36.038692, 32.305870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.895576, 36.024410, 32.736942>,  <26.587814, 35.529770, 32.204807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.895576, 36.024410, 32.736942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.499435, 36.078758, 32.726017>,  <26.261751, 36.111366, 32.719463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.499435, 36.078758, 32.726017>,  <26.895576, 36.024410, 32.736942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.499435, 36.078758, 32.726017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022231, 0.038775, 0.999001,
		0.136790, 0.989968, -0.035381,
		-0.990351, 0.135867, -0.027312,
		26.202330, 36.119518, 32.717823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.846243, 36.188950, 33.389526>,  <26.895576, 36.024410, 32.736942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.846243, 36.188950, 33.389526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.469019, 36.232090, 33.263668>,  <26.242685, 36.257977, 33.188152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.469019, 36.232090, 33.263668>,  <26.846243, 36.188950, 33.389526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.469019, 36.232090, 33.263668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320957, -0.046753, 0.945939,
		0.087312, 0.993067, 0.078707,
		-0.943061, 0.107853, -0.314650,
		26.186100, 36.264446, 33.169273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.522667, 36.305981, 34.021549>,  <26.846243, 36.188950, 33.389526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.522667, 36.305981, 34.021549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.231710, 36.240887, 33.754890>,  <26.057137, 36.201832, 33.594894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.231710, 36.240887, 33.754890>,  <26.522667, 36.305981, 34.021549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.231710, 36.240887, 33.754890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653226, -0.133434, 0.745313,
		-0.210240, 0.977606, -0.009242,
		-0.727389, -0.162732, -0.666651,
		26.013494, 36.192066, 33.554893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.814602, 36.519627, 34.257305>,  <26.522667, 36.305981, 34.021549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.814602, 36.519627, 34.257305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.708694, 36.231506, 34.000847>,  <25.645151, 36.058632, 33.846973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.708694, 36.231506, 34.000847>,  <25.814602, 36.519627, 34.257305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.708694, 36.231506, 34.000847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743777, -0.270628, 0.611193,
		-0.613755, 0.638690, -0.464091,
		-0.264767, -0.720302, -0.641142,
		25.629265, 36.015415, 33.808506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.089613, 36.610107, 33.972054>,  <25.814602, 36.519627, 34.257305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.089613, 36.610107, 33.972054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.197979, 36.226616, 33.937550>,  <25.262999, 35.996521, 33.916847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.197979, 36.226616, 33.937550>,  <25.089613, 36.610107, 33.972054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.197979, 36.226616, 33.937550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889787, -0.283606, 0.357556,
		-0.367264, -0.020113, -0.929899,
		0.270916, -0.958730, -0.086262,
		25.279255, 35.938995, 33.911671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.511557, 36.199539, 34.269779>,  <25.089613, 36.610107, 33.972054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.511557, 36.199539, 34.269779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.687670, 36.156704, 33.913200>,  <24.793337, 36.131004, 33.699253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.687670, 36.156704, 33.913200>,  <24.511557, 36.199539, 34.269779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.687670, 36.156704, 33.913200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217486, -0.976014, 0.009827,
		-0.871121, 0.189551, -0.453011,
		0.440282, -0.107084, -0.891451,
		24.819754, 36.124580, 33.645763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.961323, 35.976852, 33.910206>,  <24.511557, 36.199539, 34.269779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.961323, 35.976852, 33.910206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.327497, 35.855217, 33.804756>,  <24.547203, 35.782234, 33.741486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.327497, 35.855217, 33.804756>,  <23.961323, 35.976852, 33.910206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.327497, 35.855217, 33.804756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256964, -0.945783, 0.198652,
		-0.309744, -0.114111, -0.943948,
		0.915439, -0.304092, -0.263628,
		24.602129, 35.763988, 33.725666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.908335, 35.341042, 33.585918>,  <23.961323, 35.976852, 33.910206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.908335, 35.341042, 33.585918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.267267, 35.356293, 33.761803>,  <24.482626, 35.365444, 33.867332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.267267, 35.356293, 33.761803>,  <23.908335, 35.341042, 33.585918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.267267, 35.356293, 33.761803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178736, -0.879525, 0.441010,
		0.403550, -0.474323, -0.782410,
		0.897330, 0.038125, 0.439711,
		24.536467, 35.367729, 33.893715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.300882, 34.654713, 33.465427>,  <23.908335, 35.341042, 33.585918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.300882, 34.654713, 33.465427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.493444, 34.819790, 33.774731>,  <24.608982, 34.918835, 33.960312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.493444, 34.819790, 33.774731>,  <24.300882, 34.654713, 33.465427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.493444, 34.819790, 33.774731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201365, -0.806546, 0.555820,
		0.853053, -0.423283, -0.305174,
		0.481406, 0.412693, 0.773261,
		24.637867, 34.943596, 34.006710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.688774, 34.039574, 33.761703>,  <24.300882, 34.654713, 33.465427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.688774, 34.039574, 33.761703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.668299, 34.345810, 34.018219>,  <24.656013, 34.529552, 34.172131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.668299, 34.345810, 34.018219>,  <24.688774, 34.039574, 33.761703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.668299, 34.345810, 34.018219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272686, -0.628447, 0.728489,
		0.960740, -0.137580, 0.240936,
		-0.051190, 0.765588, 0.641291,
		24.652943, 34.575485, 34.210606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.560783, 33.477608, 34.289078>,  <24.688774, 34.039574, 33.761703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.560783, 33.477608, 34.289078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.733053, 33.597179, 34.629704>,  <24.836416, 33.668922, 34.834080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.733053, 33.597179, 34.629704>,  <24.560783, 33.477608, 34.289078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.733053, 33.597179, 34.629704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344418, -0.926580, 0.151078,
		0.834202, 0.228228, -0.502015,
		0.430677, 0.298933, 0.851561,
		24.862257, 33.686859, 34.885174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.189022, 33.278130, 34.136223>,  <24.560783, 33.477608, 34.289078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.189022, 33.278130, 34.136223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.119078, 33.330692, 34.526535>,  <25.077112, 33.362228, 34.760723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.119078, 33.330692, 34.526535>,  <25.189022, 33.278130, 34.136223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.119078, 33.330692, 34.526535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419450, -0.886681, 0.194572,
		0.890778, 0.443316, 0.099926,
		-0.174859, 0.131406, 0.975785,
		25.066620, 33.370113, 34.819271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.742979, 33.012642, 33.874043>,  <25.189022, 33.278130, 34.136223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.742979, 33.012642, 33.874043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.029350, 32.823421, 34.079437>,  <26.201172, 32.709888, 34.202675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.029350, 32.823421, 34.079437>,  <25.742979, 33.012642, 33.874043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.029350, 32.823421, 34.079437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129114, -0.812495, -0.568491,
		0.686134, 0.340698, -0.642764,
		0.715926, -0.473051, 0.513491,
		26.244127, 32.681507, 34.233486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.169510, 32.650909, 33.363026>,  <25.742979, 33.012642, 33.874043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.169510, 32.650909, 33.363026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.244396, 32.469978, 33.711819>,  <26.289328, 32.361420, 33.921093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.244396, 32.469978, 33.711819>,  <26.169510, 32.650909, 33.363026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.244396, 32.469978, 33.711819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115071, -0.891661, -0.437834,
		0.975556, -0.018371, -0.218982,
		0.187214, -0.452330, 0.871979,
		26.300560, 32.334278, 33.973412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.782314, 32.267845, 33.297234>,  <26.169510, 32.650909, 33.363026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.782314, 32.267845, 33.297234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.589619, 32.107315, 33.608841>,  <26.474001, 32.010998, 33.795807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.589619, 32.107315, 33.608841>,  <26.782314, 32.267845, 33.297234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.589619, 32.107315, 33.608841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303990, -0.757234, -0.578088,
		0.821900, -0.515300, 0.242789,
		-0.481737, -0.401325, 0.779017,
		26.445097, 31.986917, 33.842545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.987270, 31.531660, 33.411720>,  <26.782314, 32.267845, 33.297234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.987270, 31.531660, 33.411720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.614235, 31.634212, 33.513348>,  <26.390413, 31.695744, 33.574322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.614235, 31.634212, 33.513348>,  <26.987270, 31.531660, 33.411720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.614235, 31.634212, 33.513348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358537, -0.739131, -0.570207,
		0.041598, -0.622860, 0.781226,
		-0.932588, 0.256379, 0.254065,
		26.334459, 31.711126, 33.589569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.312355, 31.497076, 34.072636>,  <26.987270, 31.531660, 33.411720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.312355, 31.497076, 34.072636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969744, 31.517195, 34.278091>,  <26.764177, 31.529266, 34.401363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969744, 31.517195, 34.278091>,  <27.312355, 31.497076, 34.072636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.969744, 31.517195, 34.278091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146520, -0.977988, -0.148566,
		0.494861, -0.202510, 0.845046,
		-0.856530, 0.050296, 0.513640,
		26.712784, 31.532284, 34.432182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.246805, 30.923660, 34.652584>,  <27.312355, 31.497076, 34.072636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.246805, 30.923660, 34.652584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.874878, 31.043806, 34.567524>,  <26.651722, 31.115892, 34.516487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.874878, 31.043806, 34.567524>,  <27.246805, 30.923660, 34.652584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.874878, 31.043806, 34.567524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299151, -0.953423, -0.038636,
		-0.214354, 0.027691, 0.976364,
		-0.929818, 0.300362, -0.212654,
		26.595932, 31.133915, 34.503727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.756338, 30.605307, 35.139904>,  <27.246805, 30.923660, 34.652584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.756338, 30.605307, 35.139904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.535587, 30.697693, 34.819382>,  <26.403137, 30.753124, 34.627068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.535587, 30.697693, 34.819382>,  <26.756338, 30.605307, 35.139904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.535587, 30.697693, 34.819382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356715, -0.933918, -0.023514,
		-0.753781, 0.272860, 0.597798,
		-0.551878, 0.230967, -0.801302,
		26.370024, 30.766983, 34.578991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.078074, 30.313951, 35.298870>,  <26.756338, 30.605307, 35.139904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.078074, 30.313951, 35.298870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.107862, 30.355331, 34.902134>,  <26.125736, 30.380159, 34.664093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.107862, 30.355331, 34.902134>,  <26.078074, 30.313951, 35.298870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.107862, 30.355331, 34.902134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329221, -0.936289, -0.122377,
		-0.941312, 0.335649, -0.035668,
		0.074471, 0.103452, -0.991843,
		26.130203, 30.386368, 34.604580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.453173, 30.124840, 35.068398>,  <26.078074, 30.313951, 35.298870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.453173, 30.124840, 35.068398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.724213, 30.070486, 34.779289>,  <25.886837, 30.037874, 34.605824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.724213, 30.070486, 34.779289>,  <25.453173, 30.124840, 35.068398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.724213, 30.070486, 34.779289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380132, -0.906030, -0.186038,
		-0.629568, 0.400806, -0.665581,
		0.677601, -0.135885, -0.722767,
		25.927492, 30.029720, 34.562458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.090336, 29.848104, 34.470642>,  <25.453173, 30.124840, 35.068398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.090336, 29.848104, 34.470642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.474062, 29.737438, 34.448120>,  <25.704298, 29.671038, 34.434605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.474062, 29.737438, 34.448120>,  <25.090336, 29.848104, 34.470642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.474062, 29.737438, 34.448120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281332, -0.919859, -0.273334,
		0.023826, 0.278055, -0.960270,
		0.959315, -0.276667, -0.056309,
		25.761856, 29.654438, 34.431229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.311708, 29.650845, 33.703350>,  <25.090336, 29.848104, 34.470642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.311708, 29.650845, 33.703350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.484816, 29.467081, 34.013615>,  <25.588680, 29.356823, 34.199776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.484816, 29.467081, 34.013615>,  <25.311708, 29.650845, 33.703350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.484816, 29.467081, 34.013615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525870, -0.827506, -0.196711,
		0.732238, -0.322769, -0.599707,
		0.432769, -0.459406, 0.775665,
		25.614647, 29.329260, 34.246315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.952957, 29.901278, 33.268322>,  <25.311708, 29.650845, 33.703350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.952957, 29.901278, 33.268322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.940399, 29.949940, 33.665154>,  <25.932865, 29.979137, 33.903252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.940399, 29.949940, 33.665154>,  <25.952957, 29.901278, 33.268322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.940399, 29.949940, 33.665154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131447, 0.984447, -0.116562,
		-0.990826, 0.126746, -0.046896,
		-0.031393, 0.121657, 0.992076,
		25.930981, 29.986437, 33.962776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.013830, 30.646147, 33.324276>,  <25.952957, 29.901278, 33.268322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.013830, 30.646147, 33.324276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.034126, 30.554735, 33.713161>,  <26.046303, 30.499889, 33.946491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.034126, 30.554735, 33.713161>,  <26.013830, 30.646147, 33.324276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.034126, 30.554735, 33.713161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270678, 0.940179, 0.206872,
		-0.961332, 0.252661, 0.109561,
		0.050739, -0.228528, 0.972214,
		26.049349, 30.486177, 34.004826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.700409, 31.186285, 33.565460>,  <26.013830, 30.646147, 33.324276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.700409, 31.186285, 33.565460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.903080, 31.053572, 33.883755>,  <26.024683, 30.973944, 34.074730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.903080, 31.053572, 33.883755>,  <25.700409, 31.186285, 33.565460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.903080, 31.053572, 33.883755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156803, 0.943054, 0.293364,
		-0.847755, -0.023868, 0.529851,
		0.506680, -0.331783, 0.795736,
		26.055084, 30.954037, 34.122475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.446426, 31.510300, 34.155666>,  <25.700409, 31.186285, 33.565460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.446426, 31.510300, 34.155666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.825022, 31.410093, 34.237057>,  <26.052179, 31.349970, 34.285892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.825022, 31.410093, 34.237057>,  <25.446426, 31.510300, 34.155666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.825022, 31.410093, 34.237057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194085, 0.945536, 0.261330,
		-0.257865, -0.207853, 0.943559,
		0.946487, -0.250518, 0.203479,
		26.108967, 31.334938, 34.298100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.673409, 31.555128, 34.800095>,  <25.446426, 31.510300, 34.155666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.673409, 31.555128, 34.800095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.994387, 31.606680, 34.567036>,  <26.186974, 31.637611, 34.427200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.994387, 31.606680, 34.567036>,  <25.673409, 31.555128, 34.800095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.994387, 31.606680, 34.567036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123100, 0.919645, 0.372960,
		0.583891, -0.371003, 0.722100,
		0.802445, 0.128878, -0.582643,
		26.235121, 31.645344, 34.392242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.461483, 31.732241, 35.107277>,  <25.673409, 31.555128, 34.800095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.461483, 31.732241, 35.107277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.430647, 31.905878, 34.748253>,  <26.412146, 32.010059, 34.532837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.430647, 31.905878, 34.748253>,  <26.461483, 31.732241, 35.107277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.430647, 31.905878, 34.748253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484713, 0.803012, 0.346734,
		0.871269, -0.408331, -0.272316,
		-0.077090, 0.434094, -0.897563,
		26.407520, 32.036106, 34.478985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.136915, 31.995291, 34.946293>,  <26.461483, 31.732241, 35.107277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.136915, 31.995291, 34.946293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.865864, 32.203316, 34.738312>,  <26.703234, 32.328133, 34.613522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.865864, 32.203316, 34.738312>,  <27.136915, 31.995291, 34.946293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.865864, 32.203316, 34.738312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534125, 0.834045, 0.138124,
		0.505499, -0.184124, -0.842953,
		-0.677629, 0.520064, -0.519954,
		26.662575, 32.359337, 34.582325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.430803, 32.291386, 34.322979>,  <27.136915, 31.995291, 34.946293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.430803, 32.291386, 34.322979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.116407, 32.516243, 34.425911>,  <26.927771, 32.651157, 34.487671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.116407, 32.516243, 34.425911>,  <27.430803, 32.291386, 34.322979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.116407, 32.516243, 34.425911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574352, 0.817961, -0.032553,
		-0.228785, 0.122211, -0.965775,
		-0.785988, 0.562143, 0.257329,
		26.880611, 32.684887, 34.503109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.331108, 32.816895, 33.963150>,  <27.430803, 32.291386, 34.322979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.331108, 32.816895, 33.963150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.176851, 32.939075, 34.311398>,  <27.084297, 33.012383, 34.520348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.176851, 32.939075, 34.311398>,  <27.331108, 32.816895, 33.963150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.176851, 32.939075, 34.311398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690419, 0.721489, 0.052691,
		-0.612048, 0.621413, -0.489125,
		-0.385641, 0.305451, 0.870621,
		27.061159, 33.030712, 34.572582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.023323, 33.528301, 33.918983>,  <27.331108, 32.816895, 33.963150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.023323, 33.528301, 33.918983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.209381, 33.394039, 34.246635>,  <27.321016, 33.313480, 34.443226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.209381, 33.394039, 34.246635>,  <27.023323, 33.528301, 33.918983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.209381, 33.394039, 34.246635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656200, 0.751821, -0.064551,
		-0.594174, 0.567540, 0.569961,
		0.465143, -0.335654, 0.819132,
		27.348925, 33.293343, 34.492374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.254747, 34.123154, 34.430565>,  <27.023323, 33.528301, 33.918983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.254747, 34.123154, 34.430565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.500032, 33.807610, 34.414196>,  <27.647203, 33.618282, 34.404377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.500032, 33.807610, 34.414196>,  <27.254747, 34.123154, 34.430565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.500032, 33.807610, 34.414196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752407, 0.599083, -0.273832,
		0.240527, 0.137131, 0.960907,
		0.613213, -0.788857, -0.040917,
		27.683996, 33.570953, 34.401920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.818651, 33.890255, 34.933155>,  <27.254747, 34.123154, 34.430565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.818651, 33.890255, 34.933155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.908991, 33.779366, 34.559601>,  <27.963194, 33.712833, 34.335468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.908991, 33.779366, 34.559601>,  <27.818651, 33.890255, 34.933155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.908991, 33.779366, 34.559601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781026, 0.624489, 0.003502,
		0.582229, -0.730179, 0.357558,
		0.225848, -0.277223, -0.933884,
		27.976746, 33.696198, 34.279434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.495388, 33.676731, 34.906216>,  <27.818651, 33.890255, 34.933155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.495388, 33.676731, 34.906216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343544, 33.897255, 34.609043>,  <28.252438, 34.029572, 34.430740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343544, 33.897255, 34.609043>,  <28.495388, 33.676731, 34.906216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.343544, 33.897255, 34.609043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603986, 0.755980, 0.252378,
		0.700782, -0.352916, -0.619963,
		-0.379612, 0.551311, -0.742934,
		28.229660, 34.062649, 34.386162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.113537, 33.946774, 34.600124>,  <28.495388, 33.676731, 34.906216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.113537, 33.946774, 34.600124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.785076, 34.166183, 34.537098>,  <28.587999, 34.297829, 34.499283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.785076, 34.166183, 34.537098>,  <29.113537, 33.946774, 34.600124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.785076, 34.166183, 34.537098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524434, 0.834145, 0.170799,
		0.225119, 0.057620, -0.972626,
		-0.821152, 0.548528, -0.157564,
		28.538731, 34.330742, 34.489830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.171959, 34.347805, 34.062569>,  <29.113537, 33.946774, 34.600124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.171959, 34.347805, 34.062569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926561, 34.531036, 34.319874>,  <28.779322, 34.640976, 34.474258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926561, 34.531036, 34.319874>,  <29.171959, 34.347805, 34.062569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926561, 34.531036, 34.319874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693692, 0.701869, 0.161776,
		-0.377380, 0.545474, -0.748360,
		-0.613495, 0.458080, 0.643262,
		28.742514, 34.668461, 34.512852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.946384, 35.051815, 33.769409>,  <29.171959, 34.347805, 34.062569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.946384, 35.051815, 33.769409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.019806, 35.025761, 34.161751>,  <29.063858, 35.010128, 34.397156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.019806, 35.025761, 34.161751>,  <28.946384, 35.051815, 33.769409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.019806, 35.025761, 34.161751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636997, 0.767842, -0.068215,
		-0.748694, 0.637320, 0.182431,
		0.183553, -0.065136, 0.980849,
		29.074871, 35.006218, 34.456005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.470198, 35.556282, 33.899311>,  <28.946384, 35.051815, 33.769409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.470198, 35.556282, 33.899311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.424635, 35.422207, 34.273407>,  <29.397297, 35.341763, 34.497864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.424635, 35.422207, 34.273407>,  <29.470198, 35.556282, 33.899311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.424635, 35.422207, 34.273407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787732, 0.543160, 0.290610,
		-0.605395, 0.769820, 0.202172,
		-0.113906, -0.335191, 0.935239,
		29.390463, 35.321648, 34.553978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.816998, 35.540535, 33.242085>,  <29.470198, 35.556282, 33.899311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.816998, 35.540535, 33.242085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.079872, 35.413197, 33.515362>,  <30.237597, 35.336792, 33.679329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.079872, 35.413197, 33.515362>,  <29.816998, 35.540535, 33.242085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.079872, 35.413197, 33.515362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749386, -0.373122, 0.546992,
		0.080781, -0.871455, -0.483778,
		0.657187, -0.318350, 0.683198,
		30.277029, 35.317692, 33.720322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.852865, 34.849781, 33.437092>,  <29.816998, 35.540535, 33.242085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.852865, 34.849781, 33.437092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925220, 35.079967, 33.756119>,  <29.968634, 35.218079, 33.947536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925220, 35.079967, 33.756119>,  <29.852865, 34.849781, 33.437092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925220, 35.079967, 33.756119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866289, -0.290715, 0.406235,
		0.465641, -0.764409, 0.445935,
		0.180890, 0.575468, 0.797568,
		29.979488, 35.252609, 33.995388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.415184, 34.720722, 32.943031>,  <29.852865, 34.849781, 33.437092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.415184, 34.720722, 32.943031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648222, 35.029411, 33.045033>,  <30.788046, 35.214626, 33.106232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648222, 35.029411, 33.045033>,  <30.415184, 34.720722, 32.943031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.648222, 35.029411, 33.045033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812165, -0.540756, -0.219022,
		-0.031130, 0.334707, -0.941808,
		0.582596, 0.771722, 0.255004,
		30.823000, 35.260929, 33.121532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879604, 34.914684, 32.481312>,  <30.415184, 34.720722, 32.943031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879604, 34.914684, 32.481312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.071926, 35.029938, 32.812565>,  <31.187319, 35.099091, 33.011318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.071926, 35.029938, 32.812565>,  <30.879604, 34.914684, 32.481312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.071926, 35.029938, 32.812565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862809, -0.323675, -0.388323,
		0.156158, 0.901230, -0.404228,
		0.480806, 0.288132, 0.828134,
		31.216167, 35.116379, 33.061005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456005, 35.460396, 32.375343>,  <30.879604, 34.914684, 32.481312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456005, 35.460396, 32.375343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516670, 35.194889, 32.668304>,  <31.553068, 35.035583, 32.844082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516670, 35.194889, 32.668304>,  <31.456005, 35.460396, 32.375343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516670, 35.194889, 32.668304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664744, -0.479880, -0.572566,
		0.731515, 0.573694, 0.368458,
		0.151662, -0.663770, 0.732399,
		31.562168, 34.995758, 32.888023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.222294, 35.443924, 32.420071>,  <31.456005, 35.460396, 32.375343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.222294, 35.443924, 32.420071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022209, 35.116383, 32.532684>,  <31.902157, 34.919857, 32.600250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022209, 35.116383, 32.532684>,  <32.222294, 35.443924, 32.420071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022209, 35.116383, 32.532684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554551, -0.552653, -0.622131,
		0.665025, -0.155076, 0.730543,
		-0.500215, -0.818856, 0.281531,
		31.872145, 34.870728, 32.617142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708462, 34.925266, 32.607220>,  <32.222294, 35.443924, 32.420071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708462, 34.925266, 32.607220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365410, 34.768219, 32.474365>,  <32.159576, 34.673992, 32.394653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365410, 34.768219, 32.474365>,  <32.708462, 34.925266, 32.607220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365410, 34.768219, 32.474365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511270, -0.581376, -0.632934,
		0.055404, -0.712637, 0.699342,
		-0.857633, -0.392619, -0.332140,
		32.108120, 34.650433, 32.374722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.669468, 34.240238, 32.624916>,  <32.708462, 34.925266, 32.607220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.669468, 34.240238, 32.624916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434750, 34.338493, 32.316284>,  <32.293919, 34.397446, 32.131107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434750, 34.338493, 32.316284>,  <32.669468, 34.240238, 32.624916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434750, 34.338493, 32.316284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539518, -0.591947, -0.598765,
		-0.603814, -0.767632, 0.214824,
		-0.586796, 0.245641, -0.771577,
		32.258709, 34.412186, 32.084812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362480, 33.651688, 32.319839>,  <32.669468, 34.240238, 32.624916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362480, 33.651688, 32.319839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404259, 33.948582, 32.055061>,  <32.429325, 34.126720, 31.896194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404259, 33.948582, 32.055061>,  <32.362480, 33.651688, 32.319839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404259, 33.948582, 32.055061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391702, -0.642489, -0.658618,
		-0.914145, -0.190494, -0.357843,
		0.104447, 0.742240, -0.661945,
		32.435593, 34.171253, 31.856478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119488, 33.370312, 31.805962>,  <32.362480, 33.651688, 32.319839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119488, 33.370312, 31.805962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361595, 33.652241, 31.657972>,  <32.506859, 33.821396, 31.569180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361595, 33.652241, 31.657972>,  <32.119488, 33.370312, 31.805962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361595, 33.652241, 31.657972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210517, -0.589959, -0.779507,
		-0.767680, 0.393926, -0.505460,
		0.605269, 0.704820, -0.369971,
		32.543175, 33.863686, 31.546982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999981, 33.550766, 31.003738>,  <32.119488, 33.370312, 31.805962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.999981, 33.550766, 31.003738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371529, 33.682697, 31.071167>,  <32.594456, 33.761856, 31.111624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371529, 33.682697, 31.071167>,  <31.999981, 33.550766, 31.003738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371529, 33.682697, 31.071167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311314, -0.448553, -0.837785,
		-0.200712, 0.830671, -0.519327,
		0.928869, 0.329827, 0.168569,
		32.650188, 33.781647, 31.121738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221443, 33.477283, 30.390203>,  <31.999981, 33.550766, 31.003738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221443, 33.477283, 30.390203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559570, 33.579929, 30.577642>,  <32.762447, 33.641518, 30.690105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559570, 33.579929, 30.577642>,  <32.221443, 33.477283, 30.390203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559570, 33.579929, 30.577642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534109, -0.385001, -0.752663,
		-0.012734, 0.886523, -0.462509,
		0.845320, 0.256615, 0.468597,
		32.813168, 33.656914, 30.718222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501385, 33.986385, 29.951960>,  <32.221443, 33.477283, 30.390203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501385, 33.986385, 29.951960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792633, 33.829384, 30.176739>,  <32.967381, 33.735184, 30.311605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792633, 33.829384, 30.176739>,  <32.501385, 33.986385, 29.951960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792633, 33.829384, 30.176739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479991, -0.293303, -0.826790,
		0.489335, 0.871733, -0.025164,
		0.728121, -0.392499, 0.561947,
		33.011070, 33.711636, 30.345324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095592, 34.175793, 29.568005>,  <32.501385, 33.986385, 29.951960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095592, 34.175793, 29.568005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197048, 33.870270, 29.805412>,  <33.257919, 33.686954, 29.947857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197048, 33.870270, 29.805412>,  <33.095592, 34.175793, 29.568005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197048, 33.870270, 29.805412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564796, -0.381188, -0.731916,
		0.785286, 0.520857, 0.334713,
		0.253635, -0.763808, 0.593520,
		33.273140, 33.641129, 29.983469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778461, 34.172241, 29.547838>,  <33.095592, 34.175793, 29.568005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778461, 34.172241, 29.547838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679211, 33.811436, 29.689144>,  <33.619659, 33.594952, 29.773928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679211, 33.811436, 29.689144>,  <33.778461, 34.172241, 29.547838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679211, 33.811436, 29.689144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622824, -0.427855, -0.655004,
		0.741971, 0.057495, 0.667962,
		-0.248131, -0.902017, 0.353265,
		33.604771, 33.540833, 29.795124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380020, 33.775391, 29.716200>,  <33.778461, 34.172241, 29.547838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380020, 33.775391, 29.716200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111595, 33.480339, 29.686321>,  <33.950542, 33.303307, 29.668394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111595, 33.480339, 29.686321>,  <34.380020, 33.775391, 29.716200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111595, 33.480339, 29.686321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557081, -0.435179, -0.707304,
		0.489225, -0.516254, 0.702952,
		-0.671058, -0.737632, -0.074695,
		33.910278, 33.259048, 29.663912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839188, 33.177708, 29.634628>,  <34.380020, 33.775391, 29.716200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839188, 33.177708, 29.634628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483959, 33.048374, 29.503918>,  <34.270821, 32.970776, 29.425491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483959, 33.048374, 29.503918>,  <34.839188, 33.177708, 29.634628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483959, 33.048374, 29.503918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455021, -0.517108, -0.724952,
		0.065420, -0.792501, 0.606352,
		-0.888074, -0.323329, -0.326776,
		34.217537, 32.951374, 29.405886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948032, 32.476032, 29.456331>,  <34.839188, 33.177708, 29.634628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948032, 32.476032, 29.456331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641693, 32.617142, 29.241289>,  <34.457890, 32.701809, 29.112263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641693, 32.617142, 29.241289>,  <34.948032, 32.476032, 29.456331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641693, 32.617142, 29.241289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421980, -0.355118, -0.834161,
		-0.485188, -0.865701, 0.123102,
		-0.765850, 0.352778, -0.537608,
		34.411938, 32.722973, 29.080008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651741, 31.831890, 29.043333>,  <34.948032, 32.476032, 29.456331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651741, 31.831890, 29.043333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575809, 32.186363, 28.874268>,  <34.530251, 32.399048, 28.772829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575809, 32.186363, 28.874268>,  <34.651741, 31.831890, 29.043333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575809, 32.186363, 28.874268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378270, -0.331245, -0.864401,
		-0.906023, -0.323969, -0.272336,
		-0.189829, 0.886183, -0.422664,
		34.518860, 32.452217, 28.747469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601555, 31.683340, 28.327551>,  <34.651741, 31.831890, 29.043333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601555, 31.683340, 28.327551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645237, 32.080353, 28.349298>,  <34.671448, 32.318562, 28.362347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645237, 32.080353, 28.349298>,  <34.601555, 31.683340, 28.327551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645237, 32.080353, 28.349298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370347, 0.010133, -0.928838,
		-0.922452, 0.121570, -0.366475,
		0.109205, 0.992531, 0.054370,
		34.677998, 32.378113, 28.365610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294163, 31.885866, 27.696600>,  <34.601555, 31.683340, 28.327551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294163, 31.885866, 27.696600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543541, 32.171528, 27.823912>,  <34.693169, 32.342926, 27.900299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543541, 32.171528, 27.823912>,  <34.294163, 31.885866, 27.696600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543541, 32.171528, 27.823912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339402, 0.119531, -0.933016,
		-0.704363, 0.689707, -0.167864,
		0.623442, 0.714155, 0.318281,
		34.730572, 32.385773, 27.919395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285576, 32.380367, 27.128073>,  <34.294163, 31.885866, 27.696600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285576, 32.380367, 27.128073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621735, 32.452946, 27.332350>,  <34.823429, 32.496490, 27.454916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621735, 32.452946, 27.332350>,  <34.285576, 32.380367, 27.128073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621735, 32.452946, 27.332350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500209, 0.103026, -0.859754,
		-0.208611, 0.977990, -0.004176,
		0.840400, 0.181443, 0.510692,
		34.873856, 32.507378, 27.485558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684479, 32.931969, 26.815567>,  <34.285576, 32.380367, 27.128073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684479, 32.931969, 26.815567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961361, 32.746231, 27.036558>,  <35.127491, 32.634789, 27.169153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961361, 32.746231, 27.036558>,  <34.684479, 32.931969, 26.815567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961361, 32.746231, 27.036558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651740, 0.073402, -0.754882,
		0.309969, 0.882610, 0.353439,
		0.692210, -0.464340, 0.552480,
		35.169025, 32.606930, 27.202303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387627, 33.206528, 26.556019>,  <34.684479, 32.931969, 26.815567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387627, 33.206528, 26.556019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484676, 32.872360, 26.753283>,  <35.542908, 32.671860, 26.871641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484676, 32.872360, 26.753283>,  <35.387627, 33.206528, 26.556019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484676, 32.872360, 26.753283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743662, -0.166277, -0.647548,
		0.622976, 0.523856, 0.580927,
		0.242627, -0.835420, 0.493158,
		35.557465, 32.621735, 26.901230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132095, 33.088261, 26.401005>,  <35.387627, 33.206528, 26.556019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132095, 33.088261, 26.401005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034485, 32.719521, 26.521437>,  <35.975918, 32.498276, 26.593697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034485, 32.719521, 26.521437>,  <36.132095, 33.088261, 26.401005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034485, 32.719521, 26.521437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644637, -0.386142, -0.659800,
		0.724494, 0.033076, 0.688487,
		-0.244031, -0.921846, 0.301080,
		35.961277, 32.442966, 26.611761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724251, 32.711433, 26.591061>,  <36.132095, 33.088261, 26.401005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724251, 32.711433, 26.591061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452694, 32.434204, 26.494106>,  <36.289761, 32.267868, 26.435934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452694, 32.434204, 26.494106>,  <36.724251, 32.711433, 26.591061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452694, 32.434204, 26.494106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626512, -0.374677, -0.683446,
		0.382860, -0.615848, 0.688585,
		-0.678896, -0.693071, -0.242388,
		36.249023, 32.226284, 26.421391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094475, 32.027058, 26.352171>,  <36.724251, 32.711433, 26.591061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094475, 32.027058, 26.352171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715557, 31.965900, 26.239557>,  <36.488209, 31.929205, 26.171989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715557, 31.965900, 26.239557>,  <37.094475, 32.027058, 26.352171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715557, 31.965900, 26.239557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318052, -0.343204, -0.883773,
		0.038501, -0.926733, 0.373742,
		-0.947291, -0.152895, -0.281536,
		36.431370, 31.920033, 26.155096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052402, 31.322294, 26.098925>,  <37.094475, 32.027058, 26.352171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052402, 31.322294, 26.098925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.748112, 31.523472, 25.934807>,  <36.565536, 31.644178, 25.836336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.748112, 31.523472, 25.934807>,  <37.052402, 31.322294, 26.098925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748112, 31.523472, 25.934807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350694, -0.213429, -0.911845,
		-0.546175, -0.837554, -0.014018,
		-0.760727, 0.502943, -0.410295,
		36.519894, 31.674355, 25.811718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827904, 30.983639, 25.576099>,  <37.052402, 31.322294, 26.098925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827904, 30.983639, 25.576099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644928, 31.323097, 25.469851>,  <36.535145, 31.526772, 25.406101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644928, 31.323097, 25.469851>,  <36.827904, 30.983639, 25.576099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644928, 31.323097, 25.469851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045651, -0.275902, -0.960101,
		-0.888070, -0.451310, 0.087466,
		-0.457435, 0.848644, -0.265624,
		36.507698, 31.577690, 25.390163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339542, 30.815042, 25.088715>,  <36.827904, 30.983639, 25.576099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339542, 30.815042, 25.088715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411350, 31.204189, 25.030331>,  <36.454437, 31.437677, 24.995300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411350, 31.204189, 25.030331>,  <36.339542, 30.815042, 25.088715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411350, 31.204189, 25.030331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072840, -0.161107, -0.984245,
		-0.981054, 0.166062, -0.099786,
		0.179522, 0.972866, -0.145959,
		36.465206, 31.496050, 24.986544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077415, 30.918388, 24.514851>,  <36.339542, 30.815042, 25.088715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077415, 30.918388, 24.514851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317581, 31.237162, 24.541403>,  <36.461681, 31.428425, 24.557335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317581, 31.237162, 24.541403>,  <36.077415, 30.918388, 24.514851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317581, 31.237162, 24.541403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218704, -0.083792, -0.972187,
		-0.769204, 0.598230, -0.224602,
		0.600411, 0.796932, 0.066382,
		36.497704, 31.476240, 24.561317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738430, 31.436178, 24.075838>,  <36.077415, 30.918388, 24.514851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738430, 31.436178, 24.075838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131744, 31.495344, 24.118298>,  <36.367733, 31.530844, 24.143772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131744, 31.495344, 24.118298>,  <35.738430, 31.436178, 24.075838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131744, 31.495344, 24.118298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085869, 0.137320, -0.986798,
		-0.160541, 0.979420, 0.122324,
		0.983287, 0.147917, 0.106147,
		36.426731, 31.539719, 24.150143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874771, 31.908859, 23.539005>,  <35.738430, 31.436178, 24.075838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874771, 31.908859, 23.539005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222214, 31.740940, 23.644299>,  <36.430679, 31.640188, 23.707476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222214, 31.740940, 23.644299>,  <35.874771, 31.908859, 23.539005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222214, 31.740940, 23.644299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318146, 0.065215, -0.945796,
		0.379878, 0.905271, 0.190204,
		0.868605, -0.419800, 0.263235,
		36.482796, 31.615000, 23.723269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391514, 32.337246, 23.287254>,  <35.874771, 31.908859, 23.539005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391514, 32.337246, 23.287254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566227, 31.984459, 23.358091>,  <36.671055, 31.772787, 23.400593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566227, 31.984459, 23.358091>,  <36.391514, 32.337246, 23.287254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566227, 31.984459, 23.358091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542772, 0.101390, -0.833738,
		0.717373, 0.460279, 0.522991,
		0.436778, -0.881966, 0.177092,
		36.697262, 31.719870, 23.411219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145111, 32.488285, 23.125406>,  <36.391514, 32.337246, 23.287254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145111, 32.488285, 23.125406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104748, 32.090393, 23.132605>,  <37.080532, 31.851658, 23.136923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104748, 32.090393, 23.132605>,  <37.145111, 32.488285, 23.125406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104748, 32.090393, 23.132605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599334, -0.075212, -0.796958,
		0.794114, -0.069632, 0.603767,
		-0.100904, -0.994734, 0.017994,
		37.074478, 31.791973, 23.138002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911079, 32.212051, 23.103468>,  <37.145111, 32.488285, 23.125406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911079, 32.212051, 23.103468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661938, 31.922188, 22.985540>,  <37.512451, 31.748268, 22.914783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661938, 31.922188, 22.985540>,  <37.911079, 32.212051, 23.103468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661938, 31.922188, 22.985540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525329, -0.108159, -0.843997,
		0.579725, -0.680564, 0.448053,
		-0.622855, -0.724662, -0.294817,
		37.475082, 31.704790, 22.897095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309174, 31.719885, 22.800837>,  <37.911079, 32.212051, 23.103468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309174, 31.719885, 22.800837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954845, 31.638941, 22.633804>,  <37.742249, 31.590374, 22.533585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954845, 31.638941, 22.633804>,  <38.309174, 31.719885, 22.800837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954845, 31.638941, 22.633804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456664, -0.220495, -0.861882,
		0.082338, -0.954165, 0.287730,
		-0.885821, -0.202362, -0.417578,
		37.689098, 31.578232, 22.508532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420139, 30.997900, 22.568367>,  <38.309174, 31.719885, 22.800837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420139, 30.997900, 22.568367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120850, 31.189034, 22.384262>,  <37.941277, 31.303715, 22.273800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120850, 31.189034, 22.384262>,  <38.420139, 30.997900, 22.568367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120850, 31.189034, 22.384262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359901, -0.290462, -0.886625,
		-0.557349, -0.829039, 0.045356,
		-0.748221, 0.477836, -0.460260,
		37.896381, 31.332384, 22.246183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320934, 30.511166, 22.050451>,  <38.420139, 30.997900, 22.568367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320934, 30.511166, 22.050451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153351, 30.849094, 21.917337>,  <38.052799, 31.051851, 21.837469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153351, 30.849094, 21.917337>,  <38.320934, 30.511166, 22.050451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153351, 30.849094, 21.917337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233977, -0.253679, -0.938564,
		-0.877342, -0.471083, -0.091388,
		-0.418959, 0.844824, -0.332786,
		38.027664, 31.102541, 21.817501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830357, 30.292955, 21.534765>,  <38.320934, 30.511166, 22.050451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830357, 30.292955, 21.534765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932961, 30.675400, 21.478119>,  <37.994522, 30.904867, 21.444130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932961, 30.675400, 21.478119>,  <37.830357, 30.292955, 21.534765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932961, 30.675400, 21.478119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291514, -0.216225, -0.931808,
		-0.921534, 0.197731, -0.334183,
		0.256506, 0.956112, -0.141617,
		38.009911, 30.962233, 21.435635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607430, 30.387552, 20.794872>,  <37.830357, 30.292955, 21.534765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607430, 30.387552, 20.794872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849220, 30.695740, 20.875858>,  <37.994293, 30.880651, 20.924450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849220, 30.695740, 20.875858>,  <37.607430, 30.387552, 20.794872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849220, 30.695740, 20.875858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299777, 0.015470, -0.953884,
		-0.738068, 0.637293, -0.221616,
		0.604475, 0.770466, 0.202464,
		38.030563, 30.926880, 20.936598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636631, 30.827921, 20.154024>,  <37.607430, 30.387552, 20.794872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636631, 30.827921, 20.154024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.961399, 30.915455, 20.370502>,  <38.156261, 30.967976, 20.500389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.961399, 30.915455, 20.370502>,  <37.636631, 30.827921, 20.154024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961399, 30.915455, 20.370502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554963, -0.001746, -0.831873,
		-0.181100, 0.975760, -0.122864,
		0.811923, 0.218837, 0.541194,
		38.204975, 30.981106, 20.532860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010365, 31.195087, 19.698982>,  <37.636631, 30.827921, 20.154024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010365, 31.195087, 19.698982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287651, 31.113079, 19.975363>,  <38.454025, 31.063875, 20.141191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287651, 31.113079, 19.975363>,  <38.010365, 31.195087, 19.698982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287651, 31.113079, 19.975363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711509, 0.041834, -0.701430,
		0.114901, 0.977863, 0.174874,
		0.693219, -0.205019, 0.690952,
		38.495617, 31.051573, 20.182648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555317, 31.568151, 19.526628>,  <38.010365, 31.195087, 19.698982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555317, 31.568151, 19.526628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716434, 31.294079, 19.769373>,  <38.813107, 31.129635, 19.915020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716434, 31.294079, 19.769373>,  <38.555317, 31.568151, 19.526628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716434, 31.294079, 19.769373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824815, -0.015697, -0.565185,
		0.396779, 0.728204, 0.558824,
		0.402798, -0.685180, 0.606862,
		38.837273, 31.088524, 19.951431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166733, 31.885513, 19.623564>,  <38.555317, 31.568151, 19.526628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166733, 31.885513, 19.623564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209705, 31.493616, 19.691166>,  <39.235489, 31.258478, 19.731728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209705, 31.493616, 19.691166>,  <39.166733, 31.885513, 19.623564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209705, 31.493616, 19.691166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747082, -0.032609, -0.663931,
		0.655993, 0.197590, 0.728445,
		0.107432, -0.979742, 0.169007,
		39.241936, 31.199694, 19.741869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814224, 31.823460, 19.745039>,  <39.166733, 31.885513, 19.623564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814224, 31.823460, 19.745039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698608, 31.451199, 19.655291>,  <39.629238, 31.227842, 19.601440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698608, 31.451199, 19.655291>,  <39.814224, 31.823460, 19.745039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698608, 31.451199, 19.655291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735131, -0.065639, -0.674740,
		0.613221, -0.359969, 0.703124,
		-0.289038, -0.930652, -0.224373,
		39.611897, 31.172003, 19.587978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434502, 31.301739, 19.898125>,  <39.814224, 31.823460, 19.745039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434502, 31.301739, 19.898125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.192886, 31.105940, 19.646559>,  <40.047916, 30.988461, 19.495619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.192886, 31.105940, 19.646559>,  <40.434502, 31.301739, 19.898125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192886, 31.105940, 19.646559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710279, 0.027248, -0.703393,
		0.361445, -0.871579, 0.331220,
		-0.604037, -0.489497, -0.628913,
		40.011677, 30.959091, 19.457886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837696, 30.669596, 19.615070>,  <40.434502, 31.301739, 19.898125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837696, 30.669596, 19.615070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.544312, 30.753725, 19.356522>,  <40.368282, 30.804203, 19.201391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.544312, 30.753725, 19.356522>,  <40.837696, 30.669596, 19.615070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544312, 30.753725, 19.356522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577768, -0.308035, -0.755843,
		-0.358076, -0.927836, 0.104415,
		-0.733461, 0.210322, -0.646374,
		40.324272, 30.816822, 19.162609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810940, 30.092995, 19.127695>,  <40.837696, 30.669596, 19.615070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.810940, 30.092995, 19.127695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628399, 30.405926, 18.958130>,  <40.518875, 30.593685, 18.856390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628399, 30.405926, 18.958130>,  <40.810940, 30.092995, 19.127695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.628399, 30.405926, 18.958130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540810, -0.134452, -0.830330,
		-0.706587, -0.608182, -0.361733,
		-0.456356, 0.782328, -0.423912,
		40.491493, 30.640625, 18.830956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910461, 29.953217, 18.496693>,  <40.810940, 30.092995, 19.127695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910461, 29.953217, 18.496693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.753784, 30.320721, 18.476858>,  <40.659779, 30.541224, 18.464958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.753784, 30.320721, 18.476858>,  <40.910461, 29.953217, 18.496693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753784, 30.320721, 18.476858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253595, 0.055995, -0.965688,
		-0.884460, -0.390824, -0.254926,
		-0.391689, 0.918761, -0.049586,
		40.636276, 30.596350, 18.461983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509064, 30.034582, 17.811060>,  <40.910461, 29.953217, 18.496693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.509064, 30.034582, 17.811060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.617493, 30.400023, 17.932285>,  <40.682552, 30.619287, 18.005020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.617493, 30.400023, 17.932285>,  <40.509064, 30.034582, 17.811060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.617493, 30.400023, 17.932285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316020, 0.212930, -0.924550,
		-0.909203, 0.346398, -0.230996,
		0.271076, 0.913602, 0.303065,
		40.698814, 30.674103, 18.023205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162560, 30.638069, 17.429478>,  <40.509064, 30.034582, 17.811060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162560, 30.638069, 17.429478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.526142, 30.720240, 17.574585>,  <40.744293, 30.769541, 17.661650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.526142, 30.720240, 17.574585>,  <40.162560, 30.638069, 17.429478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.526142, 30.720240, 17.574585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288661, 0.317711, -0.903180,
		-0.300791, 0.925667, 0.229488,
		0.908955, 0.205424, 0.362769,
		40.798828, 30.781866, 17.683416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489433, 31.124920, 17.067448>,  <40.162560, 30.638069, 17.429478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489433, 31.124920, 17.067448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.797256, 30.954655, 17.257853>,  <40.981949, 30.852495, 17.372097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.797256, 30.954655, 17.257853>,  <40.489433, 31.124920, 17.067448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.797256, 30.954655, 17.257853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593735, 0.202550, -0.778750,
		0.235068, 0.881921, 0.408605,
		0.769559, -0.425662, 0.476015,
		41.028126, 30.826956, 17.400658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.241718, 31.304411, 16.514978>,  <40.489433, 31.124920, 17.067448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.241718, 31.304411, 16.514978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296131, 31.468435, 16.154236>,  <40.328777, 31.566851, 15.937790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296131, 31.468435, 16.154236>,  <40.241718, 31.304411, 16.514978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296131, 31.468435, 16.154236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434368, 0.793471, 0.426296,
		0.890405, -0.449726, -0.070183,
		0.136028, 0.410061, -0.901857,
		40.336941, 31.591454, 15.883678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959343, 31.538317, 16.400335>,  <40.241718, 31.304411, 16.514978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959343, 31.538317, 16.400335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.736000, 31.743391, 16.139448>,  <40.601994, 31.866436, 15.982916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.736000, 31.743391, 16.139448>,  <40.959343, 31.538317, 16.400335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.736000, 31.743391, 16.139448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474220, 0.842321, 0.256146,
		0.680699, -0.166273, -0.713444,
		-0.558359, 0.512688, -0.652217,
		40.568493, 31.897198, 15.943783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.276054, 31.969896, 15.778104>,  <40.959343, 31.538317, 16.400335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.276054, 31.969896, 15.778104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935112, 32.123329, 15.920292>,  <40.730549, 32.215389, 16.005606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935112, 32.123329, 15.920292>,  <41.276054, 31.969896, 15.778104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935112, 32.123329, 15.920292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507558, 0.770541, 0.385554,
		-0.126013, 0.509050, -0.851463,
		-0.852353, 0.383582, 0.355470,
		40.679405, 32.238403, 16.026934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.924629, 32.014359, 16.142618>,  <41.276054, 31.969896, 15.778104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.924629, 32.014359, 16.142618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223831, 31.950510, 16.400301>,  <42.403355, 31.912201, 16.554911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223831, 31.950510, 16.400301>,  <41.924629, 32.014359, 16.142618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.223831, 31.950510, 16.400301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170808, 0.891652, 0.419264,
		-0.641334, -0.423648, 0.639698,
		0.748008, -0.159622, 0.644209,
		42.448235, 31.902624, 16.593563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703598, 32.175491, 16.809916>,  <41.924629, 32.014359, 16.142618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703598, 32.175491, 16.809916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.095467, 32.253670, 16.827965>,  <42.330589, 32.300579, 16.838795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.095467, 32.253670, 16.827965>,  <41.703598, 32.175491, 16.809916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.095467, 32.253670, 16.827965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194309, 0.868832, 0.455383,
		0.049798, -0.454896, 0.889151,
		0.979675, 0.195448, 0.045124,
		42.389370, 32.312305, 16.841501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.963203, 32.165089, 17.541988>,  <41.703598, 32.175491, 16.809916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.963203, 32.165089, 17.541988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.211689, 32.390724, 17.324402>,  <42.360779, 32.526104, 17.193850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.211689, 32.390724, 17.324402>,  <41.963203, 32.165089, 17.541988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.211689, 32.390724, 17.324402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236026, 0.796600, 0.556525,
		0.747251, -0.217332, 0.627999,
		0.621215, 0.564088, -0.543964,
		42.398052, 32.559952, 17.161213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.687511, 32.567146, 17.819975>,  <41.963203, 32.165089, 17.541988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.687511, 32.567146, 17.819975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.468601, 32.767143, 17.551498>,  <42.337254, 32.887142, 17.390411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.468601, 32.767143, 17.551498>,  <42.687511, 32.567146, 17.819975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.468601, 32.767143, 17.551498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251021, 0.666973, 0.701524,
		0.798422, 0.552410, -0.239510,
		-0.547275, 0.499990, -0.671193,
		42.304420, 32.917141, 17.350140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.770668, 33.318855, 17.791718>,  <42.687511, 32.567146, 17.819975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.770668, 33.318855, 17.791718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.387199, 33.231236, 17.719101>,  <42.157116, 33.178661, 17.675531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.387199, 33.231236, 17.719101>,  <42.770668, 33.318855, 17.791718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.387199, 33.231236, 17.719101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283351, 0.677811, 0.678443,
		-0.025566, 0.701846, -0.711869,
		-0.958675, -0.219054, -0.181540,
		42.099598, 33.165520, 17.664639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.303299, 33.991749, 17.675274>,  <42.770668, 33.318855, 17.791718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.303299, 33.991749, 17.675274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.050579, 33.705410, 17.794199>,  <41.898949, 33.533607, 17.865553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.050579, 33.705410, 17.794199>,  <42.303299, 33.991749, 17.675274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.050579, 33.705410, 17.794199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359133, 0.610242, 0.706136,
		-0.686918, 0.339360, -0.642634,
		-0.631797, -0.715848, 0.297311,
		41.861038, 33.490654, 17.883392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693584, 34.409012, 17.693199>,  <42.303299, 33.991749, 17.675274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.693584, 34.409012, 17.693199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.650921, 34.089874, 17.930542>,  <41.625324, 33.898392, 18.072947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.650921, 34.089874, 17.930542>,  <41.693584, 34.409012, 17.693199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650921, 34.089874, 17.930542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326158, 0.591814, 0.737141,
		-0.939279, -0.114904, -0.323345,
		-0.106660, -0.797843, 0.593355,
		41.618923, 33.850521, 18.108549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.130150, 34.507572, 18.119259>,  <41.693584, 34.409012, 17.693199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.130150, 34.507572, 18.119259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.314175, 34.232449, 18.343853>,  <41.424591, 34.067375, 18.478609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.314175, 34.232449, 18.343853>,  <41.130150, 34.507572, 18.119259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.314175, 34.232449, 18.343853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473113, 0.345223, 0.810546,
		-0.751336, -0.638548, -0.166585,
		0.460063, -0.687806, 0.561484,
		41.452194, 34.026108, 18.512299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630432, 34.006977, 18.396248>,  <41.130150, 34.507572, 18.119259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.630432, 34.006977, 18.396248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.947556, 33.986423, 18.639168>,  <41.137829, 33.974091, 18.784920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.947556, 33.986423, 18.639168>,  <40.630432, 34.006977, 18.396248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.947556, 33.986423, 18.639168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599618, 0.112652, 0.792318,
		-0.109126, -0.992305, 0.058500,
		0.792811, -0.051385, 0.607297,
		41.185398, 33.971008, 18.821358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352600, 33.771446, 19.045271>,  <40.630432, 34.006977, 18.396248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.352600, 33.771446, 19.045271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708931, 33.880962, 19.190306>,  <40.922729, 33.946671, 19.277327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708931, 33.880962, 19.190306>,  <40.352600, 33.771446, 19.045271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708931, 33.880962, 19.190306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415098, 0.165968, 0.894510,
		0.184733, -0.947360, 0.261500,
		0.890824, 0.273794, 0.362588,
		40.976177, 33.963100, 19.299082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383575, 33.385735, 19.749722>,  <40.352600, 33.771446, 19.045271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383575, 33.385735, 19.749722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.642578, 33.690273, 19.736517>,  <40.797977, 33.872997, 19.728594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.642578, 33.690273, 19.736517>,  <40.383575, 33.385735, 19.749722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642578, 33.690273, 19.736517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242645, 0.247039, 0.938134,
		0.722402, -0.599433, 0.344696,
		0.647502, 0.761348, -0.033012,
		40.836830, 33.918678, 19.726614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612419, 33.468395, 20.374859>,  <40.383575, 33.385735, 19.749722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612419, 33.468395, 20.374859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704666, 33.819042, 20.205931>,  <40.760014, 34.029430, 20.104574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704666, 33.819042, 20.205931>,  <40.612419, 33.468395, 20.374859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704666, 33.819042, 20.205931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083653, 0.450275, 0.888963,
		0.969443, -0.169678, 0.177171,
		0.230613, 0.876619, -0.422321,
		40.773849, 34.082027, 20.079235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.129604, 33.732059, 20.739479>,  <40.612419, 33.468395, 20.374859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.129604, 33.732059, 20.739479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.930191, 34.033710, 20.568480>,  <40.810543, 34.214703, 20.465879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.930191, 34.033710, 20.568480>,  <41.129604, 33.732059, 20.739479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.930191, 34.033710, 20.568480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008104, 0.497186, 0.867606,
		0.866833, 0.429065, -0.253975,
		-0.498532, 0.754128, -0.427500,
		40.780632, 34.259949, 20.440229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419334, 34.475056, 21.057814>,  <41.129604, 33.732059, 20.739479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419334, 34.475056, 21.057814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050823, 34.506920, 20.905550>,  <40.829716, 34.526039, 20.814192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050823, 34.506920, 20.905550>,  <41.419334, 34.475056, 21.057814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.050823, 34.506920, 20.905550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331975, 0.348768, 0.876444,
		0.202581, 0.933818, -0.294866,
		-0.921278, 0.079663, -0.380658,
		40.774441, 34.530819, 20.791353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144493, 35.150158, 21.359333>,  <41.419334, 34.475056, 21.057814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.144493, 35.150158, 21.359333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.811726, 34.967381, 21.233397>,  <40.612064, 34.857716, 21.157835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.811726, 34.967381, 21.233397>,  <41.144493, 35.150158, 21.359333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811726, 34.967381, 21.233397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466376, 0.268310, 0.842913,
		-0.300685, 0.848066, -0.436317,
		-0.831914, -0.456939, -0.314841,
		40.562153, 34.830299, 21.138945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599644, 35.573376, 21.593607>,  <41.144493, 35.150158, 21.359333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599644, 35.573376, 21.593607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.386620, 35.245914, 21.507648>,  <40.258804, 35.049438, 21.456074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.386620, 35.245914, 21.507648>,  <40.599644, 35.573376, 21.593607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386620, 35.245914, 21.507648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726174, 0.311520, 0.612885,
		-0.434798, 0.482450, -0.760390,
		-0.532563, -0.818656, -0.214895,
		40.226852, 35.000317, 21.443180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965477, 35.831474, 21.641201>,  <40.599644, 35.573376, 21.593607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965477, 35.831474, 21.641201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896023, 35.437916, 21.658173>,  <39.854351, 35.201782, 21.668356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896023, 35.437916, 21.658173>,  <39.965477, 35.831474, 21.641201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896023, 35.437916, 21.658173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747208, 0.159683, 0.645121,
		-0.641507, 0.080313, -0.762902,
		-0.173634, -0.983896, 0.042427,
		39.843933, 35.142746, 21.670900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275497, 35.791149, 21.688757>,  <39.965477, 35.831474, 21.641201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275497, 35.791149, 21.688757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399765, 35.441765, 21.838718>,  <39.474323, 35.232136, 21.928696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399765, 35.441765, 21.838718>,  <39.275497, 35.791149, 21.688757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399765, 35.441765, 21.838718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805923, -0.032933, 0.591104,
		-0.503959, -0.485780, -0.714173,
		0.310667, -0.873461, 0.374904,
		39.492966, 35.179726, 21.951189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669636, 35.335888, 21.722692>,  <39.275497, 35.791149, 21.688757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669636, 35.335888, 21.722692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916439, 35.141029, 21.969913>,  <39.064522, 35.024113, 22.118246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916439, 35.141029, 21.969913>,  <38.669636, 35.335888, 21.722692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916439, 35.141029, 21.969913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747602, -0.117603, 0.653652,
		-0.245739, -0.865366, -0.436754,
		0.617011, -0.487146, 0.618050,
		39.101543, 34.994884, 22.155329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347107, 34.660480, 21.914661>,  <38.669636, 35.335888, 21.722692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347107, 34.660480, 21.914661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605247, 34.783211, 22.194485>,  <38.760132, 34.856850, 22.362379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605247, 34.783211, 22.194485>,  <38.347107, 34.660480, 21.914661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605247, 34.783211, 22.194485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663181, -0.229437, 0.712425,
		0.379095, -0.923697, 0.055413,
		0.645352, 0.306825, 0.699557,
		38.798855, 34.875259, 22.404352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329384, 34.115612, 22.471977>,  <38.347107, 34.660480, 21.914661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329384, 34.115612, 22.471977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448498, 34.474045, 22.603655>,  <38.519966, 34.689102, 22.682661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448498, 34.474045, 22.603655>,  <38.329384, 34.115612, 22.471977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448498, 34.474045, 22.603655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780907, 0.030302, 0.623911,
		0.549098, -0.442861, 0.708777,
		0.297784, 0.896078, 0.329195,
		38.537834, 34.742867, 22.702414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217060, 34.087986, 23.175219>,  <38.329384, 34.115612, 22.471977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217060, 34.087986, 23.175219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260410, 34.482365, 23.124376>,  <38.286419, 34.718994, 23.093872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260410, 34.482365, 23.124376>,  <38.217060, 34.087986, 23.175219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260410, 34.482365, 23.124376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699326, 0.166484, 0.695145,
		0.706539, 0.013550, 0.707544,
		0.108376, 0.985951, -0.127104,
		38.292923, 34.778149, 23.086245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374695, 34.300442, 23.787983>,  <38.217060, 34.087986, 23.175219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374695, 34.300442, 23.787983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.262707, 34.639587, 23.607878>,  <38.195515, 34.843075, 23.499815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.262707, 34.639587, 23.607878>,  <38.374695, 34.300442, 23.787983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262707, 34.639587, 23.607878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555724, 0.239312, 0.796179,
		0.782807, 0.473130, 0.404179,
		-0.279971, 0.847867, -0.450265,
		38.178715, 34.893948, 23.472797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452744, 34.839172, 24.275286>,  <38.374695, 34.300442, 23.787983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452744, 34.839172, 24.275286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212296, 34.978931, 23.987795>,  <38.068027, 35.062786, 23.815300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212296, 34.978931, 23.987795>,  <38.452744, 34.839172, 24.275286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212296, 34.978931, 23.987795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691038, 0.224462, 0.687083,
		0.401392, 0.909691, 0.106518,
		-0.601124, 0.349398, -0.718729,
		38.031960, 35.083752, 23.772177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164993, 35.530659, 24.590168>,  <38.452744, 34.839172, 24.275286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164993, 35.530659, 24.590168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928062, 35.408966, 24.291746>,  <37.785904, 35.335953, 24.112692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928062, 35.408966, 24.291746>,  <38.164993, 35.530659, 24.590168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928062, 35.408966, 24.291746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804605, 0.175067, 0.567418,
		-0.042014, 0.936375, -0.348478,
		-0.592323, -0.304227, -0.746056,
		37.750366, 35.317699, 24.067928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639359, 36.035397, 24.496460>,  <38.164993, 35.530659, 24.590168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639359, 36.035397, 24.496460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508007, 35.692421, 24.337982>,  <37.429195, 35.486637, 24.242895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508007, 35.692421, 24.337982>,  <37.639359, 36.035397, 24.496460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508007, 35.692421, 24.337982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873725, 0.116386, 0.472291,
		-0.358849, 0.501254, -0.787383,
		-0.328378, -0.857437, -0.396194,
		37.409492, 35.435188, 24.219124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947208, 36.135509, 24.213457>,  <37.639359, 36.035397, 24.496460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947208, 36.135509, 24.213457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.952099, 35.743832, 24.294481>,  <36.955032, 35.508823, 24.343096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.952099, 35.743832, 24.294481>,  <36.947208, 36.135509, 24.213457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952099, 35.743832, 24.294481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765728, 0.121104, 0.631660,
		-0.643048, -0.162832, -0.748315,
		0.012230, -0.979193, 0.202561,
		36.955769, 35.450073, 24.355249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208450, 35.892117, 24.213606>,  <36.947208, 36.135509, 24.213457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208450, 35.892117, 24.213606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427269, 35.628582, 24.420166>,  <36.558559, 35.470459, 24.544102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427269, 35.628582, 24.420166>,  <36.208450, 35.892117, 24.213606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427269, 35.628582, 24.420166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664617, 0.033216, 0.746445,
		-0.508940, -0.751550, -0.419705,
		0.547050, -0.658839, 0.516398,
		36.591385, 35.430931, 24.575085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670174, 35.594841, 24.648827>,  <36.208450, 35.892117, 24.213606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670174, 35.594841, 24.648827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998703, 35.445549, 24.821398>,  <36.195820, 35.355972, 24.924940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998703, 35.445549, 24.821398>,  <35.670174, 35.594841, 24.648827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998703, 35.445549, 24.821398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459335, 0.015803, 0.888123,
		-0.338295, -0.927603, -0.158460,
		0.821321, -0.373234, 0.431426,
		36.245098, 35.333580, 24.950825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400600, 35.153347, 25.133774>,  <35.670174, 35.594841, 24.648827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400600, 35.153347, 25.133774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760555, 35.260834, 25.271173>,  <35.976528, 35.325325, 25.353613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760555, 35.260834, 25.271173>,  <35.400600, 35.153347, 25.133774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760555, 35.260834, 25.271173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397243, 0.179987, 0.899890,
		0.179987, -0.946255, 0.268713,
		-0.899890, -0.268713, -0.343498,
		36.030521, 35.341446, 25.374224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421261, 34.851307, 25.759022>,  <35.400600, 35.153347, 25.133774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421261, 34.851307, 25.759022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709076, 35.129086, 25.758509>,  <35.881767, 35.295753, 25.758202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709076, 35.129086, 25.758509>,  <35.421261, 34.851307, 25.759022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709076, 35.129086, 25.758509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283067, 0.294982, 0.912611,
		0.634139, -0.656299, 0.408827,
		0.719542, 0.694448, -0.001283,
		35.924938, 35.337421, 25.758123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910969, 34.777435, 26.400576>,  <35.421261, 34.851307, 25.759022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910969, 34.777435, 26.400576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923866, 35.153755, 26.265610>,  <35.931602, 35.379547, 26.184629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923866, 35.153755, 26.265610>,  <35.910969, 34.777435, 26.400576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923866, 35.153755, 26.265610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346388, 0.327188, 0.879183,
		0.937537, 0.088532, 0.336432,
		0.032240, 0.940803, -0.337417,
		35.933540, 35.435997, 26.164385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157780, 35.127857, 26.926111>,  <35.910969, 34.777435, 26.400576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157780, 35.127857, 26.926111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000160, 35.423553, 26.707661>,  <35.905586, 35.600971, 26.576590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000160, 35.423553, 26.707661>,  <36.157780, 35.127857, 26.926111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000160, 35.423553, 26.707661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322589, 0.445158, 0.835327,
		0.860616, 0.505335, 0.063054,
		-0.394051, 0.739236, -0.546126,
		35.881947, 35.645325, 26.543823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480873, 35.737354, 27.157303>,  <36.157780, 35.127857, 26.926111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480873, 35.737354, 27.157303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119350, 35.812187, 27.003347>,  <35.902439, 35.857086, 26.910975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119350, 35.812187, 27.003347>,  <36.480873, 35.737354, 27.157303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119350, 35.812187, 27.003347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260618, 0.472741, 0.841780,
		0.339437, 0.861112, -0.378507,
		-0.903803, 0.187086, -0.384888,
		35.848209, 35.868313, 26.887880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331039, 36.450775, 27.301153>,  <36.480873, 35.737354, 27.157303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331039, 36.450775, 27.301153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966530, 36.316261, 27.206076>,  <35.747826, 36.235554, 27.149029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966530, 36.316261, 27.206076>,  <36.331039, 36.450775, 27.301153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966530, 36.316261, 27.206076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384254, 0.486761, 0.784483,
		-0.148110, 0.806210, -0.572789,
		-0.911270, -0.336286, -0.237695,
		35.693150, 36.215374, 27.134768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894226, 36.990040, 27.476725>,  <36.331039, 36.450775, 27.301153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894226, 36.990040, 27.476725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623631, 36.695724, 27.464203>,  <35.461273, 36.519135, 27.456690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623631, 36.695724, 27.464203>,  <35.894226, 36.990040, 27.476725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623631, 36.695724, 27.464203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343365, 0.277522, 0.897264,
		-0.651507, 0.617738, -0.440384,
		-0.676490, -0.735787, -0.031302,
		35.420685, 36.474987, 27.454813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212692, 37.266155, 27.592840>,  <35.894226, 36.990040, 27.476725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212692, 37.266155, 27.592840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148243, 36.876694, 27.657396>,  <35.109573, 36.643017, 27.696131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148243, 36.876694, 27.657396>,  <35.212692, 37.266155, 27.592840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148243, 36.876694, 27.657396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485709, 0.220580, 0.845832,
		-0.859143, 0.057894, -0.508450,
		-0.161122, -0.973649, 0.161390,
		35.099907, 36.584599, 27.705812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524647, 37.219368, 27.849375>,  <35.212692, 37.266155, 27.592840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524647, 37.219368, 27.849375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700733, 36.874321, 27.949057>,  <34.806385, 36.667294, 28.008865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700733, 36.874321, 27.949057>,  <34.524647, 37.219368, 27.849375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700733, 36.874321, 27.949057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456597, 0.023916, 0.889352,
		-0.773132, -0.505289, -0.383341,
		0.440212, -0.862619, 0.249204,
		34.832798, 36.615536, 28.023817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980022, 36.739872, 27.960051>,  <34.524647, 37.219368, 27.849375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980022, 36.739872, 27.960051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300228, 36.631912, 28.174088>,  <34.492352, 36.567135, 28.302509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300228, 36.631912, 28.174088>,  <33.980022, 36.739872, 27.960051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300228, 36.631912, 28.174088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591823, -0.215318, 0.776778,
		-0.094434, -0.938506, -0.332097,
		0.800517, -0.269897, 0.535096,
		34.540382, 36.550941, 28.334616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746704, 36.171165, 28.300451>,  <33.980022, 36.739872, 27.960051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746704, 36.171165, 28.300451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077045, 36.291927, 28.490957>,  <34.275249, 36.364384, 28.605261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077045, 36.291927, 28.490957>,  <33.746704, 36.171165, 28.300451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077045, 36.291927, 28.490957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446359, -0.166118, 0.879300,
		0.344581, -0.938753, -0.002430,
		0.825849, 0.301905, 0.476263,
		34.324799, 36.382500, 28.633837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850784, 35.585819, 28.746153>,  <33.746704, 36.171165, 28.300451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850784, 35.585819, 28.746153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074741, 35.880817, 28.897215>,  <34.209114, 36.057816, 28.987852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074741, 35.880817, 28.897215>,  <33.850784, 35.585819, 28.746153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074741, 35.880817, 28.897215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427138, -0.133656, 0.894254,
		0.709982, -0.661998, 0.240178,
		0.559893, 0.737493, 0.377657,
		34.242710, 36.102066, 29.010511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177708, 35.320377, 29.325047>,  <33.850784, 35.585819, 28.746153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177708, 35.320377, 29.325047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.179424, 35.715382, 29.388054>,  <34.180454, 35.952385, 29.425859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.179424, 35.715382, 29.388054>,  <34.177708, 35.320377, 29.325047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179424, 35.715382, 29.388054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359440, -0.145470, 0.921760,
		0.933158, -0.060576, 0.354325,
		0.004293, 0.987506, 0.157520,
		34.180714, 36.011635, 29.435310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552158, 35.495754, 30.001514>,  <34.177708, 35.320377, 29.325047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552158, 35.495754, 30.001514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296051, 35.788757, 29.909000>,  <34.142387, 35.964558, 29.853493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296051, 35.788757, 29.909000>,  <34.552158, 35.495754, 30.001514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296051, 35.788757, 29.909000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380844, -0.041227, 0.923720,
		0.667097, 0.679510, 0.305367,
		-0.640266, 0.732508, -0.231285,
		34.103970, 36.008511, 29.839615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587063, 35.940815, 30.567932>,  <34.552158, 35.495754, 30.001514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587063, 35.940815, 30.567932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243382, 36.003139, 30.372997>,  <34.037174, 36.040535, 30.256037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243382, 36.003139, 30.372997>,  <34.587063, 35.940815, 30.567932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243382, 36.003139, 30.372997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494468, -0.008166, 0.869158,
		0.131449, 0.987752, 0.084062,
		-0.859199, 0.155815, -0.487338,
		33.985622, 36.049885, 30.226795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079952, 35.320431, 30.652718>,  <34.587063, 35.940815, 30.567932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079952, 35.320431, 30.652718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334160, 35.402950, 30.950321>,  <35.486687, 35.452461, 31.128883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334160, 35.402950, 30.950321>,  <35.079952, 35.320431, 30.652718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334160, 35.402950, 30.950321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756349, -0.359892, -0.546273,
		0.155068, 0.909900, -0.384754,
		0.635524, 0.206299, 0.744010,
		35.524818, 35.464840, 31.173525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510796, 35.972069, 30.555822>,  <35.079952, 35.320431, 30.652718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510796, 35.972069, 30.555822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734383, 35.714039, 30.764219>,  <35.868534, 35.559219, 30.889257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734383, 35.714039, 30.764219>,  <35.510796, 35.972069, 30.555822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734383, 35.714039, 30.764219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753160, 0.132151, -0.644427,
		0.346857, 0.752602, 0.559714,
		0.558964, -0.645078, 0.520993,
		35.902073, 35.520515, 30.920517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157368, 36.339867, 30.448042>,  <35.510796, 35.972069, 30.555822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157368, 36.339867, 30.448042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267262, 35.991489, 30.611000>,  <36.333199, 35.782463, 30.708775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267262, 35.991489, 30.611000>,  <36.157368, 36.339867, 30.448042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267262, 35.991489, 30.611000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884609, 0.062904, -0.462071,
		0.376813, 0.487334, 0.787730,
		0.274735, -0.870947, 0.407396,
		36.349682, 35.730206, 30.733219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810036, 36.447186, 30.595469>,  <36.157368, 36.339867, 30.448042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810036, 36.447186, 30.595469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790112, 36.049503, 30.633589>,  <36.778156, 35.810894, 30.656462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790112, 36.049503, 30.633589>,  <36.810036, 36.447186, 30.595469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790112, 36.049503, 30.633589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896064, -0.086627, -0.435392,
		0.441123, 0.063709, 0.895183,
		-0.049809, -0.994202, 0.095300,
		36.775169, 35.751244, 30.662178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384674, 36.182301, 30.989407>,  <36.810036, 36.447186, 30.595469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384674, 36.182301, 30.989407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259697, 35.878597, 30.761055>,  <37.184711, 35.696373, 30.624044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259697, 35.878597, 30.761055>,  <37.384674, 36.182301, 30.989407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259697, 35.878597, 30.761055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872734, 0.007888, -0.488133,
		0.375123, -0.650739, 0.660167,
		-0.312439, -0.759260, -0.570881,
		37.165966, 35.650818, 30.589790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882439, 35.662178, 30.960869>,  <37.384674, 36.182301, 30.989407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882439, 35.662178, 30.960869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665844, 35.587326, 30.633020>,  <37.535889, 35.542416, 30.436312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665844, 35.587326, 30.633020>,  <37.882439, 35.662178, 30.960869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665844, 35.587326, 30.633020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838809, -0.185758, -0.511755,
		-0.056488, -0.964612, 0.257549,
		-0.541487, -0.187126, -0.819619,
		37.503399, 35.531189, 30.387135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158447, 34.927746, 30.772421>,  <37.882439, 35.662178, 30.960869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158447, 34.927746, 30.772421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.982059, 35.120640, 30.469635>,  <37.876228, 35.236378, 30.287964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.982059, 35.120640, 30.469635>,  <38.158447, 34.927746, 30.772421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982059, 35.120640, 30.469635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722596, -0.309496, -0.618116,
		-0.532358, -0.819547, -0.211987,
		-0.440965, 0.482240, -0.756964,
		37.849770, 35.265312, 30.242546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334053, 34.487995, 30.263105>,  <38.158447, 34.927746, 30.772421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334053, 34.487995, 30.263105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201878, 34.825928, 30.094782>,  <38.122574, 35.028687, 29.993788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201878, 34.825928, 30.094782>,  <38.334053, 34.487995, 30.263105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201878, 34.825928, 30.094782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609652, -0.149309, -0.778480,
		-0.720512, -0.513783, -0.465714,
		-0.330435, 0.844828, -0.420807,
		38.102749, 35.079376, 29.968540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081741, 34.283634, 29.581369>,  <38.334053, 34.487995, 30.263105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081741, 34.283634, 29.581369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129032, 34.680710, 29.571581>,  <38.157406, 34.918953, 29.565708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129032, 34.680710, 29.571581>,  <38.081741, 34.283634, 29.581369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129032, 34.680710, 29.571581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535472, -0.084487, -0.840317,
		-0.836237, 0.086245, -0.541543,
		0.118226, 0.992685, -0.024469,
		38.164501, 34.978516, 29.564240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822956, 34.521748, 29.043011>,  <38.081741, 34.283634, 29.581369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822956, 34.521748, 29.043011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108887, 34.789120, 29.125196>,  <38.280445, 34.949543, 29.174507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108887, 34.789120, 29.125196>,  <37.822956, 34.521748, 29.043011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108887, 34.789120, 29.125196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331240, -0.064889, -0.941313,
		-0.615873, 0.740936, -0.267797,
		0.714829, 0.668434, 0.205464,
		38.323334, 34.989651, 29.186836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792355, 35.033005, 28.514713>,  <37.822956, 34.521748, 29.043011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792355, 35.033005, 28.514713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.158108, 35.081921, 28.669090>,  <38.377560, 35.111271, 28.761717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.158108, 35.081921, 28.669090>,  <37.792355, 35.033005, 28.514713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158108, 35.081921, 28.669090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387509, 0.011675, -0.921792,
		-0.117233, 0.992426, -0.036714,
		0.914381, 0.122291, 0.385943,
		38.432423, 35.118607, 28.784874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104103, 35.395966, 27.960268>,  <37.792355, 35.033005, 28.514713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104103, 35.395966, 27.960268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419193, 35.292183, 28.183760>,  <38.608246, 35.229916, 28.317854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419193, 35.292183, 28.183760>,  <38.104103, 35.395966, 27.960268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419193, 35.292183, 28.183760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578827, 0.001313, -0.815449,
		0.210838, 0.965754, 0.151213,
		0.787722, -0.259454, 0.558728,
		38.655510, 35.214348, 28.351377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626255, 35.926361, 27.891212>,  <38.104103, 35.395966, 27.960268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626255, 35.926361, 27.891212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826004, 35.610363, 28.033503>,  <38.945854, 35.420765, 28.118876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826004, 35.610363, 28.033503>,  <38.626255, 35.926361, 27.891212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826004, 35.610363, 28.033503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541705, -0.035733, -0.839809,
		0.676154, 0.612074, 0.410099,
		0.499371, -0.789993, 0.355724,
		38.975815, 35.373363, 28.140221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375099, 36.111576, 27.918795>,  <38.626255, 35.926361, 27.891212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.375099, 36.111576, 27.918795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389874, 35.711884, 27.924019>,  <39.398739, 35.472069, 27.927153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389874, 35.711884, 27.924019>,  <39.375099, 36.111576, 27.918795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389874, 35.711884, 27.924019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381379, 0.002013, -0.924417,
		0.923681, 0.039123, 0.381160,
		0.036933, -0.999232, 0.013061,
		39.400955, 35.412113, 27.927937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092567, 35.880127, 27.604908>,  <39.375099, 36.111576, 27.918795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092567, 35.880127, 27.604908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816517, 35.590672, 27.601807>,  <39.650887, 35.416996, 27.599947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816517, 35.590672, 27.601807>,  <40.092567, 35.880127, 27.604908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816517, 35.590672, 27.601807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241926, -0.220602, -0.944884,
		0.682049, -0.653969, 0.327313,
		-0.690131, -0.723643, -0.007751,
		39.609478, 35.373577, 27.599482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402054, 35.267864, 27.520350>,  <40.092567, 35.880127, 27.604908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402054, 35.267864, 27.520350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025795, 35.188656, 27.410095>,  <39.800041, 35.141129, 27.343943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025795, 35.188656, 27.410095>,  <40.402054, 35.267864, 27.520350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025795, 35.188656, 27.410095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334672, -0.406165, -0.850309,
		0.056427, -0.892086, 0.448329,
		-0.940644, -0.198024, -0.275637,
		39.743603, 35.129250, 27.327404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493908, 34.690548, 27.090576>,  <40.402054, 35.267864, 27.520350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493908, 34.690548, 27.090576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.126095, 34.821407, 27.003464>,  <39.905407, 34.899921, 26.951197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.126095, 34.821407, 27.003464>,  <40.493908, 34.690548, 27.090576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126095, 34.821407, 27.003464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034022, -0.485802, -0.873406,
		-0.391525, -0.810540, 0.435584,
		-0.919538, 0.327141, -0.217780,
		39.850235, 34.919552, 26.938129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167526, 34.107750, 26.724108>,  <40.493908, 34.690548, 27.090576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167526, 34.107750, 26.724108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956005, 34.434170, 26.630791>,  <39.829094, 34.630024, 26.574800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956005, 34.434170, 26.630791>,  <40.167526, 34.107750, 26.724108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956005, 34.434170, 26.630791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221837, -0.132423, -0.966050,
		-0.819242, -0.562601, -0.111005,
		-0.528801, 0.816054, -0.233293,
		39.797363, 34.678986, 26.560802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805779, 33.936321, 26.162745>,  <40.167526, 34.107750, 26.724108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805779, 33.936321, 26.162745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799019, 34.336212, 26.156239>,  <39.794964, 34.576145, 26.152334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799019, 34.336212, 26.156239>,  <39.805779, 33.936321, 26.162745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799019, 34.336212, 26.156239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267796, -0.011148, -0.963411,
		-0.963327, -0.020638, -0.267534,
		-0.016901, 0.999725, -0.016266,
		39.793949, 34.636131, 26.151360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393726, 34.064594, 25.600506>,  <39.805779, 33.936321, 26.162745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393726, 34.064594, 25.600506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643429, 34.370594, 25.663857>,  <39.793251, 34.554195, 25.701866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643429, 34.370594, 25.663857>,  <39.393726, 34.064594, 25.600506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643429, 34.370594, 25.663857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397595, -0.136603, -0.907336,
		-0.672477, 0.629377, -0.389435,
		0.624254, 0.764999, 0.158375,
		39.830704, 34.600094, 25.711369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336693, 34.614716, 25.009628>,  <39.393726, 34.064594, 25.600506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336693, 34.614716, 25.009628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691250, 34.693359, 25.177271>,  <39.903984, 34.740547, 25.277857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691250, 34.693359, 25.177271>,  <39.336693, 34.614716, 25.009628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691250, 34.693359, 25.177271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433985, -0.037809, -0.900127,
		-0.161128, 0.979753, -0.118839,
		0.886395, 0.196609, 0.419106,
		39.957169, 34.752342, 25.303003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723621, 35.174049, 24.701691>,  <39.336693, 34.614716, 25.009628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723621, 35.174049, 24.701691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999931, 34.945629, 24.879108>,  <40.165718, 34.808578, 24.985559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999931, 34.945629, 24.879108>,  <39.723621, 35.174049, 24.701691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999931, 34.945629, 24.879108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538407, -0.003237, -0.842678,
		0.482648, 0.820909, 0.305221,
		0.690774, -0.571050, 0.443546,
		40.207165, 34.774315, 25.012173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246494, 35.278679, 24.281733>,  <39.723621, 35.174049, 24.701691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246494, 35.278679, 24.281733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430206, 34.994137, 24.494535>,  <40.540432, 34.823410, 24.622217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430206, 34.994137, 24.494535>,  <40.246494, 35.278679, 24.281733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430206, 34.994137, 24.494535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571712, -0.221660, -0.789945,
		0.679857, 0.666962, 0.304887,
		0.459281, -0.711357, 0.532007,
		40.567989, 34.780731, 24.654137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956726, 35.315582, 24.182240>,  <40.246494, 35.278679, 24.281733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.956726, 35.315582, 24.182240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.919350, 34.935524, 24.301228>,  <40.896923, 34.707489, 24.372620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.919350, 34.935524, 24.301228>,  <40.956726, 35.315582, 24.182240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.919350, 34.935524, 24.301228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593053, -0.293103, -0.749919,
		0.799724, 0.106344, 0.590875,
		-0.093438, -0.950148, 0.297469,
		40.891319, 34.650478, 24.390469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.646770, 34.992905, 24.257151>,  <40.956726, 35.315582, 24.182240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.646770, 34.992905, 24.257151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.390251, 34.691532, 24.199064>,  <41.236340, 34.510708, 24.164213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.390251, 34.691532, 24.199064>,  <41.646770, 34.992905, 24.257151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.390251, 34.691532, 24.199064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446435, -0.212458, -0.869228,
		0.624048, -0.622261, 0.472605,
		-0.641296, -0.753427, -0.145215,
		41.197861, 34.465504, 24.155500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.019852, 34.366783, 24.064198>,  <41.646770, 34.992905, 24.257151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.019852, 34.366783, 24.064198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.647079, 34.274990, 23.951887>,  <41.423416, 34.219913, 23.884501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.647079, 34.274990, 23.951887>,  <42.019852, 34.366783, 24.064198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.647079, 34.274990, 23.951887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359834, -0.489341, -0.794396,
		0.044902, -0.841359, 0.538609,
		-0.931935, -0.229480, -0.280777,
		41.367500, 34.206146, 23.867655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086926, 33.674854, 23.859442>,  <42.019852, 34.366783, 24.064198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086926, 33.674854, 23.859442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.731365, 33.763344, 23.698988>,  <41.518028, 33.816437, 23.602716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.731365, 33.763344, 23.698988>,  <42.086926, 33.674854, 23.859442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.731365, 33.763344, 23.698988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236428, -0.528462, -0.815371,
		-0.392364, -0.819626, 0.417449,
		-0.888905, 0.221225, -0.401132,
		41.464695, 33.829712, 23.578648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797012, 33.001144, 23.602308>,  <42.086926, 33.674854, 23.859442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.797012, 33.001144, 23.602308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667538, 33.315548, 23.391624>,  <41.589855, 33.504189, 23.265213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667538, 33.315548, 23.391624>,  <41.797012, 33.001144, 23.602308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.667538, 33.315548, 23.391624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309955, -0.437876, -0.843915,
		-0.893956, -0.436418, -0.101893,
		-0.323683, 0.786005, -0.526712,
		41.570435, 33.551350, 23.233610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.428699, 32.743710, 23.052998>,  <41.797012, 33.001144, 23.602308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.428699, 32.743710, 23.052998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.547718, 33.108059, 22.938606>,  <41.619129, 33.326668, 22.869972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.547718, 33.108059, 22.938606>,  <41.428699, 32.743710, 23.052998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.547718, 33.108059, 22.938606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358610, -0.384240, -0.850740,
		-0.884798, 0.150577, -0.440975,
		0.297542, 0.910871, -0.285976,
		41.636982, 33.381321, 22.852814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266972, 32.702518, 22.316910>,  <41.428699, 32.743710, 23.052998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266972, 32.702518, 22.316910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496384, 33.030102, 22.324593>,  <41.634029, 33.226654, 22.329203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496384, 33.030102, 22.324593>,  <41.266972, 32.702518, 22.316910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496384, 33.030102, 22.324593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350483, -0.224121, -0.909358,
		-0.740425, 0.528273, -0.415571,
		0.573527, 0.818961, 0.019206,
		41.668442, 33.275791, 22.330355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211185, 32.933422, 21.663099>,  <41.266972, 32.702518, 22.316910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211185, 32.933422, 21.663099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.551010, 33.083115, 21.811802>,  <41.754906, 33.172928, 21.901024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.551010, 33.083115, 21.811802>,  <41.211185, 32.933422, 21.663099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.551010, 33.083115, 21.811802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506059, -0.379359, -0.774590,
		-0.148843, 0.846192, -0.511669,
		0.849559, 0.374227, 0.371758,
		41.805878, 33.195381, 21.923330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565762, 33.196964, 21.078114>,  <41.211185, 32.933422, 21.663099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565762, 33.196964, 21.078114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.857822, 33.142895, 21.346025>,  <42.033058, 33.110455, 21.506773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.857822, 33.142895, 21.346025>,  <41.565762, 33.196964, 21.078114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.857822, 33.142895, 21.346025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581681, -0.391343, -0.713090,
		0.358504, 0.910263, -0.207113,
		0.730152, -0.135172, 0.669781,
		42.076870, 33.102345, 21.546959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.188549, 33.544655, 20.819090>,  <41.565762, 33.196964, 21.078114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.188549, 33.544655, 20.819090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.318409, 33.279602, 21.089062>,  <42.396324, 33.120571, 21.251045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.318409, 33.279602, 21.089062>,  <42.188549, 33.544655, 20.819090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.318409, 33.279602, 21.089062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687196, -0.325063, -0.649689,
		0.649896, 0.674728, 0.349824,
		0.324649, -0.662628, 0.674928,
		42.415802, 33.080814, 21.291540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.864964, 33.568623, 20.814060>,  <42.188549, 33.544655, 20.819090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.864964, 33.568623, 20.814060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.793232, 33.204929, 20.964333>,  <42.750195, 32.986713, 21.054495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.793232, 33.204929, 20.964333>,  <42.864964, 33.568623, 20.814060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.793232, 33.204929, 20.964333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741205, -0.375965, -0.556117,
		0.646883, 0.178728, 0.741350,
		-0.179328, -0.909234, 0.375679,
		42.739433, 32.932159, 21.077036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.451633, 33.272884, 21.006777>,  <42.864964, 33.568623, 20.814060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.451633, 33.272884, 21.006777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.191593, 32.973694, 20.953270>,  <43.035568, 32.794178, 20.921165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.191593, 32.973694, 20.953270>,  <43.451633, 33.272884, 21.006777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.191593, 32.973694, 20.953270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720078, -0.550257, -0.422735,
		0.242591, -0.371143, 0.896327,
		-0.650105, -0.747977, -0.133765,
		42.996563, 32.749302, 20.913141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.892704, 32.759003, 21.144926>,  <43.451633, 33.272884, 21.006777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.892704, 32.759003, 21.144926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.574692, 32.577667, 20.983721>,  <43.383884, 32.468868, 20.886997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.574692, 32.577667, 20.983721>,  <43.892704, 32.759003, 21.144926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.574692, 32.577667, 20.983721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606563, -0.598167, -0.523715,
		-0.003651, -0.660820, 0.750535,
		-0.795027, -0.453335, -0.403013,
		43.336185, 32.441666, 20.862816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.991302, 32.017197, 21.098886>,  <43.892704, 32.759003, 21.144926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.991302, 32.017197, 21.098886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.710510, 32.062546, 20.817640>,  <43.542034, 32.089756, 20.648893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.710510, 32.062546, 20.817640>,  <43.991302, 32.017197, 21.098886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.710510, 32.062546, 20.817640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589995, -0.460398, -0.663280,
		-0.398913, -0.880443, 0.256298,
		-0.701979, 0.113377, -0.703115,
		43.499916, 32.096558, 20.606707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.795006, 31.294468, 20.789421>,  <43.991302, 32.017197, 21.098886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.795006, 31.294468, 20.789421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.772953, 31.618141, 20.555435>,  <43.759720, 31.812346, 20.415045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.772953, 31.618141, 20.555435>,  <43.795006, 31.294468, 20.789421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.772953, 31.618141, 20.555435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598324, -0.442243, -0.668153,
		-0.799355, -0.386837, -0.459771,
		-0.055135, 0.809184, -0.584963,
		43.756413, 31.860897, 20.379946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.827801, 30.643244, 21.193350>,  <43.795006, 31.294468, 20.789421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.827801, 30.643244, 21.193350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.004848, 30.301970, 21.303740>,  <44.111076, 30.097206, 21.369972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.004848, 30.301970, 21.303740>,  <43.827801, 30.643244, 21.193350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.004848, 30.301970, 21.303740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238200, 0.408576, 0.881094,
		-0.864491, -0.324257, 0.384074,
		0.442624, -0.853185, 0.275972,
		44.137634, 30.046015, 21.386532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.518021, 30.359426, 21.878946>,  <43.827801, 30.643244, 21.193350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.518021, 30.359426, 21.878946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.905083, 30.269230, 21.833708>,  <44.137321, 30.215111, 21.806564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.905083, 30.269230, 21.833708>,  <43.518021, 30.359426, 21.878946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.905083, 30.269230, 21.833708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165216, 0.227691, 0.959615,
		-0.190635, -0.947264, 0.257583,
		0.967658, -0.225493, -0.113098,
		44.195381, 30.201582, 21.799778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.647072, 29.853704, 22.340559>,  <43.518021, 30.359426, 21.878946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.647072, 29.853704, 22.340559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.014614, 29.975941, 22.240704>,  <44.235138, 30.049282, 22.180790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.014614, 29.975941, 22.240704>,  <43.647072, 29.853704, 22.340559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.014614, 29.975941, 22.240704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201151, 0.181520, 0.962595,
		0.339475, -0.934700, 0.105321,
		0.918855, 0.305592, -0.249637,
		44.290272, 30.067617, 22.165812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.078892, 29.448734, 22.815187>,  <43.647072, 29.853704, 22.340559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.078892, 29.448734, 22.815187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.222404, 29.796385, 22.679012>,  <44.308510, 30.004974, 22.597307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.222404, 29.796385, 22.679012>,  <44.078892, 29.448734, 22.815187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.222404, 29.796385, 22.679012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139231, 0.310811, 0.940219,
		0.922980, -0.384731, -0.009497,
		0.358779, 0.869125, -0.340439,
		44.330040, 30.057123, 22.576881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.731693, 29.506506, 23.210331>,  <44.078892, 29.448734, 22.815187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.731693, 29.506506, 23.210331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.652435, 29.871864, 23.068096>,  <44.604881, 30.091080, 22.982756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.652435, 29.871864, 23.068096>,  <44.731693, 29.506506, 23.210331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.652435, 29.871864, 23.068096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166732, 0.388904, 0.906065,
		0.965888, 0.120245, -0.229352,
		-0.198145, 0.913398, -0.355589,
		44.592991, 30.145884, 22.961420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.170593, 29.914906, 23.569891>,  <44.731693, 29.506506, 23.210331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.170593, 29.914906, 23.569891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.887516, 30.161621, 23.432053>,  <44.717670, 30.309650, 23.349350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.887516, 30.161621, 23.432053>,  <45.170593, 29.914906, 23.569891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.887516, 30.161621, 23.432053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004753, 0.483568, 0.875294,
		0.706506, 0.621076, -0.339285,
		-0.707691, 0.616788, -0.344595,
		44.675209, 30.346657, 23.328674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.348797, 30.618109, 23.886343>,  <45.170593, 29.914906, 23.569891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.348797, 30.618109, 23.886343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.977932, 30.680986, 23.750305>,  <44.755413, 30.718712, 23.668682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.977932, 30.680986, 23.750305>,  <45.348797, 30.618109, 23.886343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.977932, 30.680986, 23.750305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226436, 0.488092, 0.842908,
		0.298496, 0.858520, -0.416945,
		-0.927161, 0.157193, -0.340093,
		44.699783, 30.728144, 23.648277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.156769, 31.323900, 24.229750>,  <45.348797, 30.618109, 23.886343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.156769, 31.323900, 24.229750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.830482, 31.137901, 24.092117>,  <44.634712, 31.026302, 24.009539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.830482, 31.137901, 24.092117>,  <45.156769, 31.323900, 24.229750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.830482, 31.137901, 24.092117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501329, 0.271536, 0.821546,
		-0.288587, 0.842642, -0.454612,
		-0.815713, -0.464997, -0.344079,
		44.585770, 30.998402, 23.988894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.671780, 31.837570, 24.306091>,  <45.156769, 31.323900, 24.229750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.671780, 31.837570, 24.306091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.511120, 31.471682, 24.323816>,  <44.414726, 31.252148, 24.334452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.511120, 31.471682, 24.323816>,  <44.671780, 31.837570, 24.306091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.511120, 31.471682, 24.323816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649850, 0.318771, 0.689985,
		-0.645270, 0.248334, -0.722466,
		-0.401648, -0.914722, 0.044314,
		44.390625, 31.197266, 24.337111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.843143, 31.945593, 24.159374>,  <44.671780, 31.837570, 24.306091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.843143, 31.945593, 24.159374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.926712, 31.598831, 24.340406>,  <43.976852, 31.390774, 24.449026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.926712, 31.598831, 24.340406>,  <43.843143, 31.945593, 24.159374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.926712, 31.598831, 24.340406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674686, 0.207240, 0.708414,
		-0.707919, -0.453354, -0.541591,
		0.208923, -0.866904, 0.452581,
		43.989388, 31.338760, 24.476181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.244328, 31.658913, 24.390512>,  <43.843143, 31.945593, 24.159374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.244328, 31.658913, 24.390512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.505653, 31.473288, 24.629786>,  <43.662449, 31.361912, 24.773350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.505653, 31.473288, 24.629786>,  <43.244328, 31.658913, 24.390512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.505653, 31.473288, 24.629786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560351, 0.234916, 0.794243,
		-0.509102, -0.854084, -0.106565,
		0.653316, -0.464064, 0.598182,
		43.701649, 31.334068, 24.809240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.779697, 31.296289, 24.903011>,  <43.244328, 31.658913, 24.390512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.779697, 31.296289, 24.903011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.134315, 31.331297, 25.084728>,  <43.347088, 31.352301, 25.193758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.134315, 31.331297, 25.084728>,  <42.779697, 31.296289, 24.903011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.134315, 31.331297, 25.084728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461756, 0.228232, 0.857142,
		-0.028671, -0.969666, 0.242748,
		0.886543, 0.087515, 0.454292,
		43.400280, 31.357552, 25.221016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.683811, 30.951267, 25.522453>,  <42.779697, 31.296289, 24.903011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.683811, 30.951267, 25.522453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.005127, 31.187260, 25.555059>,  <43.197918, 31.328854, 25.574623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.005127, 31.187260, 25.555059>,  <42.683811, 30.951267, 25.522453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.005127, 31.187260, 25.555059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311000, 0.298787, 0.902222,
		0.507937, -0.750100, 0.423497,
		0.803293, 0.589980, 0.081517,
		43.246117, 31.364254, 25.579515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.776936, 30.930187, 26.194290>,  <42.683811, 30.951267, 25.522453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.776936, 30.930187, 26.194290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.004505, 31.246710, 26.104704>,  <43.141048, 31.436623, 26.050953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.004505, 31.246710, 26.104704>,  <42.776936, 30.930187, 26.194290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.004505, 31.246710, 26.104704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299730, 0.453118, 0.839552,
		0.765825, -0.410511, 0.494967,
		0.568923, 0.791306, -0.223967,
		43.175182, 31.484102, 26.037514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.119328, 31.058115, 26.714806>,  <42.776936, 30.930187, 26.194290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.119328, 31.058115, 26.714806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.132420, 31.415798, 26.536226>,  <43.140274, 31.630409, 26.429079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.132420, 31.415798, 26.536226>,  <43.119328, 31.058115, 26.714806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.132420, 31.415798, 26.536226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367580, 0.426153, 0.826607,
		0.929416, 0.137051, 0.342641,
		0.032730, 0.894209, -0.446450,
		43.142239, 31.684061, 26.402290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.396553, 31.525282, 27.211100>,  <43.119328, 31.058115, 26.714806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.396553, 31.525282, 27.211100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.210056, 31.761238, 26.947388>,  <43.098160, 31.902811, 26.789160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.210056, 31.761238, 26.947388>,  <43.396553, 31.525282, 27.211100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.210056, 31.761238, 26.947388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364164, 0.551192, 0.750714,
		0.806228, 0.590100, -0.042172,
		-0.466241, 0.589889, -0.659280,
		43.070183, 31.938206, 26.749603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.475716, 32.260681, 27.442215>,  <43.396553, 31.525282, 27.211100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.475716, 32.260681, 27.442215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.152378, 32.243168, 27.207380>,  <42.958378, 32.232658, 27.066481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.152378, 32.243168, 27.207380>,  <43.475716, 32.260681, 27.442215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.152378, 32.243168, 27.207380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511951, 0.544660, 0.664268,
		0.290676, 0.837513, -0.462687,
		-0.808340, -0.043786, -0.587085,
		42.909878, 32.230034, 27.031254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.204506, 32.990879, 27.476667>,  <43.475716, 32.260681, 27.442215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.204506, 32.990879, 27.476667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.907047, 32.750977, 27.358494>,  <42.728573, 32.607037, 27.287590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.907047, 32.750977, 27.358494>,  <43.204506, 32.990879, 27.476667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.907047, 32.750977, 27.358494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528616, 0.256911, 0.809050,
		-0.409332, 0.757820, -0.508092,
		-0.743649, -0.599755, -0.295433,
		42.683952, 32.571049, 27.269863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.623169, 33.393742, 27.566452>,  <43.204506, 32.990879, 27.476667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.623169, 33.393742, 27.566452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.495670, 33.014977, 27.549702>,  <42.419170, 32.787716, 27.539652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.495670, 33.014977, 27.549702>,  <42.623169, 33.393742, 27.566452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.495670, 33.014977, 27.549702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707707, 0.208373, 0.675079,
		-0.630515, 0.244818, -0.736556,
		-0.318750, -0.946913, -0.041877,
		42.400043, 32.730904, 27.537138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.901260, 33.487835, 27.420191>,  <42.623169, 33.393742, 27.566452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.901260, 33.487835, 27.420191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.949707, 33.121483, 27.573290>,  <41.978775, 32.901672, 27.665150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.949707, 33.121483, 27.573290>,  <41.901260, 33.487835, 27.420191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.949707, 33.121483, 27.573290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802410, 0.136653, 0.580916,
		-0.584353, -0.377482, -0.718359,
		0.121120, -0.915878, 0.382750,
		41.986042, 32.846718, 27.688114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279919, 33.249355, 27.423731>,  <41.901260, 33.487835, 27.420191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.279919, 33.249355, 27.423731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.477089, 32.999912, 27.666430>,  <41.595390, 32.850246, 27.812048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.477089, 32.999912, 27.666430>,  <41.279919, 33.249355, 27.423731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.477089, 32.999912, 27.666430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659852, 0.186602, 0.727857,
		-0.567116, -0.759140, -0.319508,
		0.492925, -0.623607, 0.606745,
		41.624966, 32.812832, 27.848454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795509, 32.775818, 27.631802>,  <41.279919, 33.249355, 27.423731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795509, 32.775818, 27.631802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081409, 32.757812, 27.910973>,  <41.252949, 32.747009, 28.078476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081409, 32.757812, 27.910973>,  <40.795509, 32.775818, 27.631802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081409, 32.757812, 27.910973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672279, 0.230874, 0.703376,
		-0.192795, -0.971942, 0.134755,
		0.714752, -0.045014, 0.697928,
		41.295834, 32.744308, 28.120352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482685, 32.487305, 28.186930>,  <40.795509, 32.775818, 27.631802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482685, 32.487305, 28.186930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.816059, 32.610527, 28.370443>,  <41.016083, 32.684460, 28.480553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.816059, 32.610527, 28.370443>,  <40.482685, 32.487305, 28.186930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.816059, 32.610527, 28.370443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551633, 0.414280, 0.723929,
		0.032945, -0.856430, 0.515210,
		0.833436, 0.308057, 0.458787,
		41.066090, 32.702946, 28.508080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418606, 32.329651, 28.945841>,  <40.482685, 32.487305, 28.186930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418606, 32.329651, 28.945841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667294, 32.639858, 28.901962>,  <40.816505, 32.825985, 28.875635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667294, 32.639858, 28.901962>,  <40.418606, 32.329651, 28.945841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667294, 32.639858, 28.901962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380077, 0.421180, 0.823498,
		0.684841, -0.470292, 0.556613,
		0.621719, 0.775521, -0.109694,
		40.853809, 32.872513, 28.869055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584000, 32.382706, 29.631458>,  <40.418606, 32.329651, 28.945841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584000, 32.382706, 29.631458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.647255, 32.731697, 29.446514>,  <40.685207, 32.941090, 29.335548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.647255, 32.731697, 29.446514>,  <40.584000, 32.382706, 29.631458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.647255, 32.731697, 29.446514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218333, 0.487560, 0.845350,
		0.962976, -0.032736, 0.267593,
		0.158141, 0.872476, -0.462361,
		40.694698, 32.993439, 29.307806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948929, 32.787205, 30.092194>,  <40.584000, 32.382706, 29.631458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.948929, 32.787205, 30.092194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.814926, 33.062939, 29.835260>,  <40.734524, 33.228378, 29.681101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.814926, 33.062939, 29.835260>,  <40.948929, 32.787205, 30.092194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.814926, 33.062939, 29.835260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051139, 0.667418, 0.742925,
		0.940827, 0.281733, -0.188338,
		-0.335006, 0.689333, -0.642333,
		40.714424, 33.269737, 29.642561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469761, 33.412395, 30.039923>,  <40.948929, 32.787205, 30.092194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469761, 33.412395, 30.039923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094212, 33.516640, 29.949942>,  <40.868881, 33.579185, 29.895954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094212, 33.516640, 29.949942>,  <41.469761, 33.412395, 30.039923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094212, 33.516640, 29.949942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068900, 0.782440, 0.618902,
		0.337302, 0.565571, -0.752567,
		-0.938872, 0.260609, -0.224951,
		40.812550, 33.594822, 29.882456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.449547, 34.091732, 30.182497>,  <41.469761, 33.412395, 30.039923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.449547, 34.091732, 30.182497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.063187, 33.988575, 30.173368>,  <40.831371, 33.926682, 30.167892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.063187, 33.988575, 30.173368>,  <41.449547, 34.091732, 30.182497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.063187, 33.988575, 30.173368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190715, 0.649132, 0.736380,
		-0.175096, 0.715624, -0.676184,
		-0.965903, -0.257896, -0.022820,
		40.773415, 33.911205, 30.166523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115131, 34.741238, 30.283930>,  <41.449547, 34.091732, 30.182497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115131, 34.741238, 30.283930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.795650, 34.510746, 30.353251>,  <40.603962, 34.372452, 30.394844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.795650, 34.510746, 30.353251>,  <41.115131, 34.741238, 30.283930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795650, 34.510746, 30.353251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168632, 0.490822, 0.854785,
		-0.577611, 0.653496, -0.489192,
		-0.798705, -0.576226, 0.173303,
		40.556038, 34.337879, 30.405241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716587, 35.200096, 30.570240>,  <41.115131, 34.741238, 30.283930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716587, 35.200096, 30.570240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.536674, 34.856865, 30.669355>,  <40.428726, 34.650925, 30.728825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.536674, 34.856865, 30.669355>,  <40.716587, 35.200096, 30.570240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.536674, 34.856865, 30.669355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325276, 0.415757, 0.849319,
		-0.831802, 0.301406, -0.466111,
		-0.449779, -0.858079, 0.247787,
		40.401741, 34.599442, 30.743692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991039, 35.330441, 30.720129>,  <40.716587, 35.200096, 30.570240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991039, 35.330441, 30.720129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040318, 34.982098, 30.910465>,  <40.069885, 34.773090, 31.024668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040318, 34.982098, 30.910465>,  <39.991039, 35.330441, 30.720129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040318, 34.982098, 30.910465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546044, 0.340898, 0.765262,
		-0.828650, -0.354104, -0.433532,
		0.123192, -0.870861, 0.475841,
		40.077274, 34.720840, 31.053217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282490, 35.220314, 31.017138>,  <39.991039, 35.330441, 30.720129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282490, 35.220314, 31.017138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536186, 34.974377, 31.204626>,  <39.688404, 34.826813, 31.317120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536186, 34.974377, 31.204626>,  <39.282490, 35.220314, 31.017138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536186, 34.974377, 31.204626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316774, 0.346375, 0.882994,
		-0.705260, -0.708510, 0.024918,
		0.634241, -0.614847, 0.468722,
		39.726460, 34.789921, 31.345243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910919, 34.839695, 31.580421>,  <39.282490, 35.220314, 31.017138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910919, 34.839695, 31.580421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.299213, 34.814003, 31.672987>,  <39.532188, 34.798588, 31.728527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.299213, 34.814003, 31.672987>,  <38.910919, 34.839695, 31.580421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299213, 34.814003, 31.672987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221112, 0.137091, 0.965565,
		-0.093743, -0.988474, 0.118876,
		0.970732, -0.064230, 0.231415,
		39.590435, 34.794735, 31.742411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055107, 34.313225, 32.211975>,  <38.910919, 34.839695, 31.580421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055107, 34.313225, 32.211975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.363430, 34.567722, 32.199066>,  <39.548424, 34.720421, 32.191322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.363430, 34.567722, 32.199066>,  <39.055107, 34.313225, 32.211975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363430, 34.567722, 32.199066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087058, 0.155380, 0.984011,
		0.631087, -0.755678, 0.175159,
		0.770811, 0.636245, -0.032270,
		39.594673, 34.758595, 32.189384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299149, 34.182323, 32.818565>,  <39.055107, 34.313225, 32.211975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299149, 34.182323, 32.818565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467522, 34.530243, 32.715591>,  <39.568546, 34.738995, 32.653805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467522, 34.530243, 32.715591>,  <39.299149, 34.182323, 32.818565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467522, 34.530243, 32.715591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109065, 0.330278, 0.937562,
		0.900513, -0.366569, 0.233888,
		0.420928, 0.869795, -0.257439,
		39.593800, 34.791180, 32.638359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768600, 34.326794, 33.369835>,  <39.299149, 34.182323, 32.818565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768600, 34.326794, 33.369835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691189, 34.670624, 33.180656>,  <39.644741, 34.876923, 33.067150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691189, 34.670624, 33.180656>,  <39.768600, 34.326794, 33.369835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691189, 34.670624, 33.180656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033463, 0.475998, 0.878809,
		0.980524, 0.185897, -0.063354,
		-0.193524, 0.859574, -0.472948,
		39.633133, 34.928497, 33.038773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169476, 34.856850, 33.791454>,  <39.768600, 34.326794, 33.369835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169476, 34.856850, 33.791454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873638, 35.033619, 33.588398>,  <39.696136, 35.139679, 33.466564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873638, 35.033619, 33.588398>,  <40.169476, 34.856850, 33.791454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873638, 35.033619, 33.588398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110989, 0.663837, 0.739596,
		0.663837, 0.603345, -0.441922,
		-0.739596, 0.441922, -0.507644,
		39.651760, 35.166195, 33.436104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233410, 35.464573, 33.935101>,  <40.169476, 34.856850, 33.791454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233410, 35.464573, 33.935101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865063, 35.466805, 33.779163>,  <39.644054, 35.468143, 33.685600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865063, 35.466805, 33.779163>,  <40.233410, 35.464573, 33.935101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865063, 35.466805, 33.779163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301680, 0.623204, 0.721530,
		0.246978, 0.782039, -0.572203,
		-0.920864, 0.005580, -0.389843,
		39.588802, 35.468479, 33.662209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100277, 36.174084, 34.040180>,  <40.233410, 35.464573, 33.935101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100277, 36.174084, 34.040180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740524, 36.004978, 33.995674>,  <39.524673, 35.903515, 33.968971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740524, 36.004978, 33.995674>,  <40.100277, 36.174084, 34.040180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740524, 36.004978, 33.995674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361099, 0.574961, 0.734185,
		-0.246416, 0.700491, -0.669770,
		-0.899381, -0.422768, -0.111267,
		39.470711, 35.878147, 33.962296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632313, 36.646206, 34.079746>,  <40.100277, 36.174084, 34.040180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632313, 36.646206, 34.079746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380150, 36.348461, 34.167854>,  <39.228851, 36.169815, 34.220718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380150, 36.348461, 34.167854>,  <39.632313, 36.646206, 34.079746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380150, 36.348461, 34.167854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489479, 0.601401, 0.631448,
		-0.602494, 0.290251, -0.743475,
		-0.630405, -0.744360, 0.220269,
		39.191029, 36.125153, 34.233936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829266, 36.797123, 34.058712>,  <39.632313, 36.646206, 34.079746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829266, 36.797123, 34.058712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937428, 36.545925, 34.350601>,  <39.002323, 36.395206, 34.525734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937428, 36.545925, 34.350601>,  <38.829266, 36.797123, 34.058712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937428, 36.545925, 34.350601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394694, 0.619026, 0.678987,
		-0.878123, -0.471618, -0.080482,
		0.270402, -0.627999, 0.729726,
		39.018547, 36.357525, 34.569519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246792, 36.680679, 34.519211>,  <38.829266, 36.797123, 34.058712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246792, 36.680679, 34.519211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576466, 36.609867, 34.734390>,  <38.774269, 36.567379, 34.863499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576466, 36.609867, 34.734390>,  <38.246792, 36.680679, 34.519211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576466, 36.609867, 34.734390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350235, 0.587129, 0.729805,
		-0.445041, -0.789899, 0.421898,
		0.824181, -0.177030, 0.537946,
		38.823719, 36.556759, 34.895775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060539, 36.677792, 35.175323>,  <38.246792, 36.680679, 34.519211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060539, 36.677792, 35.175323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.449440, 36.759583, 35.220783>,  <38.682781, 36.808659, 35.248058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.449440, 36.759583, 35.220783>,  <38.060539, 36.677792, 35.175323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449440, 36.759583, 35.220783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217338, 0.609746, 0.762216,
		0.086555, -0.765767, 0.637267,
		0.972251, 0.204476, 0.113654,
		38.741116, 36.820927, 35.254879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042599, 36.756565, 35.837418>,  <38.060539, 36.677792, 35.175323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042599, 36.756565, 35.837418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389973, 36.900085, 35.700550>,  <38.598396, 36.986198, 35.618431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389973, 36.900085, 35.700550>,  <38.042599, 36.756565, 35.837418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389973, 36.900085, 35.700550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082853, 0.575405, 0.813661,
		0.488823, -0.734966, 0.469977,
		0.868440, 0.358797, -0.342165,
		38.650505, 37.007725, 35.597900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462322, 36.735783, 36.362839>,  <38.042599, 36.756565, 35.837418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462322, 36.735783, 36.362839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607265, 37.004894, 36.104828>,  <38.694233, 37.166363, 35.950020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607265, 37.004894, 36.104828>,  <38.462322, 36.735783, 36.362839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607265, 37.004894, 36.104828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030385, 0.700220, 0.713279,
		0.931544, -0.238863, 0.274173,
		0.362357, 0.672782, -0.645028,
		38.715973, 37.206730, 35.911320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964294, 37.100975, 36.771084>,  <38.462322, 36.735783, 36.362839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964294, 37.100975, 36.771084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875759, 37.342697, 36.464928>,  <38.822639, 37.487732, 36.281235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875759, 37.342697, 36.464928>,  <38.964294, 37.100975, 36.771084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875759, 37.342697, 36.464928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128790, 0.759870, 0.637190,
		0.966656, 0.239608, -0.090358,
		-0.221336, 0.604306, -0.765392,
		38.809357, 37.523991, 36.235310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265991, 37.741398, 36.911186>,  <38.964294, 37.100975, 36.771084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265991, 37.741398, 36.911186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985508, 37.842968, 36.644707>,  <38.817219, 37.903912, 36.484818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985508, 37.842968, 36.644707>,  <39.265991, 37.741398, 36.911186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985508, 37.842968, 36.644707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232546, 0.801859, 0.550403,
		0.673963, 0.540871, -0.503222,
		-0.701211, 0.253929, -0.666201,
		38.775146, 37.919147, 36.444847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436340, 38.431061, 36.677532>,  <39.265991, 37.741398, 36.911186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436340, 38.431061, 36.677532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047421, 38.351601, 36.628254>,  <38.814068, 38.303925, 36.598686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047421, 38.351601, 36.628254>,  <39.436340, 38.431061, 36.677532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047421, 38.351601, 36.628254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233440, 0.798087, 0.555485,
		-0.012028, 0.568854, -0.822350,
		-0.972297, -0.198651, -0.123194,
		38.755730, 38.292004, 36.591297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946972, 38.935192, 36.337811>,  <39.436340, 38.431061, 36.677532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946972, 38.935192, 36.337811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.792324, 38.747429, 36.655346>,  <38.699535, 38.634773, 36.845867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.792324, 38.747429, 36.655346>,  <38.946972, 38.935192, 36.337811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792324, 38.747429, 36.655346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200325, 0.882967, 0.424545,
		-0.900218, 0.005114, -0.435410,
		-0.386624, -0.469406, 0.793839,
		38.676338, 38.606606, 36.893497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273281, 39.326893, 36.496620>,  <38.946972, 38.935192, 36.337811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273281, 39.326893, 36.496620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032085, 39.068413, 36.683735>,  <37.887367, 38.913322, 36.796001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032085, 39.068413, 36.683735>,  <38.273281, 39.326893, 36.496620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032085, 39.068413, 36.683735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053676, 0.617918, 0.784408,
		-0.795939, 0.447884, -0.407286,
		-0.602993, -0.646202, 0.467784,
		37.851189, 38.874554, 36.824070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600491, 39.686600, 36.658310>,  <38.273281, 39.326893, 36.496620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600491, 39.686600, 36.658310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708611, 39.414486, 36.930824>,  <37.773483, 39.251217, 37.094334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708611, 39.414486, 36.930824>,  <37.600491, 39.686600, 36.658310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708611, 39.414486, 36.930824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062827, 0.693651, 0.717566,
		-0.960723, -0.236763, 0.144756,
		0.270304, -0.680288, 0.681282,
		37.789703, 39.210400, 37.135208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103359, 39.629585, 37.248352>,  <37.600491, 39.686600, 36.658310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103359, 39.629585, 37.248352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.453331, 39.517437, 37.406288>,  <37.663315, 39.450150, 37.501049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.453331, 39.517437, 37.406288>,  <37.103359, 39.629585, 37.248352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453331, 39.517437, 37.406288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085026, 0.713742, 0.695229,
		-0.476732, -0.641846, 0.600633,
		0.874927, -0.280369, 0.394837,
		37.715809, 39.433327, 37.524738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007942, 39.631500, 37.903431>,  <37.103359, 39.629585, 37.248352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007942, 39.631500, 37.903431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406483, 39.659248, 37.883556>,  <37.645607, 39.675896, 37.871632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406483, 39.659248, 37.883556>,  <37.007942, 39.631500, 37.903431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406483, 39.659248, 37.883556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010286, 0.675725, 0.737082,
		0.084704, -0.733883, 0.673974,
		0.996353, 0.069367, -0.049688,
		37.705387, 39.680058, 37.868649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307732, 39.540745, 38.578808>,  <37.007942, 39.631500, 37.903431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307732, 39.540745, 38.578808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.532269, 39.776390, 38.346310>,  <37.666988, 39.917778, 38.206810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.532269, 39.776390, 38.346310>,  <37.307732, 39.540745, 38.578808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532269, 39.776390, 38.346310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058033, 0.728632, 0.682442,
		0.825550, -0.349348, 0.443196,
		0.561337, 0.589110, -0.581248,
		37.700668, 39.953121, 38.171936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834599, 39.815762, 38.973274>,  <37.307732, 39.540745, 38.578808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834599, 39.815762, 38.973274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788975, 40.069786, 38.667675>,  <37.761600, 40.222198, 38.484314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788975, 40.069786, 38.667675>,  <37.834599, 39.815762, 38.973274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788975, 40.069786, 38.667675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018598, 0.767516, 0.640760,
		0.993300, 0.087295, -0.075733,
		-0.114062, 0.635058, -0.763997,
		37.754757, 40.260303, 38.438477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111027, 40.461948, 39.289368>,  <37.834599, 39.815762, 38.973274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111027, 40.461948, 39.289368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.994419, 40.613255, 38.937931>,  <37.924454, 40.704037, 38.727070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.994419, 40.613255, 38.937931>,  <38.111027, 40.461948, 39.289368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994419, 40.613255, 38.937931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064628, 0.908603, 0.412629,
		0.954378, 0.177073, -0.240433,
		-0.291524, 0.378265, -0.878595,
		37.906963, 40.726734, 38.674351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599682, 40.988651, 39.125771>,  <38.111027, 40.461948, 39.289368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599682, 40.988651, 39.125771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264210, 41.089348, 38.932590>,  <38.062927, 41.149765, 38.816681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264210, 41.089348, 38.932590>,  <38.599682, 40.988651, 39.125771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264210, 41.089348, 38.932590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169695, 0.721830, 0.670944,
		0.517509, 0.644663, -0.562667,
		-0.838683, 0.251738, -0.482949,
		38.012604, 41.164867, 38.787704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606739, 41.671329, 39.048431>,  <38.599682, 40.988651, 39.125771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606739, 41.671329, 39.048431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212620, 41.607994, 39.022770>,  <37.976147, 41.569992, 39.007374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212620, 41.607994, 39.022770>,  <38.606739, 41.671329, 39.048431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212620, 41.607994, 39.022770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164649, 0.779903, 0.603856,
		-0.045575, 0.605542, -0.794507,
		-0.985299, -0.158336, -0.064158,
		37.917030, 41.560493, 39.003521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308098, 42.271667, 38.752140>,  <38.606739, 41.671329, 39.048431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308098, 42.271667, 38.752140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018616, 42.089462, 38.959507>,  <37.844925, 41.980141, 39.083927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018616, 42.089462, 38.959507>,  <38.308098, 42.271667, 38.752140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018616, 42.089462, 38.959507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077295, 0.799989, 0.595015,
		-0.685766, 0.390545, -0.614166,
		-0.723706, -0.455513, 0.518418,
		37.801502, 41.952808, 39.115032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621895, 42.604897, 38.730953>,  <38.308098, 42.271667, 38.752140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621895, 42.604897, 38.730953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615669, 42.391880, 39.069458>,  <37.611935, 42.264069, 39.272560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615669, 42.391880, 39.069458>,  <37.621895, 42.604897, 38.730953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615669, 42.391880, 39.069458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373249, 0.788276, 0.489190,
		-0.927601, -0.308251, -0.211041,
		-0.015565, -0.532544, 0.846260,
		37.611000, 42.232117, 39.323338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901127, 42.466843, 39.022095>,  <37.621895, 42.604897, 38.730953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901127, 42.466843, 39.022095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244370, 42.539528, 39.214188>,  <37.450317, 42.583138, 39.329445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244370, 42.539528, 39.214188>,  <36.901127, 42.466843, 39.022095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244370, 42.539528, 39.214188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283160, 0.947681, 0.147383,
		-0.428330, -0.262455, 0.864668,
		0.858111, 0.181711, 0.480236,
		37.501804, 42.594040, 39.358257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731514, 42.761154, 39.704094>,  <36.901127, 42.466843, 39.022095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731514, 42.761154, 39.704094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091759, 42.879375, 39.576630>,  <37.307907, 42.950310, 39.500153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091759, 42.879375, 39.576630>,  <36.731514, 42.761154, 39.704094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091759, 42.879375, 39.576630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252217, 0.952509, 0.170624,
		0.353955, -0.073295, 0.932386,
		0.900612, 0.295557, -0.318659,
		37.361942, 42.968044, 39.481033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052612, 43.207726, 40.189507>,  <36.731514, 42.761154, 39.704094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052612, 43.207726, 40.189507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126976, 43.289192, 39.805016>,  <37.171597, 43.338074, 39.574322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126976, 43.289192, 39.805016>,  <37.052612, 43.207726, 40.189507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126976, 43.289192, 39.805016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327529, 0.935175, 0.134802,
		0.926370, 0.289768, 0.240569,
		0.185912, 0.203670, -0.961226,
		37.182751, 43.350292, 39.516647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526806, 42.595924, 40.415634>,  <37.052612, 43.207726, 40.189507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526806, 42.595924, 40.415634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.226269, 42.333900, 40.447590>,  <37.045948, 42.176685, 40.466763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.226269, 42.333900, 40.447590>,  <37.526806, 42.595924, 40.415634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226269, 42.333900, 40.447590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124977, -0.260118, -0.957455,
		0.647970, -0.709392, 0.277306,
		-0.751343, -0.655059, 0.079891,
		37.000866, 42.137383, 40.471558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688160, 41.918728, 40.388725>,  <37.526806, 42.595924, 40.415634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688160, 41.918728, 40.388725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347153, 41.975529, 40.187508>,  <37.142548, 42.009609, 40.066776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347153, 41.975529, 40.187508>,  <37.688160, 41.918728, 40.388725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347153, 41.975529, 40.187508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405460, -0.427711, -0.807877,
		-0.329877, -0.892692, 0.307054,
		-0.852515, 0.142002, -0.503043,
		37.091396, 42.018131, 40.036594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394493, 41.396912, 40.070293>,  <37.688160, 41.918728, 40.388725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394493, 41.396912, 40.070293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345943, 41.715076, 39.832775>,  <37.316814, 41.905975, 39.690266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345943, 41.715076, 39.832775>,  <37.394493, 41.396912, 40.070293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345943, 41.715076, 39.832775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258018, -0.552369, -0.792664,
		-0.958486, -0.249415, -0.138190,
		-0.121371, 0.795412, -0.593792,
		37.309532, 41.953701, 39.654636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727325, 41.340385, 39.676941>,  <37.394493, 41.396912, 40.070293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727325, 41.340385, 39.676941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042496, 41.533642, 39.524231>,  <37.231598, 41.649597, 39.432606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042496, 41.533642, 39.524231>,  <36.727325, 41.340385, 39.676941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042496, 41.533642, 39.524231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063525, -0.680455, -0.730032,
		-0.612491, 0.550955, -0.566836,
		0.787921, 0.483146, -0.381773,
		37.278873, 41.678585, 39.409698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654568, 41.274334, 38.931828>,  <36.727325, 41.340385, 39.676941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654568, 41.274334, 38.931828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.040062, 41.378986, 38.952877>,  <37.271358, 41.441776, 38.965508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.040062, 41.378986, 38.952877>,  <36.654568, 41.274334, 38.931828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040062, 41.378986, 38.952877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198040, -0.568943, -0.798175,
		-0.178884, 0.779650, -0.600122,
		0.963733, 0.261629, 0.052627,
		37.329182, 41.457474, 38.968666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794174, 41.354660, 38.302872>,  <36.654568, 41.274334, 38.931828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794174, 41.354660, 38.302872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163910, 41.304173, 38.446907>,  <37.385750, 41.273880, 38.533329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163910, 41.304173, 38.446907>,  <36.794174, 41.354660, 38.302872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163910, 41.304173, 38.446907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182773, -0.681934, -0.708209,
		0.334950, 0.720440, -0.607268,
		0.924339, -0.126223, 0.360091,
		37.441212, 41.266304, 38.554935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096165, 41.246498, 37.766689>,  <36.794174, 41.354660, 38.302872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096165, 41.246498, 37.766689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.368713, 41.104057, 38.022480>,  <37.532242, 41.018593, 38.175953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.368713, 41.104057, 38.022480>,  <37.096165, 41.246498, 37.766689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368713, 41.104057, 38.022480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306203, -0.654863, -0.690937,
		0.664811, 0.666593, -0.337166,
		0.681371, -0.356101, 0.639473,
		37.573124, 40.997227, 38.214321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717030, 41.067398, 37.459385>,  <37.096165, 41.246498, 37.766689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717030, 41.067398, 37.459385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.737888, 40.820312, 37.773254>,  <37.750404, 40.672062, 37.961575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.737888, 40.820312, 37.773254>,  <37.717030, 41.067398, 37.459385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737888, 40.820312, 37.773254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246108, -0.753557, -0.609575,
		0.967839, 0.224902, 0.112728,
		0.052148, -0.617714, 0.784672,
		37.753532, 40.634998, 38.008656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319820, 40.815239, 37.385635>,  <37.717030, 41.067398, 37.459385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319820, 40.815239, 37.385635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122078, 40.545521, 37.605064>,  <38.003433, 40.383690, 37.736721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122078, 40.545521, 37.605064>,  <38.319820, 40.815239, 37.385635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122078, 40.545521, 37.605064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284460, -0.721829, -0.630909,
		0.821397, -0.155846, 0.548651,
		-0.494357, -0.674296, 0.548576,
		37.973770, 40.343231, 37.769638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778587, 40.206207, 37.620266>,  <38.319820, 40.815239, 37.385635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778587, 40.206207, 37.620266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.399101, 40.080189, 37.609791>,  <38.171410, 40.004578, 37.603508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.399101, 40.080189, 37.609791>,  <38.778587, 40.206207, 37.620266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399101, 40.080189, 37.609791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266029, -0.750853, -0.604523,
		0.170795, -0.580485, 0.796157,
		-0.948714, -0.315050, -0.026184,
		38.114487, 39.985672, 37.601936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468044, 39.624683, 38.233673>,  <38.778587, 40.206207, 37.620266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468044, 39.624683, 38.233673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106678, 39.453182, 38.234615>,  <37.889858, 39.350281, 38.235180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106678, 39.453182, 38.234615>,  <38.468044, 39.624683, 38.233673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106678, 39.453182, 38.234615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261494, -0.555335, -0.789445,
		0.339788, -0.712582, 0.613817,
		-0.903418, -0.428754, 0.002360,
		37.835651, 39.324554, 38.235325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598560, 38.946907, 38.191647>,  <38.468044, 39.624683, 38.233673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598560, 38.946907, 38.191647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244942, 39.021805, 38.020348>,  <38.032768, 39.066742, 37.917568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244942, 39.021805, 38.020348>,  <38.598560, 38.946907, 38.191647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244942, 39.021805, 38.020348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268593, -0.546332, -0.793334,
		-0.382511, -0.816371, 0.432693,
		-0.884049, 0.187241, -0.428249,
		37.979729, 39.077976, 37.891872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347603, 38.359226, 37.914845>,  <38.598560, 38.946907, 38.191647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347603, 38.359226, 37.914845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168419, 38.632309, 37.683937>,  <38.060909, 38.796158, 37.545391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168419, 38.632309, 37.683937>,  <38.347603, 38.359226, 37.914845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168419, 38.632309, 37.683937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194305, -0.555903, -0.808219,
		-0.872684, -0.474217, 0.116369,
		-0.447960, 0.682708, -0.577270,
		38.034031, 38.837120, 37.510757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902203, 38.019657, 37.509945>,  <38.347603, 38.359226, 37.914845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902203, 38.019657, 37.509945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.986729, 38.346718, 37.295734>,  <38.037445, 38.542953, 37.167206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.986729, 38.346718, 37.295734>,  <37.902203, 38.019657, 37.509945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986729, 38.346718, 37.295734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291614, -0.575688, -0.763901,
		-0.932904, 0.005252, -0.360088,
		0.211311, 0.817653, -0.535529,
		38.050121, 38.592014, 37.135075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726494, 37.841122, 36.923939>,  <37.902203, 38.019657, 37.509945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726494, 37.841122, 36.923939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.953415, 38.164913, 36.863388>,  <38.089569, 38.359188, 36.827057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.953415, 38.164913, 36.863388>,  <37.726494, 37.841122, 36.923939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953415, 38.164913, 36.863388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393122, -0.427728, -0.813944,
		-0.723616, 0.402244, -0.560874,
		0.567305, 0.809474, -0.151380,
		38.123608, 38.407757, 36.817974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546085, 38.159428, 36.317295>,  <37.726494, 37.841122, 36.923939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546085, 38.159428, 36.317295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932457, 38.179821, 36.418789>,  <38.164280, 38.192059, 36.479683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932457, 38.179821, 36.418789>,  <37.546085, 38.159428, 36.317295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932457, 38.179821, 36.418789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223857, -0.656585, -0.720267,
		0.129874, 0.752527, -0.645628,
		0.965930, 0.050984, 0.253732,
		38.222237, 38.195118, 36.494907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838223, 38.260216, 35.613457>,  <37.546085, 38.159428, 36.317295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838223, 38.260216, 35.613457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118214, 38.140995, 35.873055>,  <38.286209, 38.069462, 36.028812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118214, 38.140995, 35.873055>,  <37.838223, 38.260216, 35.613457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118214, 38.140995, 35.873055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447186, -0.525619, -0.723705,
		0.556824, 0.796800, -0.234639,
		0.699980, -0.298049, 0.648995,
		38.328209, 38.051579, 36.067753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425583, 38.235508, 35.134113>,  <37.838223, 38.260216, 35.613457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425583, 38.235508, 35.134113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532932, 38.025776, 35.457359>,  <38.597340, 37.899937, 35.651306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532932, 38.025776, 35.457359>,  <38.425583, 38.235508, 35.134113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532932, 38.025776, 35.457359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544545, -0.609429, -0.576252,
		0.794637, 0.594707, 0.121968,
		0.268370, -0.524328, 0.808120,
		38.613441, 37.868477, 35.699795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222752, 38.067558, 35.107216>,  <38.425583, 38.235508, 35.134113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222752, 38.067558, 35.107216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032803, 37.810429, 35.347641>,  <38.918835, 37.656151, 35.491898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032803, 37.810429, 35.347641>,  <39.222752, 38.067558, 35.107216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032803, 37.810429, 35.347641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501635, -0.758881, -0.415286,
		0.723089, 0.104305, 0.682834,
		-0.474873, -0.642822, 0.601062,
		38.890339, 37.617580, 35.527958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763596, 37.629608, 35.352566>,  <39.222752, 38.067558, 35.107216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763596, 37.629608, 35.352566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426075, 37.421204, 35.404034>,  <39.223564, 37.296162, 35.434914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426075, 37.421204, 35.404034>,  <39.763596, 37.629608, 35.352566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426075, 37.421204, 35.404034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430104, -0.799926, -0.418483,
		0.320959, -0.297774, 0.899064,
		-0.843798, -0.521007, 0.128670,
		39.172935, 37.264900, 35.442635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994175, 36.975071, 35.450962>,  <39.763596, 37.629608, 35.352566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994175, 36.975071, 35.450962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604355, 36.917278, 35.382408>,  <39.370461, 36.882603, 35.341278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604355, 36.917278, 35.382408>,  <39.994175, 36.975071, 35.450962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604355, 36.917278, 35.382408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208962, -0.862253, -0.461362,
		-0.081119, -0.485434, 0.870502,
		-0.974553, -0.144477, -0.171382,
		39.311989, 36.873936, 35.330994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886967, 36.305397, 35.631084>,  <39.994175, 36.975071, 35.450962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886967, 36.305397, 35.631084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571964, 36.383347, 35.397213>,  <39.382961, 36.430115, 35.256889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571964, 36.383347, 35.397213>,  <39.886967, 36.305397, 35.631084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571964, 36.383347, 35.397213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193935, -0.822143, -0.535229,
		-0.584995, -0.534888, 0.609652,
		-0.787509, 0.194874, -0.584683,
		39.335712, 36.441807, 35.221809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462154, 35.714622, 35.724377>,  <39.886967, 36.305397, 35.631084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462154, 35.714622, 35.724377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347569, 35.897228, 35.387440>,  <39.278816, 36.006790, 35.185280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347569, 35.897228, 35.387440>,  <39.462154, 35.714622, 35.724377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347569, 35.897228, 35.387440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085773, -0.863434, -0.497116,
		-0.954244, -0.214656, 0.208187,
		-0.286464, 0.456513, -0.842338,
		39.261627, 36.034184, 35.134739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638828, 35.054127, 35.475449>,  <39.462154, 35.714622, 35.724377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638828, 35.054127, 35.475449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927578, 34.784042, 35.414803>,  <40.100826, 34.621990, 35.378414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927578, 34.784042, 35.414803>,  <39.638828, 35.054127, 35.475449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927578, 34.784042, 35.414803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615244, 0.525889, 0.587295,
		-0.316814, -0.517235, 0.795045,
		0.721876, -0.675210, -0.151617,
		40.144142, 34.581478, 35.369316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109035, 34.878498, 36.058147>,  <39.638828, 35.054127, 35.475449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109035, 34.878498, 36.058147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365009, 34.842789, 35.752857>,  <40.518593, 34.821365, 35.569683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365009, 34.842789, 35.752857>,  <40.109035, 34.878498, 36.058147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365009, 34.842789, 35.752857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683454, 0.520129, 0.512208,
		0.351251, -0.849410, 0.393860,
		0.639932, -0.089271, -0.763228,
		40.556988, 34.816006, 35.523888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714024, 34.476372, 36.204380>,  <40.109035, 34.878498, 36.058147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714024, 34.476372, 36.204380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809181, 34.761757, 35.940750>,  <40.866276, 34.932987, 35.782570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809181, 34.761757, 35.940750>,  <40.714024, 34.476372, 36.204380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809181, 34.761757, 35.940750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573380, 0.444552, 0.688193,
		0.783991, -0.541618, -0.303327,
		0.237893, 0.713459, -0.659078,
		40.880550, 34.975796, 35.743027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196075, 35.020996, 36.454933>,  <40.714024, 34.476372, 36.204380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.196075, 35.020996, 36.454933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.157028, 35.184776, 36.092094>,  <41.133598, 35.283047, 35.874393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.157028, 35.184776, 36.092094>,  <41.196075, 35.020996, 36.454933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.157028, 35.184776, 36.092094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525166, 0.795411, 0.302525,
		0.845382, -0.446843, -0.292678,
		-0.097618, 0.409454, -0.907093,
		41.127743, 35.307613, 35.819965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861851, 35.022194, 36.123585>,  <41.196075, 35.020996, 36.454933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.861851, 35.022194, 36.123585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.626301, 35.325283, 36.011101>,  <41.484970, 35.507137, 35.943611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.626301, 35.325283, 36.011101>,  <41.861851, 35.022194, 36.123585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.626301, 35.325283, 36.011101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625779, 0.647650, 0.434684,
		0.511497, 0.079999, -0.855553,
		-0.588873, 0.757727, -0.281209,
		41.449638, 35.552601, 35.926739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.141064, 35.512959, 35.675388>,  <41.861851, 35.022194, 36.123585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.141064, 35.512959, 35.675388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890884, 35.718765, 35.910023>,  <41.740776, 35.842251, 36.050804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890884, 35.718765, 35.910023>,  <42.141064, 35.512959, 35.675388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.890884, 35.718765, 35.910023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773375, 0.508476, 0.378606,
		-0.103466, 0.690451, -0.715941,
		-0.625448, 0.514518, 0.586588,
		41.703251, 35.873119, 36.085999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.001080, 36.222149, 35.451565>,  <42.141064, 35.512959, 35.675388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.001080, 36.222149, 35.451565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980087, 36.186550, 35.849422>,  <41.967491, 36.165192, 36.088139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980087, 36.186550, 35.849422>,  <42.001080, 36.222149, 35.451565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.980087, 36.186550, 35.849422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855710, 0.509439, 0.090736,
		-0.514787, 0.855893, 0.049417,
		-0.052485, -0.088996, 0.994648,
		41.964340, 36.159851, 36.147816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.019630, 36.870014, 35.839428>,  <42.001080, 36.222149, 35.451565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.019630, 36.870014, 35.839428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183308, 36.584023, 36.066185>,  <42.281513, 36.412426, 36.202240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183308, 36.584023, 36.066185>,  <42.019630, 36.870014, 35.839428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183308, 36.584023, 36.066185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825561, 0.554703, 0.103696,
		-0.388596, 0.425570, 0.817242,
		0.409197, -0.714979, 0.566889,
		42.306068, 36.369530, 36.236252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.166561, 37.086769, 36.567329>,  <42.019630, 36.870014, 35.839428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.166561, 37.086769, 36.567329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412724, 36.792355, 36.454525>,  <42.560421, 36.615707, 36.386841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412724, 36.792355, 36.454525>,  <42.166561, 37.086769, 36.567329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.412724, 36.792355, 36.454525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754330, 0.653737, -0.060116,
		0.228611, -0.175737, 0.957525,
		0.615405, -0.736033, -0.282015,
		42.597343, 36.571545, 36.369919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.783466, 37.205189, 36.871513>,  <42.166561, 37.086769, 36.567329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.783466, 37.205189, 36.871513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.868656, 36.966213, 36.562267>,  <42.919769, 36.822830, 36.376720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.868656, 36.966213, 36.562267>,  <42.783466, 37.205189, 36.871513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.868656, 36.966213, 36.562267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772437, 0.587501, -0.241213,
		0.598317, -0.545814, 0.586603,
		0.212973, -0.597436, -0.773119,
		42.932549, 36.786983, 36.330330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.419083, 36.862091, 36.890675>,  <42.783466, 37.205189, 36.871513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.419083, 36.862091, 36.890675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.314205, 36.922161, 36.509373>,  <43.251278, 36.958202, 36.280590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.314205, 36.922161, 36.509373>,  <43.419083, 36.862091, 36.890675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.314205, 36.922161, 36.509373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714099, 0.694620, -0.086982,
		0.649089, -0.703526, -0.289368,
		-0.262195, 0.150178, -0.953258,
		43.235546, 36.967216, 36.223396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.893284, 36.626488, 36.454063>,  <43.419083, 36.862091, 36.890675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.893284, 36.626488, 36.454063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.643932, 36.392437, 36.246593>,  <43.494320, 36.252007, 36.122112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.643932, 36.392437, 36.246593>,  <43.893284, 36.626488, 36.454063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.643932, 36.392437, 36.246593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529210, 0.172601, -0.830750,
		0.575619, -0.792360, 0.202060,
		-0.623377, -0.585127, -0.518678,
		43.456921, 36.216900, 36.090992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.289406, 36.783848, 35.819813>,  <43.893284, 36.626488, 36.454063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.289406, 36.783848, 35.819813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.899979, 36.692497, 35.818188>,  <43.666325, 36.637688, 35.817211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.899979, 36.692497, 35.818188>,  <44.289406, 36.783848, 35.819813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.899979, 36.692497, 35.818188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073758, 0.297479, 0.951875,
		-0.216181, 0.927011, -0.306459,
		-0.973563, -0.228381, -0.004065,
		43.607910, 36.623981, 35.816967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.847973, 36.784794, 35.297260>,  <44.289406, 36.783848, 35.819813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.847973, 36.784794, 35.297260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.720798, 36.436146, 35.148026>,  <44.644493, 36.226955, 35.058487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.720798, 36.436146, 35.148026>,  <44.847973, 36.784794, 35.297260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.720798, 36.436146, 35.148026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232043, 0.309999, -0.921985,
		0.919279, -0.379701, 0.103695,
		-0.317934, -0.871624, -0.373082,
		44.625420, 36.174660, 35.036102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.340767, 36.598961, 34.772793>,  <44.847973, 36.784794, 35.297260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.340767, 36.598961, 34.772793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.998211, 36.399292, 34.719990>,  <44.792679, 36.279491, 34.688309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.998211, 36.399292, 34.719990>,  <45.340767, 36.598961, 34.772793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.998211, 36.399292, 34.719990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011572, 0.274148, -0.961618,
		0.516203, -0.821991, -0.240553,
		-0.856388, -0.499174, -0.132004,
		44.741295, 36.249538, 34.680389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.071491, 36.728153, 35.090267>,  <45.340767, 36.598961, 34.772793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.071491, 36.728153, 35.090267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.924366, 36.415306, 35.291466>,  <45.836090, 36.227596, 35.412186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.924366, 36.415306, 35.291466>,  <46.071491, 36.728153, 35.090267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.924366, 36.415306, 35.291466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402535, -0.621519, -0.672071,
		0.838262, -0.044720, 0.543431,
		-0.367808, -0.782121, 0.502995,
		45.814022, 36.180668, 35.442364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.064625, 36.259064, 34.514053>,  <46.071491, 36.728153, 35.090267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.064625, 36.259064, 34.514053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.118721, 35.896809, 34.674812>,  <46.151176, 35.679455, 34.771267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.118721, 35.896809, 34.674812>,  <46.064625, 36.259064, 34.514053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.118721, 35.896809, 34.674812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966257, 0.030804, -0.255730,
		0.219219, 0.422925, 0.879248,
		0.135239, -0.905641, 0.401901,
		46.159294, 35.625114, 34.795383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.708298, 36.352966, 34.837265>,  <46.064625, 36.259064, 34.514053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.708298, 36.352966, 34.837265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.636150, 35.979424, 34.713734>,  <46.592861, 35.755299, 34.639614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.636150, 35.979424, 34.713734>,  <46.708298, 36.352966, 34.837265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.636150, 35.979424, 34.713734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967890, -0.112620, -0.224734,
		0.175089, -0.339451, 0.924184,
		-0.180368, -0.933858, -0.308832,
		46.582039, 35.699265, 34.621082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.291451, 35.975002, 34.957878>,  <46.708298, 36.352966, 34.837265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.291451, 35.975002, 34.957878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.110847, 35.691895, 34.740547>,  <47.002483, 35.522030, 34.610149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.110847, 35.691895, 34.740547>,  <47.291451, 35.975002, 34.957878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.110847, 35.691895, 34.740547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887684, -0.294679, -0.353809,
		0.090308, -0.642050, 0.761325,
		-0.451510, -0.707768, -0.543326,
		46.975395, 35.479565, 34.577549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.458622, 35.352150, 35.190769>,  <47.291451, 35.975002, 34.957878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.458622, 35.352150, 35.190769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.375614, 35.244389, 34.814610>,  <47.325809, 35.179733, 34.588913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.375614, 35.244389, 34.814610>,  <47.458622, 35.352150, 35.190769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.375614, 35.244389, 34.814610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789381, -0.613901, 0.001673,
		-0.577765, -0.741989, 0.340057,
		-0.207520, -0.269402, -0.940403,
		47.313358, 35.163567, 34.532490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.962151, 34.851143, 35.044113>,  <47.458622, 35.352150, 35.190769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.962151, 34.851143, 35.044113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.787292, 34.921108, 34.691227>,  <47.682377, 34.963089, 34.479496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.787292, 34.921108, 34.691227>,  <47.962151, 34.851143, 35.044113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.787292, 34.921108, 34.691227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677261, -0.581412, -0.450862,
		-0.591798, -0.794584, 0.135693,
		-0.437141, 0.174919, -0.882219,
		47.656147, 34.973583, 34.426563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.543171, 29.329901, 26.048151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.193722, 29.511164, 25.977234>,  <37.984051, 29.619921, 25.934685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.193722, 29.511164, 25.977234>,  <38.543171, 29.329901, 26.048151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193722, 29.511164, 25.977234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072311, 0.481200, 0.873623,
		0.481200, 0.750398, -0.453155,
		-0.873623, 0.453155, -0.177292,
		37.931633, 29.647110, 25.924046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538177, 29.953266, 26.326580>,  <38.543171, 29.329901, 26.048151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538177, 29.953266, 26.326580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.139061, 29.969604, 26.305609>,  <37.899593, 29.979408, 26.293026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.139061, 29.969604, 26.305609>,  <38.538177, 29.953266, 26.326580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139061, 29.969604, 26.305609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022974, 0.528212, 0.848802,
		0.062364, 0.848130, -0.526106,
		-0.997789, 0.040848, -0.052426,
		37.839725, 29.981859, 26.289881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300045, 30.631695, 26.689146>,  <38.538177, 29.953266, 26.326580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300045, 30.631695, 26.689146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.948097, 30.448631, 26.637959>,  <37.736927, 30.338793, 26.607246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.948097, 30.448631, 26.637959>,  <38.300045, 30.631695, 26.689146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948097, 30.448631, 26.637959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394572, 0.553495, 0.733456,
		-0.264841, 0.695840, -0.667583,
		-0.879871, -0.457658, -0.127971,
		37.684135, 30.311335, 26.599567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765316, 31.126400, 26.527897>,  <38.300045, 30.631695, 26.689146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765316, 31.126400, 26.527897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.620205, 30.795870, 26.700212>,  <37.533138, 30.597551, 26.803602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.620205, 30.795870, 26.700212>,  <37.765316, 31.126400, 26.527897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620205, 30.795870, 26.700212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391111, 0.554607, 0.734468,
		-0.845829, 0.097959, -0.524382,
		-0.362773, -0.826327, 0.430790,
		37.511372, 30.547972, 26.829449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084023, 31.311256, 26.850195>,  <37.765316, 31.126400, 26.527897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084023, 31.311256, 26.850195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.123703, 30.951599, 27.020699>,  <37.147511, 30.735804, 27.123001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.123703, 30.951599, 27.020699>,  <37.084023, 31.311256, 26.850195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123703, 30.951599, 27.020699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360462, 0.366807, 0.857625,
		-0.927484, -0.238731, -0.287718,
		0.099205, -0.899144, 0.426261,
		37.153465, 30.681856, 27.148577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392071, 31.231112, 27.089762>,  <37.084023, 31.311256, 26.850195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392071, 31.231112, 27.089762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.644005, 30.992769, 27.289064>,  <36.795166, 30.849764, 27.408646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.644005, 30.992769, 27.289064>,  <36.392071, 31.231112, 27.089762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644005, 30.992769, 27.289064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386886, 0.315575, 0.866448,
		-0.673517, -0.738489, -0.031768,
		0.629836, -0.595858, 0.498256,
		36.832954, 30.814013, 27.438541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986107, 30.904781, 27.624443>,  <36.392071, 31.231112, 27.089762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986107, 30.904781, 27.624443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.364475, 30.857679, 27.745356>,  <36.591496, 30.829418, 27.817904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.364475, 30.857679, 27.745356>,  <35.986107, 30.904781, 27.624443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364475, 30.857679, 27.745356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289964, 0.110943, 0.950585,
		-0.145473, -0.986826, 0.070798,
		0.945916, -0.117755, 0.302283,
		36.648251, 30.822353, 27.836040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018040, 30.428907, 28.218969>,  <35.986107, 30.904781, 27.624443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018040, 30.428907, 28.218969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.350250, 30.650326, 28.243683>,  <36.549576, 30.783176, 28.258511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.350250, 30.650326, 28.243683>,  <36.018040, 30.428907, 28.218969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350250, 30.650326, 28.243683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225705, 0.233061, 0.945907,
		0.509205, -0.799542, 0.318501,
		0.830522, 0.553548, 0.061785,
		36.599407, 30.816391, 28.262218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159073, 30.372107, 28.870140>,  <36.018040, 30.428907, 28.218969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159073, 30.372107, 28.870140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.368298, 30.692268, 28.752998>,  <36.493832, 30.884365, 28.682714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.368298, 30.692268, 28.752998>,  <36.159073, 30.372107, 28.870140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368298, 30.692268, 28.752998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145693, 0.422517, 0.894569,
		0.839751, -0.425247, 0.337615,
		0.523061, 0.800403, -0.292853,
		36.525215, 30.932388, 28.665142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585278, 30.464476, 29.399387>,  <36.159073, 30.372107, 28.870140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585278, 30.464476, 29.399387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.606556, 30.806402, 29.192907>,  <36.619324, 31.011559, 29.069019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.606556, 30.806402, 29.192907>,  <36.585278, 30.464476, 29.399387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606556, 30.806402, 29.192907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075248, 0.518892, 0.851521,
		0.995745, -0.006456, 0.091927,
		0.053197, 0.854815, -0.516199,
		36.622517, 31.062847, 29.038048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106773, 30.786373, 29.633394>,  <36.585278, 30.464476, 29.399387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106773, 30.786373, 29.633394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.886475, 31.084215, 29.482534>,  <36.754295, 31.262920, 29.392019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.886475, 31.084215, 29.482534>,  <37.106773, 30.786373, 29.633394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886475, 31.084215, 29.482534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101202, 0.508090, 0.855338,
		0.828514, 0.432907, -0.355185,
		-0.550748, 0.744604, -0.377149,
		36.721249, 31.307596, 29.369390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437149, 31.551176, 29.768904>,  <37.106773, 30.786373, 29.633394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437149, 31.551176, 29.768904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.050316, 31.631281, 29.706102>,  <36.818218, 31.679344, 29.668423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.050316, 31.631281, 29.706102>,  <37.437149, 31.551176, 29.768904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050316, 31.631281, 29.706102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091378, 0.302531, 0.948749,
		0.237497, 0.931863, -0.274272,
		-0.967081, 0.200263, -0.157002,
		36.760193, 31.691360, 29.659002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352009, 32.222107, 29.987640>,  <37.437149, 31.551176, 29.768904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352009, 32.222107, 29.987640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.964764, 32.124741, 29.963964>,  <36.732418, 32.066319, 29.949759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.964764, 32.124741, 29.963964>,  <37.352009, 32.222107, 29.987640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964764, 32.124741, 29.963964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181023, 0.516439, 0.836972,
		-0.173168, 0.820998, -0.544036,
		-0.968113, -0.243419, -0.059189,
		36.674328, 32.051716, 29.946207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067986, 32.841736, 30.229248>,  <37.352009, 32.222107, 29.987640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067986, 32.841736, 30.229248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.806686, 32.541332, 30.267719>,  <36.649906, 32.361092, 30.290802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.806686, 32.541332, 30.267719>,  <37.067986, 32.841736, 30.229248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806686, 32.541332, 30.267719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320801, 0.389604, 0.863305,
		-0.685822, 0.533099, -0.495432,
		-0.653250, -0.751009, 0.096180,
		36.610710, 32.316029, 30.296574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399330, 33.113277, 30.372015>,  <37.067986, 32.841736, 30.229248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399330, 33.113277, 30.372015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.381718, 32.729599, 30.483727>,  <36.371151, 32.499390, 30.550753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.381718, 32.729599, 30.483727>,  <36.399330, 33.113277, 30.372015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381718, 32.729599, 30.483727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294165, 0.279604, 0.913941,
		-0.954740, -0.041914, -0.294474,
		-0.044029, -0.959200, 0.279279,
		36.368507, 32.441837, 30.567511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696140, 33.033173, 30.564955>,  <36.399330, 33.113277, 30.372015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696140, 33.033173, 30.564955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.919533, 32.759205, 30.752136>,  <36.053570, 32.594826, 30.864445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.919533, 32.759205, 30.752136>,  <35.696140, 33.033173, 30.564955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919533, 32.759205, 30.752136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384302, 0.286300, 0.877692,
		-0.735123, -0.670014, -0.103321,
		0.558485, -0.684918, 0.467954,
		36.087078, 32.553730, 30.892523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333881, 32.780659, 31.088808>,  <35.696140, 33.033173, 30.564955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333881, 32.780659, 31.088808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.687027, 32.669876, 31.240515>,  <35.898914, 32.603409, 31.331539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.687027, 32.669876, 31.240515>,  <35.333881, 32.780659, 31.088808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687027, 32.669876, 31.240515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338305, 0.185064, 0.922660,
		-0.325721, -0.942894, 0.069693,
		0.882868, -0.276952, 0.379265,
		35.951889, 32.586792, 31.354294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154789, 32.266464, 31.710262>,  <35.333881, 32.780659, 31.088808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154789, 32.266464, 31.710262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.524731, 32.416229, 31.736965>,  <35.746696, 32.506088, 31.752987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.524731, 32.416229, 31.736965>,  <35.154789, 32.266464, 31.710262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524731, 32.416229, 31.736965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140007, 0.171985, 0.975100,
		0.353606, -0.911174, 0.211482,
		0.924857, 0.374410, 0.066756,
		35.802189, 32.528553, 31.756992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374554, 32.025692, 32.366566>,  <35.154789, 32.266464, 31.710262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374554, 32.025692, 32.366566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.640553, 32.310833, 32.277470>,  <35.800152, 32.481918, 32.224014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.640553, 32.310833, 32.277470>,  <35.374554, 32.025692, 32.366566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640553, 32.310833, 32.277470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099109, 0.211368, 0.972368,
		0.740239, -0.668699, 0.069909,
		0.664999, 0.712857, -0.222738,
		35.840054, 32.524689, 32.210648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893269, 31.929537, 32.921005>,  <35.374554, 32.025692, 32.366566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893269, 31.929537, 32.921005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.950863, 32.295437, 32.770008>,  <35.985420, 32.514977, 32.679409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.950863, 32.295437, 32.770008>,  <35.893269, 31.929537, 32.921005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950863, 32.295437, 32.770008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036664, 0.376278, 0.925781,
		0.988900, -0.147141, 0.020641,
		0.143987, 0.914748, -0.377496,
		35.994061, 32.569862, 32.656761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396313, 32.174946, 33.316158>,  <35.893269, 31.929537, 32.921005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396313, 32.174946, 33.316158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.235584, 32.500183, 33.147675>,  <36.139149, 32.695324, 33.046585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.235584, 32.500183, 33.147675>,  <36.396313, 32.174946, 33.316158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235584, 32.500183, 33.147675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175798, 0.382928, 0.906897,
		0.898685, 0.438459, -0.010929,
		-0.401822, 0.813093, -0.421211,
		36.115036, 32.744110, 33.021313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735107, 32.695068, 33.578388>,  <36.396313, 32.174946, 33.316158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735107, 32.695068, 33.578388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.395775, 32.864178, 33.450893>,  <36.192173, 32.965645, 33.374397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.395775, 32.864178, 33.450893>,  <36.735107, 32.695068, 33.578388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395775, 32.864178, 33.450893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073018, 0.502826, 0.861298,
		0.524402, 0.753942, -0.395694,
		-0.848334, 0.422773, -0.318734,
		36.141273, 32.991009, 33.355274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071159, 33.274944, 33.831165>,  <36.735107, 32.695068, 33.578388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071159, 33.274944, 33.831165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.407955, 33.271564, 34.046932>,  <37.610035, 33.269535, 34.176392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.407955, 33.271564, 34.046932>,  <37.071159, 33.274944, 33.831165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407955, 33.271564, 34.046932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477292, -0.454403, -0.752137,
		0.251473, 0.890756, -0.378570,
		0.841994, -0.008454, 0.539421,
		37.660553, 33.269028, 34.208759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699112, 33.548931, 33.409863>,  <37.071159, 33.274944, 33.831165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699112, 33.548931, 33.409863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.835510, 33.297848, 33.689777>,  <37.917351, 33.147198, 33.857727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.835510, 33.297848, 33.689777>,  <37.699112, 33.548931, 33.409863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835510, 33.297848, 33.689777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414378, -0.567816, -0.711250,
		0.843808, 0.532510, 0.066485,
		0.340997, -0.627709, 0.699788,
		37.937809, 33.109535, 33.899715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415440, 33.412712, 33.224457>,  <37.699112, 33.548931, 33.409863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415440, 33.412712, 33.224457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.332924, 33.108803, 33.471096>,  <38.283413, 32.926456, 33.619080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.332924, 33.108803, 33.471096>,  <38.415440, 33.412712, 33.224457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332924, 33.108803, 33.471096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484645, -0.626765, -0.610151,
		0.850037, 0.172962, 0.497515,
		-0.206292, -0.759769, 0.616599,
		38.271038, 32.880871, 33.656075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041313, 33.056149, 33.131569>,  <38.415440, 33.412712, 33.224457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041313, 33.056149, 33.131569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.780685, 32.811352, 33.310871>,  <38.624310, 32.664474, 33.418453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.780685, 32.811352, 33.310871>,  <39.041313, 33.056149, 33.131569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780685, 32.811352, 33.310871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389115, -0.776872, -0.495035,
		0.651193, -0.148124, 0.744317,
		-0.651565, -0.611988, 0.448256,
		38.585217, 32.627754, 33.445347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495491, 32.565300, 33.406052>,  <39.041313, 33.056149, 33.131569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495491, 32.565300, 33.406052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.134850, 32.395039, 33.375256>,  <38.918465, 32.292881, 33.356777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.134850, 32.395039, 33.375256>,  <39.495491, 32.565300, 33.406052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134850, 32.395039, 33.375256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396454, -0.741949, -0.540681,
		0.173018, -0.518005, 0.837697,
		-0.901603, -0.425656, -0.076994,
		38.864368, 32.267342, 33.352158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673111, 31.836395, 33.234608>,  <39.495491, 32.565300, 33.406052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673111, 31.836395, 33.234608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.293400, 31.873531, 33.114441>,  <39.065575, 31.895813, 33.042339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.293400, 31.873531, 33.114441>,  <39.673111, 31.836395, 33.234608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293400, 31.873531, 33.114441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188714, -0.595996, -0.780497,
		-0.251509, -0.797602, 0.548246,
		-0.949279, 0.092841, -0.300417,
		39.008617, 31.901384, 33.024315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516991, 31.186174, 33.018711>,  <39.673111, 31.836395, 33.234608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516991, 31.186174, 33.018711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.225513, 31.403543, 32.852005>,  <39.050625, 31.533964, 32.751980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.225513, 31.403543, 32.852005>,  <39.516991, 31.186174, 33.018711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225513, 31.403543, 32.852005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203831, -0.408885, -0.889531,
		-0.653801, -0.733148, 0.187186,
		-0.728696, 0.543422, -0.416768,
		39.006905, 31.566570, 32.726974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100281, 30.663485, 32.664452>,  <39.516991, 31.186174, 33.018711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100281, 30.663485, 32.664452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.081589, 31.030207, 32.505814>,  <39.070374, 31.250240, 32.410633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.081589, 31.030207, 32.505814>,  <39.100281, 30.663485, 32.664452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081589, 31.030207, 32.505814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193247, -0.381227, -0.904059,
		-0.980037, -0.118885, -0.159356,
		-0.046729, 0.916806, -0.396590,
		39.067570, 31.305248, 32.386837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887058, 30.506498, 32.019058>,  <39.100281, 30.663485, 32.664452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887058, 30.506498, 32.019058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.992729, 30.891401, 31.992926>,  <39.056133, 31.122343, 31.977245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.992729, 30.891401, 31.992926>,  <38.887058, 30.506498, 32.019058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992729, 30.891401, 31.992926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171316, -0.113483, -0.978658,
		-0.949137, 0.247347, -0.194830,
		0.264178, 0.962258, -0.065336,
		39.071983, 31.180079, 31.973326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584114, 30.757935, 31.366577>,  <38.887058, 30.506498, 32.019058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584114, 30.757935, 31.366577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.884972, 30.991920, 31.487965>,  <39.065487, 31.132311, 31.560797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.884972, 30.991920, 31.487965>,  <38.584114, 30.757935, 31.366577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884972, 30.991920, 31.487965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382250, -0.012155, -0.923979,
		-0.536805, 0.810969, -0.232745,
		0.752147, 0.584964, 0.303468,
		39.110615, 31.167410, 31.579004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535091, 31.232859, 30.924007>,  <38.584114, 30.757935, 31.366577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535091, 31.232859, 30.924007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.910824, 31.267849, 31.056675>,  <39.136265, 31.288843, 31.136274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.910824, 31.267849, 31.056675>,  <38.535091, 31.232859, 30.924007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910824, 31.267849, 31.056675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323174, 0.098343, -0.941216,
		-0.114950, 0.991301, 0.064107,
		0.939332, 0.087475, 0.331667,
		39.192623, 31.294092, 31.156176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755833, 31.756250, 30.552635>,  <38.535091, 31.232859, 30.924007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755833, 31.756250, 30.552635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.059734, 31.531870, 30.684153>,  <39.242077, 31.397242, 30.763063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.059734, 31.531870, 30.684153>,  <38.755833, 31.756250, 30.552635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059734, 31.531870, 30.684153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354678, -0.066274, -0.932637,
		0.544954, 0.825192, 0.148605,
		0.759756, -0.560951, 0.328793,
		39.287663, 31.363585, 30.782791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214989, 31.933342, 29.987555>,  <38.755833, 31.756250, 30.552635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214989, 31.933342, 29.987555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.315739, 31.589251, 30.164900>,  <39.376190, 31.382795, 30.271307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.315739, 31.589251, 30.164900>,  <39.214989, 31.933342, 29.987555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315739, 31.589251, 30.164900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517323, -0.267502, -0.812908,
		0.817885, 0.434111, 0.377638,
		0.251874, -0.860227, 0.443362,
		39.391300, 31.331182, 30.297909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891029, 31.930304, 29.805286>,  <39.214989, 31.933342, 29.987555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891029, 31.930304, 29.805286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.777367, 31.555086, 29.884615>,  <39.709171, 31.329956, 29.932211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.777367, 31.555086, 29.884615>,  <39.891029, 31.930304, 29.805286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777367, 31.555086, 29.884615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390990, -0.302238, -0.869356,
		0.875434, -0.169489, 0.452648,
		-0.284154, -0.938044, 0.198320,
		39.692120, 31.273674, 29.944111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554199, 31.468325, 29.716942>,  <39.891029, 31.930304, 29.805286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554199, 31.468325, 29.716942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.228455, 31.241011, 29.669825>,  <40.033009, 31.104622, 29.641554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.228455, 31.241011, 29.669825>,  <40.554199, 31.468325, 29.716942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228455, 31.241011, 29.669825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347822, -0.315427, -0.882908,
		0.464587, -0.759974, 0.454532,
		-0.814358, -0.568283, -0.117793,
		39.984146, 31.070526, 29.634487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752338, 30.980587, 29.334530>,  <40.554199, 31.468325, 29.716942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752338, 30.980587, 29.334530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.361229, 30.915373, 29.281801>,  <40.126564, 30.876244, 29.250164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.361229, 30.915373, 29.281801>,  <40.752338, 30.980587, 29.334530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361229, 30.915373, 29.281801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185817, -0.382641, -0.905018,
		0.097110, -0.909398, 0.404432,
		-0.977774, -0.163037, -0.131823,
		40.067898, 30.866463, 29.242254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670128, 30.323402, 29.206146>,  <40.752338, 30.980587, 29.334530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670128, 30.323402, 29.206146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.349289, 30.500511, 29.045853>,  <40.156784, 30.606777, 28.949677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.349289, 30.500511, 29.045853>,  <40.670128, 30.323402, 29.206146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349289, 30.500511, 29.045853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223534, -0.399649, -0.888995,
		-0.553776, -0.802641, 0.221583,
		-0.802100, 0.442773, -0.400734,
		40.108658, 30.633343, 28.925632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438263, 29.873692, 28.686975>,  <40.670128, 30.323402, 29.206146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438263, 29.873692, 28.686975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.235268, 30.205730, 28.594549>,  <40.113468, 30.404953, 28.539093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.235268, 30.205730, 28.594549>,  <40.438263, 29.873692, 28.686975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235268, 30.205730, 28.594549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108764, -0.204305, -0.972846,
		-0.854765, -0.518842, 0.013399,
		-0.507491, 0.830098, -0.231064,
		40.083019, 30.454760, 28.525230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.561535, 29.648352, 28.237240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.652988, 30.031807, 28.169426>,  <39.707859, 30.261879, 28.128736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.652988, 30.031807, 28.169426>,  <39.561535, 29.648352, 28.237240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652988, 30.031807, 28.169426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204245, -0.123039, -0.971157,
		-0.951845, 0.256667, 0.167666,
		0.228635, 0.958636, -0.169537,
		39.721581, 30.319397, 28.118565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122017, 29.789511, 27.688858>,  <39.561535, 29.648352, 28.237240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122017, 29.789511, 27.688858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.411884, 30.063229, 27.656389>,  <39.585804, 30.227459, 27.636908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.411884, 30.063229, 27.656389>,  <39.122017, 29.789511, 27.688858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411884, 30.063229, 27.656389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057046, -0.057820, -0.996696,
		-0.686729, 0.726908, -0.002864,
		0.724672, 0.684296, -0.081174,
		39.629288, 30.268517, 27.632036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938126, 30.328474, 27.108406>,  <39.122017, 29.789511, 27.688858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938126, 30.328474, 27.108406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.335499, 30.328814, 27.154169>,  <39.573921, 30.329018, 27.181627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.335499, 30.328814, 27.154169>,  <38.938126, 30.328474, 27.108406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335499, 30.328814, 27.154169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113948, -0.097226, -0.988718,
		0.010284, 0.995262, -0.096684,
		0.993434, 0.000849, 0.114408,
		39.633530, 30.329067, 27.188492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116879, 30.508972, 26.428860>,  <38.938126, 30.328474, 27.108406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116879, 30.508972, 26.428860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.466675, 30.410093, 26.595791>,  <39.676552, 30.350767, 26.695950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.466675, 30.410093, 26.595791>,  <39.116879, 30.508972, 26.428860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466675, 30.410093, 26.595791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435663, 0.022055, -0.899840,
		0.213233, 0.968714, 0.126981,
		0.874488, -0.247196, 0.417330,
		39.729023, 30.335934, 26.720989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574787, 30.905468, 26.040312>,  <39.116879, 30.508972, 26.428860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574787, 30.905468, 26.040312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.788315, 30.602869, 26.191439>,  <39.916431, 30.421310, 26.282114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.788315, 30.602869, 26.191439>,  <39.574787, 30.905468, 26.040312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788315, 30.602869, 26.191439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436966, -0.135734, -0.889178,
		0.723942, 0.639757, 0.258106,
		0.533824, -0.756497, 0.377815,
		39.948463, 30.375919, 26.304783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335361, 30.855789, 25.753508>,  <39.574787, 30.905468, 26.040312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335361, 30.855789, 25.753508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.248882, 30.494839, 25.902626>,  <40.196995, 30.278269, 25.992096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.248882, 30.494839, 25.902626>,  <40.335361, 30.855789, 25.753508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248882, 30.494839, 25.902626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391172, -0.429897, -0.813740,
		0.894563, -0.030102, 0.445927,
		-0.216198, -0.902376, 0.372795,
		40.184021, 30.224125, 26.014465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974815, 30.496546, 25.694746>,  <40.335361, 30.855789, 25.753508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974815, 30.496546, 25.694746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.691933, 30.215994, 25.730345>,  <40.522202, 30.047663, 25.751703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.691933, 30.215994, 25.730345>,  <40.974815, 30.496546, 25.694746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.691933, 30.215994, 25.730345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465429, -0.556615, -0.688153,
		0.532192, -0.445249, 0.720087,
		-0.707211, -0.701379, 0.088995,
		40.479771, 30.005581, 25.757044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369164, 29.925346, 25.716572>,  <40.974815, 30.496546, 25.694746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.369164, 29.925346, 25.716572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.009602, 29.779394, 25.619547>,  <40.793865, 29.691822, 25.561333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.009602, 29.779394, 25.619547>,  <41.369164, 29.925346, 25.716572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.009602, 29.779394, 25.619547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426567, -0.602352, -0.674694,
		0.100074, -0.709954, 0.697102,
		-0.898902, -0.364880, -0.242563,
		40.739929, 29.669930, 25.546778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.420525, 29.264332, 25.774519>,  <41.369164, 29.925346, 25.716572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.420525, 29.264332, 25.774519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.111172, 29.294596, 25.522755>,  <40.925560, 29.312754, 25.371696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.111172, 29.294596, 25.522755>,  <41.420525, 29.264332, 25.774519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.111172, 29.294596, 25.522755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515242, -0.503416, -0.693612,
		-0.369334, -0.860725, 0.350349,
		-0.773381, 0.075660, -0.629411,
		40.879158, 29.317293, 25.333931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.357235, 28.570347, 25.402491>,  <41.420525, 29.264332, 25.774519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.357235, 28.570347, 25.402491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.134792, 28.811237, 25.173382>,  <41.001328, 28.955772, 25.035917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.134792, 28.811237, 25.173382>,  <41.357235, 28.570347, 25.402491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.134792, 28.811237, 25.173382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525345, -0.279312, -0.803740,
		-0.644015, -0.747869, -0.161049,
		-0.556109, 0.602227, -0.572770,
		40.967960, 28.991905, 25.001551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.102558, 28.244551, 24.938623>,  <41.357235, 28.570347, 25.402491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.102558, 28.244551, 24.938623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.103672, 28.605177, 24.765568>,  <41.104340, 28.821552, 24.661736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.103672, 28.605177, 24.765568>,  <41.102558, 28.244551, 24.938623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.103672, 28.605177, 24.765568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554714, -0.361364, -0.749472,
		-0.832037, -0.237906, -0.501115,
		0.002781, 0.901564, -0.432638,
		41.104507, 28.875647, 24.635777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063427, 28.128334, 24.239042>,  <41.102558, 28.244551, 24.938623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063427, 28.128334, 24.239042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.178993, 28.511274, 24.238144>,  <41.248333, 28.741039, 24.237604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.178993, 28.511274, 24.238144>,  <41.063427, 28.128334, 24.239042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.178993, 28.511274, 24.238144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518903, -0.158572, -0.839997,
		-0.804527, 0.241526, -0.542587,
		0.288920, 0.957351, -0.002247,
		41.265671, 28.798479, 24.237471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.880890, 28.434063, 23.582195>,  <41.063427, 28.128334, 24.239042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.880890, 28.434063, 23.582195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.191509, 28.625854, 23.745691>,  <41.377880, 28.740929, 23.843788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.191509, 28.625854, 23.745691>,  <40.880890, 28.434063, 23.582195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191509, 28.625854, 23.745691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505025, -0.085806, -0.858829,
		-0.376719, 0.873348, -0.308782,
		0.776552, 0.479479, 0.408738,
		41.424477, 28.769699, 23.868313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949123, 28.788267, 23.031412>,  <40.880890, 28.434063, 23.582195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.949123, 28.788267, 23.031412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.290272, 28.776463, 23.239929>,  <41.494961, 28.769379, 23.365040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.290272, 28.776463, 23.239929>,  <40.949123, 28.788267, 23.031412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.290272, 28.776463, 23.239929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522115, 0.040645, -0.851906,
		0.003955, 0.998738, 0.050074,
		0.852866, -0.029514, 0.521295,
		41.546131, 28.767609, 23.396318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358265, 29.235905, 22.758532>,  <40.949123, 28.788267, 23.031412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.358265, 29.235905, 22.758532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.631771, 29.019669, 22.954586>,  <41.795876, 28.889927, 23.072218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.631771, 29.019669, 22.954586>,  <41.358265, 29.235905, 22.758532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.631771, 29.019669, 22.954586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569977, -0.023728, -0.821318,
		0.455625, 0.840953, 0.291898,
		0.683764, -0.540588, 0.490135,
		41.836899, 28.857492, 23.101625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.063103, 29.492796, 22.603537>,  <41.358265, 29.235905, 22.758532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.063103, 29.492796, 22.603537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.124443, 29.116127, 22.723362>,  <42.161247, 28.890125, 22.795258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.124443, 29.116127, 22.723362>,  <42.063103, 29.492796, 22.603537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.124443, 29.116127, 22.723362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643307, -0.134977, -0.753616,
		0.750093, 0.308277, 0.585086,
		0.153349, -0.941672, 0.299562,
		42.170448, 28.833626, 22.813231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.795727, 29.379591, 22.441551>,  <42.063103, 29.492796, 22.603537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.795727, 29.379591, 22.441551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.636135, 29.017546, 22.500319>,  <42.540379, 28.800318, 22.535578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.636135, 29.017546, 22.500319>,  <42.795727, 29.379591, 22.441551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.636135, 29.017546, 22.500319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655850, -0.393656, -0.644124,
		0.640840, -0.160637, 0.750679,
		-0.398980, -0.905114, 0.146916,
		42.516441, 28.746012, 22.544394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.378288, 28.897444, 22.598343>,  <42.795727, 29.379591, 22.441551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.378288, 28.897444, 22.598343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.055157, 28.706173, 22.460493>,  <42.861279, 28.591412, 22.377783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.055157, 28.706173, 22.460493>,  <43.378288, 28.897444, 22.598343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.055157, 28.706173, 22.460493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587899, -0.611661, -0.529382,
		0.042344, -0.630253, 0.775234,
		-0.807825, -0.478176, -0.344625,
		42.812809, 28.562719, 22.357105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.607533, 28.190407, 22.533913>,  <43.378288, 28.897444, 22.598343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.607533, 28.190407, 22.533913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.276981, 28.208548, 22.309397>,  <43.078651, 28.219433, 22.174686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.276981, 28.208548, 22.309397>,  <43.607533, 28.190407, 22.533913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.276981, 28.208548, 22.309397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432071, -0.588159, -0.683655,
		-0.361133, -0.807473, 0.466445,
		-0.826376, 0.045353, -0.561289,
		43.029068, 28.222153, 22.141010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.556641, 27.456045, 22.260111>,  <43.607533, 28.190407, 22.533913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.556641, 27.456045, 22.260111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.349056, 27.704645, 22.025364>,  <43.224506, 27.853806, 21.884516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.349056, 27.704645, 22.025364>,  <43.556641, 27.456045, 22.260111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.349056, 27.704645, 22.025364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518118, -0.317358, -0.794253,
		-0.679875, -0.716257, -0.157312,
		-0.518965, 0.621498, -0.586869,
		43.193367, 27.891094, 21.849302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.605282, 27.127989, 21.634291>,  <43.556641, 27.456045, 22.260111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.605282, 27.127989, 21.634291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.419720, 27.465853, 21.527451>,  <43.308384, 27.668571, 21.463346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.419720, 27.465853, 21.527451>,  <43.605282, 27.127989, 21.634291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.419720, 27.465853, 21.527451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394982, -0.072668, -0.915810,
		-0.792957, -0.530349, -0.299914,
		-0.463905, 0.844659, -0.267101,
		43.280548, 27.719250, 21.447321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.341286, 26.931028, 21.029051>,  <43.605282, 27.127989, 21.634291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.341286, 26.931028, 21.029051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.356133, 27.330585, 21.017488>,  <43.365040, 27.570320, 21.010551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.356133, 27.330585, 21.017488>,  <43.341286, 26.931028, 21.029051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.356133, 27.330585, 21.017488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446802, -0.042463, -0.893625,
		-0.893863, 0.020254, -0.447883,
		0.037118, 0.998893, -0.028907,
		43.367268, 27.630253, 21.008816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.872238, 27.195126, 20.430992>,  <43.341286, 26.931028, 21.029051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.872238, 27.195126, 20.430992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.154556, 27.457060, 20.539097>,  <43.323948, 27.614222, 20.603960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.154556, 27.457060, 20.539097>,  <42.872238, 27.195126, 20.430992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.154556, 27.457060, 20.539097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333379, 0.029591, -0.942328,
		-0.625069, 0.755190, -0.197424,
		0.705795, 0.654837, 0.270261,
		43.366295, 27.653511, 20.620174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.863861, 27.778431, 19.955090>,  <42.872238, 27.195126, 20.430992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.863861, 27.778431, 19.955090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.222557, 27.721916, 20.122852>,  <43.437775, 27.688007, 20.223509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.222557, 27.721916, 20.122852>,  <42.863861, 27.778431, 19.955090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.222557, 27.721916, 20.122852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433468, 0.089261, -0.896737,
		0.089261, 0.985936, 0.141287,
		0.896737, -0.141287, 0.419405,
		43.491577, 27.679531, 20.248674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.393463, 28.101908, 19.461346>,  <42.863861, 27.778431, 19.955090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.393463, 28.101908, 19.461346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.027031, 28.137190, 19.304873>,  <41.807171, 28.158360, 19.210989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.027031, 28.137190, 19.304873>,  <42.393463, 28.101908, 19.461346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.027031, 28.137190, 19.304873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344248, 0.327332, 0.879970,
		0.205664, 0.940783, -0.269497,
		-0.916076, 0.088205, -0.391184,
		41.752209, 28.163651, 19.187517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.150944, 28.784897, 19.729431>,  <42.393463, 28.101908, 19.461346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.150944, 28.784897, 19.729431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.858173, 28.529335, 19.634699>,  <41.682510, 28.375998, 19.577860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.858173, 28.529335, 19.634699>,  <42.150944, 28.784897, 19.729431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.858173, 28.529335, 19.634699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548006, 0.345395, 0.761835,
		-0.404940, 0.687389, -0.602927,
		-0.731924, -0.638905, -0.236829,
		41.638596, 28.337664, 19.563650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579025, 29.156612, 19.641333>,  <42.150944, 28.784897, 19.729431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579025, 29.156612, 19.641333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.437588, 28.797577, 19.746639>,  <41.352726, 28.582155, 19.809822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.437588, 28.797577, 19.746639>,  <41.579025, 29.156612, 19.641333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.437588, 28.797577, 19.746639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579915, 0.431185, 0.691215,
		-0.733943, 0.091736, -0.672988,
		-0.353592, -0.897588, 0.263266,
		41.331509, 28.528301, 19.825619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974854, 29.395733, 20.018236>,  <41.579025, 29.156612, 19.641333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974854, 29.395733, 20.018236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.969749, 29.002010, 20.088634>,  <40.966686, 28.765776, 20.130873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.969749, 29.002010, 20.088634>,  <40.974854, 29.395733, 20.018236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.969749, 29.002010, 20.088634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614597, 0.146559, 0.775108,
		-0.788738, -0.098271, -0.606823,
		-0.012764, -0.984308, 0.175993,
		40.965919, 28.706718, 20.141432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252953, 29.151897, 19.848156>,  <40.974854, 29.395733, 20.018236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252953, 29.151897, 19.848156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.450668, 28.911566, 20.099451>,  <40.569298, 28.767366, 20.250229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.450668, 28.911566, 20.099451>,  <40.252953, 29.151897, 19.848156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450668, 28.911566, 20.099451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642787, 0.233922, 0.729456,
		-0.585236, -0.764387, -0.270578,
		0.494292, -0.600827, 0.628237,
		40.598957, 28.731318, 20.287922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767162, 28.739988, 20.158066>,  <40.252953, 29.151897, 19.848156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.767162, 28.739988, 20.158066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.070534, 28.757456, 20.418184>,  <40.252556, 28.767937, 20.574255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.070534, 28.757456, 20.418184>,  <39.767162, 28.739988, 20.158066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070534, 28.757456, 20.418184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637848, 0.254770, 0.726802,
		-0.133938, -0.966015, 0.221078,
		0.758426, 0.043667, 0.650295,
		40.298061, 28.770555, 20.613274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493992, 28.444990, 20.711815>,  <39.767162, 28.739988, 20.158066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493992, 28.444990, 20.711815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.822044, 28.619383, 20.860037>,  <40.018875, 28.724018, 20.948971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.822044, 28.619383, 20.860037>,  <39.493992, 28.444990, 20.711815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.822044, 28.619383, 20.860037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472731, 0.151434, 0.868097,
		0.322360, -0.887123, 0.330297,
		0.820127, 0.435982, 0.370554,
		40.068081, 28.750177, 20.971203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619213, 28.053793, 21.260376>,  <39.493992, 28.444990, 20.711815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619213, 28.053793, 21.260376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.779709, 28.418095, 21.299425>,  <39.876007, 28.636677, 21.322855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.779709, 28.418095, 21.299425>,  <39.619213, 28.053793, 21.260376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779709, 28.418095, 21.299425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483789, 0.120217, 0.866889,
		0.777788, -0.395060, 0.488849,
		0.401241, 0.910756, 0.097622,
		39.900082, 28.691320, 21.328712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507557, 28.119896, 21.874283>,  <39.619213, 28.053793, 21.260376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507557, 28.119896, 21.874283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.589455, 28.491386, 21.750639>,  <39.638592, 28.714281, 21.676453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.589455, 28.491386, 21.750639>,  <39.507557, 28.119896, 21.874283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589455, 28.491386, 21.750639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470822, 0.370310, 0.800748,
		0.858141, -0.018414, 0.513083,
		0.204744, 0.928726, -0.309108,
		39.650879, 28.770004, 21.657906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992092, 28.392870, 22.315821>,  <39.507557, 28.119896, 21.874283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992092, 28.392870, 22.315821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.831547, 28.726131, 22.163631>,  <39.735218, 28.926088, 22.072319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.831547, 28.726131, 22.163631>,  <39.992092, 28.392870, 22.315821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831547, 28.726131, 22.163631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206049, 0.322617, 0.923830,
		0.892439, 0.449191, 0.042183,
		-0.401367, 0.833154, -0.380471,
		39.711136, 28.976078, 22.049490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207512, 28.933008, 22.655354>,  <39.992092, 28.392870, 22.315821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207512, 28.933008, 22.655354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.870445, 29.082417, 22.500229>,  <39.668205, 29.172062, 22.407154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.870445, 29.082417, 22.500229>,  <40.207512, 28.933008, 22.655354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870445, 29.082417, 22.500229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325419, 0.220526, 0.919494,
		0.428972, 0.901028, -0.064280,
		-0.842666, 0.373519, -0.387812,
		39.617645, 29.194473, 22.383884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164921, 29.483044, 23.063065>,  <40.207512, 28.933008, 22.655354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164921, 29.483044, 23.063065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.796764, 29.436661, 22.913706>,  <39.575871, 29.408831, 22.824091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.796764, 29.436661, 22.913706>,  <40.164921, 29.483044, 23.063065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.796764, 29.436661, 22.913706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390903, 0.293103, 0.872517,
		0.008268, 0.949023, -0.315100,
		-0.920395, -0.115959, -0.373399,
		39.520645, 29.401873, 22.801685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686142, 30.013870, 23.452755>,  <40.164921, 29.483044, 23.063065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.686142, 30.013870, 23.452755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.410789, 29.782465, 23.277735>,  <39.245579, 29.643621, 23.172722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.410789, 29.782465, 23.277735>,  <39.686142, 30.013870, 23.452755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410789, 29.782465, 23.277735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573708, 0.065141, 0.816465,
		-0.443831, 0.813069, -0.376739,
		-0.688384, -0.578511, -0.437553,
		39.204273, 29.608912, 23.146469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055141, 30.364605, 23.471735>,  <39.686142, 30.013870, 23.452755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055141, 30.364605, 23.471735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.961243, 29.977846, 23.431734>,  <38.904903, 29.745790, 23.407734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.961243, 29.977846, 23.431734>,  <39.055141, 30.364605, 23.471735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961243, 29.977846, 23.431734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597576, 0.062406, 0.799380,
		-0.766679, 0.247412, -0.592445,
		-0.234749, -0.966898, -0.100002,
		38.890820, 29.687777, 23.401733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248764, 30.339165, 23.475077>,  <39.055141, 30.364605, 23.471735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248764, 30.339165, 23.475077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.397476, 29.980314, 23.570528>,  <38.486706, 29.765005, 23.627798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.397476, 29.980314, 23.570528>,  <38.248764, 30.339165, 23.475077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397476, 29.980314, 23.570528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693913, -0.097816, 0.713384,
		-0.616653, -0.430811, -0.658893,
		0.371784, -0.897125, 0.238627,
		38.509010, 29.711176, 23.642117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673847, 29.816154, 23.587200>,  <38.248764, 30.339165, 23.475077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673847, 29.816154, 23.587200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.984226, 29.656630, 23.782690>,  <38.170456, 29.560915, 23.899984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.984226, 29.656630, 23.782690>,  <37.673847, 29.816154, 23.587200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984226, 29.656630, 23.782690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546493, -0.038080, 0.836598,
		-0.315037, -0.916240, -0.247498,
		0.775949, -0.398815, 0.488722,
		38.217010, 29.536985, 23.929306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409538, 29.254614, 23.949602>,  <37.673847, 29.816154, 23.587200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409538, 29.254614, 23.949602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.746849, 29.364143, 24.134604>,  <37.949234, 29.429861, 24.245605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.746849, 29.364143, 24.134604>,  <37.409538, 29.254614, 23.949602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746849, 29.364143, 24.134604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448391, -0.116087, 0.886267,
		0.296372, -0.954748, 0.024887,
		0.843273, 0.273824, 0.462505,
		37.999832, 29.446291, 24.273355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425423, 28.810272, 24.539320>,  <37.409538, 29.254614, 23.949602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425423, 28.810272, 24.539320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.675999, 29.111891, 24.618298>,  <37.826344, 29.292862, 24.665684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.675999, 29.111891, 24.618298>,  <37.425423, 28.810272, 24.539320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675999, 29.111891, 24.618298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364875, 0.059838, 0.929131,
		0.688795, -0.654088, 0.312618,
		0.626440, 0.754048, 0.197445,
		37.863930, 29.338104, 24.677530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763329, 28.639963, 25.175495>,  <37.425423, 28.810272, 24.539320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763329, 28.639963, 25.175495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.814453, 29.034576, 25.134672>,  <37.845127, 29.271345, 25.110178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.814453, 29.034576, 25.134672>,  <37.763329, 28.639963, 25.175495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814453, 29.034576, 25.134672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183860, 0.124685, 0.975012,
		0.974607, -0.105857, 0.197321,
		0.127814, 0.986533, -0.102056,
		37.852798, 29.330536, 25.104055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138168, 28.862246, 25.685419>,  <37.763329, 28.639963, 25.175495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138168, 28.862246, 25.685419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.967899, 29.211929, 25.591990>,  <37.865738, 29.421740, 25.535931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.967899, 29.211929, 25.591990>,  <38.138168, 28.862246, 25.685419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967899, 29.211929, 25.591990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079697, 0.293348, 0.952678,
		0.901359, 0.386917, -0.194543,
		-0.425676, 0.874209, -0.233576,
		37.840195, 29.474192, 25.521917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.415939, 30.807020, 31.202875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.059002, 30.935892, 31.076431>,  <39.844841, 31.013216, 31.000565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.059002, 30.935892, 31.076431>,  <40.415939, 30.807020, 31.202875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059002, 30.935892, 31.076431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147172, 0.454382, 0.878566,
		0.426691, 0.830504, -0.358048,
		-0.892343, 0.322181, -0.316108,
		39.791298, 31.032547, 30.981600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377808, 31.292671, 31.697062>,  <40.415939, 30.807020, 31.202875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377808, 31.292671, 31.697062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.019993, 31.304213, 31.518639>,  <39.805305, 31.311136, 31.411585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.019993, 31.304213, 31.518639>,  <40.377808, 31.292671, 31.697062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019993, 31.304213, 31.518639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392678, 0.426039, 0.815043,
		0.213554, 0.904245, -0.369778,
		-0.894538, 0.028852, -0.446059,
		39.751633, 31.312868, 31.384821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090801, 31.941523, 31.989548>,  <40.377808, 31.292671, 31.697062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090801, 31.941523, 31.989548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.788406, 31.716707, 31.855326>,  <39.606968, 31.581818, 31.774794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.788406, 31.716707, 31.855326>,  <40.090801, 31.941523, 31.989548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788406, 31.716707, 31.855326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541549, 0.249054, 0.802930,
		-0.367707, 0.788724, -0.492652,
		-0.755987, -0.562038, -0.335554,
		39.561611, 31.548096, 31.754660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500908, 32.367214, 31.878309>,  <40.090801, 31.941523, 31.989548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500908, 32.367214, 31.878309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.363411, 31.993397, 31.915131>,  <39.280914, 31.769108, 31.937223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.363411, 31.993397, 31.915131>,  <39.500908, 32.367214, 31.878309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363411, 31.993397, 31.915131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650841, 0.307756, 0.694041,
		-0.676939, 0.178661, -0.714026,
		-0.343744, -0.934541, 0.092053,
		39.260288, 31.713034, 31.942747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704651, 32.491806, 31.873686>,  <39.500908, 32.367214, 31.878309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704651, 32.491806, 31.873686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.810154, 32.139236, 32.030418>,  <38.873455, 31.927696, 32.124458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.810154, 32.139236, 32.030418>,  <38.704651, 32.491806, 31.873686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810154, 32.139236, 32.030418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601701, 0.167149, 0.781036,
		-0.753914, -0.441770, -0.486263,
		0.263760, -0.881419, 0.391830,
		38.889282, 31.874811, 32.147968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109871, 32.278042, 32.178574>,  <38.704651, 32.491806, 31.873686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109871, 32.278042, 32.178574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.405067, 32.059322, 32.336754>,  <38.582184, 31.928091, 32.431664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.405067, 32.059322, 32.336754>,  <38.109871, 32.278042, 32.178574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405067, 32.059322, 32.336754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364610, 0.170007, 0.915509,
		-0.567827, -0.819824, -0.073904,
		0.737992, -0.546797, 0.395451,
		38.626465, 31.895283, 32.455387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761166, 32.031288, 32.642437>,  <38.109871, 32.278042, 32.178574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761166, 32.031288, 32.642437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.145584, 31.994408, 32.746666>,  <38.376236, 31.972279, 32.809204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.145584, 31.994408, 32.746666>,  <37.761166, 32.031288, 32.642437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145584, 31.994408, 32.746666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231604, 0.245904, 0.941218,
		-0.150856, -0.964899, 0.214970,
		0.961042, -0.092201, 0.260570,
		38.433895, 31.966747, 32.824837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766174, 31.613129, 33.279621>,  <37.761166, 32.031288, 32.642437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766174, 31.613129, 33.279621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.092140, 31.844654, 33.267735>,  <38.287720, 31.983570, 33.260605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.092140, 31.844654, 33.267735>,  <37.766174, 31.613129, 33.279621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092140, 31.844654, 33.267735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211440, 0.344641, 0.914612,
		0.539631, -0.739051, 0.403239,
		0.814918, 0.578814, -0.029715,
		38.336617, 32.018299, 33.258820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922058, 31.609833, 33.924812>,  <37.766174, 31.613129, 33.279621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922058, 31.609833, 33.924812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.128433, 31.919209, 33.777515>,  <38.252258, 32.104836, 33.689137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.128433, 31.919209, 33.777515>,  <37.922058, 31.609833, 33.924812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128433, 31.919209, 33.777515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395827, 0.596477, 0.698238,
		0.759693, -0.214485, 0.613892,
		0.515934, 0.773441, -0.368240,
		38.283215, 32.151241, 33.667042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066776, 31.938540, 34.502670>,  <37.922058, 31.609833, 33.924812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066776, 31.938540, 34.502670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.112537, 32.228924, 34.231407>,  <38.139996, 32.403156, 34.068649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.112537, 32.228924, 34.231407>,  <38.066776, 31.938540, 34.502670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112537, 32.228924, 34.231407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137083, 0.687641, 0.712992,
		0.983931, 0.011394, 0.178186,
		0.114404, 0.725961, -0.678154,
		38.146858, 32.446712, 34.027962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495255, 32.469257, 34.851696>,  <38.066776, 31.938540, 34.502670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495255, 32.469257, 34.851696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.320358, 32.665424, 34.550152>,  <38.215420, 32.783127, 34.369225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.320358, 32.665424, 34.550152>,  <38.495255, 32.469257, 34.851696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320358, 32.665424, 34.550152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132631, 0.793909, 0.593395,
		0.889513, 0.359440, -0.282081,
		-0.437236, 0.490420, -0.753865,
		38.189186, 32.812550, 34.323994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737907, 33.108902, 34.971756>,  <38.495255, 32.469257, 34.851696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737907, 33.108902, 34.971756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.422123, 33.172607, 34.734642>,  <38.232655, 33.210831, 34.592373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.422123, 33.172607, 34.734642>,  <38.737907, 33.108902, 34.971756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422123, 33.172607, 34.734642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338262, 0.692978, 0.636679,
		0.512187, 0.703147, -0.493203,
		-0.789458, 0.159266, -0.592782,
		38.185287, 33.220387, 34.556808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572540, 33.797203, 35.034760>,  <38.737907, 33.108902, 34.971756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572540, 33.797203, 35.034760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.223400, 33.682018, 34.877174>,  <38.013916, 33.612907, 34.782623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.223400, 33.682018, 34.877174>,  <38.572540, 33.797203, 35.034760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223400, 33.682018, 34.877174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470634, 0.710147, 0.523636,
		0.128986, 0.642470, -0.755377,
		-0.872849, -0.287965, -0.393967,
		37.961544, 33.595627, 34.758984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435631, 34.251366, 34.565247>,  <38.572540, 33.797203, 35.034760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435631, 34.251366, 34.565247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.136650, 34.071014, 34.760399>,  <37.957260, 33.962803, 34.877491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.136650, 34.071014, 34.760399>,  <38.435631, 34.251366, 34.565247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136650, 34.071014, 34.760399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277640, 0.879214, 0.387168,
		-0.603517, 0.153934, -0.782350,
		-0.747451, -0.450874, 0.487882,
		37.912415, 33.935753, 34.906765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600079, 35.012436, 34.582043>,  <38.435631, 34.251366, 34.565247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600079, 35.012436, 34.582043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.750843, 35.362537, 34.460804>,  <38.841301, 35.572598, 34.388062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.750843, 35.362537, 34.460804>,  <38.600079, 35.012436, 34.582043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750843, 35.362537, 34.460804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124859, -0.372251, -0.919695,
		-0.917796, 0.308797, -0.249588,
		0.376909, 0.875256, -0.303094,
		38.863914, 35.625114, 34.369877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352287, 35.198025, 33.893173>,  <38.600079, 35.012436, 34.582043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352287, 35.198025, 33.893173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.694256, 35.405472, 33.897846>,  <38.899437, 35.529942, 33.900650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.694256, 35.405472, 33.897846>,  <38.352287, 35.198025, 33.893173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694256, 35.405472, 33.897846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247934, -0.388726, -0.887367,
		-0.455667, 0.761528, -0.460915,
		0.854925, 0.518621, 0.011679,
		38.950733, 35.561058, 33.901348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391178, 35.306259, 33.213142>,  <38.352287, 35.198025, 33.893173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391178, 35.306259, 33.213142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.757404, 35.342983, 33.369762>,  <38.977139, 35.365017, 33.463734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.757404, 35.342983, 33.369762>,  <38.391178, 35.306259, 33.213142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757404, 35.342983, 33.369762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379666, -0.518416, -0.766224,
		0.132634, 0.850185, -0.509503,
		0.915566, 0.091813, 0.391546,
		39.032074, 35.370525, 33.487225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790958, 35.840672, 32.750980>,  <38.391178, 35.306259, 33.213142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790958, 35.840672, 32.750980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.056011, 35.614651, 32.947601>,  <39.215042, 35.479038, 33.065575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.056011, 35.614651, 32.947601>,  <38.790958, 35.840672, 32.750980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056011, 35.614651, 32.947601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382133, -0.309389, -0.870777,
		0.644118, 0.764848, 0.010913,
		0.662636, -0.565054, 0.491556,
		39.254803, 35.445133, 33.095070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387863, 36.082775, 32.503494>,  <38.790958, 35.840672, 32.750980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387863, 36.082775, 32.503494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.456928, 35.722057, 32.661964>,  <39.498367, 35.505627, 32.757046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.456928, 35.722057, 32.661964>,  <39.387863, 36.082775, 32.503494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456928, 35.722057, 32.661964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365076, -0.314979, -0.876075,
		0.914826, 0.295899, 0.274839,
		0.172661, -0.901794, 0.396177,
		39.508728, 35.451519, 32.780819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131523, 35.928391, 32.339237>,  <39.387863, 36.082775, 32.503494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131523, 35.928391, 32.339237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.954113, 35.582321, 32.432838>,  <39.847668, 35.374680, 32.488998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.954113, 35.582321, 32.432838>,  <40.131523, 35.928391, 32.339237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954113, 35.582321, 32.432838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412675, -0.428902, -0.803581,
		0.795603, -0.259841, 0.547264,
		-0.443526, -0.865174, 0.234006,
		39.821056, 35.322769, 32.503040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703094, 35.398140, 32.197475>,  <40.131523, 35.928391, 32.339237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703094, 35.398140, 32.197475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.351997, 35.207207, 32.180859>,  <40.141338, 35.092648, 32.170887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.351997, 35.207207, 32.180859>,  <40.703094, 35.398140, 32.197475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351997, 35.207207, 32.180859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229747, -0.343203, -0.910729,
		0.420467, -0.808926, 0.410909,
		-0.877738, -0.477336, -0.041543,
		40.088676, 35.064007, 32.168396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855095, 34.699497, 32.078953>,  <40.703094, 35.398140, 32.197475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855095, 34.699497, 32.078953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.466610, 34.717251, 31.985340>,  <40.233517, 34.727901, 31.929173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.466610, 34.717251, 31.985340>,  <40.855095, 34.699497, 32.078953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466610, 34.717251, 31.985340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175163, -0.532743, -0.827951,
		-0.161426, -0.845112, 0.509634,
		-0.971216, 0.044383, -0.234031,
		40.175247, 34.730564, 31.915131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680645, 34.008354, 31.944849>,  <40.855095, 34.699497, 32.078953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680645, 34.008354, 31.944849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.418869, 34.257080, 31.772779>,  <40.261803, 34.406315, 31.669537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.418869, 34.257080, 31.772779>,  <40.680645, 34.008354, 31.944849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418869, 34.257080, 31.772779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213108, -0.394176, -0.893986,
		-0.725458, -0.676737, 0.125453,
		-0.654444, 0.621814, -0.430176,
		40.222534, 34.443623, 31.643726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288807, 33.607346, 31.573236>,  <40.680645, 34.008354, 31.944849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288807, 33.607346, 31.573236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.224262, 33.965271, 31.406734>,  <40.185535, 34.180027, 31.306833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.224262, 33.965271, 31.406734>,  <40.288807, 33.607346, 31.573236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.224262, 33.965271, 31.406734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010710, -0.420168, -0.907383,
		-0.986837, -0.150876, 0.058216,
		-0.161363, 0.894816, -0.416253,
		40.175854, 34.233715, 31.281858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834473, 33.418915, 31.016827>,  <40.288807, 33.607346, 31.573236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834473, 33.418915, 31.016827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.003960, 33.772110, 30.936039>,  <40.105652, 33.984028, 30.887568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.003960, 33.772110, 30.936039>,  <39.834473, 33.418915, 31.016827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003960, 33.772110, 30.936039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000525, -0.223214, -0.974769,
		-0.905792, 0.412925, -0.095045,
		0.423722, 0.882988, -0.201968,
		40.131077, 34.037006, 30.875448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537857, 33.523499, 30.518593>,  <39.834473, 33.418915, 31.016827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537857, 33.523499, 30.518593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.861271, 33.757427, 30.492502>,  <40.055321, 33.897785, 30.476849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.861271, 33.757427, 30.492502>,  <39.537857, 33.523499, 30.518593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861271, 33.757427, 30.492502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081798, -0.221467, -0.971731,
		-0.582736, 0.780343, -0.226901,
		0.808534, 0.584823, -0.065227,
		40.103832, 33.932873, 30.472935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479622, 33.835587, 29.903391>,  <39.537857, 33.523499, 30.518593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479622, 33.835587, 29.903391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.867188, 33.836754, 30.002344>,  <40.099728, 33.837452, 30.061716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.867188, 33.836754, 30.002344>,  <39.479622, 33.835587, 29.903391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867188, 33.836754, 30.002344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241041, -0.236382, -0.941288,
		0.055733, 0.971656, -0.229736,
		0.968913, 0.002915, 0.247383,
		40.157860, 33.837627, 30.076559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737724, 34.182842, 29.316916>,  <39.479622, 33.835587, 29.903391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737724, 34.182842, 29.316916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.059380, 34.016045, 29.486372>,  <40.252373, 33.915966, 29.588045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.059380, 34.016045, 29.486372>,  <39.737724, 34.182842, 29.316916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059380, 34.016045, 29.486372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335515, -0.269913, -0.902539,
		0.490699, 0.867908, -0.077141,
		0.804142, -0.416993, 0.423642,
		40.300621, 33.890945, 29.613464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697174, 34.780827, 29.065643>,  <39.737724, 34.182842, 29.316916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697174, 34.780827, 29.065643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.386143, 34.925167, 28.859669>,  <39.199524, 35.011772, 28.736084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.386143, 34.925167, 28.859669>,  <39.697174, 34.780827, 29.065643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386143, 34.925167, 28.859669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520668, 0.089623, 0.849042,
		0.352529, 0.928307, 0.118195,
		-0.777579, 0.360852, -0.514934,
		39.152870, 35.033424, 28.705189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574734, 35.440277, 29.300524>,  <39.697174, 34.780827, 29.065643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574734, 35.440277, 29.300524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.233467, 35.319649, 29.130274>,  <39.028706, 35.247272, 29.028124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.233467, 35.319649, 29.130274>,  <39.574734, 35.440277, 29.300524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233467, 35.319649, 29.130274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502399, 0.255541, 0.826011,
		-0.140335, 0.918561, -0.369528,
		-0.853171, -0.301569, -0.425623,
		38.977516, 35.229179, 29.002586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120289, 35.981503, 29.467833>,  <39.574734, 35.440277, 29.300524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120289, 35.981503, 29.467833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.887146, 35.669392, 29.377100>,  <38.747261, 35.482124, 29.322660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.887146, 35.669392, 29.377100>,  <39.120289, 35.981503, 29.467833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887146, 35.669392, 29.377100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682380, 0.318452, 0.657986,
		-0.441174, 0.538296, -0.718055,
		-0.582857, -0.780273, -0.226830,
		38.712288, 35.435310, 29.309052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420719, 36.308853, 29.466364>,  <39.120289, 35.981503, 29.467833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420719, 36.308853, 29.466364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.358696, 35.914017, 29.482367>,  <38.321484, 35.677113, 29.491968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.358696, 35.914017, 29.482367>,  <38.420719, 36.308853, 29.466364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358696, 35.914017, 29.482367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697619, 0.138077, 0.703038,
		-0.699490, 0.081102, -0.710026,
		-0.155056, -0.987095, 0.040005,
		38.312180, 35.617889, 29.494368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676388, 36.218037, 29.411388>,  <38.420719, 36.308853, 29.466364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676388, 36.218037, 29.411388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.817184, 35.865040, 29.536165>,  <37.901661, 35.653240, 29.611031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.817184, 35.865040, 29.536165>,  <37.676388, 36.218037, 29.411388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817184, 35.865040, 29.536165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878333, -0.196244, 0.435912,
		-0.323473, -0.427424, -0.844200,
		0.351988, -0.882495, 0.311941,
		37.922779, 35.600292, 29.629747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227779, 35.713440, 29.200815>,  <37.676388, 36.218037, 29.411388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227779, 35.713440, 29.200815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.423161, 35.599178, 29.530619>,  <37.540390, 35.530621, 29.728500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.423161, 35.599178, 29.530619>,  <37.227779, 35.713440, 29.200815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423161, 35.599178, 29.530619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872589, -0.157983, 0.462200,
		-0.001774, -0.945219, -0.326431,
		0.488451, -0.285661, 0.824508,
		37.569695, 35.513481, 29.777971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801220, 35.130554, 29.403177>,  <37.227779, 35.713440, 29.200815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801220, 35.130554, 29.403177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.021591, 35.241848, 29.717899>,  <37.153812, 35.308624, 29.906733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.021591, 35.241848, 29.717899>,  <36.801220, 35.130554, 29.403177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021591, 35.241848, 29.717899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795502, -0.109938, 0.595895,
		0.252297, -0.954201, 0.160767,
		0.550929, 0.278233, 0.786806,
		37.186871, 35.325317, 29.953941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725655, 34.628956, 29.880836>,  <36.801220, 35.130554, 29.403177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725655, 34.628956, 29.880836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.832657, 34.947819, 30.097345>,  <36.896858, 35.139137, 30.227251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.832657, 34.947819, 30.097345>,  <36.725655, 34.628956, 29.880836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832657, 34.947819, 30.097345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645897, -0.268501, 0.714650,
		0.715022, -0.540781, 0.443057,
		0.267508, 0.797159, 0.541273,
		36.912910, 35.186966, 30.259727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747478, 34.443279, 30.581661>,  <36.725655, 34.628956, 29.880836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747478, 34.443279, 30.581661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.747498, 34.842457, 30.607315>,  <36.747509, 35.081963, 30.622707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.747498, 34.842457, 30.607315>,  <36.747478, 34.443279, 30.581661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747498, 34.842457, 30.607315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631805, -0.049686, 0.773533,
		0.775127, -0.040554, 0.630503,
		0.000043, 0.997941, 0.064135,
		36.747509, 35.141838, 30.626556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768051, 34.631607, 31.333502>,  <36.747478, 34.443279, 30.581661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768051, 34.631607, 31.333502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.617825, 34.956184, 31.154387>,  <36.527691, 35.150928, 31.046917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.617825, 34.956184, 31.154387>,  <36.768051, 34.631607, 31.333502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617825, 34.956184, 31.154387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709991, 0.058655, 0.701764,
		0.595705, 0.581484, 0.554087,
		-0.375565, 0.811441, -0.447789,
		36.505154, 35.199615, 31.020050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715496, 35.061371, 31.876917>,  <36.768051, 34.631607, 31.333502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715496, 35.061371, 31.876917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.471928, 35.210648, 31.596935>,  <36.325787, 35.300213, 31.428946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.471928, 35.210648, 31.596935>,  <36.715496, 35.061371, 31.876917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471928, 35.210648, 31.596935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720044, 0.110150, 0.685131,
		0.332788, 0.921191, 0.201644,
		-0.608925, 0.373196, -0.699954,
		36.289249, 35.322605, 31.386950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328251, 35.564671, 32.220856>,  <36.715496, 35.061371, 31.876917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328251, 35.564671, 32.220856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.089241, 35.517681, 31.903576>,  <35.945835, 35.489487, 31.713207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.089241, 35.517681, 31.903576>,  <36.328251, 35.564671, 32.220856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089241, 35.517681, 31.903576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801105, 0.130191, 0.584193,
		0.034641, 0.984505, -0.171899,
		-0.597521, -0.117472, -0.793202,
		35.909985, 35.482441, 31.665615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.988487, 35.234993, 25.937813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687916, 35.082687, 25.722265>,  <40.507572, 34.991306, 25.592937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687916, 35.082687, 25.722265>,  <40.988487, 35.234993, 25.937813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.687916, 35.082687, 25.722265> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635205, 0.196477, 0.746935,
		-0.178528, 0.903559, -0.389499,
		-0.751427, -0.380760, -0.538868,
		40.462486, 34.968460, 25.560604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445229, 35.735813, 26.101471>,  <40.988487, 35.234993, 25.937813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445229, 35.735813, 26.101471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274071, 35.401211, 25.964548>,  <40.171375, 35.200451, 25.882395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274071, 35.401211, 25.964548>,  <40.445229, 35.735813, 26.101471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274071, 35.401211, 25.964548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662879, 0.032989, 0.748000,
		-0.614411, 0.546971, -0.568615,
		-0.427892, -0.836501, -0.342306,
		40.145702, 35.150261, 25.861856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782299, 35.939625, 26.153980>,  <40.445229, 35.735813, 26.101471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782299, 35.939625, 26.153980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782204, 35.539768, 26.143251>,  <39.782146, 35.299854, 26.136814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782204, 35.539768, 26.143251>,  <39.782299, 35.939625, 26.153980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782204, 35.539768, 26.143251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598172, -0.021353, 0.801083,
		-0.801368, 0.016234, -0.597951,
		-0.000236, -0.999640, -0.026822,
		39.782131, 35.239876, 26.135204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129021, 35.763706, 26.309265>,  <39.782299, 35.939625, 26.153980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129021, 35.763706, 26.309265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304733, 35.411232, 26.379162>,  <39.410160, 35.199745, 26.421101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304733, 35.411232, 26.379162>,  <39.129021, 35.763706, 26.309265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.304733, 35.411232, 26.379162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399601, -0.017456, 0.916523,
		-0.804580, -0.472440, -0.359793,
		0.439283, -0.881190, 0.174742,
		39.436520, 35.146873, 26.431585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683517, 35.385586, 26.667620>,  <39.129021, 35.763706, 26.309265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683517, 35.385586, 26.667620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025871, 35.194344, 26.746490>,  <39.231285, 35.079597, 26.793814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025871, 35.194344, 26.746490>,  <38.683517, 35.385586, 26.667620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025871, 35.194344, 26.746490> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219866, 0.008715, 0.975491,
		-0.468104, -0.878260, -0.097659,
		0.855884, -0.478103, 0.197179,
		39.282639, 35.050911, 26.805645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528584, 34.763626, 27.080353>,  <38.683517, 35.385586, 26.667620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528584, 34.763626, 27.080353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886646, 34.933334, 27.135042>,  <39.101482, 35.035160, 27.167856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886646, 34.933334, 27.135042>,  <38.528584, 34.763626, 27.080353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886646, 34.933334, 27.135042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168964, 0.039118, 0.984846,
		0.412493, -0.904690, 0.106703,
		0.895154, 0.424271, 0.136725,
		39.155193, 35.060616, 27.176060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798580, 34.378036, 27.594398>,  <38.528584, 34.763626, 27.080353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798580, 34.378036, 27.594398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076839, 34.665287, 27.586765>,  <39.243797, 34.837639, 27.582186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076839, 34.665287, 27.586765>,  <38.798580, 34.378036, 27.594398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076839, 34.665287, 27.586765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103020, -0.073436, 0.991965,
		0.710956, -0.692026, -0.125067,
		0.695650, 0.718127, -0.019083,
		39.285534, 34.880726, 27.581039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317627, 34.118633, 27.948214>,  <38.798580, 34.378036, 27.594398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317627, 34.118633, 27.948214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362030, 34.516148, 27.951626>,  <39.388672, 34.754654, 27.953672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362030, 34.516148, 27.951626>,  <39.317627, 34.118633, 27.948214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362030, 34.516148, 27.951626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219314, 0.016127, 0.975521,
		0.969319, -0.110163, 0.219740,
		0.111010, 0.993783, 0.008528,
		39.395332, 34.814281, 27.954184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574207, 34.272270, 28.538910>,  <39.317627, 34.118633, 27.948214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574207, 34.272270, 28.538910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392788, 34.608597, 28.420702>,  <39.283936, 34.810390, 28.349777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392788, 34.608597, 28.420702>,  <39.574207, 34.272270, 28.538910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392788, 34.608597, 28.420702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296555, 0.170311, 0.939707,
		0.840448, 0.513836, 0.172104,
		-0.453544, 0.840813, -0.295518,
		39.256725, 34.860840, 28.332047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208328, 33.967144, 28.633280>,  <39.574207, 34.272270, 28.538910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208328, 33.967144, 28.633280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370270, 33.770824, 28.941879>,  <40.467434, 33.653034, 29.127039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370270, 33.770824, 28.941879>,  <40.208328, 33.967144, 28.633280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.370270, 33.770824, 28.941879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460476, -0.619506, -0.635747,
		0.789972, 0.612641, -0.024808,
		0.404853, -0.490798, 0.771499,
		40.491726, 33.623585, 29.173328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969723, 34.134975, 28.650810>,  <40.208328, 33.967144, 28.633280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969723, 34.134975, 28.650810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897472, 33.794876, 28.848579>,  <40.854122, 33.590816, 28.967241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897472, 33.794876, 28.848579>,  <40.969723, 34.134975, 28.650810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897472, 33.794876, 28.848579> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603541, -0.492734, -0.626858,
		0.776604, 0.185178, 0.602159,
		-0.180624, -0.850248, 0.494422,
		40.843285, 33.539803, 28.996906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622105, 33.864777, 28.809725>,  <40.969723, 34.134975, 28.650810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.622105, 33.864777, 28.809725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.376804, 33.549568, 28.831450>,  <41.229626, 33.360443, 28.844484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.376804, 33.549568, 28.831450>,  <41.622105, 33.864777, 28.809725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.376804, 33.549568, 28.831450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601774, -0.510631, -0.614105,
		0.511661, -0.343915, 0.787354,
		-0.613247, -0.788022, 0.054311,
		41.192829, 33.313160, 28.847742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.083836, 33.384216, 28.978674>,  <41.622105, 33.864777, 28.809725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.083836, 33.384216, 28.978674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.766258, 33.189598, 28.832840>,  <41.575710, 33.072826, 28.745338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.766258, 33.189598, 28.832840>,  <42.083836, 33.384216, 28.978674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.766258, 33.189598, 28.832840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606310, -0.589050, -0.534236,
		0.045172, -0.645206, 0.762672,
		-0.793945, -0.486548, -0.364586,
		41.528076, 33.043633, 28.723465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.393658, 32.767113, 28.866558>,  <42.083836, 33.384216, 28.978674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.393658, 32.767113, 28.866558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.059887, 32.732742, 28.648808>,  <41.859623, 32.712120, 28.518158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.059887, 32.732742, 28.648808>,  <42.393658, 32.767113, 28.866558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.059887, 32.732742, 28.648808> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455834, -0.662773, -0.594094,
		-0.309746, -0.743874, 0.592207,
		-0.834430, -0.085929, -0.544374,
		41.809559, 32.706963, 28.485495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.385708, 32.073765, 28.698572>,  <42.393658, 32.767113, 28.866558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.385708, 32.073765, 28.698572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.162231, 32.290974, 28.447815>,  <42.028145, 32.421299, 28.297361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.162231, 32.290974, 28.447815>,  <42.385708, 32.073765, 28.698572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.162231, 32.290974, 28.447815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450491, -0.435950, -0.779105,
		-0.696364, -0.717688, -0.001065,
		-0.558690, 0.543020, -0.626892,
		41.994625, 32.453880, 28.259747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.085621, 31.656185, 28.210569>,  <42.385708, 32.073765, 28.698572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.085621, 31.656185, 28.210569> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.068066, 32.018547, 28.042089>,  <42.057533, 32.235966, 27.941002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.068066, 32.018547, 28.042089>,  <42.085621, 31.656185, 28.210569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.068066, 32.018547, 28.042089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501675, -0.344612, -0.793451,
		-0.863942, -0.246128, -0.439346,
		-0.043887, 0.905905, -0.421201,
		42.054901, 32.290318, 27.915730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.990856, 31.494474, 27.507223>,  <42.085621, 31.656185, 28.210569>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.990856, 31.494474, 27.507223> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.121243, 31.872589, 27.512594>,  <42.199474, 32.099457, 27.515818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.121243, 31.872589, 27.512594>,  <41.990856, 31.494474, 27.507223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.121243, 31.872589, 27.512594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407997, -0.127848, -0.903987,
		-0.852811, 0.300145, -0.427348,
		0.325963, 0.945287, 0.013428,
		42.219032, 32.156174, 27.516623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.755112, 31.734514, 26.895691>,  <41.990856, 31.494474, 27.507223>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.755112, 31.734514, 26.895691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.040325, 31.993998, 27.002092>,  <42.211452, 32.149689, 27.065933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.040325, 31.993998, 27.002092>,  <41.755112, 31.734514, 26.895691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.040325, 31.993998, 27.002092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391815, -0.054058, -0.918455,
		-0.581428, 0.759116, -0.292718,
		0.713038, 0.648707, 0.266002,
		42.254238, 32.188610, 27.081894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871162, 32.090652, 26.300331>,  <41.755112, 31.734514, 26.895691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.871162, 32.090652, 26.300331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.197849, 32.145340, 26.524576>,  <42.393860, 32.178154, 26.659122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.197849, 32.145340, 26.524576>,  <41.871162, 32.090652, 26.300331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.197849, 32.145340, 26.524576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560858, 0.040390, -0.826926,
		-0.135701, 0.989786, -0.043694,
		0.816715, 0.136721, 0.560611,
		42.442863, 32.186356, 26.692759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.374020, 32.717625, 26.087950>,  <41.871162, 32.090652, 26.300331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.374020, 32.717625, 26.087950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.584194, 32.427883, 26.266489>,  <42.710300, 32.254040, 26.373613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.584194, 32.427883, 26.266489>,  <42.374020, 32.717625, 26.087950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.584194, 32.427883, 26.266489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600069, -0.056421, -0.797956,
		0.603186, 0.687117, 0.405016,
		0.525438, -0.724353, 0.446350,
		42.741825, 32.210579, 26.400394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.147457, 32.831219, 25.801779>,  <42.374020, 32.717625, 26.087950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.147457, 32.831219, 25.801779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.130215, 32.470535, 25.973852>,  <43.119869, 32.254124, 26.077097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.130215, 32.470535, 25.973852>,  <43.147457, 32.831219, 25.801779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.130215, 32.470535, 25.973852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717208, -0.327692, -0.615004,
		0.695524, 0.282020, 0.660841,
		-0.043109, -0.901711, 0.430185,
		43.117283, 32.200024, 26.102907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.849976, 32.587921, 25.770441>,  <43.147457, 32.831219, 25.801779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.849976, 32.587921, 25.770441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.636074, 32.253334, 25.818369>,  <43.507732, 32.052582, 25.847126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.636074, 32.253334, 25.818369>,  <43.849976, 32.587921, 25.770441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.636074, 32.253334, 25.818369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627262, -0.487951, -0.606998,
		0.566202, -0.249435, 0.785619,
		-0.534750, -0.836472, 0.119818,
		43.475647, 32.002392, 25.854315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.294502, 32.076687, 25.675402>,  <43.849976, 32.587921, 25.770441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.294502, 32.076687, 25.675402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.963146, 31.853422, 25.656525>,  <43.764332, 31.719463, 25.645199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.963146, 31.853422, 25.656525>,  <44.294502, 32.076687, 25.675402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.963146, 31.853422, 25.656525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452660, -0.617421, -0.643343,
		0.329951, -0.554301, 0.764122,
		-0.828391, -0.558159, -0.047191,
		43.714630, 31.685974, 25.642368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.563160, 30.740929, 22.588125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.827904, 31.033955, 22.651739>,  <36.986752, 31.209770, 22.689907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.827904, 31.033955, 22.651739>,  <36.563160, 30.740929, 22.588125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827904, 31.033955, 22.651739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296992, 0.061460, 0.952900,
		0.688288, -0.677916, 0.258243,
		0.661858, 0.732566, 0.159034,
		37.026463, 31.253725, 22.699450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012844, 30.474447, 23.130419>,  <36.563160, 30.740929, 22.588125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012844, 30.474447, 23.130419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.046360, 30.872793, 23.116400>,  <37.066471, 31.111801, 23.107988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.046360, 30.872793, 23.116400>,  <37.012844, 30.474447, 23.130419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046360, 30.872793, 23.116400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386623, 0.064905, 0.919951,
		0.918423, -0.063536, 0.390464,
		0.083793, 0.995867, -0.035046,
		37.071499, 31.171553, 23.105886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474224, 30.705835, 23.605312>,  <37.012844, 30.474447, 23.130419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474224, 30.705835, 23.605312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.223003, 31.011395, 23.545973>,  <37.072269, 31.194731, 23.510368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.223003, 31.011395, 23.545973>,  <37.474224, 30.705835, 23.605312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223003, 31.011395, 23.545973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228193, 0.001464, 0.973615,
		0.743960, 0.645335, 0.173397,
		-0.628054, 0.763899, -0.148350,
		37.034588, 31.240564, 23.501469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645958, 31.176874, 24.089973>,  <37.474224, 30.705835, 23.605312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645958, 31.176874, 24.089973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.293980, 31.334541, 23.983898>,  <37.082794, 31.429142, 23.920252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.293980, 31.334541, 23.983898>,  <37.645958, 31.176874, 24.089973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293980, 31.334541, 23.983898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209007, 0.180082, 0.961190,
		0.426628, 0.901222, -0.076078,
		-0.879946, 0.394169, -0.265190,
		37.029995, 31.452791, 23.904341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665218, 31.863909, 24.439749>,  <37.645958, 31.176874, 24.089973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665218, 31.863909, 24.439749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.289249, 31.776937, 24.334469>,  <37.063667, 31.724754, 24.271301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.289249, 31.776937, 24.334469>,  <37.665218, 31.863909, 24.439749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289249, 31.776937, 24.334469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300479, 0.160910, 0.940117,
		-0.162056, 0.962722, -0.216575,
		-0.939920, -0.217428, -0.263201,
		37.007275, 31.711710, 24.255508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249176, 32.514572, 24.598370>,  <37.665218, 31.863909, 24.439749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249176, 32.514572, 24.598370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.015766, 32.190208, 24.580818>,  <36.875721, 31.995590, 24.570288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.015766, 32.190208, 24.580818>,  <37.249176, 32.514572, 24.598370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015766, 32.190208, 24.580818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363139, 0.212224, 0.907244,
		-0.726380, 0.545334, -0.418311,
		-0.583526, -0.810909, -0.043877,
		36.840710, 31.946936, 24.567656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593563, 32.781120, 24.727053>,  <37.249176, 32.514572, 24.598370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593563, 32.781120, 24.727053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.583080, 32.392338, 24.820538>,  <36.576790, 32.159069, 24.876629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.583080, 32.392338, 24.820538>,  <36.593563, 32.781120, 24.727053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583080, 32.392338, 24.820538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356324, 0.227519, 0.906238,
		-0.933995, -0.059524, -0.352294,
		-0.026210, -0.971953, 0.233711,
		36.575218, 32.100754, 24.890652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048340, 32.749115, 25.174232>,  <36.593563, 32.781120, 24.727053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048340, 32.749115, 25.174232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.192112, 32.377834, 25.212692>,  <36.278374, 32.155064, 25.235767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.192112, 32.377834, 25.212692>,  <36.048340, 32.749115, 25.174232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192112, 32.377834, 25.212692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475746, -0.093629, 0.874585,
		-0.802792, -0.360096, -0.475243,
		0.359431, -0.928205, 0.096149,
		36.299942, 32.099373, 25.241537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448750, 32.283691, 25.280567>,  <36.048340, 32.749115, 25.174232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448750, 32.283691, 25.280567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.769791, 32.100021, 25.432875>,  <35.962414, 31.989819, 25.524260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.769791, 32.100021, 25.432875>,  <35.448750, 32.283691, 25.280567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769791, 32.100021, 25.432875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443161, -0.031707, 0.895881,
		-0.399294, -0.887779, -0.228937,
		0.802603, -0.459176, 0.380768,
		36.010571, 31.962269, 25.547106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199860, 31.722826, 25.699087>,  <35.448750, 32.283691, 25.280567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199860, 31.722826, 25.699087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.559540, 31.815584, 25.847498>,  <35.775349, 31.871239, 25.936544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.559540, 31.815584, 25.847498>,  <35.199860, 31.722826, 25.699087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559540, 31.815584, 25.847498> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394315, 0.062029, 0.916880,
		0.189608, -0.970760, 0.147217,
		0.899202, 0.231898, 0.371024,
		35.829300, 31.885153, 25.958805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312256, 31.274570, 26.225985>,  <35.199860, 31.722826, 25.699087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312256, 31.274570, 26.225985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.581467, 31.562675, 26.293232>,  <35.742992, 31.735538, 26.333580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.581467, 31.562675, 26.293232>,  <35.312256, 31.274570, 26.225985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581467, 31.562675, 26.293232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294031, 0.051980, 0.954382,
		0.678665, -0.691753, 0.246762,
		0.673023, 0.720261, 0.168120,
		35.783375, 31.778753, 26.343668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407913, 31.258125, 26.922937>,  <35.312256, 31.274570, 26.225985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407913, 31.258125, 26.922937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.563293, 31.614235, 26.827845>,  <35.656521, 31.827902, 26.770790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.563293, 31.614235, 26.827845>,  <35.407913, 31.258125, 26.922937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563293, 31.614235, 26.827845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350843, 0.381450, 0.855222,
		0.852066, -0.248804, 0.460521,
		0.388449, 0.890276, -0.237730,
		35.679829, 31.881317, 26.756525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583458, 31.481672, 27.561069>,  <35.407913, 31.258125, 26.922937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583458, 31.481672, 27.561069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.596813, 31.824598, 27.355585>,  <35.604824, 32.030354, 27.232294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.596813, 31.824598, 27.355585>,  <35.583458, 31.481672, 27.561069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596813, 31.824598, 27.355585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381069, 0.486087, 0.786451,
		0.923943, 0.169503, 0.342925,
		0.033386, 0.857314, -0.513710,
		35.606831, 32.081791, 27.201471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891171, 32.019104, 28.054737>,  <35.583458, 31.481672, 27.561069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891171, 32.019104, 28.054737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.688049, 32.225895, 27.779095>,  <35.566177, 32.349968, 27.613708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.688049, 32.225895, 27.779095>,  <35.891171, 32.019104, 28.054737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688049, 32.225895, 27.779095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538395, 0.434002, 0.722339,
		0.672505, 0.737821, 0.057947,
		-0.507807, 0.516975, -0.689107,
		35.535706, 32.380989, 27.572363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546967, 32.237804, 28.480816>,  <35.891171, 32.019104, 28.054737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546967, 32.237804, 28.480816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.562321, 31.872702, 28.643497>,  <36.571533, 31.653641, 28.741106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.562321, 31.872702, 28.643497>,  <36.546967, 32.237804, 28.480816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562321, 31.872702, 28.643497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361270, -0.366797, -0.857289,
		0.931671, 0.179833, 0.315672,
		0.038382, -0.912754, 0.406703,
		36.573833, 31.598875, 28.765509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139858, 31.992403, 28.207706>,  <36.546967, 32.237804, 28.480816>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139858, 31.992403, 28.207706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.983429, 31.661999, 28.370073>,  <36.889572, 31.463757, 28.467493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.983429, 31.661999, 28.370073>,  <37.139858, 31.992403, 28.207706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983429, 31.661999, 28.370073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425883, -0.553391, -0.715809,
		0.815897, -0.107059, 0.568199,
		-0.391070, -0.826013, 0.405915,
		36.866108, 31.414194, 28.491848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749374, 31.384954, 28.356558>,  <37.139858, 31.992403, 28.207706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749374, 31.384954, 28.356558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.376122, 31.246780, 28.316662>,  <37.152172, 31.163876, 28.292725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.376122, 31.246780, 28.316662>,  <37.749374, 31.384954, 28.356558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376122, 31.246780, 28.316662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302823, -0.605525, -0.735961,
		0.193832, -0.716948, 0.669638,
		-0.933128, -0.345434, -0.099738,
		37.096184, 31.143150, 28.286739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857914, 30.726465, 28.230028>,  <37.749374, 31.384954, 28.356558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857914, 30.726465, 28.230028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.478191, 30.786030, 28.119297>,  <37.250359, 30.821768, 28.052858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.478191, 30.786030, 28.119297>,  <37.857914, 30.726465, 28.230028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478191, 30.786030, 28.119297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153839, -0.547902, -0.822275,
		-0.274120, -0.823182, 0.497222,
		-0.949311, 0.148910, -0.276829,
		37.193398, 30.830702, 28.036249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555386, 29.985455, 28.146423>,  <37.857914, 30.726465, 28.230028>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555386, 29.985455, 28.146423> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.349064, 30.246435, 27.924343>,  <37.225269, 30.403025, 27.791094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.349064, 30.246435, 27.924343>,  <37.555386, 29.985455, 28.146423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349064, 30.246435, 27.924343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239149, -0.512647, -0.824622,
		-0.822649, -0.558121, 0.108393,
		-0.515806, 0.652453, -0.555203,
		37.194321, 30.442171, 27.757782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197777, 29.506399, 27.689745>,  <37.555386, 29.985455, 28.146423>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197777, 29.506399, 27.689745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.211689, 29.876486, 27.538609>,  <37.220036, 30.098537, 27.447926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.211689, 29.876486, 27.538609>,  <37.197777, 29.506399, 27.689745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211689, 29.876486, 27.538609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165143, -0.378194, -0.910877,
		-0.985656, -0.030721, -0.165946,
		0.034777, 0.925217, -0.377842,
		37.222122, 30.154051, 27.425257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944324, 29.360142, 27.136375>,  <37.197777, 29.506399, 27.689745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944324, 29.360142, 27.136375> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.109852, 29.718010, 27.069067>,  <37.209167, 29.932732, 27.028681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.109852, 29.718010, 27.069067>,  <36.944324, 29.360142, 27.136375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109852, 29.718010, 27.069067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197963, -0.268856, -0.942617,
		-0.888573, 0.356764, -0.288370,
		0.413822, 0.894671, -0.168272,
		37.233997, 29.986412, 27.018585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590401, 29.587767, 26.575027>,  <36.944324, 29.360142, 27.136375>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590401, 29.587767, 26.575027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.933987, 29.792028, 26.590027>,  <37.140141, 29.914585, 26.599026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.933987, 29.792028, 26.590027>,  <36.590401, 29.587767, 26.575027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933987, 29.792028, 26.590027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124817, -0.137805, -0.982563,
		-0.496584, 0.848670, -0.182109,
		0.858968, 0.510655, 0.037496,
		37.191677, 29.945225, 26.601276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594112, 30.028990, 26.023502>,  <36.590401, 29.587767, 26.575027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594112, 30.028990, 26.023502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.982990, 30.037477, 26.116793>,  <37.216316, 30.042570, 26.172768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.982990, 30.037477, 26.116793>,  <36.594112, 30.028990, 26.023502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982990, 30.037477, 26.116793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229822, -0.277862, -0.932724,
		0.045012, 0.960387, -0.275012,
		0.972191, 0.021220, 0.233225,
		37.274647, 30.043844, 26.186760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816956, 30.237593, 25.454880>,  <36.594112, 30.028990, 26.023502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816956, 30.237593, 25.454880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.145763, 30.080887, 25.620195>,  <37.343048, 29.986864, 25.719385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.145763, 30.080887, 25.620195>,  <36.816956, 30.237593, 25.454880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145763, 30.080887, 25.620195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390256, -0.140981, -0.909849,
		0.414713, 0.909200, 0.036999,
		0.822018, -0.391765, 0.413287,
		37.392368, 29.963358, 25.744181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282013, 30.460619, 25.003719>,  <36.816956, 30.237593, 25.454880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282013, 30.460619, 25.003719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.488571, 30.170589, 25.185972>,  <37.612507, 29.996572, 25.295324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.488571, 30.170589, 25.185972>,  <37.282013, 30.460619, 25.003719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488571, 30.170589, 25.185972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544605, -0.132536, -0.828154,
		0.660861, 0.675797, 0.326438,
		0.516400, -0.725074, 0.455630,
		37.643490, 29.953068, 25.322660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964233, 30.607204, 24.924618>,  <37.282013, 30.460619, 25.003719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964233, 30.607204, 24.924618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.951168, 30.213175, 24.992224>,  <37.943329, 29.976757, 25.032787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.951168, 30.213175, 24.992224>,  <37.964233, 30.607204, 24.924618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951168, 30.213175, 24.992224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533411, -0.160189, -0.830549,
		0.845225, 0.063026, 0.530681,
		-0.032663, -0.985072, 0.169015,
		37.941368, 29.917654, 25.042929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643330, 30.330351, 25.031395>,  <37.964233, 30.607204, 24.924618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643330, 30.330351, 25.031395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.414036, 30.026882, 24.907572>,  <38.276459, 29.844801, 24.833279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.414036, 30.026882, 24.907572>,  <38.643330, 30.330351, 25.031395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414036, 30.026882, 24.907572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627097, -0.163027, -0.761690,
		0.527406, -0.630747, 0.569212,
		-0.573230, -0.758670, -0.309558,
		38.242065, 29.799282, 24.814705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093410, 29.860096, 24.906748>,  <38.643330, 30.330351, 25.031395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093410, 29.860096, 24.906748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.772583, 29.734779, 24.703362>,  <38.580086, 29.659590, 24.581329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.772583, 29.734779, 24.703362>,  <39.093410, 29.860096, 24.906748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772583, 29.734779, 24.703362> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579546, -0.202629, -0.789347,
		0.144265, -0.927788, 0.344088,
		-0.802069, -0.313290, -0.508464,
		38.531963, 29.640793, 24.550823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541737, 29.322842, 25.220640>,  <39.093410, 29.860096, 24.906748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541737, 29.322842, 25.220640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.919369, 29.421814, 25.307810>,  <40.145947, 29.481197, 25.360111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.919369, 29.421814, 25.307810>,  <39.541737, 29.322842, 25.220640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919369, 29.421814, 25.307810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280501, 0.255336, 0.925269,
		0.173295, -0.934656, 0.310462,
		0.944080, 0.247430, 0.217924,
		40.202595, 29.496042, 25.373188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637821, 29.030775, 25.881285>,  <39.541737, 29.322842, 25.220640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637821, 29.030775, 25.881285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.904938, 29.326506, 25.846756>,  <40.065208, 29.503944, 25.826038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.904938, 29.326506, 25.846756>,  <39.637821, 29.030775, 25.881285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.904938, 29.326506, 25.846756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140507, 0.239090, 0.960778,
		0.730967, -0.629470, 0.263543,
		0.667792, 0.739326, -0.086322,
		40.105274, 29.548304, 25.820860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078491, 29.009125, 26.404009>,  <39.637821, 29.030775, 25.881285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078491, 29.009125, 26.404009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.085911, 29.390511, 26.283634>,  <40.090363, 29.619341, 26.211409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.085911, 29.390511, 26.283634>,  <40.078491, 29.009125, 26.404009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085911, 29.390511, 26.283634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170329, 0.299602, 0.938737,
		0.985213, 0.033849, 0.167959,
		0.018545, 0.953463, -0.300937,
		40.091473, 29.676550, 26.193354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446663, 29.301989, 26.987072>,  <40.078491, 29.009125, 26.404009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446663, 29.301989, 26.987072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.301949, 29.614717, 26.783949>,  <40.215118, 29.802355, 26.662075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.301949, 29.614717, 26.783949>,  <40.446663, 29.301989, 26.987072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301949, 29.614717, 26.783949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237986, 0.449204, 0.861150,
		0.901372, 0.432405, 0.023545,
		-0.361788, 0.781820, -0.507806,
		40.193413, 29.849264, 26.631607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833416, 29.866985, 27.210461>,  <40.446663, 29.301989, 26.987072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833416, 29.866985, 27.210461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.478107, 29.985325, 27.069916>,  <40.264923, 30.056328, 26.985590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.478107, 29.985325, 27.069916>,  <40.833416, 29.866985, 27.210461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478107, 29.985325, 27.069916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199040, 0.441480, 0.874916,
		0.413961, 0.847094, -0.333267,
		-0.888267, 0.295849, -0.351361,
		40.211628, 30.074080, 26.964508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862518, 30.538176, 27.302746>,  <40.833416, 29.866985, 27.210461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862518, 30.538176, 27.302746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.473789, 30.458849, 27.251776>,  <40.240551, 30.411253, 27.221193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.473789, 30.458849, 27.251776>,  <40.862518, 30.538176, 27.302746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473789, 30.458849, 27.251776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194018, 0.365926, 0.910195,
		-0.133878, 0.909268, -0.394091,
		-0.971820, -0.198316, -0.127425,
		40.182243, 30.399355, 27.213549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603786, 31.167664, 27.599916>,  <40.862518, 30.538176, 27.302746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.603786, 31.167664, 27.599916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.314373, 30.891661, 27.607792>,  <40.140724, 30.726059, 27.612518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.314373, 30.891661, 27.607792>,  <40.603786, 31.167664, 27.599916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314373, 30.891661, 27.607792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247764, 0.286216, 0.925577,
		-0.644291, 0.664809, -0.378046,
		-0.723534, -0.690007, 0.019691,
		40.097313, 30.684658, 27.613699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062061, 31.525793, 27.822332>,  <40.603786, 31.167664, 27.599916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062061, 31.525793, 27.822332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.951672, 31.156059, 27.927736>,  <39.885437, 30.934219, 27.990978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.951672, 31.156059, 27.927736>,  <40.062061, 31.525793, 27.822332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951672, 31.156059, 27.927736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306443, 0.344469, 0.887375,
		-0.911005, 0.164144, -0.378322,
		-0.275977, -0.924337, 0.263512,
		39.868877, 30.878757, 28.006790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571915, 31.649748, 28.341248>,  <40.062061, 31.525793, 27.822332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571915, 31.649748, 28.341248> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.695683, 31.272156, 28.387131>,  <39.769943, 31.045601, 28.414661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.695683, 31.272156, 28.387131>,  <39.571915, 31.649748, 28.341248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695683, 31.272156, 28.387131> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286178, 0.022596, 0.957910,
		-0.906840, -0.329227, -0.263154,
		0.309424, -0.943980, 0.114708,
		39.788509, 30.988962, 28.421543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975159, 31.138985, 28.560566>,  <39.571915, 31.649748, 28.341248>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975159, 31.138985, 28.560566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.320827, 30.978214, 28.681667>,  <39.528229, 30.881752, 28.754328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.320827, 30.978214, 28.681667>,  <38.975159, 31.138985, 28.560566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320827, 30.978214, 28.681667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351204, -0.050887, 0.934915,
		-0.360360, -0.914257, -0.185133,
		0.864174, -0.401926, 0.302753,
		39.580078, 30.857637, 28.772493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838383, 30.605150, 28.986162>,  <38.975159, 31.138985, 28.560566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838383, 30.605150, 28.986162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.217499, 30.702820, 29.068211>,  <39.444969, 30.761421, 29.117439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.217499, 30.702820, 29.068211>,  <38.838383, 30.605150, 28.986162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217499, 30.702820, 29.068211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149471, -0.228039, 0.962111,
		0.281699, -0.942537, -0.179636,
		0.947789, 0.244175, 0.205121,
		39.501835, 30.776072, 29.129747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962498, 30.250767, 29.657043>,  <38.838383, 30.605150, 28.986162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962498, 30.250767, 29.657043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.282787, 30.489912, 29.642061>,  <39.474960, 30.633400, 29.633072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.282787, 30.489912, 29.642061>,  <38.962498, 30.250767, 29.657043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282787, 30.489912, 29.642061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026556, 0.027038, 0.999282,
		0.598448, -0.801141, 0.005773,
		0.800721, 0.597865, -0.037456,
		39.523003, 30.669271, 29.630825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454018, 29.998024, 30.121365>,  <38.962498, 30.250767, 29.657043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454018, 29.998024, 30.121365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.502903, 30.393373, 30.085180>,  <39.532234, 30.630583, 30.063469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.502903, 30.393373, 30.085180>,  <39.454018, 29.998024, 30.121365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502903, 30.393373, 30.085180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089310, 0.101725, 0.990796,
		0.988478, -0.113008, 0.100703,
		0.122212, 0.988373, -0.090461,
		39.539566, 30.689886, 30.058043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844570, 30.178930, 30.671156>,  <39.454018, 29.998024, 30.121365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844570, 30.178930, 30.671156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.746349, 30.556070, 30.581059>,  <39.687416, 30.782354, 30.527000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.746349, 30.556070, 30.581059>,  <39.844570, 30.178930, 30.671156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746349, 30.556070, 30.581059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162187, 0.189122, 0.968467,
		0.955719, 0.274341, 0.106479,
		-0.245553, 0.942852, -0.225242,
		39.672684, 30.838926, 30.513487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<44.603962, 31.279749, 25.699423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.230530, 31.310110, 25.559324>,  <44.006470, 31.328327, 25.475266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.230530, 31.310110, 25.559324>,  <44.603962, 31.279749, 25.699423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.230530, 31.310110, 25.559324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258920, -0.532853, -0.805622,
		-0.247779, -0.842797, 0.477807,
		-0.933577, 0.075902, -0.350247,
		43.950459, 31.332880, 25.454250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.440304, 30.555920, 25.540312>,  <44.603962, 31.279749, 25.699423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.440304, 30.555920, 25.540312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.215527, 30.798403, 25.315195>,  <44.080662, 30.943893, 25.180124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.215527, 30.798403, 25.315195>,  <44.440304, 30.555920, 25.540312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.215527, 30.798403, 25.315195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277586, -0.502722, -0.818668,
		-0.779211, -0.616266, 0.114225,
		-0.561940, 0.606207, -0.562793,
		44.046944, 30.980265, 25.146357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.176872, 30.117704, 24.997229>,  <44.440304, 30.555920, 25.540312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.176872, 30.117704, 24.997229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.113739, 30.488354, 24.860725>,  <44.075859, 30.710743, 24.778824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.113739, 30.488354, 24.860725>,  <44.176872, 30.117704, 24.997229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.113739, 30.488354, 24.860725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362405, -0.267117, -0.892923,
		-0.918559, -0.264609, -0.293652,
		-0.157837, 0.926623, -0.341258,
		44.066387, 30.766340, 24.758348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.770702, 30.076681, 24.313906>,  <44.176872, 30.117704, 24.997229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.770702, 30.076681, 24.313906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.969425, 30.423637, 24.325352>,  <44.088657, 30.631811, 24.332220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.969425, 30.423637, 24.325352>,  <43.770702, 30.076681, 24.313906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.969425, 30.423637, 24.325352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267584, -0.121729, -0.955814,
		-0.825579, 0.482513, -0.292575,
		0.496807, 0.867389, 0.028616,
		44.118469, 30.683855, 24.333937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.394142, 30.536469, 23.727825>,  <43.770702, 30.076681, 24.313906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.394142, 30.536469, 23.727825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.768055, 30.653389, 23.808563>,  <43.992401, 30.723541, 23.857006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.768055, 30.653389, 23.808563>,  <43.394142, 30.536469, 23.727825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.768055, 30.653389, 23.808563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196791, 0.046914, -0.979322,
		-0.295725, 0.955175, -0.013667,
		0.934783, 0.292300, 0.201843,
		44.048489, 30.741079, 23.869116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.523315, 31.010395, 23.310165>,  <43.394142, 30.536469, 23.727825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.523315, 31.010395, 23.310165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.895329, 30.908751, 23.416346>,  <44.118538, 30.847763, 23.480053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.895329, 30.908751, 23.416346>,  <43.523315, 31.010395, 23.310165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.895329, 30.908751, 23.416346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277145, 0.010706, -0.960768,
		0.241302, 0.967115, 0.080384,
		0.930034, -0.254113, 0.265448,
		44.174339, 30.832516, 23.495979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.872059, 31.211525, 22.806322>,  <43.523315, 31.010395, 23.310165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.872059, 31.211525, 22.806322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.115650, 30.942327, 22.974239>,  <44.261806, 30.780809, 23.074989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.115650, 30.942327, 22.974239>,  <43.872059, 31.211525, 22.806322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.115650, 30.942327, 22.974239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241759, -0.346580, -0.906331,
		0.755445, 0.653426, -0.048358,
		0.608980, -0.672992, 0.419793,
		44.298344, 30.740431, 23.100178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.419201, 31.419754, 22.563705>,  <43.872059, 31.211525, 22.806322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.419201, 31.419754, 22.563705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.452389, 31.035364, 22.669268>,  <44.472301, 30.804731, 22.732605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.452389, 31.035364, 22.669268>,  <44.419201, 31.419754, 22.563705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.452389, 31.035364, 22.669268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243787, -0.237200, -0.940374,
		0.966273, 0.142363, 0.214591,
		0.082973, -0.960973, 0.263906,
		44.477280, 30.747072, 22.748440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.952415, 31.153959, 22.164602>,  <44.419201, 31.419754, 22.563705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.952415, 31.153959, 22.164602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.771790, 30.818827, 22.287321>,  <44.663414, 30.617746, 22.360952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.771790, 30.818827, 22.287321>,  <44.952415, 31.153959, 22.164602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.771790, 30.818827, 22.287321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100205, -0.389299, -0.915645,
		0.886594, -0.382729, 0.259748,
		-0.451563, -0.837833, 0.306799,
		44.636322, 30.567476, 22.379360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.417614, 30.524849, 21.976181>,  <44.952415, 31.153959, 22.164602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.417614, 30.524849, 21.976181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.037727, 30.408197, 22.021778>,  <44.809795, 30.338207, 22.049137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.037727, 30.408197, 22.021778>,  <45.417614, 30.524849, 21.976181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.037727, 30.408197, 22.021778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034255, -0.458643, -0.887960,
		0.311237, -0.839404, 0.445570,
		-0.949714, -0.291630, 0.113993,
		44.752811, 30.320709, 22.055975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.411987, 29.817169, 21.731977>,  <45.417614, 30.524849, 21.976181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.411987, 29.817169, 21.731977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.043560, 29.972166, 21.716562>,  <44.822502, 30.065165, 21.707314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.043560, 29.972166, 21.716562>,  <45.411987, 29.817169, 21.731977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.043560, 29.972166, 21.716562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162172, -0.471686, -0.866725,
		-0.354027, -0.792062, 0.497295,
		-0.921067, 0.387491, -0.038539,
		44.767239, 30.088413, 21.705000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.980049, 29.301401, 21.676537>,  <45.411987, 29.817169, 21.731977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.980049, 29.301401, 21.676537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.822418, 29.632147, 21.516037>,  <44.727840, 29.830593, 21.419737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.822418, 29.632147, 21.516037>,  <44.980049, 29.301401, 21.676537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.822418, 29.632147, 21.516037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057092, -0.457758, -0.887242,
		-0.917302, -0.326735, 0.227600,
		-0.394079, 0.826863, -0.401248,
		44.704193, 29.880205, 21.395662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.240742, 29.251884, 21.495846>,  <44.980049, 29.301401, 21.676537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.240742, 29.251884, 21.495846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.419071, 29.514877, 21.252876>,  <44.526070, 29.672672, 21.107094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.419071, 29.514877, 21.252876>,  <44.240742, 29.251884, 21.495846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.419071, 29.514877, 21.252876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040113, -0.663236, -0.747334,
		-0.894223, 0.357542, -0.269311,
		0.445820, 0.657482, -0.607423,
		44.552818, 29.712122, 21.070650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.286678, 28.493921, 21.073080>,  <44.240742, 29.251884, 21.495846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.286678, 28.493921, 21.073080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.972424, 28.333878, 20.884323>,  <43.783871, 28.237850, 20.771069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.972424, 28.333878, 20.884323>,  <44.286678, 28.493921, 21.073080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.972424, 28.333878, 20.884323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448868, -0.156294, 0.879824,
		-0.425781, 0.903041, -0.056807,
		-0.785638, -0.400111, -0.471893,
		43.736732, 28.213844, 20.742756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.595432, 28.975325, 21.013391>,  <44.286678, 28.493921, 21.073080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.595432, 28.975325, 21.013391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.512314, 28.584059, 21.011719>,  <43.462444, 28.349300, 21.010715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.512314, 28.584059, 21.011719>,  <43.595432, 28.975325, 21.013391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.512314, 28.584059, 21.011719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392877, 0.079546, 0.916144,
		-0.895806, 0.192012, -0.400827,
		-0.207795, -0.978163, -0.004180,
		43.449974, 28.290609, 21.010466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.913574, 28.937458, 20.979074>,  <43.595432, 28.975325, 21.013391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.913574, 28.937458, 20.979074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.014320, 28.577518, 21.121532>,  <43.074768, 28.361555, 21.207008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.014320, 28.577518, 21.121532>,  <42.913574, 28.937458, 20.979074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.014320, 28.577518, 21.121532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711673, 0.077168, 0.698260,
		-0.655811, -0.429324, -0.620961,
		0.251861, -0.899848, 0.356146,
		43.089878, 28.307564, 21.228376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337852, 28.587650, 21.155804>,  <42.913574, 28.937458, 20.979074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.337852, 28.587650, 21.155804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.594749, 28.351761, 21.351660>,  <42.748886, 28.210226, 21.469173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.594749, 28.351761, 21.351660>,  <42.337852, 28.587650, 21.155804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.594749, 28.351761, 21.351660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646067, -0.072748, 0.759806,
		-0.412456, -0.804321, -0.427724,
		0.642244, -0.589725, 0.489640,
		42.787422, 28.174843, 21.498552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.921589, 28.141258, 21.450090>,  <42.337852, 28.587650, 21.155804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.921589, 28.141258, 21.450090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.258698, 28.139528, 21.665394>,  <42.460960, 28.138491, 21.794575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.258698, 28.139528, 21.665394>,  <41.921589, 28.141258, 21.450090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.258698, 28.139528, 21.665394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528062, 0.187229, 0.828309,
		-0.104362, -0.982307, 0.155506,
		0.842769, -0.004328, 0.538258,
		42.511528, 28.138231, 21.826872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.766632, 27.790644, 22.137251>,  <41.921589, 28.141258, 21.450090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.766632, 27.790644, 22.137251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.099274, 28.006283, 22.190632>,  <42.298859, 28.135666, 22.222660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.099274, 28.006283, 22.190632>,  <41.766632, 27.790644, 22.137251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.099274, 28.006283, 22.190632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355699, 0.332468, 0.873466,
		0.426515, -0.773846, 0.468238,
		0.831602, 0.539099, 0.133454,
		42.348755, 28.168013, 22.230669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039085, 27.561197, 22.760077>,  <41.766632, 27.790644, 22.137251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039085, 27.561197, 22.760077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.191864, 27.926512, 22.703482>,  <42.283531, 28.145700, 22.669525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.191864, 27.926512, 22.703482>,  <42.039085, 27.561197, 22.760077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.191864, 27.926512, 22.703482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279560, 0.260098, 0.924227,
		0.880886, -0.313455, 0.354663,
		0.381951, 0.913288, -0.141487,
		42.306450, 28.200499, 22.661036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.328064, 27.683962, 23.362425>,  <42.039085, 27.561197, 22.760077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.328064, 27.683962, 23.362425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.312473, 28.035780, 23.172737>,  <42.303120, 28.246870, 23.058924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.312473, 28.035780, 23.172737>,  <42.328064, 27.683962, 23.362425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.312473, 28.035780, 23.172737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336989, 0.435208, 0.834884,
		0.940701, 0.192347, 0.279434,
		-0.038976, 0.879543, -0.474220,
		42.300781, 28.299643, 23.030472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.645420, 28.126621, 23.826483>,  <42.328064, 27.683962, 23.362425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.645420, 28.126621, 23.826483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.407684, 28.340935, 23.586582>,  <42.265045, 28.469522, 23.442642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.407684, 28.340935, 23.586582>,  <42.645420, 28.126621, 23.826483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.407684, 28.340935, 23.586582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338878, 0.509473, 0.790949,
		0.729334, 0.673331, -0.121233,
		-0.594335, 0.535782, -0.599752,
		42.229385, 28.501669, 23.406656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.672832, 28.756205, 24.078672>,  <42.645420, 28.126621, 23.826483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.672832, 28.756205, 24.078672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.325832, 28.738848, 23.880457>,  <42.117630, 28.728434, 23.761528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.325832, 28.738848, 23.880457>,  <42.672832, 28.756205, 24.078672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.325832, 28.738848, 23.880457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481680, 0.322002, 0.815046,
		0.124197, 0.945744, -0.300238,
		-0.867502, -0.043392, -0.495538,
		42.065582, 28.725830, 23.731796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.406368, 29.439667, 24.268799>,  <42.672832, 28.756205, 24.078672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.406368, 29.439667, 24.268799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.088650, 29.233393, 24.140320>,  <41.898018, 29.109629, 24.063232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.088650, 29.233393, 24.140320>,  <42.406368, 29.439667, 24.268799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.088650, 29.233393, 24.140320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559043, 0.413410, 0.718723,
		-0.237848, 0.750441, -0.616658,
		-0.794292, -0.515685, -0.321200,
		41.850361, 29.078688, 24.043961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827515, 29.929012, 24.229643>,  <42.406368, 29.439667, 24.268799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.827515, 29.929012, 24.229643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.623234, 29.585447, 24.214407>,  <41.500664, 29.379309, 24.205265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.623234, 29.585447, 24.214407>,  <41.827515, 29.929012, 24.229643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.623234, 29.585447, 24.214407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702114, 0.391080, 0.595057,
		-0.496206, 0.330640, -0.802781,
		-0.510701, -0.858914, -0.038090,
		41.470024, 29.327774, 24.202980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.167397, 30.070938, 24.199404>,  <41.827515, 29.929012, 24.229643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.167397, 30.070938, 24.199404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.128925, 29.692175, 24.322117>,  <41.105843, 29.464916, 24.395744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.128925, 29.692175, 24.322117>,  <41.167397, 30.070938, 24.199404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.128925, 29.692175, 24.322117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775147, 0.264600, 0.573702,
		-0.624417, -0.182623, -0.759442,
		-0.096177, -0.946909, 0.306781,
		41.100071, 29.408102, 24.414150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.374756, 29.923801, 24.247707>,  <41.167397, 30.070938, 24.199404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.374756, 29.923801, 24.247707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.564209, 29.661530, 24.482912>,  <40.677879, 29.504166, 24.624035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.564209, 29.661530, 24.482912>,  <40.374756, 29.923801, 24.247707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564209, 29.661530, 24.482912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605826, 0.242049, 0.757883,
		-0.639258, -0.715188, -0.282588,
		0.473629, -0.655682, 0.588011,
		40.706299, 29.464825, 24.659315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816891, 29.495571, 24.589106>,  <40.374756, 29.923801, 24.247707>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816891, 29.495571, 24.589106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.149220, 29.470125, 24.810259>,  <40.348618, 29.454859, 24.942951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.149220, 29.470125, 24.810259>,  <39.816891, 29.495571, 24.589106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149220, 29.470125, 24.810259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513777, 0.294185, 0.805908,
		-0.213918, -0.953629, 0.211733,
		0.830826, -0.063614, 0.552884,
		40.398468, 29.451040, 24.976124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296715, 29.134775, 24.489523>,  <39.816891, 29.495571, 24.589106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296715, 29.134775, 24.489523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.940609, 29.208071, 24.322742>,  <38.726944, 29.252048, 24.222673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.940609, 29.208071, 24.322742>,  <39.296715, 29.134775, 24.489523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940609, 29.208071, 24.322742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378603, -0.211112, -0.901161,
		-0.253146, -0.960134, 0.118574,
		-0.890268, 0.183233, -0.416952,
		38.673531, 29.263042, 24.197657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033939, 28.594536, 24.015985>,  <39.296715, 29.134775, 24.489523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033939, 28.594536, 24.015985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.853859, 28.931353, 23.897137>,  <38.745811, 29.133442, 23.825827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.853859, 28.931353, 23.897137>,  <39.033939, 28.594536, 24.015985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853859, 28.931353, 23.897137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284898, -0.179905, -0.941524,
		-0.846256, -0.508529, -0.158901,
		-0.450206, 0.842041, -0.297124,
		38.718796, 29.183966, 23.807999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796684, 28.430830, 23.305006>,  <39.033939, 28.594536, 24.015985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796684, 28.430830, 23.305006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.807487, 28.830658, 23.309557>,  <38.813969, 29.070555, 23.312286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.807487, 28.830658, 23.309557>,  <38.796684, 28.430830, 23.305006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807487, 28.830658, 23.309557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465463, -0.002503, -0.885064,
		-0.884656, 0.029197, -0.465330,
		0.027006, 0.999571, 0.011376,
		38.815590, 29.130529, 23.312969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537960, 28.664614, 22.644438>,  <38.796684, 28.430830, 23.305006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537960, 28.664614, 22.644438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.738987, 28.975979, 22.794903>,  <38.859604, 29.162798, 22.885181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.738987, 28.975979, 22.794903>,  <38.537960, 28.664614, 22.644438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738987, 28.975979, 22.794903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419441, 0.160928, -0.893405,
		-0.755972, 0.606776, -0.245620,
		0.502569, 0.778412, 0.376163,
		38.889759, 29.209503, 22.907751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377995, 29.220137, 22.170208>,  <38.537960, 28.664614, 22.644438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377995, 29.220137, 22.170208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.719028, 29.292547, 22.366299>,  <38.923649, 29.335993, 22.483953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.719028, 29.292547, 22.366299>,  <38.377995, 29.220137, 22.170208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719028, 29.292547, 22.366299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449220, 0.225424, -0.864514,
		-0.267007, 0.957295, 0.110874,
		0.852589, 0.181025, 0.490226,
		38.974804, 29.346855, 22.513367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679901, 29.822659, 21.857655>,  <38.377995, 29.220137, 22.170208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679901, 29.822659, 21.857655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.987850, 29.638113, 22.034035>,  <39.172619, 29.527386, 22.139862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.987850, 29.638113, 22.034035>,  <38.679901, 29.822659, 21.857655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987850, 29.638113, 22.034035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501983, 0.011114, -0.864806,
		0.394087, 0.887143, 0.240152,
		0.769875, -0.461362, 0.440951,
		39.218811, 29.499704, 22.166321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342346, 30.169605, 21.650513>,  <38.679901, 29.822659, 21.857655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342346, 30.169605, 21.650513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.409279, 29.788141, 21.750540>,  <39.449440, 29.559263, 21.810556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.409279, 29.788141, 21.750540>,  <39.342346, 30.169605, 21.650513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409279, 29.788141, 21.750540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499060, -0.136812, -0.855699,
		0.850258, 0.267987, 0.453040,
		0.167334, -0.953659, 0.250067,
		39.459480, 29.502043, 21.825560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369259, 30.714689, 21.105188>,  <39.342346, 30.169605, 21.650513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369259, 30.714689, 21.105188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.107517, 30.808348, 20.817579>,  <38.950474, 30.864542, 20.645014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.107517, 30.808348, 20.817579>,  <39.369259, 30.714689, 21.105188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107517, 30.808348, 20.817579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606228, 0.405929, 0.683893,
		0.452003, 0.883401, -0.123675,
		-0.654355, 0.234147, -0.719023,
		38.911209, 30.878592, 20.601871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232475, 31.404793, 21.129238>,  <39.369259, 30.714689, 21.105188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232475, 31.404793, 21.129238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.901447, 31.265072, 20.953457>,  <38.702831, 31.181238, 20.847988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.901447, 31.265072, 20.953457>,  <39.232475, 31.404793, 21.129238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901447, 31.265072, 20.953457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557700, 0.422225, 0.714631,
		-0.064075, 0.836488, -0.544226,
		-0.827566, -0.349304, -0.439455,
		38.653179, 31.160280, 20.821621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808327, 32.003696, 21.071215>,  <39.232475, 31.404793, 21.129238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808327, 32.003696, 21.071215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.565319, 31.687365, 21.041536>,  <38.419514, 31.497566, 21.023729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.565319, 31.687365, 21.041536>,  <38.808327, 32.003696, 21.071215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565319, 31.687365, 21.041536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591153, 0.387777, 0.707224,
		-0.530521, 0.473517, -0.703085,
		-0.607523, -0.790829, -0.074197,
		38.383060, 31.450115, 21.019278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148518, 32.226208, 21.130836>,  <38.808327, 32.003696, 21.071215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148518, 32.226208, 21.130836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.105762, 31.836906, 21.212177>,  <38.080109, 31.603325, 21.260983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.105762, 31.836906, 21.212177>,  <38.148518, 32.226208, 21.130836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105762, 31.836906, 21.212177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602868, 0.226078, 0.765140,
		-0.790649, -0.040811, -0.610908,
		-0.106887, -0.973254, 0.203352,
		38.073696, 31.544930, 21.273182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479603, 32.202652, 21.393465>,  <38.148518, 32.226208, 21.130836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479603, 32.202652, 21.393465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.656975, 31.875185, 21.539425>,  <37.763397, 31.678705, 21.627001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.656975, 31.875185, 21.539425>,  <37.479603, 32.202652, 21.393465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656975, 31.875185, 21.539425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556690, 0.067520, 0.827972,
		-0.702473, -0.570282, -0.425805,
		0.443428, -0.818670, 0.364901,
		37.790005, 31.629583, 21.648895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940346, 31.852259, 21.619087>,  <37.479603, 32.202652, 21.393465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940346, 31.852259, 21.619087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.251392, 31.703873, 21.822144>,  <37.438019, 31.614841, 21.943977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.251392, 31.703873, 21.822144>,  <36.940346, 31.852259, 21.619087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251392, 31.703873, 21.822144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558152, -0.035607, 0.828974,
		-0.289445, -0.927964, -0.234743,
		0.777617, -0.370965, 0.507639,
		37.484676, 31.592583, 21.974436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581799, 31.337870, 21.930126>,  <36.940346, 31.852259, 21.619087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581799, 31.337870, 21.930126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.922966, 31.419836, 22.122181>,  <37.127666, 31.469015, 22.237413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.922966, 31.419836, 22.122181>,  <36.581799, 31.337870, 21.930126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922966, 31.419836, 22.122181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456208, -0.154506, 0.876357,
		0.253764, -0.966508, -0.038297,
		0.852923, 0.204917, 0.480137,
		37.178844, 31.481312, 22.266222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<43.146332, 32.742741, 19.633495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.237370, 32.383606, 19.784277>,  <43.291992, 32.168125, 19.874746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.237370, 32.383606, 19.784277>,  <43.146332, 32.742741, 19.633495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.237370, 32.383606, 19.784277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644578, 0.151251, 0.749428,
		-0.729878, -0.413538, -0.544302,
		0.227591, -0.897836, 0.376952,
		43.305649, 32.114254, 19.897362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.587006, 32.269604, 19.722982>,  <43.146332, 32.742741, 19.633495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.587006, 32.269604, 19.722982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.870441, 32.205826, 19.997929>,  <43.040504, 32.167557, 20.162897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.870441, 32.205826, 19.997929>,  <42.587006, 32.269604, 19.722982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.870441, 32.205826, 19.997929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647433, 0.240442, 0.723200,
		-0.280584, -0.957478, 0.067144,
		0.708592, -0.159448, 0.687367,
		43.083019, 32.157993, 20.204140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.236977, 31.995684, 20.293413>,  <42.587006, 32.269604, 19.722982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.236977, 31.995684, 20.293413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.582458, 32.115196, 20.455769>,  <42.789749, 32.186905, 20.553181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.582458, 32.115196, 20.455769>,  <42.236977, 31.995684, 20.293413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582458, 32.115196, 20.455769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496696, 0.368011, 0.786041,
		0.085482, -0.880511, 0.466255,
		0.863705, 0.298780, 0.405888,
		42.841568, 32.204830, 20.577536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.245975, 31.688875, 20.994148>,  <42.236977, 31.995684, 20.293413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.245975, 31.688875, 20.994148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.472160, 32.014656, 20.942125>,  <42.607872, 32.210125, 20.910912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.472160, 32.014656, 20.942125>,  <42.245975, 31.688875, 20.994148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.472160, 32.014656, 20.942125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426139, 0.423516, 0.799400,
		0.706155, -0.396611, 0.586554,
		0.565466, 0.814453, -0.130056,
		42.641800, 32.258991, 20.903109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.662228, 31.746773, 21.598095>,  <42.245975, 31.688875, 20.994148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.662228, 31.746773, 21.598095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.660995, 32.110523, 21.431709>,  <42.660255, 32.328773, 21.331879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.660995, 32.110523, 21.431709>,  <42.662228, 31.746773, 21.598095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.660995, 32.110523, 21.431709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420288, 0.376267, 0.825701,
		0.907386, 0.177367, 0.381041,
		-0.003079, 0.909376, -0.415964,
		42.660072, 32.383335, 21.306919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.947495, 32.246319, 22.206573>,  <42.662228, 31.746773, 21.598095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.947495, 32.246319, 22.206573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.786774, 32.499512, 21.941881>,  <42.690342, 32.651428, 21.783066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.786774, 32.499512, 21.941881>,  <42.947495, 32.246319, 22.206573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.786774, 32.499512, 21.941881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333468, 0.571873, 0.749506,
		0.852852, 0.521817, -0.018698,
		-0.401798, 0.632983, -0.661733,
		42.666233, 32.689407, 21.743361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.101307, 32.985085, 22.385189>,  <42.947495, 32.246319, 22.206573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.101307, 32.985085, 22.385189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.772400, 32.987923, 22.157566>,  <42.575054, 32.989624, 22.020992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.772400, 32.987923, 22.157566>,  <43.101307, 32.985085, 22.385189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.772400, 32.987923, 22.157566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436594, 0.633541, 0.638758,
		0.365051, 0.773677, -0.517843,
		-0.822267, 0.007092, -0.569057,
		42.525719, 32.990051, 21.986849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.939034, 33.705055, 22.379162>,  <43.101307, 32.985085, 22.385189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.939034, 33.705055, 22.379162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.581745, 33.571621, 22.258581>,  <42.367371, 33.491562, 22.186234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.581745, 33.571621, 22.258581>,  <42.939034, 33.705055, 22.379162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581745, 33.571621, 22.258581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446751, 0.582968, 0.678647,
		-0.050652, 0.740856, -0.669751,
		-0.893223, -0.333587, -0.301450,
		42.313778, 33.471546, 22.168146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.455318, 34.339222, 22.419945>,  <42.939034, 33.705055, 22.379162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.455318, 34.339222, 22.419945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.229401, 34.009239, 22.411413>,  <42.093849, 33.811249, 22.406294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.229401, 34.009239, 22.411413>,  <42.455318, 34.339222, 22.419945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.229401, 34.009239, 22.411413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607081, 0.397847, 0.687874,
		-0.558979, 0.401457, -0.725517,
		-0.564797, -0.824954, -0.021329,
		42.059963, 33.761753, 22.405014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.765274, 34.560104, 22.362162>,  <42.455318, 34.339222, 22.419945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.765274, 34.560104, 22.362162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.735714, 34.185268, 22.498634>,  <41.717979, 33.960369, 22.580519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.735714, 34.185268, 22.498634>,  <41.765274, 34.560104, 22.362162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.735714, 34.185268, 22.498634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645004, 0.305839, 0.700309,
		-0.760598, -0.168315, -0.627025,
		-0.073896, -0.937087, 0.341184,
		41.713547, 33.904140, 22.600990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147572, 34.597355, 22.649572>,  <41.765274, 34.560104, 22.362162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147572, 34.597355, 22.649572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.258244, 34.250774, 22.815807>,  <41.324646, 34.042828, 22.915548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.258244, 34.250774, 22.815807>,  <41.147572, 34.597355, 22.649572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.258244, 34.250774, 22.815807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552238, 0.210566, 0.806657,
		-0.786437, -0.452686, -0.420228,
		0.276677, -0.866451, 0.415587,
		41.341248, 33.990841, 22.940483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503838, 34.350197, 22.932608>,  <41.147572, 34.597355, 22.649572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.503838, 34.350197, 22.932608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.799095, 34.172852, 23.136007>,  <40.976250, 34.066444, 23.258047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.799095, 34.172852, 23.136007>,  <40.503838, 34.350197, 22.932608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799095, 34.172852, 23.136007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532404, 0.080103, 0.842692,
		-0.414350, -0.892756, -0.176920,
		0.738146, -0.443363, 0.508498,
		41.020538, 34.039845, 23.288557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955364, 34.132751, 22.473106>,  <40.503838, 34.350197, 22.932608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955364, 34.132751, 22.473106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.788258, 34.446392, 22.289520>,  <39.687992, 34.634579, 22.179369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.788258, 34.446392, 22.289520>,  <39.955364, 34.132751, 22.473106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788258, 34.446392, 22.289520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506010, -0.218763, -0.834324,
		-0.754602, -0.580796, -0.305372,
		-0.417768, 0.784104, -0.458968,
		39.662926, 34.681622, 22.151831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771656, 33.881077, 21.898685>,  <39.955364, 34.132751, 22.473106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771656, 33.881077, 21.898685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.793610, 34.275810, 21.837831>,  <39.806782, 34.512650, 21.801319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.793610, 34.275810, 21.837831>,  <39.771656, 33.881077, 21.898685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793610, 34.275810, 21.837831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534018, -0.157755, -0.830625,
		-0.843690, -0.035655, -0.535646,
		0.054885, 0.986834, -0.152136,
		39.810074, 34.571861, 21.792191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509327, 33.970005, 21.263384>,  <39.771656, 33.881077, 21.898685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509327, 33.970005, 21.263384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.731125, 34.300652, 21.301838>,  <39.864204, 34.499039, 21.324911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.731125, 34.300652, 21.301838>,  <39.509327, 33.970005, 21.263384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731125, 34.300652, 21.301838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468463, -0.214573, -0.857031,
		-0.687806, 0.520256, -0.506218,
		0.554495, 0.826615, 0.096136,
		39.897472, 34.548637, 21.330679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487637, 34.270191, 20.638147>,  <39.509327, 33.970005, 21.263384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487637, 34.270191, 20.638147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.818844, 34.425846, 20.799616>,  <40.017570, 34.519241, 20.896498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.818844, 34.425846, 20.799616>,  <39.487637, 34.270191, 20.638147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818844, 34.425846, 20.799616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414735, 0.059428, -0.908000,
		-0.377327, 0.919260, -0.112182,
		0.828021, 0.389139, 0.403673,
		40.067249, 34.542587, 20.920717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634720, 34.883270, 20.274330>,  <39.487637, 34.270191, 20.638147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634720, 34.883270, 20.274330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.990540, 34.784145, 20.427843>,  <40.204033, 34.724670, 20.519951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.990540, 34.784145, 20.427843>,  <39.634720, 34.883270, 20.274330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990540, 34.784145, 20.427843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360504, -0.135216, -0.922905,
		0.280603, 0.959325, -0.030943,
		0.889550, -0.247814, 0.383783,
		40.257404, 34.709801, 20.542978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171417, 35.256447, 19.912260>,  <39.634720, 34.883270, 20.274330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.171417, 35.256447, 19.912260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.367260, 34.944504, 20.068264>,  <40.484764, 34.757339, 20.161867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.367260, 34.944504, 20.068264>,  <40.171417, 35.256447, 19.912260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.367260, 34.944504, 20.068264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530450, -0.088600, -0.843073,
		0.692031, 0.619656, 0.370296,
		0.489607, -0.779857, 0.390011,
		40.514141, 34.710548, 20.185266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922356, 35.279396, 19.680758>,  <40.171417, 35.256447, 19.912260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922356, 35.279396, 19.680758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.820328, 34.906193, 19.782286>,  <40.759109, 34.682270, 19.843203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.820328, 34.906193, 19.782286>,  <40.922356, 35.279396, 19.680758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.820328, 34.906193, 19.782286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607344, -0.358856, -0.708771,
		0.752377, -0.026633, 0.658194,
		-0.255073, -0.933013, 0.253820,
		40.743805, 34.626289, 19.858431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665596, 34.917267, 19.797176>,  <40.922356, 35.279396, 19.680758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.665596, 34.917267, 19.797176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.406742, 34.614349, 19.762011>,  <41.251431, 34.432598, 19.740911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.406742, 34.614349, 19.762011>,  <41.665596, 34.917267, 19.797176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406742, 34.614349, 19.762011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391395, -0.231052, -0.890744,
		0.654239, -0.610840, 0.445922,
		-0.647133, -0.757291, -0.087917,
		41.212601, 34.387161, 19.735636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.133419, 34.348354, 19.748587>,  <41.665596, 34.917267, 19.797176>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.133419, 34.348354, 19.748587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.773014, 34.237499, 19.615101>,  <41.556770, 34.170986, 19.535009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.773014, 34.237499, 19.615101>,  <42.133419, 34.348354, 19.748587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.773014, 34.237499, 19.615101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421621, -0.378598, -0.823953,
		0.102002, -0.883097, 0.457969,
		-0.901017, -0.277134, -0.333715,
		41.502708, 34.154358, 19.514986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.199192, 33.732868, 19.593237>,  <42.133419, 34.348354, 19.748587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.199192, 33.732868, 19.593237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.867447, 33.806370, 19.382189>,  <41.668400, 33.850471, 19.255560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.867447, 33.806370, 19.382189>,  <42.199192, 33.732868, 19.593237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.867447, 33.806370, 19.382189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356893, -0.552334, -0.753362,
		-0.429857, -0.813118, 0.392506,
		-0.829367, 0.183755, -0.527621,
		41.618637, 33.861496, 19.223902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909878, 33.154858, 19.353359>,  <42.199192, 33.732868, 19.593237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909878, 33.154858, 19.353359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.780529, 33.427860, 19.091177>,  <41.702919, 33.591663, 18.933868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.780529, 33.427860, 19.091177>,  <41.909878, 33.154858, 19.353359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.780529, 33.427860, 19.091177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111630, -0.660318, -0.742643,
		-0.939666, -0.313315, 0.137338,
		-0.323368, 0.682505, -0.655454,
		41.683517, 33.632610, 18.894541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.548836, 32.800819, 18.877874>,  <41.909878, 33.154858, 19.353359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.548836, 32.800819, 18.877874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.604462, 33.128036, 18.654636>,  <41.637836, 33.324368, 18.520693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.604462, 33.128036, 18.654636>,  <41.548836, 32.800819, 18.877874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.604462, 33.128036, 18.654636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096807, -0.572103, -0.814449,
		-0.985541, 0.059229, -0.158749,
		0.139060, 0.818041, -0.558097,
		41.646179, 33.373447, 18.487207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086624, 32.601131, 18.360699>,  <41.548836, 32.800819, 18.877874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086624, 32.601131, 18.360699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.347408, 32.877800, 18.236414>,  <41.503880, 33.043800, 18.161842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.347408, 32.877800, 18.236414>,  <41.086624, 32.601131, 18.360699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.347408, 32.877800, 18.236414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012739, -0.419710, -0.907569,
		-0.758147, 0.587740, -0.282445,
		0.651960, 0.691669, -0.310714,
		41.542995, 33.085300, 18.143200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.044659, 31.869827, 18.336090>,  <41.086624, 32.601131, 18.360699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.044659, 31.869827, 18.336090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.950340, 31.490633, 18.250561>,  <40.893749, 31.263117, 18.199244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.950340, 31.490633, 18.250561>,  <41.044659, 31.869827, 18.336090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.950340, 31.490633, 18.250561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695141, 0.010780, 0.718792,
		-0.679100, 0.318130, -0.661526,
		-0.235800, -0.947986, -0.213825,
		40.879601, 31.206238, 18.186413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397232, 31.876583, 18.411280>,  <41.044659, 31.869827, 18.336090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.397232, 31.876583, 18.411280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.470478, 31.483471, 18.421169>,  <40.514427, 31.247604, 18.427103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.470478, 31.483471, 18.421169>,  <40.397232, 31.876583, 18.411280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470478, 31.483471, 18.421169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741012, -0.121457, 0.660416,
		-0.646041, -0.139256, -0.750493,
		0.183120, -0.982780, 0.024724,
		40.525414, 31.188637, 18.428587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829403, 31.476324, 18.120634>,  <40.397232, 31.876583, 18.411280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829403, 31.476324, 18.120634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.033253, 31.218534, 18.348646>,  <40.155563, 31.063862, 18.485453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.033253, 31.218534, 18.348646>,  <39.829403, 31.476324, 18.120634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033253, 31.218534, 18.348646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798127, -0.106654, 0.592973,
		-0.321359, -0.757152, -0.568725,
		0.509628, -0.644473, 0.570030,
		40.186142, 31.025192, 18.519655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373295, 30.948170, 18.261812>,  <39.829403, 31.476324, 18.120634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373295, 30.948170, 18.261812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.653706, 30.904182, 18.543655>,  <39.821953, 30.877790, 18.712761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.653706, 30.904182, 18.543655>,  <39.373295, 30.948170, 18.261812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653706, 30.904182, 18.543655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705512, -0.251067, 0.662736,
		0.104023, -0.961703, -0.253588,
		0.701022, -0.109970, 0.704610,
		39.864014, 30.871191, 18.755037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201458, 30.354429, 18.548517>,  <39.373295, 30.948170, 18.261812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201458, 30.354429, 18.548517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.429142, 30.561256, 18.804216>,  <39.565754, 30.685352, 18.957636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.429142, 30.561256, 18.804216>,  <39.201458, 30.354429, 18.548517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429142, 30.561256, 18.804216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649184, -0.194462, 0.735353,
		0.504538, -0.833562, 0.224982,
		0.569212, 0.517068, 0.639248,
		39.599907, 30.716377, 18.995991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197815, 29.952923, 19.204924>,  <39.201458, 30.354429, 18.548517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197815, 29.952923, 19.204924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.322868, 30.317804, 19.310863>,  <39.397900, 30.536734, 19.374428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.322868, 30.317804, 19.310863>,  <39.197815, 29.952923, 19.204924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322868, 30.317804, 19.310863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568134, -0.043877, 0.821766,
		0.761238, -0.407384, 0.504535,
		0.312636, 0.912202, 0.264849,
		39.416660, 30.591465, 19.390318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275051, 29.898840, 19.954950>,  <39.197815, 29.952923, 19.204924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275051, 29.898840, 19.954950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.306122, 30.294270, 19.903275>,  <39.324764, 30.531527, 19.872269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.306122, 30.294270, 19.903275>,  <39.275051, 29.898840, 19.954950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306122, 30.294270, 19.903275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436900, 0.150228, 0.886876,
		0.896150, -0.012450, 0.443578,
		0.077679, 0.988573, -0.129187,
		39.329426, 30.590841, 19.864519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455318, 30.142059, 20.603123>,  <39.275051, 29.898840, 19.954950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455318, 30.142059, 20.603123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.274498, 30.443941, 20.412933>,  <39.166008, 30.625071, 20.298820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.274498, 30.443941, 20.412933>,  <39.455318, 30.142059, 20.603123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274498, 30.443941, 20.412933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495313, 0.230927, 0.837459,
		0.741834, 0.614079, 0.269426,
		-0.452048, 0.754705, -0.475471,
		39.138885, 30.670353, 20.270292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992073, 29.973589, 21.167753>,  <39.455318, 30.142059, 20.603123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992073, 29.973589, 21.167753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.878864, 29.631411, 21.341242>,  <39.810940, 29.426104, 21.445335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.878864, 29.631411, 21.341242>,  <39.992073, 29.973589, 21.167753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878864, 29.631411, 21.341242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725423, -0.486745, -0.486663,
		0.627425, 0.176896, 0.758317,
		-0.283019, -0.855445, 0.433721,
		39.793961, 29.374777, 21.471357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539890, 29.805769, 21.490612>,  <39.992073, 29.973589, 21.167753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539890, 29.805769, 21.490612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.333019, 29.467609, 21.437204>,  <40.208897, 29.264713, 21.405161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.333019, 29.467609, 21.437204>,  <40.539890, 29.805769, 21.490612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333019, 29.467609, 21.437204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787032, -0.408460, -0.462321,
		0.336308, -0.344187, 0.876603,
		-0.517182, -0.845397, -0.133518,
		40.177864, 29.213991, 21.397148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088810, 29.301998, 21.586996>,  <40.539890, 29.805769, 21.490612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.088810, 29.301998, 21.586996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.779613, 29.132639, 21.398010>,  <40.594097, 29.031023, 21.284618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.779613, 29.132639, 21.398010>,  <41.088810, 29.301998, 21.586996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779613, 29.132639, 21.398010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629178, -0.607132, -0.485310,
		-0.081369, -0.672403, 0.735699,
		-0.772991, -0.423396, -0.472463,
		40.547718, 29.005621, 21.256271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165279, 28.532204, 21.558321>,  <41.088810, 29.301998, 21.586996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165279, 28.532204, 21.558321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.931610, 28.636768, 21.250969>,  <40.791409, 28.699507, 21.066557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.931610, 28.636768, 21.250969>,  <41.165279, 28.532204, 21.558321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931610, 28.636768, 21.250969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627148, -0.455563, -0.631782,
		-0.515202, -0.850956, 0.102182,
		-0.584168, 0.261412, -0.768382,
		40.756359, 28.715191, 21.020454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.305149, 27.930304, 21.121395>,  <41.165279, 28.532204, 21.558321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.305149, 27.930304, 21.121395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.091148, 28.167618, 20.880800>,  <40.962749, 28.310005, 20.736443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.091148, 28.167618, 20.880800>,  <41.305149, 27.930304, 21.121395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.091148, 28.167618, 20.880800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531247, -0.317345, -0.785538,
		-0.656926, -0.739802, -0.145401,
		-0.535000, 0.593284, -0.601489,
		40.930649, 28.345602, 20.700354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252659, 27.523348, 20.587814>,  <41.305149, 27.930304, 21.121395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.252659, 27.523348, 20.587814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.132038, 27.873274, 20.436148>,  <41.059666, 28.083229, 20.345148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.132038, 27.873274, 20.436148>,  <41.252659, 27.523348, 20.587814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.132038, 27.873274, 20.436148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335991, -0.274665, -0.900927,
		-0.892286, -0.399075, -0.211103,
		-0.301554, 0.874813, -0.379165,
		41.041573, 28.135717, 20.322397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.730473, 27.408863, 20.055593>,  <41.252659, 27.523348, 20.587814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.730473, 27.408863, 20.055593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.941776, 27.743330, 19.996586>,  <41.068558, 27.944010, 19.961182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.941776, 27.743330, 19.996586>,  <40.730473, 27.408863, 20.055593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941776, 27.743330, 19.996586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353115, -0.374353, -0.857420,
		-0.772171, 0.400852, -0.493020,
		0.528262, 0.836168, -0.147517,
		41.100254, 27.994181, 19.952332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625057, 27.537735, 19.410257>,  <40.730473, 27.408863, 20.055593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625057, 27.537735, 19.410257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.952122, 27.753307, 19.491236>,  <41.148361, 27.882650, 19.539824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.952122, 27.753307, 19.491236>,  <40.625057, 27.537735, 19.410257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952122, 27.753307, 19.491236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397863, -0.274823, -0.875315,
		-0.416099, 0.796256, -0.439133,
		0.817659, 0.538933, 0.202447,
		41.197418, 27.914988, 19.551970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.087990, 27.184027, 18.809536>,  <40.625057, 27.537735, 19.410257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.087990, 27.184027, 18.809536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.300404, 27.433067, 18.579624>,  <41.427853, 27.582491, 18.441677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.300404, 27.433067, 18.579624>,  <41.087990, 27.184027, 18.809536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.300404, 27.433067, 18.579624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048361, -0.699488, -0.713007,
		-0.845968, 0.350836, -0.401563,
		0.531036, 0.622601, -0.574777,
		41.459713, 27.619848, 18.407190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.052143, 33.461029, 32.900349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.411388, 33.345985, 33.033421>,  <35.626934, 33.276958, 33.113266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.411388, 33.345985, 33.033421>,  <35.052143, 33.461029, 32.900349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411388, 33.345985, 33.033421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284515, -0.196839, -0.938246,
		0.335332, 0.937303, -0.094954,
		0.898111, -0.287608, 0.332683,
		35.680820, 33.259705, 33.133224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492905, 33.714195, 32.457100>,  <35.052143, 33.461029, 32.900349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492905, 33.714195, 32.457100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.691936, 33.410694, 32.625244>,  <35.811356, 33.228592, 32.726131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.691936, 33.410694, 32.625244>,  <35.492905, 33.714195, 32.457100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691936, 33.410694, 32.625244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306656, -0.299448, -0.903489,
		0.811406, 0.578462, 0.083679,
		0.497577, -0.758757, 0.420363,
		35.841209, 33.183067, 32.751354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101181, 33.741566, 32.086922>,  <35.492905, 33.714195, 32.457100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101181, 33.741566, 32.086922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.084858, 33.383873, 32.265221>,  <36.075066, 33.169258, 32.372200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.084858, 33.383873, 32.265221>,  <36.101181, 33.741566, 32.086922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084858, 33.383873, 32.265221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472150, -0.410424, -0.780146,
		0.880573, 0.178625, 0.438958,
		-0.040805, -0.894229, 0.445746,
		36.072617, 33.115604, 32.398945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750496, 33.384529, 31.908756>,  <36.101181, 33.741566, 32.086922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750496, 33.384529, 31.908756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.466541, 33.119648, 32.004719>,  <36.296169, 32.960720, 32.062298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.466541, 33.119648, 32.004719>,  <36.750496, 33.384529, 31.908756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466541, 33.119648, 32.004719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220296, -0.532288, -0.817398,
		0.668981, -0.527407, 0.523742,
		-0.709883, -0.662202, 0.239905,
		36.253578, 32.920986, 32.076691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043274, 32.851940, 31.879457>,  <36.750496, 33.384529, 31.908756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043274, 32.851940, 31.879457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.651859, 32.789082, 31.826141>,  <36.417011, 32.751366, 31.794151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.651859, 32.789082, 31.826141>,  <37.043274, 32.851940, 31.879457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651859, 32.789082, 31.826141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193195, -0.474673, -0.858697,
		0.071674, -0.866019, 0.494847,
		-0.978539, -0.157149, -0.133289,
		36.358299, 32.741936, 31.786154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942665, 32.062286, 31.857624>,  <37.043274, 32.851940, 31.879457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942665, 32.062286, 31.857624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.645500, 32.247368, 31.664135>,  <36.467201, 32.358418, 31.548042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.645500, 32.247368, 31.664135>,  <36.942665, 32.062286, 31.857624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645500, 32.247368, 31.664135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179374, -0.558597, -0.809811,
		-0.644908, -0.688386, 0.331991,
		-0.742912, 0.462703, -0.483722,
		36.422626, 32.386177, 31.519018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593437, 31.542606, 31.487726>,  <36.942665, 32.062286, 31.857624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593437, 31.542606, 31.487726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.453903, 31.866713, 31.299349>,  <36.370182, 32.061176, 31.186323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.453903, 31.866713, 31.299349>,  <36.593437, 31.542606, 31.487726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453903, 31.866713, 31.299349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061758, -0.481541, -0.874245,
		-0.935148, -0.334051, 0.117937,
		-0.348834, 0.810265, -0.470942,
		36.349255, 32.109791, 31.158066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178093, 31.245514, 31.097576>,  <36.593437, 31.542606, 31.487726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178093, 31.245514, 31.097576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.276409, 31.601328, 30.943529>,  <36.335400, 31.814816, 30.851101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.276409, 31.601328, 30.943529>,  <36.178093, 31.245514, 31.097576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276409, 31.601328, 30.943529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051227, -0.384830, -0.921565,
		-0.967967, 0.246244, -0.049021,
		0.245795, 0.889533, -0.385117,
		36.350147, 31.868189, 30.827993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822552, 31.328314, 30.450888>,  <36.178093, 31.245514, 31.097576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822552, 31.328314, 30.450888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.074978, 31.634703, 30.401834>,  <36.226433, 31.818537, 30.372402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.074978, 31.634703, 30.401834>,  <35.822552, 31.328314, 30.450888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074978, 31.634703, 30.401834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153264, -0.278088, -0.948250,
		-0.760435, 0.579616, -0.292888,
		0.631069, 0.765972, -0.122634,
		36.264297, 31.864494, 30.365044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514225, 31.500597, 29.911963>,  <35.822552, 31.328314, 30.450888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514225, 31.500597, 29.911963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.871525, 31.679522, 29.929951>,  <36.085903, 31.786877, 29.940744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.871525, 31.679522, 29.929951>,  <35.514225, 31.500597, 29.911963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871525, 31.679522, 29.929951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108624, -0.117674, -0.987094,
		-0.436248, 0.886602, -0.153701,
		0.893246, 0.447313, 0.044971,
		36.139500, 31.813715, 29.943441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510567, 31.940592, 29.389282>,  <35.514225, 31.500597, 29.911963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510567, 31.940592, 29.389282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.894657, 31.870770, 29.476456>,  <36.125111, 31.828876, 29.528759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.894657, 31.870770, 29.476456>,  <35.510567, 31.940592, 29.389282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894657, 31.870770, 29.476456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141881, -0.367209, -0.919254,
		0.240488, 0.913613, -0.327838,
		0.960227, -0.174555, 0.217934,
		36.182724, 31.818403, 29.541836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920113, 32.186550, 28.822906>,  <35.510567, 31.940592, 29.389282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920113, 32.186550, 28.822906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.142838, 31.907185, 29.002766>,  <36.276470, 31.739567, 29.110682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.142838, 31.907185, 29.002766>,  <35.920113, 32.186550, 28.822906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142838, 31.907185, 29.002766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223790, -0.395178, -0.890928,
		0.799925, 0.596705, -0.063742,
		0.556811, -0.698410, 0.449650,
		36.309879, 31.697662, 29.137661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893059, 32.833012, 28.297932>,  <35.920113, 32.186550, 28.822906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893059, 32.833012, 28.297932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.599617, 32.728626, 28.046946>,  <35.423550, 32.665993, 27.896353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.599617, 32.728626, 28.046946>,  <35.893059, 32.833012, 28.297932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599617, 32.728626, 28.046946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679538, 0.272445, 0.681177,
		-0.006815, 0.926105, -0.377206,
		-0.733609, -0.260968, -0.627467,
		35.379536, 32.650337, 27.858706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495003, 33.371498, 28.301897>,  <35.893059, 32.833012, 28.297932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495003, 33.371498, 28.301897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.265751, 33.065544, 28.184271>,  <35.128201, 32.881969, 28.113695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.265751, 33.065544, 28.184271>,  <35.495003, 33.371498, 28.301897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265751, 33.065544, 28.184271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674403, 0.236402, 0.699496,
		-0.465518, 0.599217, -0.651331,
		-0.573126, -0.764887, -0.294064,
		35.093815, 32.836079, 28.096052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797878, 33.644081, 28.251829>,  <35.495003, 33.371498, 28.301897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797878, 33.644081, 28.251829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.753098, 33.249001, 28.295486>,  <34.726227, 33.011951, 28.321680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.753098, 33.249001, 28.295486>,  <34.797878, 33.644081, 28.251829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753098, 33.249001, 28.295486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665126, 0.156085, 0.730236,
		-0.738291, 0.009160, -0.674420,
		-0.111955, -0.987701, 0.109144,
		34.719509, 32.952690, 28.328230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027561, 33.535122, 28.271608>,  <34.797878, 33.644081, 28.251829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027561, 33.535122, 28.271608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.198441, 33.207287, 28.424332>,  <34.300968, 33.010586, 28.515966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.198441, 33.207287, 28.424332>,  <34.027561, 33.535122, 28.271608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198441, 33.207287, 28.424332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684731, -0.017487, 0.728586,
		-0.590465, -0.572685, -0.568668,
		0.427195, -0.819589, 0.381809,
		34.326599, 32.961411, 28.538874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362289, 33.074459, 28.412315>,  <34.027561, 33.535122, 28.271608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362289, 33.074459, 28.412315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.678997, 32.949482, 28.622261>,  <33.869022, 32.874496, 28.748228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.678997, 32.949482, 28.622261>,  <33.362289, 33.074459, 28.412315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678997, 32.949482, 28.622261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571704, -0.076508, 0.816885,
		-0.215077, -0.946849, -0.239204,
		0.791768, -0.312447, 0.524862,
		33.916527, 32.855747, 28.779720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038963, 32.646652, 28.842903>,  <33.362289, 33.074459, 28.412315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038963, 32.646652, 28.842903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.393692, 32.736130, 29.004648>,  <33.606529, 32.789818, 29.101694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.393692, 32.736130, 29.004648>,  <33.038963, 32.646652, 28.842903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393692, 32.736130, 29.004648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396153, -0.082515, 0.914469,
		0.237925, -0.971161, 0.015440,
		0.886823, 0.223692, 0.404361,
		33.659740, 32.803238, 29.125956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034657, 32.347954, 29.471663>,  <33.038963, 32.646652, 28.842903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034657, 32.347954, 29.471663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.310123, 32.634354, 29.517406>,  <33.475403, 32.806194, 29.544853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.310123, 32.634354, 29.517406>,  <33.034657, 32.347954, 29.471663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310123, 32.634354, 29.517406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314395, 0.152747, 0.936923,
		0.653367, -0.681186, 0.330299,
		0.688671, 0.715998, 0.114362,
		33.516724, 32.849152, 29.551716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191826, 32.321423, 30.119455>,  <33.034657, 32.347954, 29.471663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191826, 32.321423, 30.119455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.337181, 32.679905, 30.017660>,  <33.424393, 32.894993, 29.956583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.337181, 32.679905, 30.017660>,  <33.191826, 32.321423, 30.119455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337181, 32.679905, 30.017660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191462, 0.339171, 0.921035,
		0.911751, -0.285970, 0.294840,
		0.363389, 0.896206, -0.254487,
		33.446198, 32.948765, 29.941315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501823, 32.568104, 30.700775>,  <33.191826, 32.321423, 30.119455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501823, 32.568104, 30.700775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.442554, 32.902405, 30.489283>,  <33.406994, 33.102985, 30.362387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.442554, 32.902405, 30.489283>,  <33.501823, 32.568104, 30.700775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442554, 32.902405, 30.489283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112007, 0.517010, 0.848620,
		0.982598, 0.184964, 0.017003,
		-0.148173, 0.835757, -0.528730,
		33.398102, 33.153133, 30.330664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858685, 33.069534, 31.072063>,  <33.501823, 32.568104, 30.700775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858685, 33.069534, 31.072063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.608940, 33.281631, 30.842625>,  <33.459095, 33.408890, 30.704962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.608940, 33.281631, 30.842625>,  <33.858685, 33.069534, 31.072063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608940, 33.281631, 30.842625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252465, 0.557918, 0.790563,
		0.739213, 0.638408, -0.214473,
		-0.624360, 0.530248, -0.573596,
		33.421631, 33.440704, 30.670546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017891, 33.792931, 31.200788>,  <33.858685, 33.069534, 31.072063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017891, 33.792931, 31.200788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.642727, 33.766338, 31.064608>,  <33.417629, 33.750385, 30.982899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.642727, 33.766338, 31.064608>,  <34.017891, 33.792931, 31.200788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642727, 33.766338, 31.064608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302303, 0.637968, 0.708244,
		0.170115, 0.767188, -0.618452,
		-0.937909, -0.066477, -0.340452,
		33.361355, 33.746395, 30.962473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768402, 34.439564, 31.327980>,  <34.017891, 33.792931, 31.200788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768402, 34.439564, 31.327980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.430920, 34.234032, 31.265844>,  <33.228428, 34.110714, 31.228563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.430920, 34.234032, 31.265844>,  <33.768402, 34.439564, 31.327980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430920, 34.234032, 31.265844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459289, 0.541210, 0.704375,
		-0.277859, 0.665634, -0.692622,
		-0.843710, -0.513831, -0.155339,
		33.177807, 34.079884, 31.219242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206715, 34.989731, 31.216923>,  <33.768402, 34.439564, 31.327980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206715, 34.989731, 31.216923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.012753, 34.648720, 31.294950>,  <32.896374, 34.444111, 31.341768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.012753, 34.648720, 31.294950>,  <33.206715, 34.989731, 31.216923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012753, 34.648720, 31.294950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425158, 0.424713, 0.799287,
		-0.764266, 0.304645, -0.568408,
		-0.484909, -0.852531, 0.195071,
		32.867279, 34.392960, 31.353472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484642, 35.174652, 31.065050>,  <33.206715, 34.989731, 31.216923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484642, 35.174652, 31.065050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.506527, 34.862926, 31.314749>,  <32.519657, 34.675892, 31.464567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.506527, 34.862926, 31.314749>,  <32.484642, 35.174652, 31.065050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506527, 34.862926, 31.314749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559624, 0.493828, 0.665548,
		-0.826938, -0.385758, -0.409101,
		0.054715, -0.779310, 0.624245,
		32.522942, 34.629135, 31.502022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836113, 35.533642, 30.609909>,  <32.484642, 35.174652, 31.065050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836113, 35.533642, 30.609909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.969601, 35.888790, 30.736599>,  <33.049694, 36.101879, 30.812613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.969601, 35.888790, 30.736599>,  <32.836113, 35.533642, 30.609909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969601, 35.888790, 30.736599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624883, 0.043203, -0.779522,
		-0.705800, 0.458055, -0.540400,
		0.333717, 0.887873, 0.316724,
		33.069717, 36.155151, 30.831615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696312, 35.917957, 29.977625>,  <32.836113, 35.533642, 30.609909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696312, 35.917957, 29.977625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.034294, 36.043369, 30.150946>,  <33.237083, 36.118618, 30.254938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.034294, 36.043369, 30.150946>,  <32.696312, 35.917957, 29.977625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034294, 36.043369, 30.150946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414228, 0.128859, -0.901005,
		-0.338327, 0.940794, -0.020993,
		0.844955, 0.313530, 0.433300,
		33.287781, 36.137428, 30.280935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928356, 36.414288, 29.522400>,  <32.696312, 35.917957, 29.977625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928356, 36.414288, 29.522400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.238777, 36.323532, 29.757776>,  <33.425030, 36.269077, 29.899002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.238777, 36.323532, 29.757776>,  <32.928356, 36.414288, 29.522400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238777, 36.323532, 29.757776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617694, 0.085166, -0.781793,
		0.127267, 0.970189, 0.206243,
		0.776052, -0.226892, 0.588442,
		33.471592, 36.255463, 29.934309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320480, 37.005867, 29.614656>,  <32.928356, 36.414288, 29.522400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320480, 37.005867, 29.614656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.560600, 36.690498, 29.668365>,  <33.704670, 36.501274, 29.700592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.560600, 36.690498, 29.668365>,  <33.320480, 37.005867, 29.614656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560600, 36.690498, 29.668365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547993, 0.283187, -0.787088,
		0.582537, 0.546067, 0.602048,
		0.600295, -0.788426, 0.134274,
		33.740688, 36.453972, 29.708647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086071, 37.318291, 29.593155>,  <33.320480, 37.005867, 29.614656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086071, 37.318291, 29.593155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.119743, 36.922466, 29.546364>,  <34.139946, 36.684971, 29.518290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.119743, 36.922466, 29.546364>,  <34.086071, 37.318291, 29.593155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119743, 36.922466, 29.546364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725623, 0.141337, -0.673420,
		0.682923, -0.028192, 0.729946,
		0.084183, -0.989560, -0.116979,
		34.144997, 36.625599, 29.511271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773788, 37.140865, 29.627913>,  <34.086071, 37.318291, 29.593155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773788, 37.140865, 29.627913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.618389, 36.838879, 29.416595>,  <34.525150, 36.657688, 29.289804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.618389, 36.838879, 29.416595>,  <34.773788, 37.140865, 29.627913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618389, 36.838879, 29.416595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651983, 0.179920, -0.736577,
		0.651142, -0.630598, 0.422327,
		-0.388500, -0.754967, -0.528293,
		34.501839, 36.612389, 29.258108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372105, 36.685852, 29.286377>,  <34.773788, 37.140865, 29.627913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372105, 36.685852, 29.286377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.055340, 36.546871, 29.085520>,  <34.865280, 36.463482, 28.965006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.055340, 36.546871, 29.085520>,  <35.372105, 36.685852, 29.286377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055340, 36.546871, 29.085520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577408, -0.158525, -0.800918,
		0.198681, -0.924199, 0.326162,
		-0.791913, -0.347456, -0.502144,
		34.817764, 36.442635, 28.934877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609547, 36.098145, 28.916328>,  <35.372105, 36.685852, 29.286377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609547, 36.098145, 28.916328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.274204, 36.228001, 28.741165>,  <35.072998, 36.305916, 28.636068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.274204, 36.228001, 28.741165>,  <35.609547, 36.098145, 28.916328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274204, 36.228001, 28.741165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392717, -0.197441, -0.898215,
		-0.378057, -0.925001, 0.038035,
		-0.838359, 0.324640, -0.437907,
		35.022697, 36.325394, 28.609793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464119, 35.593063, 28.372215>,  <35.609547, 36.098145, 28.916328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464119, 35.593063, 28.372215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.251724, 35.913078, 28.260509>,  <35.124287, 36.105087, 28.193485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.251724, 35.913078, 28.260509>,  <35.464119, 35.593063, 28.372215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251724, 35.913078, 28.260509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093913, -0.271972, -0.957711,
		-0.842159, -0.534760, 0.069279,
		-0.530988, 0.800039, -0.279265,
		35.092426, 36.153091, 28.176729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071743, 35.336998, 27.820639>,  <35.464119, 35.593063, 28.372215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071743, 35.336998, 27.820639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.074753, 35.736694, 27.805386>,  <35.076561, 35.976513, 27.796234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.074753, 35.736694, 27.805386>,  <35.071743, 35.336998, 27.820639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074753, 35.736694, 27.805386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159719, -0.038844, -0.986398,
		-0.987134, 0.001334, -0.159891,
		0.007527, 0.999244, -0.038132,
		35.077011, 36.036469, 27.793945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654739, 35.439655, 27.285316>,  <35.071743, 35.336998, 27.820639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654739, 35.439655, 27.285316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.900623, 35.748501, 27.349789>,  <35.048153, 35.933807, 27.388472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.900623, 35.748501, 27.349789>,  <34.654739, 35.439655, 27.285316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900623, 35.748501, 27.349789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339170, -0.074262, -0.937790,
		-0.712110, 0.631132, -0.307527,
		0.614706, 0.772113, 0.161178,
		35.085033, 35.980133, 27.398142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526882, 35.891457, 26.709330>,  <34.654739, 35.439655, 27.285316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526882, 35.891457, 26.709330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.891300, 35.988052, 26.842999>,  <35.109951, 36.046009, 26.923201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.891300, 35.988052, 26.842999>,  <34.526882, 35.891457, 26.709330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891300, 35.988052, 26.842999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384508, -0.205112, -0.900046,
		-0.148812, 0.948478, -0.279723,
		0.911048, 0.241494, 0.334175,
		35.164616, 36.060501, 26.943251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841129, 36.328518, 26.182798>,  <34.526882, 35.891457, 26.709330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841129, 36.328518, 26.182798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.157761, 36.199261, 26.390253>,  <35.347740, 36.121708, 26.514725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.157761, 36.199261, 26.390253>,  <34.841129, 36.328518, 26.182798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157761, 36.199261, 26.390253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521670, -0.084629, -0.848940,
		0.318219, 0.942559, 0.101582,
		0.791579, -0.323141, 0.518635,
		35.395233, 36.102318, 26.545843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443939, 36.678913, 25.938555>,  <34.841129, 36.328518, 26.182798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443939, 36.678913, 25.938555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.589664, 36.356045, 26.124352>,  <35.677097, 36.162323, 26.235828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.589664, 36.356045, 26.124352>,  <35.443939, 36.678913, 25.938555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589664, 36.356045, 26.124352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566942, -0.203464, -0.798235,
		0.738820, 0.554144, 0.383496,
		0.364310, -0.807172, 0.464491,
		35.698959, 36.113892, 26.263699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200325, 36.660049, 25.814671>,  <35.443939, 36.678913, 25.938555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200325, 36.660049, 25.814671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.111385, 36.286472, 25.926609>,  <36.058022, 36.062328, 25.993773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.111385, 36.286472, 25.926609>,  <36.200325, 36.660049, 25.814671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111385, 36.286472, 25.926609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516263, -0.356274, -0.778808,
		0.827062, -0.028697, 0.561378,
		-0.222353, -0.933941, 0.279845,
		36.044678, 36.006290, 26.010563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812233, 36.304070, 25.896137>,  <36.200325, 36.660049, 25.814671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812233, 36.304070, 25.896137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.536301, 36.021427, 25.833096>,  <36.370743, 35.851841, 25.795271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.536301, 36.021427, 25.833096>,  <36.812233, 36.304070, 25.896137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536301, 36.021427, 25.833096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567513, -0.392616, -0.723728,
		0.449513, -0.588693, 0.671847,
		-0.689831, -0.706607, -0.157605,
		36.329350, 35.809444, 25.785814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257362, 35.733730, 25.739010>,  <36.812233, 36.304070, 25.896137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257362, 35.733730, 25.739010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.893555, 35.606697, 25.631750>,  <36.675270, 35.530476, 25.567394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.893555, 35.606697, 25.631750>,  <37.257362, 35.733730, 25.739010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893555, 35.606697, 25.631750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365258, -0.302786, -0.880288,
		0.198376, -0.898587, 0.391393,
		-0.909524, -0.317587, -0.268151,
		36.620697, 35.511421, 25.551306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334717, 34.940933, 25.517452>,  <37.257362, 35.733730, 25.739010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334717, 34.940933, 25.517452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.000572, 35.079449, 25.346684>,  <36.800087, 35.162560, 25.244223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.000572, 35.079449, 25.346684>,  <37.334717, 34.940933, 25.517452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000572, 35.079449, 25.346684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327222, -0.310796, -0.892374,
		-0.441706, -0.885149, 0.146311,
		-0.835357, 0.346291, -0.426921,
		36.749966, 35.183334, 25.218607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174309, 34.394814, 25.137751>,  <37.334717, 34.940933, 25.517452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174309, 34.394814, 25.137751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.006714, 34.724995, 24.986446>,  <36.906158, 34.923103, 24.895664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.006714, 34.724995, 24.986446>,  <37.174309, 34.394814, 25.137751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006714, 34.724995, 24.986446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544695, -0.104810, -0.832059,
		-0.726470, -0.554658, -0.405705,
		-0.418986, 0.825451, -0.378261,
		36.881020, 34.972630, 24.872969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017574, 34.216763, 24.407930>,  <37.174309, 34.394814, 25.137751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017574, 34.216763, 24.407930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.016392, 34.616711, 24.414360>,  <37.015682, 34.856678, 24.418217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.016392, 34.616711, 24.414360>,  <37.017574, 34.216763, 24.407930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016392, 34.616711, 24.414360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481663, 0.015509, -0.876219,
		-0.876352, 0.005151, -0.481645,
		-0.002956, 0.999867, 0.016073,
		37.015507, 34.916672, 24.419182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880070, 34.392746, 23.705679>,  <37.017574, 34.216763, 24.407930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880070, 34.392746, 23.705679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.043541, 34.718491, 23.870501>,  <37.141624, 34.913937, 23.969393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.043541, 34.718491, 23.870501>,  <36.880070, 34.392746, 23.705679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043541, 34.718491, 23.870501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601543, 0.099189, -0.792658,
		-0.686385, 0.571812, -0.449340,
		0.408682, 0.814366, 0.412052,
		37.166145, 34.962799, 23.994116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832291, 34.983734, 23.182074>,  <36.880070, 34.392746, 23.705679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832291, 34.983734, 23.182074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.121876, 35.074627, 23.442610>,  <37.295628, 35.129162, 23.598932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.121876, 35.074627, 23.442610>,  <36.832291, 34.983734, 23.182074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121876, 35.074627, 23.442610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655593, 0.067167, -0.752121,
		-0.214656, 0.971521, -0.100347,
		0.723962, 0.227234, 0.651340,
		37.339066, 35.142796, 23.638012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201622, 35.543934, 22.878962>,  <36.832291, 34.983734, 23.182074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201622, 35.543934, 22.878962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.451458, 35.427528, 23.168842>,  <37.601360, 35.357685, 23.342772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.451458, 35.427528, 23.168842>,  <37.201622, 35.543934, 22.878962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451458, 35.427528, 23.168842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777278, 0.141770, -0.612976,
		0.075643, 0.946157, 0.314747,
		0.624593, -0.291013, 0.724703,
		37.638836, 35.340225, 23.386253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825779, 35.955330, 22.829062>,  <37.201622, 35.543934, 22.878962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825779, 35.955330, 22.829062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.931786, 35.623497, 23.025656>,  <37.995388, 35.424397, 23.143612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.931786, 35.623497, 23.025656>,  <37.825779, 35.955330, 22.829062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931786, 35.623497, 23.025656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745682, -0.146832, -0.649922,
		0.611329, 0.538734, 0.579691,
		0.265018, -0.829582, 0.491487,
		38.011292, 35.374622, 23.173101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524471, 36.027946, 22.891224>,  <37.825779, 35.955330, 22.829062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524471, 36.027946, 22.891224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.447704, 35.641682, 22.961269>,  <38.401646, 35.409924, 23.003298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.447704, 35.641682, 22.961269>,  <38.524471, 36.027946, 22.891224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447704, 35.641682, 22.961269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751097, -0.259368, -0.607108,
		0.631681, 0.015014, 0.775083,
		-0.191917, -0.965662, 0.175115,
		38.390129, 35.351982, 23.013803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147953, 35.815792, 23.188560>,  <38.524471, 36.027946, 22.891224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147953, 35.815792, 23.188560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.955658, 35.491768, 23.054277>,  <38.840282, 35.297356, 22.973707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.955658, 35.491768, 23.054277>,  <39.147953, 35.815792, 23.188560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955658, 35.491768, 23.054277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796678, -0.243553, -0.553160,
		0.366330, -0.533374, 0.762440,
		-0.480736, -0.810058, -0.335707,
		38.811436, 35.248749, 22.953566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677025, 35.291111, 23.232555>,  <39.147953, 35.815792, 23.188560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677025, 35.291111, 23.232555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.401436, 35.118870, 22.999355>,  <39.236080, 35.015526, 22.859434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.401436, 35.118870, 22.999355>,  <39.677025, 35.291111, 23.232555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401436, 35.118870, 22.999355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722134, -0.339128, -0.602921,
		0.061909, -0.836404, 0.544605,
		-0.688977, -0.430604, -0.583001,
		39.194744, 34.989689, 22.824455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835091, 34.506260, 23.099390>,  <39.677025, 35.291111, 23.232555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835091, 34.506260, 23.099390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.614212, 34.656315, 22.801571>,  <39.481686, 34.746346, 22.622879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.614212, 34.656315, 22.801571>,  <39.835091, 34.506260, 23.099390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614212, 34.656315, 22.801571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672075, -0.328168, -0.663793,
		-0.493349, -0.866936, -0.070906,
		-0.552197, 0.375136, -0.744548,
		39.448551, 34.768856, 22.578207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163555, 33.895718, 23.393887>,  <39.835091, 34.506260, 23.099390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163555, 33.895718, 23.393887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.524197, 33.993824, 23.536409>,  <40.740582, 34.052689, 23.621923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.524197, 33.993824, 23.536409>,  <40.163555, 33.895718, 23.393887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.524197, 33.993824, 23.536409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386621, 0.087506, 0.918078,
		0.193994, -0.965498, 0.173721,
		0.901604, 0.245266, 0.356307,
		40.794678, 34.067402, 23.643301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224148, 33.539085, 24.001423>,  <40.163555, 33.895718, 23.393887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224148, 33.539085, 24.001423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.482609, 33.840042, 24.052633>,  <40.637688, 34.020615, 24.083361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.482609, 33.840042, 24.052633>,  <40.224148, 33.539085, 24.001423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482609, 33.840042, 24.052633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410523, 0.201222, 0.889371,
		0.643393, -0.627231, 0.438894,
		0.646156, 0.752391, 0.128028,
		40.676456, 34.065758, 24.091042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629688, 33.443119, 24.666655>,  <40.224148, 33.539085, 24.001423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629688, 33.443119, 24.666655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.705032, 33.828526, 24.590597>,  <40.750240, 34.059769, 24.544962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.705032, 33.828526, 24.590597>,  <40.629688, 33.443119, 24.666655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705032, 33.828526, 24.590597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419091, 0.253955, 0.871705,
		0.888190, -0.084509, 0.451637,
		0.188362, 0.963517, -0.190143,
		40.761539, 34.117580, 24.533554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750511, 33.716774, 25.325113>,  <40.629688, 33.443119, 24.666655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750511, 33.716774, 25.325113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.689709, 34.033096, 25.087959>,  <40.653225, 34.222889, 24.945667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.689709, 34.033096, 25.087959>,  <40.750511, 33.716774, 25.325113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689709, 34.033096, 25.087959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519830, 0.446225, 0.728465,
		0.840637, 0.418933, 0.343256,
		-0.152008, 0.790809, -0.592887,
		40.644108, 34.270340, 24.910093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249691, 34.322205, 25.588224>,  <40.750511, 33.716774, 25.325113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.249691, 34.322205, 25.588224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.913074, 34.433689, 25.403126>,  <40.711105, 34.500580, 25.292067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.913074, 34.433689, 25.403126>,  <41.249691, 34.322205, 25.588224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913074, 34.433689, 25.403126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327663, 0.417686, 0.847452,
		0.429480, 0.864787, -0.260173,
		-0.841537, 0.278714, -0.462747,
		40.660614, 34.517303, 25.264301>
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
