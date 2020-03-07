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
	<2.756877, 1.265156, -0.546087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.816194, 1.127392, -0.175274>,  <2.851784, 1.044734, 0.047214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.816194, 1.127392, -0.175274>,  <2.756877, 1.265156, -0.546087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.816194, 1.127392, -0.175274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274018, 0.886386, 0.373141,
		-0.950223, -0.309357, 0.037069,
		0.148291, -0.344410, 0.927034,
		2.860682, 1.024069, 0.102836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.179692, 1.333644, -0.100062>,  <2.756877, 1.265156, -0.546087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.179692, 1.333644, -0.100062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.521262, 1.347210, 0.107655>,  <2.726203, 1.355349, 0.232285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.521262, 1.347210, 0.107655>,  <2.179692, 1.333644, -0.100062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.521262, 1.347210, 0.107655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291962, 0.857254, 0.424116,
		-0.430782, -0.513776, 0.741931,
		0.853923, 0.033914, 0.519292,
		2.777439, 1.357384, 0.263442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.094893, 1.436103, 0.729082>,  <2.179692, 1.333644, -0.100062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.094893, 1.436103, 0.729082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.426183, 1.604748, 0.581413>,  <2.624957, 1.705934, 0.492812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.426183, 1.604748, 0.581413>,  <2.094893, 1.436103, 0.729082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.426183, 1.604748, 0.581413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281104, 0.882457, 0.377159,
		0.484792, -0.208598, 0.849390,
		0.828225, 0.421611, -0.369171,
		2.674651, 1.731231, 0.470662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.582762, 1.823539, 1.259227>,  <2.094893, 1.436103, 0.729082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.582762, 1.823539, 1.259227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.637535, 1.974426, 0.892849>,  <2.670399, 2.064959, 0.673022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.637535, 1.974426, 0.892849>,  <2.582762, 1.823539, 1.259227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.637535, 1.974426, 0.892849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371057, 0.876866, 0.305652,
		0.918459, 0.298014, 0.260040,
		0.136932, 0.377219, -0.915946,
		2.678615, 2.087592, 0.618065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.965652, 2.449603, 1.317694>,  <2.582762, 1.823539, 1.259227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.965652, 2.449603, 1.317694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.719683, 2.473511, 1.003166>,  <2.572102, 2.487855, 0.814450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.719683, 2.473511, 1.003166>,  <2.965652, 2.449603, 1.317694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.719683, 2.473511, 1.003166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366740, 0.861058, 0.352251,
		0.698120, 0.504982, -0.507565,
		-0.614923, 0.059769, -0.786319,
		2.535206, 2.491441, 0.767270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.080506, 3.159408, 0.993294>,  <2.965652, 2.449603, 1.317694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.080506, 3.159408, 0.993294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.718136, 3.018089, 0.899929>,  <2.500714, 2.933298, 0.843910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.718136, 3.018089, 0.899929>,  <3.080506, 3.159408, 0.993294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.718136, 3.018089, 0.899929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419444, 0.824259, 0.380346,
		0.058017, 0.442469, -0.894905,
		-0.905925, -0.353296, -0.233412,
		2.446359, 2.912101, 0.829905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.680478, 3.736952, 0.930027>,  <3.080506, 3.159408, 0.993294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.680478, 3.736952, 0.930027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.408550, 3.444275, 0.949913>,  <2.245393, 3.268669, 0.961844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.408550, 3.444275, 0.949913>,  <2.680478, 3.736952, 0.930027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.408550, 3.444275, 0.949913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611192, 0.602719, 0.513005,
		-0.405325, 0.318366, -0.856945,
		-0.679821, -0.731692, 0.049714,
		2.204604, 3.224767, 0.964827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.158197, 4.185236, 0.855977>,  <2.680478, 3.736952, 0.930027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.158197, 4.185236, 0.855977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.028384, 3.841866, 1.014866>,  <1.950496, 3.635844, 1.110199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.028384, 3.841866, 1.014866>,  <2.158197, 4.185236, 0.855977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.028384, 3.841866, 1.014866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454460, 0.509815, 0.730448,
		-0.829545, 0.056533, -0.555571,
		-0.324533, -0.858425, 0.397223,
		1.931024, 3.584338, 1.134033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.672408, 1.982912, 3.104882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.323509, 1.842628, 2.968536>,  <-0.114170, 1.758458, 2.886729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.323509, 1.842628, 2.968536>,  <-0.672408, 1.982912, 3.104882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.323509, 1.842628, 2.968536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014642, 0.677931, -0.734979,
		0.488846, 0.646074, 0.586188,
		0.872247, -0.350709, -0.340864,
		-0.061835, 1.737416, 2.866277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.237417, 2.613009, 3.149560>,  <-0.672408, 1.982912, 3.104882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.237417, 2.613009, 3.149560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.139229, 2.334274, 2.879993>,  <-0.080316, 2.167034, 2.718253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.139229, 2.334274, 2.879993>,  <-0.237417, 2.613009, 3.149560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.139229, 2.334274, 2.879993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149446, 0.659674, -0.736544,
		0.957815, 0.281515, 0.057792,
		0.245472, -0.696836, -0.673916,
		-0.065587, 2.125223, 2.677819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.311055, 2.814470, 2.683350>,  <-0.237417, 2.613009, 3.149560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.311055, 2.814470, 2.683350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.069288, 2.556183, 2.496704>,  <-0.075772, 2.401211, 2.384717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.069288, 2.556183, 2.496704>,  <0.311055, 2.814470, 2.683350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.069288, 2.556183, 2.496704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219062, 0.697837, -0.681935,
		0.765960, -0.309953, -0.563235,
		-0.604414, -0.645719, -0.466616,
		-0.112036, 2.362467, 2.356720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.523591, 2.585109, 1.934825>,  <0.311055, 2.814470, 2.683350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.523591, 2.585109, 1.934825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.134672, 2.615662, 2.023193>,  <-0.098679, 2.633993, 2.076214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.134672, 2.615662, 2.023193>,  <0.523591, 2.585109, 1.934825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.134672, 2.615662, 2.023193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083844, 0.768262, -0.634622,
		-0.218198, -0.635563, -0.740574,
		-0.972296, 0.076380, 0.220921,
		-0.157017, 2.638576, 2.089470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.230907, 2.722028, 1.752225>,  <0.523591, 2.585109, 1.934825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.230907, 2.722028, 1.752225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.489424, 2.961906, 1.563473>,  <1.644534, 3.105833, 1.450222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.489424, 2.961906, 1.563473>,  <1.230907, 2.722028, 1.752225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.489424, 2.961906, 1.563473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280226, -0.761693, -0.584207,
		-0.709774, 0.245336, -0.660327,
		0.646293, 0.599695, -0.471880,
		1.683312, 3.141815, 1.421909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.140899, 2.464442, 1.088173>,  <1.230907, 2.722028, 1.752225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.140899, 2.464442, 1.088173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.468174, 2.691872, 1.054012>,  <1.664539, 2.828329, 1.033516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.468174, 2.691872, 1.054012>,  <1.140899, 2.464442, 1.088173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.468174, 2.691872, 1.054012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319613, -0.573255, -0.754471,
		-0.477929, 0.590004, -0.650753,
		0.818188, 0.568573, -0.085402,
		1.713630, 2.862443, 1.028392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.328298, 2.438597, 0.374093>,  <1.140899, 2.464442, 1.088173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.328298, 2.438597, 0.374093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.662870, 2.613800, 0.505871>,  <1.863614, 2.718922, 0.584937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.662870, 2.613800, 0.505871>,  <1.328298, 2.438597, 0.374093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.662870, 2.613800, 0.505871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520851, -0.448169, -0.726539,
		-0.170583, 0.779290, -0.602999,
		0.836430, 0.438008, 0.329444,
		1.913800, 2.745203, 0.604704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.697509, 2.524604, -0.245058>,  <1.328298, 2.438597, 0.374093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.697509, 2.524604, -0.245058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.970123, 2.538109, 0.047344>,  <2.133692, 2.546212, 0.222785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.970123, 2.538109, 0.047344>,  <1.697509, 2.524604, -0.245058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.970123, 2.538109, 0.047344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654795, -0.474144, -0.588584,
		0.326729, 0.879800, -0.345254,
		0.681536, 0.033763, 0.731005,
		2.174584, 2.548238, 0.266646>
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
