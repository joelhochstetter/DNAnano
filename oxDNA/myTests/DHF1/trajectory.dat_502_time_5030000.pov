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
	<2.204105, 1.556784, 4.081701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.236784, 1.902847, 3.883781>,  <2.256391, 2.110485, 3.765030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.236784, 1.902847, 3.883781>,  <2.204105, 1.556784, 4.081701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.236784, 1.902847, 3.883781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720751, 0.291604, 0.628876,
		0.688363, -0.408004, -0.599741,
		0.081697, 0.865159, -0.494799,
		2.261293, 2.162395, 3.735342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.896765, 1.686588, 3.869263>,  <2.204105, 1.556784, 4.081701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.896765, 1.686588, 3.869263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.696596, 2.020660, 3.960522>,  <2.576495, 2.221104, 4.015277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.696596, 2.020660, 3.960522>,  <2.896765, 1.686588, 3.869263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.696596, 2.020660, 3.960522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668700, 0.205468, 0.714579,
		0.549925, 0.510153, -0.661307,
		-0.500422, 0.835181, 0.228147,
		2.546470, 2.271215, 4.028966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.350832, 2.338496, 3.879137>,  <2.896765, 1.686588, 3.869263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.350832, 2.338496, 3.879137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.032134, 2.342655, 4.120827>,  <2.840915, 2.345150, 4.265841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.032134, 2.342655, 4.120827>,  <3.350832, 2.338496, 3.879137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.032134, 2.342655, 4.120827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596885, 0.169835, 0.784145,
		-0.094465, 0.985418, -0.141521,
		-0.796746, 0.010397, 0.604225,
		2.793110, 2.345774, 4.302094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.431945, 2.914273, 4.243650>,  <3.350832, 2.338496, 3.879137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.431945, 2.914273, 4.243650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.247548, 2.632832, 4.459957>,  <3.136910, 2.463967, 4.589741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.247548, 2.632832, 4.459957>,  <3.431945, 2.914273, 4.243650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.247548, 2.632832, 4.459957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691223, 0.097446, 0.716041,
		-0.556505, 0.703879, 0.441425,
		-0.460991, -0.703604, 0.540767,
		3.109251, 2.421751, 4.622187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.237368, 3.167593, 4.980759>,  <3.431945, 2.914273, 4.243650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.237368, 3.167593, 4.980759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.276311, 2.769547, 4.974236>,  <3.299677, 2.530719, 4.970322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.276311, 2.769547, 4.974236>,  <3.237368, 3.167593, 4.980759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.276311, 2.769547, 4.974236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613291, 0.047080, 0.788453,
		-0.783834, -0.086764, 0.614879,
		0.097358, -0.995116, -0.016308,
		3.305518, 2.471012, 4.969343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.187807, 2.921569, 5.659901>,  <3.237368, 3.167593, 4.980759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.187807, 2.921569, 5.659901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.389617, 2.609158, 5.512688>,  <3.510703, 2.421711, 5.424359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.389617, 2.609158, 5.512688>,  <3.187807, 2.921569, 5.659901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.389617, 2.609158, 5.512688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741209, 0.173197, 0.648546,
		-0.442791, -0.599998, 0.666287,
		0.504526, -0.781028, -0.368034,
		3.540975, 2.374849, 5.402277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.353638, 2.548390, 6.248189>,  <3.187807, 2.921569, 5.659901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.353638, 2.548390, 6.248189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.594673, 2.415401, 5.957989>,  <3.739294, 2.335608, 5.783868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.594673, 2.415401, 5.957989>,  <3.353638, 2.548390, 6.248189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.594673, 2.415401, 5.957989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708205, -0.196287, 0.678172,
		-0.367879, -0.922461, 0.117178,
		0.602587, -0.332471, -0.725501,
		3.775449, 2.315660, 5.740338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.488297, 1.811621, 6.319818>,  <3.353638, 2.548390, 6.248189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.488297, 1.811621, 6.319818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.780231, 2.025139, 6.148983>,  <3.955392, 2.153250, 6.046482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.780231, 2.025139, 6.148983>,  <3.488297, 1.811621, 6.319818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.780231, 2.025139, 6.148983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637936, -0.307234, 0.706149,
		0.245722, -0.787827, -0.564756,
		0.729835, 0.533794, -0.427089,
		3.999182, 2.185277, 6.020856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.896922, 1.397096, 1.588169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.166801, 1.655815, 1.445938>,  <5.328729, 1.811046, 1.360600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.166801, 1.655815, 1.445938>,  <4.896922, 1.397096, 1.588169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.166801, 1.655815, 1.445938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601302, 0.202290, -0.772991,
		-0.428038, 0.735345, 0.525405,
		0.674699, 0.646797, -0.355577,
		5.369211, 1.849854, 1.339265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.673289, 2.095446, 1.698638>,  <4.896922, 1.397096, 1.588169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.673289, 2.095446, 1.698638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.893665, 2.045509, 1.368576>,  <5.025891, 2.015548, 1.170539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.893665, 2.045509, 1.368576>,  <4.673289, 2.095446, 1.698638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.893665, 2.045509, 1.368576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791660, 0.234697, -0.564085,
		0.264082, 0.964019, 0.030472,
		0.550940, -0.124841, -0.825155,
		5.058947, 2.008057, 1.121030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.699839, 2.634119, 1.135058>,  <4.673289, 2.095446, 1.698638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.699839, 2.634119, 1.135058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.728916, 2.265266, 0.983063>,  <4.746363, 2.043955, 0.891865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.728916, 2.265266, 0.983063>,  <4.699839, 2.634119, 1.135058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.728916, 2.265266, 0.983063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838035, 0.150098, -0.524564,
		0.540752, 0.356576, -0.761867,
		0.072693, -0.922130, -0.379989,
		4.750724, 1.988627, 0.869066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.939310, 2.522513, 0.334423>,  <4.699839, 2.634119, 1.135058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.939310, 2.522513, 0.334423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.669449, 2.279285, 0.501801>,  <4.507532, 2.133349, 0.602227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.669449, 2.279285, 0.501801>,  <4.939310, 2.522513, 0.334423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.669449, 2.279285, 0.501801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656211, 0.234518, -0.717209,
		0.337983, -0.758452, -0.557242,
		-0.674652, -0.608072, 0.418442,
		4.467053, 2.096864, 0.627334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.709862, 2.012198, -0.139916>,  <4.939310, 2.522513, 0.334423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.709862, 2.012198, -0.139916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.416069, 2.086037, 0.121300>,  <4.239793, 2.130340, 0.278029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.416069, 2.086037, 0.121300>,  <4.709862, 2.012198, -0.139916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.416069, 2.086037, 0.121300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662074, 0.016329, -0.749260,
		-0.148977, -0.982678, 0.110226,
		-0.734482, 0.184600, 0.653039,
		4.195724, 2.141416, 0.317211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.213363, 1.498206, -0.233371>,  <4.709862, 2.012198, -0.139916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.213363, 1.498206, -0.233371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.016190, 1.800224, -0.060432>,  <3.897886, 1.981435, 0.043331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.016190, 1.800224, -0.060432>,  <4.213363, 1.498206, -0.233371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.016190, 1.800224, -0.060432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749710, -0.116425, -0.651445,
		-0.441535, -0.645253, 0.623455,
		-0.492932, 0.755046, 0.432347,
		3.868310, 2.026738, 0.069272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.487026, 1.199878, -0.003621>,  <4.213363, 1.498206, -0.233371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.487026, 1.199878, -0.003621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.474045, 1.595921, -0.058228>,  <3.466256, 1.833546, -0.090991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.474045, 1.595921, -0.058228>,  <3.487026, 1.199878, -0.003621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.474045, 1.595921, -0.058228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713035, -0.118648, -0.691016,
		-0.700377, 0.074916, 0.709831,
		-0.032452, 0.990106, -0.136517,
		3.464309, 1.892952, -0.099182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.797251, 1.457694, 0.130519>,  <3.487026, 1.199878, -0.003621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.797251, 1.457694, 0.130519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.020943, 1.659870, -0.132324>,  <3.155158, 1.781176, -0.290030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.020943, 1.659870, -0.132324>,  <2.797251, 1.457694, 0.130519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.020943, 1.659870, -0.132324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693774, -0.148557, -0.704704,
		-0.453805, 0.849976, 0.267584,
		0.559231, 0.505441, -0.657108,
		3.188712, 1.811503, -0.329457>
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
