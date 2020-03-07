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
	<1.898687, 1.375801, 1.532855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.525658, 1.515381, 1.495888>,  <1.301840, 1.599129, 1.473708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.525658, 1.515381, 1.495888>,  <1.898687, 1.375801, 1.532855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.525658, 1.515381, 1.495888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308242, -0.636544, 0.706964,
		0.187868, 0.687783, 0.701185,
		-0.932573, 0.348950, -0.092417,
		1.245886, 1.620066, 1.468163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.708067, 1.579514, 2.102434>,  <1.898687, 1.375801, 1.532855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.708067, 1.579514, 2.102434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.369469, 1.481964, 1.913132>,  <1.166310, 1.423434, 1.799551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.369469, 1.481964, 1.913132>,  <1.708067, 1.579514, 2.102434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.369469, 1.481964, 1.913132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147928, -0.746174, 0.649109,
		-0.511432, 0.619475, 0.595557,
		-0.846496, -0.243876, -0.473255,
		1.115520, 1.408801, 1.771155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.320553, 1.381584, 2.615186>,  <1.708067, 1.579514, 2.102434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.320553, 1.381584, 2.615186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.173218, 1.235855, 2.273052>,  <1.084817, 1.148418, 2.067772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.173218, 1.235855, 2.273052>,  <1.320553, 1.381584, 2.615186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.173218, 1.235855, 2.273052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278184, -0.834677, 0.475320,
		-0.887097, 0.413018, 0.206094,
		-0.368338, -0.364323, -0.855334,
		1.062716, 1.126558, 2.016452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.594461, 1.241117, 2.653687>,  <1.320553, 1.381584, 2.615186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.594461, 1.241117, 2.653687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.773949, 0.985733, 2.403561>,  <0.881642, 0.832502, 2.253485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.773949, 0.985733, 2.403561>,  <0.594461, 1.241117, 2.653687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.773949, 0.985733, 2.403561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480432, -0.762341, 0.433614,
		-0.753544, 0.105843, -0.648821,
		0.448728, -0.638462, -0.625308,
		0.908565, 0.794195, 2.215966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.123861, 0.681607, 2.336196>,  <0.594461, 1.241117, 2.653687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.123861, 0.681607, 2.336196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.498909, 0.542999, 2.347446>,  <0.723938, 0.459835, 2.354197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.498909, 0.542999, 2.347446>,  <0.123861, 0.681607, 2.336196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.498909, 0.542999, 2.347446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332735, -0.870981, 0.361497,
		-0.100769, -0.348305, -0.931949,
		0.937621, -0.346520, 0.028125,
		0.780195, 0.439043, 2.355884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.184160, 0.196086, 1.874564>,  <0.123861, 0.681607, 2.336196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.184160, 0.196086, 1.874564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.440132, 0.152008, 2.178761>,  <0.593715, 0.125561, 2.361278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.440132, 0.152008, 2.178761>,  <0.184160, 0.196086, 1.874564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.440132, 0.152008, 2.178761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450319, -0.855698, 0.254938,
		0.622658, -0.505606, -0.597211,
		0.639930, -0.110196, 0.760491,
		0.632111, 0.118949, 2.406908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.392846, -0.420596, 1.797763>,  <0.184160, 0.196086, 1.874564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.392846, -0.420596, 1.797763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.478973, -0.348648, 2.181698>,  <0.530650, -0.305480, 2.412059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.478973, -0.348648, 2.181698>,  <0.392846, -0.420596, 1.797763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.478973, -0.348648, 2.181698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360983, -0.898612, 0.249374,
		0.907375, -0.400179, -0.128557,
		0.215317, 0.179869, 0.959836,
		0.543569, -0.294687, 2.469649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.808491, -1.017185, 1.996870>,  <0.392846, -0.420596, 1.797763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.808491, -1.017185, 1.996870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.664742, -0.856537, 2.333809>,  <0.578492, -0.760148, 2.535973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.664742, -0.856537, 2.333809>,  <0.808491, -1.017185, 1.996870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.664742, -0.856537, 2.333809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165463, -0.915773, 0.366037,
		0.918407, -0.007833, 0.395558,
		-0.359374, 0.401621, 0.842348,
		0.556929, -0.736051, 2.586514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.734686, 3.009264, 3.433946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.354004, 3.067276, 3.542187>,  <0.125595, 3.102083, 3.607131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.354004, 3.067276, 3.542187>,  <0.734686, 3.009264, 3.433946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.354004, 3.067276, 3.542187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147102, 0.989040, -0.012725,
		-0.269480, 0.027696, -0.962608,
		-0.951705, 0.145030, 0.270601,
		0.068493, 3.110785, 3.623367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.390886, 3.366821, 2.888848>,  <0.734686, 3.009264, 3.433946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.390886, 3.366821, 2.888848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.238052, 3.439926, 3.251198>,  <0.146352, 3.483789, 3.468608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.238052, 3.439926, 3.251198>,  <0.390886, 3.366821, 2.888848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.238052, 3.439926, 3.251198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119651, 0.981782, -0.147610,
		-0.916349, 0.051989, -0.396992,
		-0.382085, 0.182763, 0.905875,
		0.123427, 3.494755, 3.522960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.207128, 3.790976, 2.860646>,  <0.390886, 3.366821, 2.888848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.207128, 3.790976, 2.860646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.034351, 3.839539, 3.175812>,  <0.179239, 3.868676, 3.364911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.034351, 3.839539, 3.175812>,  <-0.207128, 3.790976, 2.860646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.034351, 3.839539, 3.175812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302791, 0.879355, -0.367494,
		-0.737472, 0.460429, 0.494105,
		0.603699, 0.121406, 0.787914,
		0.215461, 3.875960, 3.412186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.325245, 4.530549, 3.158901>,  <-0.207128, 3.790976, 2.860646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.325245, 4.530549, 3.158901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.037426, 4.376694, 3.228172>,  <0.255028, 4.284380, 3.269735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.037426, 4.376694, 3.228172>,  <-0.325245, 4.530549, 3.158901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.037426, 4.376694, 3.228172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415597, 0.744243, -0.522859,
		0.072224, 0.546036, 0.834642,
		0.906677, -0.384638, 0.173178,
		0.309429, 4.261302, 3.280126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.042624, 4.941263, 3.561777>,  <-0.325245, 4.530549, 3.158901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.042624, 4.941263, 3.561777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.266495, 4.730453, 3.305962>,  <0.400817, 4.603968, 3.152472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.266495, 4.730453, 3.305962>,  <0.042624, 4.941263, 3.561777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.266495, 4.730453, 3.305962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394189, 0.848133, -0.353957,
		0.728957, -0.053998, 0.682427,
		0.559676, -0.527024, -0.639538,
		0.434397, 4.572346, 3.114100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.812344, 5.090911, 3.655116>,  <0.042624, 4.941263, 3.561777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.812344, 5.090911, 3.655116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.745262, 4.951096, 3.286400>,  <0.705013, 4.867206, 3.065170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.745262, 4.951096, 3.286400>,  <0.812344, 5.090911, 3.655116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.745262, 4.951096, 3.286400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476064, 0.790070, -0.386203,
		0.863272, -0.503599, 0.033905,
		-0.167704, -0.349539, -0.921791,
		0.694951, 4.846234, 3.009863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.509103, 5.016661, 3.306036>,  <0.812344, 5.090911, 3.655116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.509103, 5.016661, 3.306036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.202572, 5.065628, 3.053764>,  <1.018653, 5.095008, 2.902401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.202572, 5.065628, 3.053764>,  <1.509103, 5.016661, 3.306036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.202572, 5.065628, 3.053764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413051, 0.845774, -0.337721,
		0.492069, -0.519308, -0.698704,
		-0.766327, 0.122418, -0.630680,
		0.972674, 5.102354, 2.864560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.697712, 5.141652, 2.609151>,  <1.509103, 5.016661, 3.306036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.697712, 5.141652, 2.609151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.368496, 5.328308, 2.738674>,  <1.170966, 5.440302, 2.816388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.368496, 5.328308, 2.738674>,  <1.697712, 5.141652, 2.609151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.368496, 5.328308, 2.738674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527703, 0.839101, 0.132058,
		-0.210085, 0.279564, -0.936861,
		-0.823040, 0.466641, 0.323809,
		1.121584, 5.468300, 2.835817>
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
