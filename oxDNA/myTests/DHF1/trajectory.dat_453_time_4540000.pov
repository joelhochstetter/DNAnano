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
	<1.856354, 3.333527, 3.630977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.683128, 3.343727, 3.270576>,  <1.579193, 3.349847, 3.054336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.683128, 3.343727, 3.270576>,  <1.856354, 3.333527, 3.630977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.683128, 3.343727, 3.270576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897564, 0.079473, 0.433661,
		0.082664, 0.996511, -0.011528,
		-0.433064, 0.025501, -0.901002,
		1.553209, 3.351377, 3.000276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.450103, 3.914677, 3.500398>,  <1.856354, 3.333527, 3.630977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.450103, 3.914677, 3.500398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.304176, 3.599762, 3.301567>,  <1.216620, 3.410813, 3.182268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.304176, 3.599762, 3.301567>,  <1.450103, 3.914677, 3.500398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.304176, 3.599762, 3.301567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889760, 0.137509, 0.435222,
		-0.274293, 0.601057, -0.750663,
		-0.364816, -0.787288, -0.497078,
		1.194732, 3.363575, 3.152444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.980725, 4.108377, 3.059524>,  <1.450103, 3.914677, 3.500398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.980725, 4.108377, 3.059524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.907386, 3.726540, 3.153450>,  <0.863382, 3.497437, 3.209806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.907386, 3.726540, 3.153450>,  <0.980725, 4.108377, 3.059524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.907386, 3.726540, 3.153450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906195, 0.256708, 0.336022,
		-0.381043, -0.151180, -0.912113,
		-0.183347, -0.954592, 0.234816,
		0.852382, 3.440162, 3.223895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.381932, 3.949568, 2.843763>,  <0.980725, 4.108377, 3.059524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.381932, 3.949568, 2.843763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.466942, 3.710220, 3.152771>,  <0.517948, 3.566612, 3.338176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.466942, 3.710220, 3.152771>,  <0.381932, 3.949568, 2.843763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.466942, 3.710220, 3.152771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943898, 0.078790, 0.320701,
		-0.252765, -0.797337, -0.548054,
		0.212526, -0.598369, 0.772520,
		0.530699, 3.530710, 3.384527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.156551, 3.566273, 2.944608>,  <0.381932, 3.949568, 2.843763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.156551, 3.566273, 2.944608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.016076, 3.488914, 3.297050>,  <0.119652, 3.442499, 3.508516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.016076, 3.488914, 3.297050>,  <-0.156551, 3.566273, 2.944608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.016076, 3.488914, 3.297050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851934, 0.233746, 0.468584,
		-0.296578, -0.952870, -0.063885,
		0.431567, -0.193397, 0.881106,
		0.145546, 3.430895, 3.561382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.491039, 2.989415, 3.213185>,  <-0.156551, 3.566273, 2.944608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.491039, 2.989415, 3.213185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.350379, 3.201584, 3.521729>,  <-0.265983, 3.328886, 3.706854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.350379, 3.201584, 3.521729>,  <-0.491039, 2.989415, 3.213185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.350379, 3.201584, 3.521729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918348, 0.035619, 0.394168,
		0.181602, -0.846983, 0.499640,
		0.351650, 0.530425, 0.771357,
		-0.244884, 3.360711, 3.753136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.850759, 2.663097, 3.660985>,  <-0.491039, 2.989415, 3.213185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.850759, 2.663097, 3.660985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.718888, 2.999275, 3.833015>,  <-0.639766, 3.200982, 3.936234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.718888, 2.999275, 3.833015>,  <-0.850759, 2.663097, 3.660985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.718888, 2.999275, 3.833015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841763, 0.055398, 0.536997,
		0.427491, -0.539057, 0.725719,
		0.329676, 0.840445, 0.430077,
		-0.619986, 3.251409, 3.962038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.918229, 2.588479, 4.440523>,  <-0.850759, 2.663097, 3.660985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.918229, 2.588479, 4.440523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.914362, 2.975647, 4.340096>,  <-0.912042, 3.207948, 4.279840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.914362, 2.975647, 4.340096>,  <-0.918229, 2.588479, 4.440523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.914362, 2.975647, 4.340096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824964, 0.149613, 0.545024,
		0.565103, 0.201853, 0.799946,
		0.009668, 0.967921, -0.251068,
		-0.911462, 3.266023, 4.264775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.682441, 3.880650, 3.154977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.553955, 3.706612, 3.491432>,  <2.476864, 3.602189, 3.693305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.553955, 3.706612, 3.491432>,  <2.682441, 3.880650, 3.154977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.553955, 3.706612, 3.491432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705102, -0.483047, -0.519131,
		0.632181, -0.759840, -0.151626,
		-0.321214, -0.435096, 0.841138,
		2.457591, 3.576083, 3.743773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.197822, 3.695758, 3.659163>,  <2.682441, 3.880650, 3.154977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.197822, 3.695758, 3.659163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.297293, 3.829979, 4.022606>,  <3.356975, 3.910511, 4.240671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.297293, 3.829979, 4.022606>,  <3.197822, 3.695758, 3.659163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.297293, 3.829979, 4.022606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956646, -0.231932, -0.176172,
		0.151619, 0.913024, -0.378680,
		0.248678, 0.335551, 0.908606,
		3.371896, 3.930645, 4.295187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.769594, 4.172788, 3.655465>,  <3.197822, 3.695758, 3.659163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.769594, 4.172788, 3.655465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.753122, 4.006905, 4.019073>,  <3.743239, 3.907374, 4.237239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.753122, 4.006905, 4.019073>,  <3.769594, 4.172788, 3.655465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.753122, 4.006905, 4.019073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980292, -0.192701, -0.043505,
		0.193212, 0.889316, 0.414472,
		-0.041180, -0.414709, 0.909022,
		3.740768, 3.882492, 4.291780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.158648, 4.563465, 4.200736>,  <3.769594, 4.172788, 3.655465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.158648, 4.563465, 4.200736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.149681, 4.165634, 4.241356>,  <4.144301, 3.926935, 4.265728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.149681, 4.165634, 4.241356>,  <4.158648, 4.563465, 4.200736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.149681, 4.165634, 4.241356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973478, -0.044847, -0.224343,
		0.227681, 0.093828, 0.969205,
		-0.022416, -0.994578, 0.101550,
		4.142956, 3.867261, 4.271821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.795852, 4.420077, 4.412393>,  <4.158648, 4.563465, 4.200736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.795852, 4.420077, 4.412393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.680342, 4.052803, 4.303917>,  <4.611035, 3.832439, 4.238831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.680342, 4.052803, 4.303917>,  <4.795852, 4.420077, 4.412393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.680342, 4.052803, 4.303917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950929, -0.242208, -0.192536,
		0.111099, -0.313483, 0.943072,
		-0.288776, -0.918185, -0.271191,
		4.593709, 3.777348, 4.222559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.247236, 3.965063, 4.765661>,  <4.795852, 4.420077, 4.412393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.247236, 3.965063, 4.765661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.100384, 3.780006, 4.442879>,  <5.012272, 3.668972, 4.249209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.100384, 3.780006, 4.442879>,  <5.247236, 3.965063, 4.765661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.100384, 3.780006, 4.442879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916774, -0.326670, -0.229808,
		-0.157289, -0.824166, 0.544068,
		-0.367131, -0.462642, -0.806956,
		4.990244, 3.641214, 4.200792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.719615, 3.314024, 4.705461>,  <5.247236, 3.965063, 4.765661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.719615, 3.314024, 4.705461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.521780, 3.333168, 4.358337>,  <5.403079, 3.344654, 4.150063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.521780, 3.333168, 4.358337>,  <5.719615, 3.314024, 4.705461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.521780, 3.333168, 4.358337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822201, -0.297889, -0.485023,
		-0.281723, -0.953400, 0.107984,
		-0.494588, 0.047857, -0.867809,
		5.373404, 3.347526, 4.097995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.704471, 2.628089, 4.325524>,  <5.719615, 3.314024, 4.705461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.704471, 2.628089, 4.325524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.671293, 2.902267, 4.036171>,  <5.651387, 3.066775, 3.862559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.671293, 2.902267, 4.036171>,  <5.704471, 2.628089, 4.325524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.671293, 2.902267, 4.036171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726539, -0.455246, -0.514677,
		-0.682101, -0.568256, -0.460244,
		-0.082944, 0.685446, -0.723383,
		5.646410, 3.107901, 3.819156>
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
