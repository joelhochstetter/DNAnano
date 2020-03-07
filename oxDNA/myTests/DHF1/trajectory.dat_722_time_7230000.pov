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
	<2.628269, 3.464436, 4.123385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.728809, 3.840553, 4.215186>,  <2.789133, 4.066224, 4.270266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.728809, 3.840553, 4.215186>,  <2.628269, 3.464436, 4.123385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.728809, 3.840553, 4.215186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851478, 0.102066, 0.514362,
		0.460227, -0.324699, 0.826294,
		0.251349, 0.940294, 0.229501,
		2.804214, 4.122642, 4.284036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.483491, 3.487615, 4.781108>,  <2.628269, 3.464436, 4.123385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.483491, 3.487615, 4.781108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.461727, 3.855915, 4.626573>,  <2.448669, 4.076895, 4.533852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.461727, 3.855915, 4.626573>,  <2.483491, 3.487615, 4.781108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.461727, 3.855915, 4.626573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879616, 0.138913, 0.454950,
		0.472563, 0.364584, 0.802348,
		-0.054410, 0.920751, -0.386339,
		2.445404, 4.132140, 4.510672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.334257, 3.858819, 5.292537>,  <2.483491, 3.487615, 4.781108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.334257, 3.858819, 5.292537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.194115, 4.080940, 4.990838>,  <2.110029, 4.214213, 4.809818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.194115, 4.080940, 4.990838>,  <2.334257, 3.858819, 5.292537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.194115, 4.080940, 4.990838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895368, 0.037781, 0.443722,
		0.274896, 0.830790, 0.483963,
		-0.350355, 0.555303, -0.754248,
		2.089008, 4.247531, 4.764564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.137012, 4.603106, 5.448717>,  <2.334257, 3.858819, 5.292537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.137012, 4.603106, 5.448717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.920994, 4.474518, 5.137588>,  <1.791383, 4.397365, 4.950910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.920994, 4.474518, 5.137588>,  <2.137012, 4.603106, 5.448717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.920994, 4.474518, 5.137588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840988, 0.169855, 0.513700,
		-0.033023, 0.931561, -0.362083,
		-0.540044, -0.321472, -0.777822,
		1.758981, 4.378076, 4.904241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.571807, 5.075126, 5.341989>,  <2.137012, 4.603106, 5.448717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.571807, 5.075126, 5.341989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.448700, 4.731609, 5.178156>,  <1.374836, 4.525499, 5.079857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.448700, 4.731609, 5.178156>,  <1.571807, 5.075126, 5.341989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.448700, 4.731609, 5.178156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857490, 0.063815, 0.510528,
		-0.412300, 0.508336, -0.756045,
		-0.307767, -0.858791, -0.409582,
		1.356370, 4.473972, 5.055282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.937321, 5.179139, 5.123381>,  <1.571807, 5.075126, 5.341989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.937321, 5.179139, 5.123381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.922417, 4.782997, 5.070003>,  <0.913474, 4.545312, 5.037976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.922417, 4.782997, 5.070003>,  <0.937321, 5.179139, 5.123381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.922417, 4.782997, 5.070003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889544, -0.027975, 0.455993,
		-0.455328, 0.135696, -0.879922,
		-0.037261, -0.990356, -0.133445,
		0.911238, 4.485890, 5.029969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.346980, 4.999442, 4.883823>,  <0.937321, 5.179139, 5.123381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.346980, 4.999442, 4.883823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.489868, 4.681076, 5.079339>,  <0.575601, 4.490057, 5.196648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.489868, 4.681076, 5.079339>,  <0.346980, 4.999442, 4.883823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.489868, 4.681076, 5.079339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856204, -0.069919, 0.511885,
		-0.373241, -0.601358, -0.706442,
		0.357220, -0.795914, 0.488789,
		0.597034, 4.442302, 5.225976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.147709, 4.508251, 4.794389>,  <0.346980, 4.999442, 4.883823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.147709, 4.508251, 4.794389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.032257, 4.407391, 5.137083>,  <0.140237, 4.346874, 5.342700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.032257, 4.407391, 5.137083>,  <-0.147709, 4.508251, 4.794389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.032257, 4.407391, 5.137083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883124, 0.017162, 0.468825,
		-0.132918, -0.967536, -0.214960,
		0.449916, -0.252151, 0.856735,
		0.167232, 4.331746, 5.394104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.432338, 5.131185, 1.040367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.396645, 4.876667, 1.346874>,  <-0.375228, 4.723956, 1.530779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.396645, 4.876667, 1.346874>,  <-0.432338, 5.131185, 1.040367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.396645, 4.876667, 1.346874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677705, -0.524999, -0.514870,
		0.729899, 0.565247, 0.384373,
		0.089234, -0.636295, 0.766268,
		-0.369874, 4.685779, 1.576755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.239869, 5.055561, 1.362505>,  <-0.432338, 5.131185, 1.040367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.239869, 5.055561, 1.362505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.087753, 4.685703, 1.354348>,  <-0.003516, 4.463789, 1.349453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.087753, 4.685703, 1.354348>,  <0.239869, 5.055561, 1.362505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.087753, 4.685703, 1.354348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775574, -0.306812, -0.551681,
		0.503851, -0.225615, 0.833806,
		-0.380289, -0.924643, -0.020394,
		-0.026333, 4.408310, 1.348230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.732566, 4.452223, 1.568272>,  <0.239869, 5.055561, 1.362505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.732566, 4.452223, 1.568272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.442413, 4.315441, 1.329311>,  <0.268322, 4.233372, 1.185935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.442413, 4.315441, 1.329311>,  <0.732566, 4.452223, 1.568272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.442413, 4.315441, 1.329311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688231, -0.376159, -0.620357,
		-0.012583, -0.861145, 0.508203,
		-0.725383, -0.341955, -0.597400,
		0.224799, 4.212855, 1.150091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.809572, 3.757255, 1.332523>,  <0.732566, 4.452223, 1.568272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.809572, 3.757255, 1.332523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.594452, 3.912689, 1.033252>,  <0.465380, 4.005949, 0.853689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.594452, 3.912689, 1.033252>,  <0.809572, 3.757255, 1.332523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.594452, 3.912689, 1.033252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708344, -0.272980, -0.650946,
		-0.457186, -0.880048, -0.128444,
		-0.537801, 0.388585, -0.748179,
		0.433112, 4.029265, 0.808798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.807545, 3.246655, 0.770345>,  <0.809572, 3.757255, 1.332523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.807545, 3.246655, 0.770345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.745010, 3.606369, 0.606957>,  <0.707490, 3.822197, 0.508924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.745010, 3.606369, 0.606957>,  <0.807545, 3.246655, 0.770345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.745010, 3.606369, 0.606957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748511, -0.161955, -0.643041,
		-0.644431, -0.406275, -0.647804,
		-0.156337, 0.899284, -0.408470,
		0.698109, 3.876154, 0.484416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.944816, 3.206107, 0.081386>,  <0.807545, 3.246655, 0.770345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.944816, 3.206107, 0.081386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.957001, 3.605709, 0.094400>,  <0.964311, 3.845471, 0.102208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.957001, 3.605709, 0.094400>,  <0.944816, 3.206107, 0.081386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.957001, 3.605709, 0.094400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799052, -0.004783, -0.601242,
		-0.600489, 0.044312, -0.798404,
		0.030461, 0.999006, 0.032535,
		0.966139, 3.905411, 0.104160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.898926, 3.514146, -0.664663>,  <0.944816, 3.206107, 0.081386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.898926, 3.514146, -0.664663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.039658, 3.804771, -0.428588>,  <1.124097, 3.979147, -0.286944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.039658, 3.804771, -0.428588>,  <0.898926, 3.514146, -0.664663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.039658, 3.804771, -0.428588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669919, 0.244918, -0.700874,
		-0.653777, 0.641966, -0.400569,
		0.351830, 0.726564, 0.590187,
		1.145207, 4.022741, -0.251532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.991094, 4.139290, -1.067286>,  <0.898926, 3.514146, -0.664663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.991094, 4.139290, -1.067286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.245239, 4.162739, -0.759292>,  <1.397727, 4.176808, -0.574496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.245239, 4.162739, -0.759292>,  <0.991094, 4.139290, -1.067286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.245239, 4.162739, -0.759292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743282, 0.223949, -0.630379,
		-0.209391, 0.972836, 0.098717,
		0.635364, 0.058621, 0.769985,
		1.435848, 4.180325, -0.528297>
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
