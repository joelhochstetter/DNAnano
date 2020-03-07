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
	<0.429002, 2.460351, 5.128552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.053417, 2.594023, 5.095881>,  <-0.171934, 2.674226, 5.076278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.053417, 2.594023, 5.095881>,  <0.429002, 2.460351, 5.128552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.053417, 2.594023, 5.095881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308907, 0.714529, -0.627713,
		-0.151408, -0.614631, -0.774148,
		-0.938963, 0.334181, -0.081678,
		-0.228272, 2.694277, 5.071377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.165233, 2.457410, 4.367296>,  <0.429003, 2.460351, 5.128552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.165233, 2.457410, 4.367296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.005057, 2.738388, 4.602657>,  <-0.091048, 2.906975, 4.743874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.005057, 2.738388, 4.602657>,  <0.165233, 2.457410, 4.367296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.005057, 2.738388, 4.602657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304989, 0.707695, -0.637298,
		-0.864078, -0.075741, -0.497627,
		-0.400438, 0.702446, 0.588404,
		-0.115074, 2.949122, 4.779179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.035377, 2.929873, 3.862662>,  <0.165233, 2.457410, 4.367296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.035377, 2.929873, 3.862662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.031601, 3.099195, 4.225037>,  <0.029335, 3.200789, 4.442461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.031601, 3.099195, 4.225037>,  <0.035377, 2.929873, 3.862662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.031601, 3.099195, 4.225037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360807, 0.846387, -0.391722,
		-0.932593, 0.323171, -0.160722,
		-0.009440, 0.423307, 0.905937,
		0.028769, 3.226187, 4.496818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.125230, 3.645668, 3.734236>,  <0.035377, 2.929873, 3.862662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.125230, 3.645668, 3.734236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.025058, 3.649982, 4.121466>,  <0.035045, 3.652571, 4.353804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.025058, 3.649982, 4.121466>,  <-0.125230, 3.645668, 3.734236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.025058, 3.649982, 4.121466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505090, 0.851612, -0.140150,
		-0.825936, 0.524062, 0.207820,
		0.250429, 0.010787, 0.968075,
		0.050071, 3.653219, 4.411888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.298367, 4.251706, 4.071476>,  <-0.125230, 3.645668, 3.734236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.298367, 4.251706, 4.071476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.005923, 4.115335, 4.307865>,  <0.169543, 4.033514, 4.449699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.005923, 4.115335, 4.307865>,  <-0.298367, 4.251706, 4.071476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.005923, 4.115335, 4.307865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381727, 0.922336, 0.059840,
		-0.565477, 0.181841, 0.804468,
		0.731109, -0.340925, 0.590974,
		0.213409, 4.013058, 4.485157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.231964, 4.775690, 4.537434>,  <-0.298367, 4.251706, 4.071476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.231964, 4.775690, 4.537434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.113806, 4.576824, 4.567360>,  <0.321268, 4.457505, 4.585316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.113806, 4.576824, 4.567360>,  <-0.231964, 4.775690, 4.537434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.113806, 4.576824, 4.567360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493532, 0.867491, 0.062330,
		-0.095891, -0.016955, 0.995248,
		0.864426, -0.497163, 0.074816,
		0.373133, 4.427675, 4.589805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.267740, 5.127807, 5.050434>,  <-0.231964, 4.775690, 4.537434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.267740, 5.127807, 5.050434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.510812, 4.882326, 4.848803>,  <0.656655, 4.735038, 4.727824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.510812, 4.882326, 4.848803>,  <0.267740, 5.127807, 5.050434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.510812, 4.882326, 4.848803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720392, 0.693132, 0.024583,
		0.334306, -0.378072, 0.863308,
		0.607680, -0.613702, -0.504078,
		0.693116, 4.698215, 4.697579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.846955, 5.142072, 5.408581>,  <0.267740, 5.127807, 5.050434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.846955, 5.142072, 5.408581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.942096, 5.044359, 5.032549>,  <0.999180, 4.985732, 4.806930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.942096, 5.044359, 5.032549>,  <0.846955, 5.142072, 5.408581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.942096, 5.044359, 5.032549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704305, 0.709870, -0.006264,
		0.668866, -0.660614, 0.340893,
		0.237852, -0.244282, -0.940081,
		1.013451, 4.971075, 4.750525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.537259, 6.181331, 4.694798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.740391, 5.946231, 4.442874>,  <1.862270, 5.805171, 4.291719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.740391, 5.946231, 4.442874>,  <1.537259, 6.181331, 4.694798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.740391, 5.946231, 4.442874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670277, -0.728842, 0.139709,
		-0.541145, 0.351199, -0.764082,
		0.507829, -0.587750, -0.629810,
		1.892739, 5.769906, 4.253931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.042863, 5.794658, 4.131596>,  <1.537259, 6.181331, 4.694798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.042863, 5.794658, 4.131596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.378891, 5.590163, 4.204171>,  <1.580508, 5.467466, 4.247716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.378891, 5.590163, 4.204171>,  <1.042863, 5.794658, 4.131596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.378891, 5.590163, 4.204171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540374, -0.818049, 0.196955,
		0.047735, -0.263500, -0.963477,
		0.840070, -0.511237, 0.181438,
		1.630912, 5.436792, 4.258603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.081346, 5.305073, 3.574013>,  <1.042863, 5.794658, 4.131596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.081346, 5.305073, 3.574013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.254673, 5.222543, 3.924935>,  <1.358669, 5.173025, 4.135489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.254673, 5.222543, 3.924935>,  <1.081346, 5.305073, 3.574013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.254673, 5.222543, 3.924935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568870, -0.817632, 0.088685,
		0.699016, -0.537502, -0.471666,
		0.433318, -0.206324, 0.877306,
		1.384668, 5.160645, 4.188127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.507339, 4.602011, 3.685831>,  <1.081346, 5.305073, 3.574013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.507339, 4.602011, 3.685831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.354980, 4.702283, 4.041825>,  <1.263565, 4.762446, 4.255422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.354980, 4.702283, 4.041825>,  <1.507339, 4.602011, 3.685831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.354980, 4.702283, 4.041825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389947, -0.916309, 0.091204,
		0.838367, -0.312308, 0.446772,
		-0.380897, 0.250680, 0.889987,
		1.240711, 4.777487, 4.308821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.582850, 4.020232, 4.096817>,  <1.507339, 4.602011, 3.685831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.582850, 4.020232, 4.096817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.298248, 4.218700, 4.295844>,  <1.127487, 4.337782, 4.415260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.298248, 4.218700, 4.295844>,  <1.582850, 4.020232, 4.096817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.298248, 4.218700, 4.295844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334945, -0.861958, 0.380579,
		0.617716, 0.104126, 0.779477,
		-0.711504, 0.496172, 0.497569,
		1.084797, 4.367552, 4.445115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.566332, 3.778051, 4.822572>,  <1.582850, 4.020232, 4.096817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.566332, 3.778051, 4.822572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.213264, 3.957792, 4.767467>,  <1.001424, 4.065637, 4.734403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.213264, 3.957792, 4.767467>,  <1.566332, 3.778051, 4.822572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.213264, 3.957792, 4.767467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468474, -0.864739, 0.180995,
		-0.037799, 0.224297, 0.973787,
		-0.882668, 0.449352, -0.137764,
		0.948464, 4.092598, 4.726137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.047600, 3.639009, 5.436646>,  <1.566332, 3.778051, 4.822572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.047600, 3.639009, 5.436646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.818733, 3.749488, 5.127753>,  <0.681413, 3.815775, 4.942418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.818733, 3.749488, 5.127753>,  <1.047600, 3.639009, 5.436646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.818733, 3.749488, 5.127753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582800, -0.799412, 0.145893,
		-0.577036, 0.533532, 0.618364,
		-0.572166, 0.276197, -0.772232,
		0.647083, 3.832347, 4.896084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.407979, 3.731842, 5.733309>,  <1.047600, 3.639009, 5.436646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.407979, 3.731842, 5.733309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.329418, 3.659556, 5.347818>,  <0.282282, 3.616185, 5.116524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.329418, 3.659556, 5.347818>,  <0.407979, 3.731842, 5.733309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.329418, 3.659556, 5.347818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687820, -0.675086, 0.266763,
		-0.698806, 0.715263, 0.008290,
		-0.196402, -0.180714, -0.963727,
		0.270498, 3.605342, 5.058701>
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
