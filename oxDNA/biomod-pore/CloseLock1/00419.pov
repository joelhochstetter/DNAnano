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
	<23.854017, 35.388268, 35.267521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.149572, 35.127296, 35.200127>,  <24.326904, 34.970715, 35.159691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.149572, 35.127296, 35.200127>,  <23.854017, 35.388268, 35.267521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.149572, 35.127296, 35.200127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389616, 0.209661, 0.896795,
		-0.549769, -0.728273, 0.409112,
		0.738887, -0.652426, -0.168482,
		24.371239, 34.931568, 35.149582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.376343, 35.263561, 35.906231>,  <23.854017, 35.388268, 35.267521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.376343, 35.263561, 35.906231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.687735, 35.152264, 35.681179>,  <24.874571, 35.085484, 35.546150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.687735, 35.152264, 35.681179>,  <24.376343, 35.263561, 35.906231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.687735, 35.152264, 35.681179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626382, 0.401732, 0.668024,
		0.040152, -0.872463, 0.487028,
		0.778481, -0.278244, -0.562626,
		24.921280, 35.068790, 35.512390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.801439, 34.868916, 36.306782>,  <24.376343, 35.263561, 35.906231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.801439, 34.868916, 36.306782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.982651, 35.077480, 36.017536>,  <25.091377, 35.202621, 35.843990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.982651, 35.077480, 36.017536>,  <24.801439, 34.868916, 36.306782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.982651, 35.077480, 36.017536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550806, 0.474079, 0.686922,
		0.700983, -0.709491, -0.072425,
		0.453029, 0.521413, -0.723113,
		25.118559, 35.233906, 35.800602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.657440, 34.859665, 36.377190>,  <24.801439, 34.868916, 36.306782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.657440, 34.859665, 36.377190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.457098, 35.171051, 36.225861>,  <25.336893, 35.357883, 36.135063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.457098, 35.171051, 36.225861>,  <25.657440, 34.859665, 36.377190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.457098, 35.171051, 36.225861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262164, 0.553015, 0.790850,
		0.824872, 0.296918, -0.481067,
		-0.500856, 0.778469, -0.378326,
		25.306841, 35.404591, 36.112362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.928551, 35.594078, 36.479073>,  <25.657440, 34.859665, 36.377190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.928551, 35.594078, 36.479073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.534708, 35.663784, 36.473663>,  <25.298403, 35.705608, 36.470417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.534708, 35.663784, 36.473663>,  <25.928551, 35.594078, 36.479073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.534708, 35.663784, 36.473663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081390, 0.525589, 0.846836,
		0.154685, 0.832699, -0.531681,
		-0.984606, 0.174266, -0.013527,
		25.239326, 35.716064, 36.469604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.572104, 35.445431, 36.861027>,  <25.928551, 35.594078, 36.479073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.572104, 35.445431, 36.861027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.898674, 35.376965, 37.081627>,  <27.094616, 35.335884, 37.213989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.898674, 35.376965, 37.081627>,  <26.572104, 35.445431, 36.861027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.898674, 35.376965, 37.081627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280249, -0.952490, 0.119262,
		0.504888, -0.251927, -0.825603,
		0.816424, -0.171161, 0.551503,
		27.143600, 35.325615, 37.247078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.010221, 34.965008, 36.545132>,  <26.572104, 35.445431, 36.861027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.010221, 34.965008, 36.545132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.128515, 34.926208, 36.925266>,  <27.199492, 34.902927, 37.153347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.128515, 34.926208, 36.925266>,  <27.010221, 34.965008, 36.545132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.128515, 34.926208, 36.925266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079363, -0.993887, -0.076749,
		0.951968, -0.052724, -0.301625,
		0.295735, -0.097001, 0.950332,
		27.217236, 34.897110, 37.210365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.214121, 34.256374, 36.630787>,  <27.010221, 34.965008, 36.545132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.214121, 34.256374, 36.630787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.238794, 34.365582, 37.014797>,  <27.253599, 34.431107, 37.245205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.238794, 34.365582, 37.014797>,  <27.214121, 34.256374, 36.630787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.238794, 34.365582, 37.014797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123586, -0.956547, 0.264090,
		0.990415, 0.102356, -0.092744,
		0.061683, 0.273021, 0.960029,
		27.257299, 34.447487, 37.302807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.744404, 33.978653, 36.832462>,  <27.214121, 34.256374, 36.630787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.744404, 33.978653, 36.832462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.515589, 34.015545, 37.158470>,  <27.378300, 34.037682, 37.354076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.515589, 34.015545, 37.158470>,  <27.744404, 33.978653, 36.832462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.515589, 34.015545, 37.158470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111807, -0.975615, 0.188877,
		0.812570, 0.199170, 0.547779,
		-0.572040, 0.092230, 0.815024,
		27.343977, 34.043213, 37.402977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.039635, 33.585270, 37.463001>,  <27.744404, 33.978653, 36.832462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.039635, 33.585270, 37.463001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.652248, 33.618877, 37.556824>,  <27.419817, 33.639042, 37.613117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.652248, 33.618877, 37.556824>,  <28.039635, 33.585270, 37.463001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.652248, 33.618877, 37.556824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026362, -0.970692, 0.238876,
		0.247754, 0.225159, 0.942296,
		-0.968464, 0.084023, 0.234557,
		27.361710, 33.644085, 37.627190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919693, 33.099415, 38.038887>,  <28.039635, 33.585270, 37.463001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919693, 33.099415, 38.038887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.559616, 33.136246, 37.868626>,  <27.343571, 33.158344, 37.766468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.559616, 33.136246, 37.868626>,  <27.919693, 33.099415, 38.038887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.559616, 33.136246, 37.868626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175822, -0.971039, 0.161775,
		-0.398428, 0.220467, 0.890309,
		-0.900190, 0.092080, -0.425652,
		27.289558, 33.163868, 37.740929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.494287, 32.813152, 38.547630>,  <27.919693, 33.099415, 38.038887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.494287, 32.813152, 38.547630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.288351, 32.821629, 38.204819>,  <27.164789, 32.826714, 37.999134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.288351, 32.821629, 38.204819>,  <27.494287, 32.813152, 38.547630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.288351, 32.821629, 38.204819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319333, -0.932492, 0.168773,
		-0.795592, 0.360568, 0.486852,
		-0.514840, 0.021194, -0.857024,
		27.133900, 32.827988, 37.947712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.958870, 32.396080, 38.727161>,  <27.494287, 32.813152, 38.547630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.958870, 32.396080, 38.727161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.910700, 32.432190, 38.331718>,  <26.881798, 32.453857, 38.094452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.910700, 32.432190, 38.331718>,  <26.958870, 32.396080, 38.727161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.910700, 32.432190, 38.331718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507129, -0.861704, -0.016911,
		-0.853415, 0.499316, 0.149552,
		-0.120426, 0.090274, -0.988609,
		26.874573, 32.459270, 38.035137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.268333, 32.350216, 38.603027>,  <26.958870, 32.396080, 38.727161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.268333, 32.350216, 38.603027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.490894, 32.234440, 38.291481>,  <26.624432, 32.164974, 38.104553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.490894, 32.234440, 38.291481>,  <26.268333, 32.350216, 38.603027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.490894, 32.234440, 38.291481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408442, -0.911575, 0.046979,
		-0.723596, 0.291984, -0.625424,
		0.556403, -0.289443, -0.778870,
		26.657816, 32.147606, 38.057819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.731886, 32.047596, 38.060589>,  <26.268333, 32.350216, 38.603027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.731886, 32.047596, 38.060589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.115717, 31.946165, 38.011742>,  <26.346016, 31.885307, 37.982433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.115717, 31.946165, 38.011742>,  <25.731886, 32.047596, 38.060589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.115717, 31.946165, 38.011742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246521, -0.966605, 0.070024,
		-0.135794, -0.037090, -0.990043,
		0.959577, -0.253575, -0.122115,
		26.403589, 31.870092, 37.975105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.732597, 31.646666, 37.482487>,  <25.731886, 32.047596, 38.060589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.732597, 31.646666, 37.482487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.064491, 31.527748, 37.671444>,  <26.263628, 31.456398, 37.784817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.064491, 31.527748, 37.671444>,  <25.732597, 31.646666, 37.482487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.064491, 31.527748, 37.671444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356071, -0.933694, 0.037813,
		0.429826, -0.199579, -0.880578,
		0.829736, -0.297295, 0.472391,
		26.313412, 31.438559, 37.813160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.979773, 30.949524, 37.184311>,  <25.732597, 31.646666, 37.482487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.979773, 30.949524, 37.184311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.184277, 30.967173, 37.527630>,  <26.306978, 30.977762, 37.733620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.184277, 30.967173, 37.527630>,  <25.979773, 30.949524, 37.184311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.184277, 30.967173, 37.527630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163261, -0.975510, 0.147397,
		0.843778, -0.215484, -0.491534,
		0.511258, 0.044122, 0.858294,
		26.337654, 30.980410, 37.785118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.428942, 30.369068, 37.160507>,  <25.979773, 30.949524, 37.184311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.428942, 30.369068, 37.160507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.369638, 30.476505, 37.541218>,  <26.334057, 30.540968, 37.769646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.369638, 30.476505, 37.541218>,  <26.428942, 30.369068, 37.160507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.369638, 30.476505, 37.541218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198423, -0.950920, 0.237444,
		0.968838, -0.153651, 0.194277,
		-0.148259, 0.268594, 0.951776,
		26.325161, 30.557083, 37.826752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.803314, 29.866535, 37.561333>,  <26.428942, 30.369068, 37.160507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.803314, 29.866535, 37.561333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.555534, 30.041975, 37.821766>,  <26.406866, 30.147240, 37.978027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.555534, 30.041975, 37.821766>,  <26.803314, 29.866535, 37.561333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.555534, 30.041975, 37.821766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309191, -0.898642, 0.311196,
		0.721584, -0.008540, 0.692274,
		-0.619449, 0.438599, 0.651086,
		26.369699, 30.173555, 38.017094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.026615, 29.569078, 38.227180>,  <26.803314, 29.866535, 37.561333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.026615, 29.569078, 38.227180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.658222, 29.724876, 38.230888>,  <26.437187, 29.818356, 38.233112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.658222, 29.724876, 38.230888>,  <27.026615, 29.569078, 38.227180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.658222, 29.724876, 38.230888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383258, -0.909996, 0.158178,
		0.070049, 0.142125, 0.987367,
		-0.920982, 0.389496, 0.009274,
		26.381927, 29.841724, 38.233669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.716455, 29.314459, 38.842590>,  <27.026615, 29.569078, 38.227180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.716455, 29.314459, 38.842590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.423805, 29.399321, 38.583450>,  <26.248215, 29.450237, 38.427967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.423805, 29.399321, 38.583450>,  <26.716455, 29.314459, 38.842590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.423805, 29.399321, 38.583450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346583, -0.934114, 0.085502,
		-0.587030, 0.287091, 0.756951,
		-0.731625, 0.212154, -0.647854,
		26.204317, 29.462967, 38.389095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.184696, 29.064947, 39.248508>,  <26.716455, 29.314459, 38.842590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.184696, 29.064947, 39.248508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.030380, 29.132076, 38.885632>,  <25.937792, 29.172354, 38.667904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.030380, 29.132076, 38.885632>,  <26.184696, 29.064947, 39.248508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.030380, 29.132076, 38.885632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435377, -0.900055, 0.018643,
		-0.813396, 0.402164, 0.420298,
		-0.385789, 0.167824, -0.907195,
		25.914644, 29.182423, 38.613472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.502110, 28.765097, 39.248447>,  <26.184696, 29.064947, 39.248508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.502110, 28.765097, 39.248447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.597456, 28.777119, 38.860165>,  <25.654665, 28.784332, 38.627193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.597456, 28.777119, 38.860165>,  <25.502110, 28.765097, 39.248447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.597456, 28.777119, 38.860165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304165, -0.946924, -0.104011,
		-0.922315, 0.320049, -0.216573,
		0.238367, 0.030057, -0.970710,
		25.668966, 28.786137, 38.568951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.965336, 28.510147, 38.961060>,  <25.502110, 28.765097, 39.248447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.965336, 28.510147, 38.961060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.241171, 28.456610, 38.676369>,  <25.406672, 28.424488, 38.505554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.241171, 28.456610, 38.676369>,  <24.965336, 28.510147, 38.961060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.241171, 28.456610, 38.676369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370243, -0.909787, -0.187638,
		-0.622407, 0.392905, -0.676931,
		0.689587, -0.133841, -0.711728,
		25.448048, 28.416458, 38.462849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.542067, 28.268888, 38.371429>,  <24.965336, 28.510147, 38.961060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.542067, 28.268888, 38.371429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.921423, 28.144575, 38.396633>,  <25.149036, 28.069986, 38.411755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.921423, 28.144575, 38.396633>,  <24.542067, 28.268888, 38.371429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.921423, 28.144575, 38.396633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309977, -0.950479, -0.022463,
		0.066868, 0.001773, -0.997760,
		0.948390, -0.310785, 0.063007,
		25.205940, 28.051340, 38.415535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.821377, 27.833233, 37.812588>,  <24.542067, 28.268888, 38.371429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.821377, 27.833233, 37.812588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.999147, 27.745157, 38.159920>,  <25.105810, 27.692312, 38.368320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.999147, 27.745157, 38.159920>,  <24.821377, 27.833233, 37.812588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.999147, 27.745157, 38.159920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255068, -0.960302, -0.112961,
		0.858733, -0.171281, -0.482949,
		0.444429, -0.220188, 0.868332,
		25.132477, 27.679100, 38.420418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.320465, 27.315125, 37.686867>,  <24.821377, 27.833233, 37.812588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.320465, 27.315125, 37.686867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.229837, 27.255045, 38.071804>,  <25.175461, 27.218998, 38.302765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.229837, 27.255045, 38.071804>,  <25.320465, 27.315125, 37.686867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.229837, 27.255045, 38.071804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268449, -0.940140, -0.209933,
		0.936270, -0.305905, 0.172687,
		-0.226570, -0.150197, 0.962345,
		25.161867, 27.209986, 38.360508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.800562, 27.181383, 37.263863>,  <25.320465, 27.315125, 37.686867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.800562, 27.181383, 37.263863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.120314, 27.077280, 37.047249>,  <26.312164, 27.014818, 36.917282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.120314, 27.077280, 37.047249>,  <25.800562, 27.181383, 37.263863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.120314, 27.077280, 37.047249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183892, 0.964040, -0.191861,
		0.571991, 0.053787, 0.818495,
		0.799381, -0.260257, -0.541531,
		26.360128, 26.999203, 36.884789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.830889, 26.579830, 37.914356>,  <25.800562, 27.181383, 37.263863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.830889, 26.579830, 37.914356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.541647, 26.612398, 37.639988>,  <25.368101, 26.631939, 37.475365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.541647, 26.612398, 37.639988>,  <25.830889, 26.579830, 37.914356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.541647, 26.612398, 37.639988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360499, -0.891543, 0.274212,
		-0.589202, 0.445558, 0.674032,
		-0.723105, 0.081421, -0.685922,
		25.324715, 26.636824, 37.434212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.111904, 26.463261, 38.113194>,  <25.830889, 26.579830, 37.914356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.111904, 26.463261, 38.113194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.059408, 26.365166, 37.728977>,  <25.027910, 26.306309, 37.498447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.059408, 26.365166, 37.728977>,  <25.111904, 26.463261, 38.113194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.059408, 26.365166, 37.728977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449704, -0.848765, 0.278145,
		-0.883483, 0.468461, 0.001106,
		-0.131239, -0.245239, -0.960538,
		25.020037, 26.291594, 37.440815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.965044, 25.998146, 38.675644>,  <25.111904, 26.463261, 38.113194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.965044, 25.998146, 38.675644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.777845, 26.342571, 38.596092>,  <24.665525, 26.549227, 38.548363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.777845, 26.342571, 38.596092>,  <24.965044, 25.998146, 38.675644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.777845, 26.342571, 38.596092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282258, 0.358897, 0.889676,
		0.837442, 0.360232, -0.411004,
		-0.467998, 0.861061, -0.198877,
		24.637445, 26.600889, 38.536430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.432034, 26.631451, 38.775482>,  <24.965044, 25.998146, 38.675644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.432034, 26.631451, 38.775482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.052803, 26.757181, 38.794884>,  <24.825266, 26.832621, 38.806526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.052803, 26.757181, 38.794884>,  <25.432034, 26.631451, 38.775482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.052803, 26.757181, 38.794884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219873, 0.537563, 0.814053,
		0.229805, 0.782448, -0.578762,
		-0.948075, 0.314328, 0.048505,
		24.768381, 26.851479, 38.809437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.138905, 26.475105, 39.062489>,  <25.432034, 26.631451, 38.775482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.138905, 26.475105, 39.062489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.331856, 26.793993, 39.207680>,  <26.447626, 26.985325, 39.294796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.331856, 26.793993, 39.207680>,  <26.138905, 26.475105, 39.062489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.331856, 26.793993, 39.207680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678892, -0.602106, 0.420208,
		0.553550, 0.043725, -0.831667,
		0.482378, 0.797218, 0.362980,
		26.476570, 27.033159, 39.316574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.770697, 26.626431, 38.686520>,  <26.138905, 26.475105, 39.062489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.770697, 26.626431, 38.686520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.039495, 26.536648, 38.404232>,  <27.200775, 26.482779, 38.234859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.039495, 26.536648, 38.404232>,  <26.770697, 26.626431, 38.686520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.039495, 26.536648, 38.404232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586360, 0.743338, 0.321917,
		0.452332, -0.630133, 0.631132,
		0.671995, -0.224457, -0.705721,
		27.241095, 26.469311, 38.192516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.363121, 26.847721, 38.915989>,  <26.770697, 26.626431, 38.686520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.363121, 26.847721, 38.915989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455645, 26.823229, 38.527607>,  <27.511158, 26.808533, 38.294579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455645, 26.823229, 38.527607>,  <27.363121, 26.847721, 38.915989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.455645, 26.823229, 38.527607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746221, 0.651514, 0.136684,
		0.624219, -0.756161, 0.196393,
		0.231308, -0.061232, -0.970952,
		27.525038, 26.804859, 38.236320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.094805, 26.809473, 38.906673>,  <27.363121, 26.847721, 38.915989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.094805, 26.809473, 38.906673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945206, 26.981873, 38.578194>,  <27.855446, 27.085312, 38.381107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945206, 26.981873, 38.578194>,  <28.094805, 26.809473, 38.906673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.945206, 26.981873, 38.578194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664782, 0.741993, 0.086666,
		0.646675, -0.513504, -0.564026,
		-0.374000, 0.430999, -0.821197,
		27.833006, 27.111172, 38.331833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699554, 26.950689, 38.422363>,  <28.094805, 26.809473, 38.906673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.699554, 26.950689, 38.422363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.394163, 27.206774, 38.388348>,  <28.210928, 27.360424, 38.367939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.394163, 27.206774, 38.388348>,  <28.699554, 26.950689, 38.422363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.394163, 27.206774, 38.388348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617641, 0.762274, 0.193539,
		0.188731, 0.095238, -0.977400,
		-0.763479, 0.640209, -0.085042,
		28.165119, 27.398836, 38.362835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909241, 27.463877, 37.882553>,  <28.699554, 26.950689, 38.422363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.909241, 27.463877, 37.882553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.640703, 27.647306, 38.115448>,  <28.479580, 27.757364, 38.255184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.640703, 27.647306, 38.115448>,  <28.909241, 27.463877, 37.882553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.640703, 27.647306, 38.115448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604701, 0.793140, 0.072565,
		-0.428523, 0.400798, -0.809771,
		-0.671345, 0.458574, 0.582242,
		28.439299, 27.784878, 38.290119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.883995, 28.145332, 37.565113>,  <28.909241, 27.463877, 37.882553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.883995, 28.145332, 37.565113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.716465, 28.170242, 37.927483>,  <28.615946, 28.185188, 38.144905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.716465, 28.170242, 37.927483>,  <28.883995, 28.145332, 37.565113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.716465, 28.170242, 37.927483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292897, 0.953588, 0.069859,
		-0.859532, 0.294603, -0.417629,
		-0.418827, 0.062277, 0.905928,
		28.590816, 28.188925, 38.199261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.561615, 28.780241, 37.646793>,  <28.883995, 28.145332, 37.565113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.561615, 28.780241, 37.646793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575861, 28.700380, 38.038483>,  <28.584408, 28.652464, 38.273495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575861, 28.700380, 38.038483>,  <28.561615, 28.780241, 37.646793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.575861, 28.700380, 38.038483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442913, 0.881508, 0.163619,
		-0.895857, 0.427882, 0.119823,
		0.035615, -0.199650, 0.979220,
		28.586546, 28.640486, 38.332249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.338818, 29.406477, 37.981056>,  <28.561615, 28.780241, 37.646793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.338818, 29.406477, 37.981056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.548742, 29.213514, 38.261589>,  <28.674696, 29.097736, 38.429909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.548742, 29.213514, 38.261589>,  <28.338818, 29.406477, 37.981056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.548742, 29.213514, 38.261589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339713, 0.874150, 0.347070,
		-0.780493, 0.056105, 0.622641,
		0.524809, -0.482405, 0.701327,
		28.706184, 29.068792, 38.471989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.254402, 29.826040, 38.551559>,  <28.338818, 29.406477, 37.981056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.254402, 29.826040, 38.551559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578358, 29.604876, 38.629910>,  <28.772732, 29.472176, 38.676918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578358, 29.604876, 38.629910>,  <28.254402, 29.826040, 38.551559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.578358, 29.604876, 38.629910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499967, 0.825314, 0.262468,
		-0.306777, -0.114642, 0.944852,
		0.809889, -0.552914, 0.195871,
		28.821325, 29.439001, 38.688671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.516338, 30.009708, 39.257530>,  <28.254402, 29.826040, 38.551559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.516338, 30.009708, 39.257530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.825518, 29.832266, 39.076088>,  <29.011026, 29.725800, 38.967220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.825518, 29.832266, 39.076088>,  <28.516338, 30.009708, 39.257530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.825518, 29.832266, 39.076088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591920, 0.761591, 0.263835,
		0.228426, -0.472432, 0.851252,
		0.772950, -0.443607, -0.453609,
		29.057404, 29.699184, 38.940006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071411, 29.841579, 39.792439>,  <28.516338, 30.009708, 39.257530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.071411, 29.841579, 39.792439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.183876, 29.887642, 39.411346>,  <29.251354, 29.915279, 39.182693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.183876, 29.887642, 39.411346>,  <29.071411, 29.841579, 39.792439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.183876, 29.887642, 39.411346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585648, 0.765883, 0.265404,
		0.760239, -0.632584, 0.147898,
		0.281163, 0.115155, -0.952726,
		29.268225, 29.922190, 39.125530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.784447, 30.079554, 39.868942>,  <29.071411, 29.841579, 39.792439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.784447, 30.079554, 39.868942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.647821, 30.180649, 39.506847>,  <29.565845, 30.241306, 39.289589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.647821, 30.180649, 39.506847>,  <29.784447, 30.079554, 39.868942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.647821, 30.180649, 39.506847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474925, 0.877562, 0.065814,
		0.811037, -0.407440, -0.419775,
		-0.341563, 0.252739, -0.905239,
		29.545353, 30.256470, 39.235275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303711, 30.496054, 39.648289>,  <29.784447, 30.079554, 39.868942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303711, 30.496054, 39.648289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.991093, 30.553812, 39.405525>,  <29.803522, 30.588467, 39.259869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.991093, 30.553812, 39.405525>,  <30.303711, 30.496054, 39.648289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.991093, 30.553812, 39.405525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153407, 0.987456, 0.037384,
		0.604693, -0.063887, -0.793892,
		-0.781545, 0.144395, -0.606908,
		29.756630, 30.597130, 39.223454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.548704, 31.103718, 39.230911>,  <30.303711, 30.496054, 39.648289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.548704, 31.103718, 39.230911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159302, 31.082972, 39.141827>,  <29.925661, 31.070524, 39.088375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159302, 31.082972, 39.141827>,  <30.548704, 31.103718, 39.230911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159302, 31.082972, 39.141827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007905, 0.965721, -0.259461,
		0.228530, -0.254347, -0.939724,
		-0.973505, -0.051866, -0.222707,
		29.867250, 31.067411, 39.075016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504629, 31.475004, 38.532314>,  <30.548704, 31.103718, 39.230911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504629, 31.475004, 38.532314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159166, 31.478516, 38.733917>,  <29.951889, 31.480623, 38.854877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159166, 31.478516, 38.733917>,  <30.504629, 31.475004, 38.532314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159166, 31.478516, 38.733917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069695, 0.988166, -0.136640,
		-0.499241, -0.153137, -0.852823,
		-0.863656, 0.008779, 0.504006,
		29.900070, 31.481150, 38.885120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.098438, 31.841713, 38.100464>,  <30.504629, 31.475004, 38.532314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.098438, 31.841713, 38.100464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.909760, 31.892653, 38.449471>,  <29.796553, 31.923216, 38.658875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.909760, 31.892653, 38.449471>,  <30.098438, 31.841713, 38.100464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.909760, 31.892653, 38.449471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052597, 0.983690, -0.172010,
		-0.880190, -0.127029, -0.457307,
		-0.471698, 0.127349, 0.872516,
		29.768250, 31.930857, 38.711224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660713, 32.440151, 38.006950>,  <30.098438, 31.841713, 38.100464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660713, 32.440151, 38.006950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.710081, 32.391254, 38.400867>,  <29.739702, 32.361916, 38.637218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.710081, 32.391254, 38.400867>,  <29.660713, 32.440151, 38.006950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.710081, 32.391254, 38.400867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039576, 0.990988, 0.127973,
		-0.991565, -0.054769, 0.117469,
		0.123420, -0.122245, 0.984796,
		29.747107, 32.354580, 38.696308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.188658, 32.858768, 38.306465>,  <29.660713, 32.440151, 38.006950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.188658, 32.858768, 38.306465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.440859, 32.802902, 38.611874>,  <29.592180, 32.769382, 38.795116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.440859, 32.802902, 38.611874>,  <29.188658, 32.858768, 38.306465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.440859, 32.802902, 38.611874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070196, 0.969387, 0.235291,
		-0.773006, -0.201948, 0.601398,
		0.630504, -0.139665, 0.763517,
		29.630011, 32.761002, 38.840927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.988384, 33.232616, 38.798744>,  <29.188658, 32.858768, 38.306465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.988384, 33.232616, 38.798744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.368515, 33.161522, 38.900955>,  <29.596594, 33.118866, 38.962280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.368515, 33.161522, 38.900955>,  <28.988384, 33.232616, 38.798744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.368515, 33.161522, 38.900955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161355, 0.983326, 0.083873,
		-0.266171, -0.038476, 0.963158,
		0.950325, -0.177735, 0.255525,
		29.653612, 33.108200, 38.977612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.021610, 33.480457, 39.516338>,  <28.988384, 33.232616, 38.798744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.021610, 33.480457, 39.516338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.374166, 33.488171, 39.327541>,  <29.585701, 33.492798, 39.214264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.374166, 33.488171, 39.327541>,  <29.021610, 33.480457, 39.516338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.374166, 33.488171, 39.327541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062080, 0.985774, 0.156194,
		0.468292, -0.166969, 0.867654,
		0.881390, 0.019281, -0.471996,
		29.638584, 33.493954, 39.185944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.364378, 34.019337, 39.849102>,  <29.021610, 33.480457, 39.516338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.364378, 34.019337, 39.849102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.561089, 33.982479, 39.502769>,  <29.679115, 33.960365, 39.294971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.561089, 33.982479, 39.502769>,  <29.364378, 34.019337, 39.849102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.561089, 33.982479, 39.502769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116993, 0.992360, -0.039164,
		0.862825, -0.082037, 0.498802,
		0.491778, -0.092148, -0.865831,
		29.708622, 33.954834, 39.243019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.891294, 34.594666, 39.811527>,  <29.364378, 34.019337, 39.849102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.891294, 34.594666, 39.811527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.813593, 34.471012, 39.439140>,  <29.766972, 34.396820, 39.215710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.813593, 34.471012, 39.439140>,  <29.891294, 34.594666, 39.811527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.813593, 34.471012, 39.439140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058928, 0.943655, -0.325642,
		0.979180, -0.118117, -0.165090,
		-0.194252, -0.309134, -0.930969,
		29.755318, 34.378273, 39.159851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.321318, 35.080383, 39.428753>,  <29.891294, 34.594666, 39.811527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.321318, 35.080383, 39.428753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.075718, 34.927174, 39.152695>,  <29.928358, 34.835247, 38.987061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.075718, 34.927174, 39.152695>,  <30.321318, 35.080383, 39.428753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.075718, 34.927174, 39.152695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096179, 0.904157, -0.416234,
		0.783424, -0.189191, -0.591992,
		-0.614001, -0.383024, -0.690142,
		29.891518, 34.812267, 38.945652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583572, 35.351646, 38.831703>,  <30.321318, 35.080383, 39.428753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.583572, 35.351646, 38.831703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.216425, 35.233242, 38.725956>,  <29.996136, 35.162201, 38.662506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.216425, 35.233242, 38.725956>,  <30.583572, 35.351646, 38.831703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.216425, 35.233242, 38.725956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163672, 0.889163, -0.427319,
		0.361559, -0.348953, -0.864585,
		-0.917871, -0.296009, -0.264371,
		29.941063, 35.144440, 38.646645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241211, 35.801105, 38.809334>,  <30.583572, 35.351646, 38.831703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241211, 35.801105, 38.809334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370655, 35.424351, 38.845383>,  <31.448320, 35.198296, 38.867012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370655, 35.424351, 38.845383>,  <31.241211, 35.801105, 38.809334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.370655, 35.424351, 38.845383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570348, 0.118180, -0.812857,
		0.754971, 0.314448, 0.575449,
		0.323608, -0.941889, 0.090122,
		31.467737, 35.141785, 38.872421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731058, 35.814205, 38.326214>,  <31.241211, 35.801105, 38.809334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731058, 35.814205, 38.326214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673302, 35.424877, 38.397537>,  <31.638649, 35.191280, 38.440331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673302, 35.424877, 38.397537>,  <31.731058, 35.814205, 38.326214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673302, 35.424877, 38.397537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345471, -0.218446, -0.912650,
		0.927255, -0.070176, 0.367796,
		-0.144389, -0.973322, 0.178311,
		31.629984, 35.132881, 38.451031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363960, 35.293987, 38.192699>,  <31.731058, 35.814205, 38.326214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363960, 35.293987, 38.192699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031719, 35.072533, 38.168713>,  <31.832376, 34.939659, 38.154320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031719, 35.072533, 38.168713>,  <32.363960, 35.293987, 38.192699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031719, 35.072533, 38.168713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361797, -0.454631, -0.813888,
		0.423332, -0.697711, 0.577918,
		-0.830598, -0.553634, -0.059970,
		31.782539, 34.906441, 38.150723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391590, 34.612816, 38.417843>,  <32.363960, 35.293987, 38.192699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391590, 34.612816, 38.417843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368401, 34.430149, 38.772942>,  <32.354488, 34.320549, 38.986000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368401, 34.430149, 38.772942>,  <32.391590, 34.612816, 38.417843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368401, 34.430149, 38.772942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991907, 0.074264, 0.102978,
		-0.112954, 0.886532, 0.448667,
		-0.057973, -0.456668, 0.887746,
		32.351009, 34.293148, 39.039265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618114, 35.200176, 38.896698>,  <32.391590, 34.612816, 38.417843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618114, 35.200176, 38.896698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664604, 34.815712, 38.996830>,  <32.692497, 34.585033, 39.056911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664604, 34.815712, 38.996830>,  <32.618114, 35.200176, 38.896698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664604, 34.815712, 38.996830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977011, 0.155987, 0.145319,
		-0.178723, 0.227691, 0.957191,
		0.116221, -0.961158, 0.250335,
		32.699471, 34.527363, 39.071930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324162, 35.178650, 39.040745>,  <32.618114, 35.200176, 38.896698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324162, 35.178650, 39.040745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229923, 34.791538, 39.076286>,  <33.173378, 34.559273, 39.097610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229923, 34.791538, 39.076286>,  <33.324162, 35.178650, 39.040745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229923, 34.791538, 39.076286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929665, -0.197783, 0.310812,
		-0.283224, 0.155831, 0.946309,
		-0.235598, -0.967780, 0.088854,
		33.159245, 34.501205, 39.102943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762531, 34.971809, 39.557579>,  <33.324162, 35.178650, 39.040745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762531, 34.971809, 39.557579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140366, 35.101238, 39.579693>,  <34.367065, 35.178898, 39.592960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140366, 35.101238, 39.579693>,  <33.762531, 34.971809, 39.557579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140366, 35.101238, 39.579693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163945, -0.610933, 0.774521,
		0.284393, -0.722538, -0.630127,
		0.944586, 0.323575, 0.055288,
		34.423740, 35.198311, 39.596279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276817, 35.100021, 40.177624>,  <33.762531, 34.971809, 39.557579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276817, 35.100021, 40.177624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407143, 34.816216, 39.927685>,  <34.485336, 34.645931, 39.777721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407143, 34.816216, 39.927685>,  <34.276817, 35.100021, 40.177624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407143, 34.816216, 39.927685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328796, -0.534623, 0.778506,
		-0.886419, -0.459095, 0.059098,
		0.325813, -0.709514, -0.624849,
		34.504887, 34.603363, 39.740231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050564, 34.372589, 40.373741>,  <34.276817, 35.100021, 40.177624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050564, 34.372589, 40.373741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378334, 34.338947, 40.146950>,  <34.574997, 34.318760, 40.010876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378334, 34.338947, 40.146950>,  <34.050564, 34.372589, 40.373741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378334, 34.338947, 40.146950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410022, -0.605191, 0.682368,
		-0.400521, -0.791625, -0.461425,
		0.819430, -0.084108, -0.566975,
		34.624165, 34.313713, 39.976856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172134, 33.641090, 40.181469>,  <34.050564, 34.372589, 40.373741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172134, 33.641090, 40.181469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519825, 33.838573, 40.170925>,  <34.728439, 33.957062, 40.164600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519825, 33.838573, 40.170925>,  <34.172134, 33.641090, 40.181469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519825, 33.838573, 40.170925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425025, -0.718939, 0.549982,
		0.252581, -0.489263, -0.834760,
		0.869228, 0.493709, -0.026359,
		34.780594, 33.986687, 40.163017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552101, 33.282238, 40.453339>,  <34.172134, 33.641090, 40.181469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552101, 33.282238, 40.453339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826244, 33.571938, 40.483654>,  <34.990730, 33.745758, 40.501842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826244, 33.571938, 40.483654>,  <34.552101, 33.282238, 40.453339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826244, 33.571938, 40.483654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529343, -0.566962, 0.631150,
		0.500081, -0.392445, -0.771949,
		0.685357, 0.724252, 0.075789,
		35.031853, 33.789215, 40.506390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226517, 32.948647, 40.401909>,  <34.552101, 33.282238, 40.453339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226517, 32.948647, 40.401909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259518, 33.301929, 40.586578>,  <35.279316, 33.513901, 40.697380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259518, 33.301929, 40.586578>,  <35.226517, 32.948647, 40.401909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259518, 33.301929, 40.586578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554283, -0.425653, 0.715255,
		0.828229, 0.196888, -0.524663,
		0.082499, 0.883207, 0.461670,
		35.284267, 33.566891, 40.725079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895973, 33.010395, 40.592884>,  <35.226517, 32.948647, 40.401909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895973, 33.010395, 40.592884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707565, 33.278069, 40.822781>,  <35.594521, 33.438671, 40.960720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707565, 33.278069, 40.822781>,  <35.895973, 33.010395, 40.592884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707565, 33.278069, 40.822781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378508, -0.435198, 0.816905,
		0.796788, 0.602325, -0.048305,
		-0.471020, 0.669184, 0.574746,
		35.566257, 33.478825, 40.995205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408947, 33.235706, 40.952393>,  <35.895973, 33.010395, 40.592884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408947, 33.235706, 40.952393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074905, 33.306507, 41.160725>,  <35.874481, 33.348988, 41.285725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074905, 33.306507, 41.160725>,  <36.408947, 33.235706, 40.952393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074905, 33.306507, 41.160725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461395, -0.290141, 0.838411,
		0.299515, 0.940472, 0.160632,
		-0.835108, 0.177002, 0.520830,
		35.824371, 33.359608, 41.316975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620152, 33.507759, 41.569435>,  <36.408947, 33.235706, 40.952393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620152, 33.507759, 41.569435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240192, 33.435982, 41.671806>,  <36.012218, 33.392918, 41.733227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240192, 33.435982, 41.671806>,  <36.620152, 33.507759, 41.569435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240192, 33.435982, 41.671806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289692, -0.197957, 0.936425,
		-0.117370, 0.963646, 0.240021,
		-0.949896, -0.179441, 0.255926,
		35.955223, 33.382149, 41.748585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556168, 33.804501, 42.170044>,  <36.620152, 33.507759, 41.569435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556168, 33.804501, 42.170044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261719, 33.535297, 42.141254>,  <36.085049, 33.373775, 42.123981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261719, 33.535297, 42.141254>,  <36.556168, 33.804501, 42.170044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261719, 33.535297, 42.141254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186608, -0.304011, 0.934213,
		-0.650616, 0.674265, 0.349379,
		-0.736123, -0.673011, -0.071971,
		36.040882, 33.333393, 42.119663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934002, 33.887867, 42.778130>,  <36.556168, 33.804501, 42.170044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934002, 33.887867, 42.778130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003635, 33.520977, 42.634800>,  <36.045414, 33.300842, 42.548801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003635, 33.520977, 42.634800>,  <35.934002, 33.887867, 42.778130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003635, 33.520977, 42.634800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201556, -0.322989, 0.924691,
		-0.963883, -0.233195, 0.128645,
		0.174083, -0.917223, -0.358325,
		36.055859, 33.245811, 42.527302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610485, 33.534245, 43.219532>,  <35.934002, 33.887867, 42.778130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610485, 33.534245, 43.219532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850563, 33.252121, 43.068634>,  <35.994610, 33.082848, 42.978096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850563, 33.252121, 43.068634>,  <35.610485, 33.534245, 43.219532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850563, 33.252121, 43.068634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285726, -0.251462, 0.924731,
		-0.747080, -0.662806, 0.050598,
		0.600194, -0.705305, -0.377243,
		36.030621, 33.040531, 42.955460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475151, 32.938488, 43.567242>,  <35.610485, 33.534245, 43.219532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475151, 32.938488, 43.567242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.837189, 32.863903, 43.414383>,  <36.054409, 32.819153, 43.322666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.837189, 32.863903, 43.414383>,  <35.475151, 32.938488, 43.567242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837189, 32.863903, 43.414383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305593, -0.339671, 0.889515,
		-0.295666, -0.921876, -0.250453,
		0.905094, -0.186463, -0.382148,
		36.108715, 32.807964, 43.299740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651512, 32.286037, 43.798832>,  <35.475151, 32.938488, 43.567242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651512, 32.286037, 43.798832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010513, 32.421082, 43.685337>,  <36.225914, 32.502110, 43.617241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010513, 32.421082, 43.685337>,  <35.651512, 32.286037, 43.798832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010513, 32.421082, 43.685337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413684, -0.421561, 0.806939,
		0.152821, -0.841608, -0.518018,
		0.897503, 0.337613, -0.283736,
		36.279762, 32.522366, 43.600216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047081, 31.682619, 43.735493>,  <35.651512, 32.286037, 43.798832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047081, 31.682619, 43.735493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306870, 31.984663, 43.771263>,  <36.462742, 32.165890, 43.792725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306870, 31.984663, 43.771263>,  <36.047081, 31.682619, 43.735493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306870, 31.984663, 43.771263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553401, -0.550053, 0.625451,
		0.521472, -0.356725, -0.775122,
		0.649472, 0.755108, 0.089426,
		36.501713, 32.211197, 43.798092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696808, 31.320189, 43.681622>,  <36.047081, 31.682619, 43.735493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696808, 31.320189, 43.681622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754555, 31.678169, 43.850483>,  <36.789204, 31.892958, 43.951801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754555, 31.678169, 43.850483>,  <36.696808, 31.320189, 43.681622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754555, 31.678169, 43.850483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568581, -0.424189, 0.704826,
		0.809861, 0.138277, -0.570092,
		0.144366, 0.894954, 0.422156,
		36.797863, 31.946655, 43.977131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398735, 31.306301, 43.770115>,  <36.696808, 31.320189, 43.681622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398735, 31.306301, 43.770115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227707, 31.563236, 44.024544>,  <37.125088, 31.717398, 44.177200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227707, 31.563236, 44.024544>,  <37.398735, 31.306301, 43.770115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227707, 31.563236, 44.024544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525000, -0.396360, 0.753176,
		0.735905, 0.655974, -0.167754,
		-0.427573, 0.642337, 0.636070,
		37.099434, 31.755938, 44.215366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829681, 31.232845, 44.255249>,  <37.398735, 31.306301, 43.770115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829681, 31.232845, 44.255249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547596, 31.437824, 44.451241>,  <37.378345, 31.560812, 44.568836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547596, 31.437824, 44.451241>,  <37.829681, 31.232845, 44.255249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547596, 31.437824, 44.451241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367830, -0.326361, 0.870741,
		0.606117, 0.794284, 0.041660,
		-0.705211, 0.512447, 0.489974,
		37.336033, 31.591558, 44.598232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139069, 31.690510, 44.716400>,  <37.829681, 31.232845, 44.255249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139069, 31.690510, 44.716400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773117, 31.636271, 44.868511>,  <37.553547, 31.603727, 44.959778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773117, 31.636271, 44.868511>,  <38.139069, 31.690510, 44.716400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773117, 31.636271, 44.868511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403575, -0.280690, 0.870827,
		-0.011340, 0.950172, 0.311520,
		-0.914876, -0.135597, 0.380282,
		37.498653, 31.595591, 44.982597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274235, 31.896286, 45.359936>,  <38.139069, 31.690510, 44.716400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274235, 31.896286, 45.359936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928547, 31.696474, 45.383907>,  <37.721134, 31.576586, 45.398293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928547, 31.696474, 45.383907>,  <38.274235, 31.896286, 45.359936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928547, 31.696474, 45.383907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291500, -0.400067, 0.868892,
		-0.410062, 0.768384, 0.491360,
		-0.864220, -0.499532, 0.059932,
		37.669281, 31.546614, 45.401886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025730, 32.033291, 45.998520>,  <38.274235, 31.896286, 45.359936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025730, 32.033291, 45.998520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817562, 31.706570, 45.898930>,  <37.692661, 31.510536, 45.839176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817562, 31.706570, 45.898930>,  <38.025730, 32.033291, 45.998520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817562, 31.706570, 45.898930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186505, -0.393261, 0.900312,
		-0.833294, 0.422104, 0.356999,
		-0.520419, -0.816807, -0.248978,
		37.661438, 31.461527, 45.824238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607792, 31.930380, 46.605247>,  <38.025730, 32.033291, 45.998520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607792, 31.930380, 46.605247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642609, 31.593512, 46.392391>,  <37.663498, 31.391390, 46.264679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642609, 31.593512, 46.392391>,  <37.607792, 31.930380, 46.605247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642609, 31.593512, 46.392391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164916, -0.514613, 0.841413,
		-0.982459, -0.160999, 0.094093,
		0.087045, -0.842171, -0.532138,
		37.668720, 31.340860, 46.232750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123772, 31.503439, 46.889114>,  <37.607792, 31.930380, 46.605247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123772, 31.503439, 46.889114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376781, 31.257084, 46.701244>,  <37.528587, 31.109270, 46.588524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376781, 31.257084, 46.701244>,  <37.123772, 31.503439, 46.889114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376781, 31.257084, 46.701244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098196, -0.537735, 0.837376,
		-0.768293, -0.575779, -0.279651,
		0.632522, -0.615890, -0.469677,
		37.566540, 31.072317, 46.560341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144928, 30.834118, 47.288780>,  <37.123772, 31.503439, 46.889114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144928, 30.834118, 47.288780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471249, 30.828766, 47.057507>,  <37.667042, 30.825554, 46.918743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471249, 30.828766, 47.057507>,  <37.144928, 30.834118, 47.288780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471249, 30.828766, 47.057507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509438, -0.456607, 0.729371,
		-0.273760, -0.889568, -0.365683,
		0.815799, -0.013379, -0.578181,
		37.715988, 30.824753, 46.884052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408428, 30.107960, 47.313812>,  <37.144928, 30.834118, 47.288780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408428, 30.107960, 47.313812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721180, 30.326992, 47.194599>,  <37.908833, 30.458410, 47.123074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721180, 30.326992, 47.194599>,  <37.408428, 30.107960, 47.313812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721180, 30.326992, 47.194599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593578, -0.507710, 0.624416,
		0.190605, -0.665122, -0.721999,
		0.781879, 0.547579, -0.298030,
		37.955742, 30.491266, 47.105190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998249, 29.653950, 47.206593>,  <37.408428, 30.107960, 47.313812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998249, 29.653950, 47.206593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160076, 30.014730, 47.267006>,  <38.257172, 30.231199, 47.303253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160076, 30.014730, 47.267006>,  <37.998249, 29.653950, 47.206593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160076, 30.014730, 47.267006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619316, -0.391733, 0.680436,
		0.672883, -0.181748, -0.717075,
		0.404570, 0.901949, 0.151031,
		38.281448, 30.285315, 47.312317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723263, 29.542145, 47.205563>,  <37.998249, 29.653950, 47.206593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723263, 29.542145, 47.205563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689278, 29.888205, 47.403267>,  <38.668884, 30.095840, 47.521889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689278, 29.888205, 47.403267>,  <38.723263, 29.542145, 47.205563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689278, 29.888205, 47.403267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675876, -0.314437, 0.666573,
		0.732101, 0.390698, -0.558018,
		-0.084967, 0.865150, 0.494263,
		38.663788, 30.147749, 47.551544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356213, 29.792795, 47.372856>,  <38.723263, 29.542145, 47.205563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356213, 29.792795, 47.372856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154404, 30.036026, 47.618034>,  <39.033318, 30.181965, 47.765141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154404, 30.036026, 47.618034>,  <39.356213, 29.792795, 47.372856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154404, 30.036026, 47.618034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654563, -0.193565, 0.730808,
		0.563033, 0.769918, -0.300367,
		-0.504521, 0.608078, 0.612943,
		39.003048, 30.218449, 47.801918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815731, 30.254406, 47.518230>,  <39.356213, 29.792795, 47.372856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815731, 30.254406, 47.518230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554661, 30.246090, 47.821171>,  <39.398018, 30.241100, 48.002934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554661, 30.246090, 47.821171>,  <39.815731, 30.254406, 47.518230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554661, 30.246090, 47.821171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729585, -0.286738, 0.620876,
		0.204252, 0.957783, 0.202317,
		-0.652677, -0.020792, 0.757351,
		39.358856, 30.239853, 48.048378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172131, 30.448462, 48.069675>,  <39.815731, 30.254406, 47.518230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172131, 30.448462, 48.069675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856144, 30.281418, 48.249252>,  <39.666550, 30.181190, 48.356998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856144, 30.281418, 48.249252>,  <40.172131, 30.448462, 48.069675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856144, 30.281418, 48.249252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571461, -0.236112, 0.785928,
		-0.222212, 0.877413, 0.425169,
		-0.789971, -0.417610, 0.448941,
		39.619152, 30.156136, 48.383934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187592, 30.576078, 48.760311>,  <40.172131, 30.448462, 48.069675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187592, 30.576078, 48.760311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931782, 30.268572, 48.759602>,  <39.778294, 30.084068, 48.759174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931782, 30.268572, 48.759602>,  <40.187592, 30.576078, 48.760311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931782, 30.268572, 48.759602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440556, -0.368383, 0.818660,
		-0.630010, 0.522776, 0.574276,
		-0.639529, -0.768765, -0.001773,
		39.739922, 30.037943, 48.759071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063389, 30.316071, 49.535648>,  <40.187592, 30.576078, 48.760311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063389, 30.316071, 49.535648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.983696, 30.003239, 49.299461>,  <39.935879, 29.815538, 49.157749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.983696, 30.003239, 49.299461>,  <40.063389, 30.316071, 49.535648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983696, 30.003239, 49.299461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549234, -0.588135, 0.593666,
		-0.811570, -0.206026, 0.546724,
		-0.199237, -0.782081, -0.590469,
		39.923923, 29.768614, 49.122322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968136, 29.832224, 49.993732>,  <40.063389, 30.316071, 49.535648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968136, 29.832224, 49.993732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039062, 29.631310, 49.655201>,  <40.081619, 29.510761, 49.452084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039062, 29.631310, 49.655201>,  <39.968136, 29.832224, 49.993732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039062, 29.631310, 49.655201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621197, -0.609876, 0.492102,
		-0.763331, -0.612991, 0.203881,
		0.177312, -0.502287, -0.846326,
		40.092255, 29.480623, 49.401302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060017, 29.155018, 50.289467>,  <39.968136, 29.832224, 49.993732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060017, 29.155018, 50.289467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.201878, 29.129290, 49.916351>,  <40.286995, 29.113852, 49.692482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.201878, 29.129290, 49.916351>,  <40.060017, 29.155018, 50.289467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201878, 29.129290, 49.916351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605300, -0.744567, 0.281481,
		-0.712626, -0.664441, -0.225125,
		0.354648, -0.064322, -0.932785,
		40.308273, 29.109993, 49.636517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106403, 28.460714, 50.187328>,  <40.060017, 29.155018, 50.289467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106403, 28.460714, 50.187328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345539, 28.613346, 49.905338>,  <40.489021, 28.704926, 49.736145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345539, 28.613346, 49.905338>,  <40.106403, 28.460714, 50.187328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345539, 28.613346, 49.905338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663250, -0.729373, 0.167671,
		-0.450209, -0.567814, -0.689129,
		0.597839, 0.381578, -0.704973,
		40.524891, 28.727819, 49.693848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269043, 27.930006, 49.735226>,  <40.106403, 28.460714, 50.187328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269043, 27.930006, 49.735226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.562588, 28.201715, 49.737450>,  <40.738716, 28.364740, 49.738785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.562588, 28.201715, 49.737450>,  <40.269043, 27.930006, 49.735226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562588, 28.201715, 49.737450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659595, -0.714514, 0.233246,
		0.162408, -0.167506, -0.972402,
		0.733865, 0.679272, 0.005557,
		40.782749, 28.405497, 49.739117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806332, 27.541954, 49.575867>,  <40.269043, 27.930006, 49.735226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806332, 27.541954, 49.575867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964550, 27.874533, 49.731941>,  <41.059479, 28.074080, 49.825584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964550, 27.874533, 49.731941>,  <40.806332, 27.541954, 49.575867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.964550, 27.874533, 49.731941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760659, -0.534647, 0.368172,
		0.514726, 0.151170, -0.843923,
		0.395544, 0.831445, 0.390185,
		41.083214, 28.123966, 49.848995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508919, 27.581091, 49.333183>,  <40.806332, 27.541954, 49.575867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508919, 27.581091, 49.333183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510635, 27.795977, 49.670559>,  <41.511665, 27.924908, 49.872982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510635, 27.795977, 49.670559>,  <41.508919, 27.581091, 49.333183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.510635, 27.795977, 49.670559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740104, -0.568908, 0.358594,
		0.672479, 0.622691, -0.400036,
		0.004291, 0.537215, 0.843435,
		41.511921, 27.957142, 49.923588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.283867, 27.745434, 49.527016>,  <41.508919, 27.581091, 49.333183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.283867, 27.745434, 49.527016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.064804, 27.792137, 49.858421>,  <41.933365, 27.820160, 50.057266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.064804, 27.792137, 49.858421>,  <42.283867, 27.745434, 49.527016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.064804, 27.792137, 49.858421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703376, -0.472026, 0.531464,
		0.453133, 0.873818, 0.176384,
		-0.547661, 0.116760, 0.828514,
		41.900505, 27.827166, 50.106976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.623562, 28.107841, 50.036709>,  <42.283867, 27.745434, 49.527016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.623562, 28.107841, 50.036709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.366302, 27.884066, 50.245853>,  <42.211945, 27.749800, 50.371342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.366302, 27.884066, 50.245853>,  <42.623562, 28.107841, 50.036709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.366302, 27.884066, 50.245853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752836, -0.337138, 0.565310,
		-0.139982, 0.757208, 0.637998,
		-0.643151, -0.559441, 0.522860,
		42.173359, 27.716234, 50.402710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.062447, 28.065763, 50.508839>,  <42.623562, 28.107841, 50.036709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.062447, 28.065763, 50.508839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.743481, 27.864767, 50.642487>,  <42.552101, 27.744169, 50.722675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.743481, 27.864767, 50.642487>,  <43.062447, 28.065763, 50.508839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.743481, 27.864767, 50.642487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480058, -0.192781, 0.855792,
		-0.365615, 0.842817, 0.394950,
		-0.797415, -0.502489, 0.334117,
		42.504257, 27.714020, 50.742722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.859226, 28.258209, 51.236099>,  <43.062447, 28.065763, 50.508839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.859226, 28.258209, 51.236099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.763981, 27.873039, 51.185371>,  <42.706833, 27.641937, 51.154934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.763981, 27.873039, 51.185371>,  <42.859226, 28.258209, 51.236099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.763981, 27.873039, 51.185371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462795, -0.227285, 0.856833,
		-0.853888, 0.145331, 0.499755,
		-0.238111, -0.962923, -0.126818,
		42.692547, 27.584162, 51.147327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.347469, 27.822105, 51.673401>,  <42.859226, 28.258209, 51.236099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.347469, 27.822105, 51.673401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.665329, 27.612242, 51.551243>,  <42.856045, 27.486322, 51.477947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.665329, 27.612242, 51.551243>,  <42.347469, 27.822105, 51.673401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.665329, 27.612242, 51.551243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302515, -0.093923, 0.948506,
		-0.526327, -0.846114, 0.084082,
		0.794647, -0.524661, -0.305397,
		42.903725, 27.454844, 51.459625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.378616, 27.031395, 51.968639>,  <42.347469, 27.822105, 51.673401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.378616, 27.031395, 51.968639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.729992, 27.203436, 51.885342>,  <42.940815, 27.306660, 51.835365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.729992, 27.203436, 51.885342>,  <42.378616, 27.031395, 51.968639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.729992, 27.203436, 51.885342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234879, -0.009110, 0.971982,
		0.416155, -0.902734, -0.109025,
		0.878434, 0.430103, -0.208241,
		42.993523, 27.332466, 51.822868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.891773, 26.706486, 52.499428>,  <42.378616, 27.031395, 51.968639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.891773, 26.706486, 52.499428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.065742, 27.032631, 52.346573>,  <43.170124, 27.228317, 52.254860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.065742, 27.032631, 52.346573>,  <42.891773, 26.706486, 52.499428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.065742, 27.032631, 52.346573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516488, 0.121738, 0.847596,
		0.737617, -0.566010, -0.368177,
		0.434926, 0.815360, -0.382133,
		43.196220, 27.277239, 52.231934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.551075, 26.607607, 52.657764>,  <42.891773, 26.706486, 52.499428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.551075, 26.607607, 52.657764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.489796, 27.002621, 52.643284>,  <43.453030, 27.239628, 52.634594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.489796, 27.002621, 52.643284>,  <43.551075, 26.607607, 52.657764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.489796, 27.002621, 52.643284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520853, 0.111827, 0.846290,
		0.839788, 0.110790, -0.531491,
		-0.153195, 0.987532, -0.036206,
		43.443836, 27.298880, 52.632423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.017838, 26.040945, 52.339634>,  <43.551075, 26.607607, 52.657764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.017838, 26.040945, 52.339634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.784367, 26.138651, 52.029884>,  <43.644283, 26.197275, 51.844036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.784367, 26.138651, 52.029884>,  <44.017838, 26.040945, 52.339634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.784367, 26.138651, 52.029884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810256, -0.237403, 0.535840,
		-0.052952, 0.940199, 0.336483,
		-0.583679, 0.244264, -0.774374,
		43.609264, 26.211929, 51.797573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.333244, 25.732861, 52.375008>,  <44.017838, 26.040945, 52.339634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.333244, 25.732861, 52.375008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.117867, 25.825974, 52.698956>,  <42.988640, 25.881842, 52.893326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.117867, 25.825974, 52.698956>,  <43.333244, 25.732861, 52.375008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.117867, 25.825974, 52.698956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039811, 0.952986, -0.300389,
		-0.841720, -0.193985, -0.503862,
		-0.538444, 0.232784, 0.809870,
		42.956333, 25.895809, 52.941917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.840336, 25.563639, 51.829704>,  <43.333244, 25.732861, 52.375008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.840336, 25.563639, 51.829704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.178276, 25.459675, 51.642658>,  <44.381042, 25.397297, 51.530430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.178276, 25.459675, 51.642658>,  <43.840336, 25.563639, 51.829704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.178276, 25.459675, 51.642658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494904, -0.047696, -0.867638,
		0.203205, 0.964454, -0.168927,
		0.844854, -0.259911, -0.467620,
		44.431732, 25.381702, 51.502373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.923878, 26.087864, 51.376102>,  <43.840336, 25.563639, 51.829704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.923878, 26.087864, 51.376102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.102257, 25.764647, 51.222118>,  <44.209286, 25.570717, 51.129726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.102257, 25.764647, 51.222118>,  <43.923878, 26.087864, 51.376102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.102257, 25.764647, 51.222118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552209, 0.090106, -0.828822,
		0.704412, 0.582191, -0.406026,
		0.445948, -0.808043, -0.384963,
		44.236042, 25.522234, 51.106628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.195892, 26.295135, 50.775478>,  <43.923878, 26.087864, 51.376102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.195892, 26.295135, 50.775478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.151810, 25.899242, 50.739075>,  <44.125362, 25.661707, 50.717232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.151810, 25.899242, 50.739075>,  <44.195892, 26.295135, 50.775478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.151810, 25.899242, 50.739075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402648, 0.128177, -0.906336,
		0.908697, -0.063234, -0.412639,
		-0.110203, -0.989733, -0.091013,
		44.118748, 25.602322, 50.711769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.580875, 25.902409, 50.160622>,  <44.195892, 26.295135, 50.775478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.580875, 25.902409, 50.160622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.241512, 25.725510, 50.276981>,  <44.037895, 25.619371, 50.346798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.241512, 25.725510, 50.276981>,  <44.580875, 25.902409, 50.160622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.241512, 25.725510, 50.276981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359151, 0.077213, -0.930080,
		0.388863, -0.893564, -0.224341,
		-0.848408, -0.442246, 0.290899,
		43.986988, 25.592836, 50.364250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.490181, 25.360445, 49.701164>,  <44.580875, 25.902409, 50.160622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.490181, 25.360445, 49.701164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.136055, 25.478212, 49.845135>,  <43.923580, 25.548872, 49.931515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.136055, 25.478212, 49.845135>,  <44.490181, 25.360445, 49.701164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.136055, 25.478212, 49.845135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366342, 0.035106, -0.929818,
		-0.286391, -0.955031, 0.076779,
		-0.885310, 0.294419, 0.359922,
		43.870461, 25.566538, 49.953110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.884102, 24.932568, 49.412918>,  <44.490181, 25.360445, 49.701164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.884102, 24.932568, 49.412918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.727612, 25.283201, 49.525021>,  <43.633717, 25.493582, 49.592281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.727612, 25.283201, 49.525021>,  <43.884102, 24.932568, 49.412918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.727612, 25.283201, 49.525021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409822, 0.106725, -0.905901,
		-0.824008, -0.469268, 0.317489,
		-0.391226, 0.876583, 0.280258,
		43.610245, 25.546177, 49.609097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185547, 24.902309, 49.122524>,  <43.884102, 24.932568, 49.412918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.185547, 24.902309, 49.122524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.266968, 25.286716, 49.197369>,  <43.315819, 25.517361, 49.242275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.266968, 25.286716, 49.197369>,  <43.185547, 24.902309, 49.122524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.266968, 25.286716, 49.197369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399691, 0.256022, -0.880170,
		-0.893765, 0.104372, 0.436223,
		0.203548, 0.961020, 0.187107,
		43.328033, 25.575022, 49.253502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.704792, 25.152985, 48.643147>,  <43.185547, 24.902309, 49.122524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.704792, 25.152985, 48.643147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.924744, 25.464439, 48.764046>,  <43.056713, 25.651312, 48.836586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.924744, 25.464439, 48.764046>,  <42.704792, 25.152985, 48.643147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.924744, 25.464439, 48.764046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393217, 0.560588, -0.728780,
		-0.736896, 0.281890, 0.614429,
		0.549877, 0.778639, 0.302251,
		43.089706, 25.698030, 48.854721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.201168, 25.743168, 48.786125>,  <42.704792, 25.152985, 48.643147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.201168, 25.743168, 48.786125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.566803, 25.877914, 48.695816>,  <42.786182, 25.958763, 48.641632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.566803, 25.877914, 48.695816>,  <42.201168, 25.743168, 48.786125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.566803, 25.877914, 48.695816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401351, 0.671803, -0.622574,
		-0.058049, 0.659699, 0.749285,
		0.914083, 0.336866, -0.225773,
		42.841026, 25.978973, 48.628082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.121712, 26.505312, 48.755165>,  <42.201168, 25.743168, 48.786125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.121712, 26.505312, 48.755165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475815, 26.408546, 48.596272>,  <42.688278, 26.350487, 48.500935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475815, 26.408546, 48.596272>,  <42.121712, 26.505312, 48.755165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.475815, 26.408546, 48.596272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156173, 0.649886, -0.743814,
		0.438097, 0.720505, 0.537536,
		0.885258, -0.241913, -0.397236,
		42.741394, 26.335972, 48.477100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.551407, 27.099272, 48.779488>,  <42.121712, 26.505312, 48.755165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.551407, 27.099272, 48.779488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.675369, 26.862492, 48.481884>,  <42.749748, 26.720425, 48.303322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.675369, 26.862492, 48.481884>,  <42.551407, 27.099272, 48.779488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.675369, 26.862492, 48.481884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137193, 0.746508, -0.651080,
		0.940817, 0.303846, 0.150136,
		0.309906, -0.591949, -0.744012,
		42.768341, 26.684906, 48.258678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.933960, 27.528833, 48.335400>,  <42.551407, 27.099272, 48.779488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.933960, 27.528833, 48.335400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.858383, 27.230042, 48.080425>,  <42.813038, 27.050766, 47.927441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.858383, 27.230042, 48.080425>,  <42.933960, 27.528833, 48.335400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.858383, 27.230042, 48.080425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141841, 0.663080, -0.734987,
		0.971690, -0.048455, -0.231236,
		-0.188942, -0.746979, -0.637435,
		42.801701, 27.005947, 47.889194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.321186, 27.704914, 47.705288>,  <42.933960, 27.528833, 48.335400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.321186, 27.704914, 47.705288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.066139, 27.416100, 47.597878>,  <42.913113, 27.242811, 47.533432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.066139, 27.416100, 47.597878>,  <43.321186, 27.704914, 47.705288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.066139, 27.416100, 47.597878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189133, 0.484633, -0.854025,
		0.746775, -0.493754, -0.445572,
		-0.637618, -0.722037, -0.268527,
		42.874855, 27.199488, 47.517319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.323635, 27.711811, 46.946190>,  <43.321186, 27.704914, 47.705288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.323635, 27.711811, 46.946190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.022800, 27.462496, 47.031872>,  <42.842300, 27.312906, 47.083279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.022800, 27.462496, 47.031872>,  <43.323635, 27.711811, 46.946190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.022800, 27.462496, 47.031872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472971, 0.284085, -0.834022,
		0.458985, -0.728566, -0.508453,
		-0.752084, -0.623288, 0.214200,
		42.797176, 27.275509, 47.096130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267853, 27.263472, 46.385715>,  <43.323635, 27.711811, 46.946190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.267853, 27.263472, 46.385715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.905937, 27.303120, 46.551380>,  <42.688789, 27.326908, 46.650780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.905937, 27.303120, 46.551380>,  <43.267853, 27.263472, 46.385715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.905937, 27.303120, 46.551380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383406, 0.233698, -0.893524,
		-0.185355, -0.967244, -0.173444,
		-0.904789, 0.099120, 0.414164,
		42.634499, 27.332855, 46.675629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.830395, 27.129511, 45.790344>,  <43.267853, 27.263472, 46.385715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.830395, 27.129511, 45.790344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.580128, 27.288124, 46.059063>,  <42.429970, 27.383291, 46.220295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.580128, 27.288124, 46.059063>,  <42.830395, 27.129511, 45.790344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.580128, 27.288124, 46.059063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614446, 0.280076, -0.737572,
		-0.480626, -0.874253, 0.068415,
		-0.625664, 0.396534, 0.671794,
		42.392429, 27.407084, 46.260601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.196465, 26.913811, 45.475384>,  <42.830395, 27.129511, 45.790344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.196465, 26.913811, 45.475384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.129951, 27.214743, 45.730366>,  <42.090046, 27.395302, 45.883354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.129951, 27.214743, 45.730366>,  <42.196465, 26.913811, 45.475384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.129951, 27.214743, 45.730366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653324, 0.400158, -0.642683,
		-0.738593, -0.523332, 0.424976,
		-0.166279, 0.752328, 0.637459,
		42.080067, 27.440441, 45.921604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479332, 27.025290, 45.605122>,  <42.196465, 26.913811, 45.475384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479332, 27.025290, 45.605122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.628422, 27.389294, 45.677738>,  <41.717876, 27.607697, 45.721310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.628422, 27.389294, 45.677738>,  <41.479332, 27.025290, 45.605122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.628422, 27.389294, 45.677738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731002, 0.408460, -0.546622,
		-0.571584, 0.071033, 0.817463,
		0.372729, 0.910008, 0.181544,
		41.740242, 27.662296, 45.732201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.896179, 27.498405, 45.765209>,  <41.479332, 27.025290, 45.605122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.896179, 27.498405, 45.765209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186275, 27.762487, 45.687084>,  <41.360332, 27.920937, 45.640209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186275, 27.762487, 45.687084>,  <40.896179, 27.498405, 45.765209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186275, 27.762487, 45.687084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663759, 0.595119, -0.453054,
		-0.182876, 0.458214, 0.869825,
		0.725245, 0.660207, -0.195310,
		41.403851, 27.960550, 45.628490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680557, 28.137602, 45.935787>,  <40.896179, 27.498405, 45.765209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680557, 28.137602, 45.935787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.960014, 28.235136, 45.666733>,  <41.127689, 28.293657, 45.505299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.960014, 28.235136, 45.666733>,  <40.680557, 28.137602, 45.935787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.960014, 28.235136, 45.666733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593603, 0.722378, -0.354690,
		0.399411, 0.647081, 0.649428,
		0.698646, 0.243835, -0.672635,
		41.169609, 28.308287, 45.464943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675602, 28.905098, 45.867889>,  <40.680557, 28.137602, 45.935787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675602, 28.905098, 45.867889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836472, 28.751547, 45.535408>,  <40.932995, 28.659416, 45.335918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836472, 28.751547, 45.535408>,  <40.675602, 28.905098, 45.867889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836472, 28.751547, 45.535408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575374, 0.600215, -0.555596,
		0.712178, 0.701699, 0.020519,
		0.402177, -0.383877, -0.831199,
		40.957123, 28.636383, 45.286049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.730961, 29.396717, 45.361774>,  <40.675602, 28.905098, 45.867889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.730961, 29.396717, 45.361774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772652, 29.077261, 45.124691>,  <40.797665, 28.885588, 44.982441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772652, 29.077261, 45.124691>,  <40.730961, 29.396717, 45.361774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.772652, 29.077261, 45.124691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531380, 0.459046, -0.711978,
		0.840698, 0.389162, -0.376538,
		0.104226, -0.798643, -0.592712,
		40.803921, 28.837667, 44.946877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732529, 29.814642, 44.682674>,  <40.730961, 29.396717, 45.361774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732529, 29.814642, 44.682674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694889, 29.425280, 44.599125>,  <40.672306, 29.191662, 44.548996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694889, 29.425280, 44.599125>,  <40.732529, 29.814642, 44.682674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694889, 29.425280, 44.599125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605507, 0.222496, -0.764105,
		0.790257, 0.054571, -0.610340,
		-0.094100, -0.973405, -0.208872,
		40.666660, 29.133259, 44.536465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.921192, 29.693621, 43.977497>,  <40.732529, 29.814642, 44.682674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.921192, 29.693621, 43.977497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657372, 29.418522, 44.098820>,  <40.499081, 29.253462, 44.171616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657372, 29.418522, 44.098820>,  <40.921192, 29.693621, 43.977497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657372, 29.418522, 44.098820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564216, 0.186360, -0.804320,
		0.496646, -0.701620, -0.510953,
		-0.659548, -0.687750, 0.303310,
		40.459507, 29.212196, 44.189812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765305, 29.312386, 43.367882>,  <40.921192, 29.693621, 43.977497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.765305, 29.312386, 43.367882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.465363, 29.237198, 43.621620>,  <40.285397, 29.192085, 43.773861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.465363, 29.237198, 43.621620>,  <40.765305, 29.312386, 43.367882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465363, 29.237198, 43.621620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637585, -0.050707, -0.768709,
		0.176659, -0.980865, -0.081823,
		-0.749851, -0.187969, 0.634343,
		40.240406, 29.180807, 43.811924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416531, 28.675030, 43.116299>,  <40.765305, 29.312386, 43.367882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416531, 28.675030, 43.116299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.158615, 28.871033, 43.350952>,  <40.003864, 28.988634, 43.491745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.158615, 28.871033, 43.350952>,  <40.416531, 28.675030, 43.116299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158615, 28.871033, 43.350952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707420, -0.091894, -0.700794,
		-0.289489, -0.866859, 0.405896,
		-0.644789, 0.490011, 0.586631,
		39.965179, 29.018036, 43.526943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711807, 28.423094, 42.909176>,  <40.416531, 28.675030, 43.116299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711807, 28.423094, 42.909176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631008, 28.759909, 43.109245>,  <39.582527, 28.961998, 43.229286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631008, 28.759909, 43.109245>,  <39.711807, 28.423094, 42.909176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631008, 28.759909, 43.109245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814537, 0.139131, -0.563181,
		-0.543807, -0.521171, 0.657764,
		-0.201998, 0.842035, 0.500174,
		39.570408, 29.012520, 43.259296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010643, 28.447325, 42.956661>,  <39.711807, 28.423094, 42.909176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010643, 28.447325, 42.956661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118679, 28.824028, 43.036804>,  <39.183502, 29.050049, 43.084892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118679, 28.824028, 43.036804>,  <39.010643, 28.447325, 42.956661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118679, 28.824028, 43.036804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713233, 0.335484, -0.615426,
		-0.646799, 0.023317, 0.762304,
		0.270091, 0.941757, 0.200360,
		39.199707, 29.106556, 43.096912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409401, 28.782846, 43.124760>,  <39.010643, 28.447325, 42.956661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409401, 28.782846, 43.124760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667835, 29.063848, 43.005390>,  <38.822895, 29.232450, 42.933769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667835, 29.063848, 43.005390>,  <38.409401, 28.782846, 43.124760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667835, 29.063848, 43.005390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587305, 0.207849, -0.782223,
		-0.487487, 0.680651, 0.546873,
		0.646088, 0.702505, -0.298426,
		38.861660, 29.274599, 42.915863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966400, 29.450443, 42.966900>,  <38.409401, 28.782846, 43.124760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966400, 29.450443, 42.966900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.315292, 29.477623, 42.773159>,  <38.524628, 29.493931, 42.656914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.315292, 29.477623, 42.773159>,  <37.966400, 29.450443, 42.966900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315292, 29.477623, 42.773159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483458, 0.269647, -0.832802,
		0.074016, 0.960559, 0.268045,
		0.872233, 0.067948, -0.484348,
		38.576962, 29.498007, 42.627853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158279, 30.130629, 42.873653>,  <37.966400, 29.450443, 42.966900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158279, 30.130629, 42.873653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.348351, 29.941441, 42.576870>,  <38.462395, 29.827927, 42.398800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.348351, 29.941441, 42.576870>,  <38.158279, 30.130629, 42.873653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348351, 29.941441, 42.576870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515008, 0.534203, -0.670368,
		0.713421, 0.700660, 0.010260,
		0.475181, -0.472971, -0.741958,
		38.490906, 29.799549, 42.354282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193245, 30.615206, 42.390743>,  <38.158279, 30.130629, 42.873653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193245, 30.615206, 42.390743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278740, 30.275568, 42.197517>,  <38.330036, 30.071785, 42.081581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278740, 30.275568, 42.197517>,  <38.193245, 30.615206, 42.390743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278740, 30.275568, 42.197517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396149, 0.376676, -0.837366,
		0.892963, 0.370343, -0.255858,
		0.213736, -0.849094, -0.483069,
		38.342861, 30.020840, 42.052597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331257, 30.919228, 41.726353>,  <38.193245, 30.615206, 42.390743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331257, 30.919228, 41.726353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.305489, 30.530897, 41.633968>,  <38.290028, 30.297899, 41.578537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.305489, 30.530897, 41.633968>,  <38.331257, 30.919228, 41.726353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305489, 30.530897, 41.633968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333881, 0.239077, -0.911792,
		0.940411, 0.018373, -0.339543,
		-0.064425, -0.970827, -0.230965,
		38.286160, 30.239649, 41.564678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663345, 30.836433, 41.048939>,  <38.331257, 30.919228, 41.726353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663345, 30.836433, 41.048939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381516, 30.556154, 41.093838>,  <38.212418, 30.387987, 41.120777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381516, 30.556154, 41.093838>,  <38.663345, 30.836433, 41.048939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381516, 30.556154, 41.093838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441902, 0.309467, -0.841993,
		0.555248, -0.642846, -0.527682,
		-0.704572, -0.700699, 0.112244,
		38.170143, 30.345945, 41.127510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708191, 30.528748, 40.403404>,  <38.663345, 30.836433, 41.048939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708191, 30.528748, 40.403404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363705, 30.395010, 40.556522>,  <38.157013, 30.314768, 40.648392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363705, 30.395010, 40.556522>,  <38.708191, 30.528748, 40.403404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363705, 30.395010, 40.556522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457744, 0.182938, -0.870060,
		0.220872, -0.924526, -0.310593,
		-0.861212, -0.334344, 0.382791,
		38.105343, 30.294706, 40.671360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468483, 30.030369, 39.975201>,  <38.708191, 30.528748, 40.403404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468483, 30.030369, 39.975201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141842, 30.141924, 40.177341>,  <37.945858, 30.208857, 40.298626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141842, 30.141924, 40.177341>,  <38.468483, 30.030369, 39.975201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141842, 30.141924, 40.177341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418402, 0.317124, -0.851101,
		-0.397621, -0.906452, -0.142277,
		-0.816601, 0.278886, 0.505356,
		37.896862, 30.225590, 40.328949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891750, 29.797375, 39.587925>,  <38.468483, 30.030369, 39.975201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891750, 29.797375, 39.587925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758507, 30.091854, 39.823570>,  <37.678562, 30.268541, 39.964958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758507, 30.091854, 39.823570>,  <37.891750, 29.797375, 39.587925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758507, 30.091854, 39.823570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518810, 0.378599, -0.766485,
		-0.787322, -0.560957, 0.255834,
		-0.333107, 0.736199, 0.589109,
		37.658573, 30.312714, 40.000301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303635, 29.988068, 39.264328>,  <37.891750, 29.797375, 39.587925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303635, 29.988068, 39.264328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334038, 30.313332, 39.495152>,  <37.352280, 30.508490, 39.633644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334038, 30.313332, 39.495152>,  <37.303635, 29.988068, 39.264328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334038, 30.313332, 39.495152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491552, 0.534078, -0.687850,
		-0.867525, -0.231375, 0.440302,
		0.076004, 0.813158, 0.577059,
		37.356838, 30.557280, 39.668270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656864, 30.362164, 39.128361>,  <37.303635, 29.988068, 39.264328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656864, 30.362164, 39.128361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922283, 30.611944, 39.293171>,  <37.081535, 30.761812, 39.392056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922283, 30.611944, 39.293171>,  <36.656864, 30.362164, 39.128361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922283, 30.611944, 39.293171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464489, 0.775597, -0.427434,
		-0.586478, 0.092241, 0.804696,
		0.663546, 0.624453, 0.412026,
		37.121346, 30.799280, 39.416779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218521, 30.819609, 39.396332>,  <36.656864, 30.362164, 39.128361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218521, 30.819609, 39.396332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575397, 30.992825, 39.344994>,  <36.789524, 31.096754, 39.314190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575397, 30.992825, 39.344994>,  <36.218521, 30.819609, 39.396332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575397, 30.992825, 39.344994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449113, 0.820458, -0.353759,
		-0.047893, 0.373261, 0.926489,
		0.892190, 0.433041, -0.128343,
		36.843056, 31.122736, 39.306492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072277, 31.479523, 39.416496>,  <36.218521, 30.819609, 39.396332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072277, 31.479523, 39.416496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450321, 31.507231, 39.288769>,  <36.677147, 31.523855, 39.212132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450321, 31.507231, 39.288769>,  <36.072277, 31.479523, 39.416496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450321, 31.507231, 39.288769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185075, 0.918878, -0.348441,
		0.269282, 0.388414, 0.881261,
		0.945111, 0.069270, -0.319323,
		36.733856, 31.528011, 39.192970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493896, 32.157192, 39.661377>,  <36.072277, 31.479523, 39.416496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493896, 32.157192, 39.661377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.635395, 32.035290, 39.307655>,  <36.720295, 31.962149, 39.095425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.635395, 32.035290, 39.307655>,  <36.493896, 32.157192, 39.661377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635395, 32.035290, 39.307655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125044, 0.921536, -0.367608,
		0.926945, 0.240617, 0.287883,
		0.353747, -0.304755, -0.884301,
		36.741520, 31.943863, 39.042366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045044, 32.739761, 39.457142>,  <36.493896, 32.157192, 39.661377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045044, 32.739761, 39.457142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904663, 32.542583, 39.138687>,  <36.820435, 32.424274, 38.947613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904663, 32.542583, 39.138687>,  <37.045044, 32.739761, 39.457142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904663, 32.542583, 39.138687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045219, 0.858146, -0.511410,
		0.935300, -0.143481, -0.323461,
		-0.350954, -0.492948, -0.796136,
		36.799377, 32.394699, 38.899845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518944, 32.649315, 38.906620>,  <37.045044, 32.739761, 39.457142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518944, 32.649315, 38.906620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127892, 32.684540, 38.830215>,  <36.893261, 32.705673, 38.784374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127892, 32.684540, 38.830215>,  <37.518944, 32.649315, 38.906620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127892, 32.684540, 38.830215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129753, 0.967249, -0.218161,
		0.165541, -0.238065, -0.957038,
		-0.977630, 0.088064, -0.191009,
		36.834602, 32.710960, 38.772911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850922, 33.347893, 38.714928>,  <37.518944, 32.649315, 38.906620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850922, 33.347893, 38.714928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132881, 33.426979, 38.442451>,  <38.302055, 33.474430, 38.278965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132881, 33.426979, 38.442451>,  <37.850922, 33.347893, 38.714928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132881, 33.426979, 38.442451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367866, -0.923017, 0.112759,
		-0.606458, -0.330072, -0.723368,
		0.704899, 0.197719, -0.681193,
		38.344353, 33.486294, 38.238094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920815, 32.753567, 38.219765>,  <37.850922, 33.347893, 38.714928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920815, 32.753567, 38.219765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.265308, 32.944405, 38.289806>,  <38.472004, 33.058907, 38.331833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.265308, 32.944405, 38.289806>,  <37.920815, 32.753567, 38.219765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265308, 32.944405, 38.289806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412034, -0.857190, 0.308954,
		0.297497, -0.193933, -0.934819,
		0.861234, 0.477090, 0.175104,
		38.523678, 33.087532, 38.342339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426189, 32.311962, 37.963551>,  <37.920815, 32.753567, 38.219765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426189, 32.311962, 37.963551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579788, 32.554375, 38.242199>,  <38.671947, 32.699821, 38.409386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579788, 32.554375, 38.242199>,  <38.426189, 32.311962, 37.963551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579788, 32.554375, 38.242199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548942, -0.756485, 0.355519,
		0.742436, 0.245885, -0.623161,
		0.383995, 0.606029, 0.696618,
		38.694988, 32.736183, 38.451183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207401, 32.122952, 37.989052>,  <38.426189, 32.311962, 37.963551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207401, 32.122952, 37.989052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.162708, 32.332321, 38.326935>,  <39.135891, 32.457943, 38.529667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.162708, 32.332321, 38.326935>,  <39.207401, 32.122952, 37.989052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162708, 32.332321, 38.326935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651797, -0.603041, 0.459893,
		0.750117, 0.601967, -0.273788,
		-0.111735, 0.523428, 0.844712,
		39.129189, 32.489349, 38.580349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833443, 32.424698, 38.225700>,  <39.207401, 32.122952, 37.989052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833443, 32.424698, 38.225700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.611645, 32.404999, 38.557991>,  <39.478565, 32.393177, 38.757366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.611645, 32.404999, 38.557991>,  <39.833443, 32.424698, 38.225700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611645, 32.404999, 38.557991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744229, -0.476017, 0.468541,
		0.372364, 0.878056, 0.300604,
		-0.554498, -0.049250, 0.830726,
		39.445293, 32.390224, 38.807209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442062, 32.429310, 38.653160>,  <39.833443, 32.424698, 38.225700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442062, 32.429310, 38.653160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.135765, 32.318863, 38.885502>,  <39.951984, 32.252594, 39.024906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.135765, 32.318863, 38.885502>,  <40.442062, 32.429310, 38.653160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135765, 32.318863, 38.885502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643080, -0.341192, 0.685591,
		0.008876, 0.898524, 0.438835,
		-0.765747, -0.276121, 0.580851,
		39.906040, 32.236027, 39.059757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624493, 32.527870, 39.416340>,  <40.442062, 32.429310, 38.653160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624493, 32.527870, 39.416340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325417, 32.262314, 39.410603>,  <40.145969, 32.102978, 39.407162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325417, 32.262314, 39.410603>,  <40.624493, 32.527870, 39.416340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325417, 32.262314, 39.410603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374243, -0.439126, 0.816768,
		-0.548545, 0.605322, 0.576788,
		-0.747690, -0.663893, -0.014343,
		40.101109, 32.063145, 39.406300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.241215, 32.518253, 40.151524>,  <40.624493, 32.527870, 39.416340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.241215, 32.518253, 40.151524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207001, 32.167168, 39.962929>,  <40.186474, 31.956516, 39.849770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207001, 32.167168, 39.962929>,  <40.241215, 32.518253, 40.151524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207001, 32.167168, 39.962929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409881, -0.462324, 0.786291,
		-0.908120, -0.125999, 0.399303,
		-0.085535, -0.877713, -0.471491,
		40.181339, 31.903854, 39.821480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174107, 32.009987, 40.682125>,  <40.241215, 32.518253, 40.151524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174107, 32.009987, 40.682125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.263340, 31.800928, 40.352989>,  <40.316879, 31.675493, 40.155506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.263340, 31.800928, 40.352989>,  <40.174107, 32.009987, 40.682125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263340, 31.800928, 40.352989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602895, -0.589329, 0.537781,
		-0.765995, -0.616061, 0.183629,
		0.223088, -0.522647, -0.822844,
		40.330265, 31.644135, 40.106136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106895, 31.324583, 40.839558>,  <40.174107, 32.009987, 40.682125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106895, 31.324583, 40.839558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.362698, 31.272688, 40.536453>,  <40.516178, 31.241550, 40.354591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.362698, 31.272688, 40.536453>,  <40.106895, 31.324583, 40.839558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.362698, 31.272688, 40.536453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494407, -0.685389, 0.534606,
		-0.588718, -0.716526, -0.374168,
		0.639509, -0.129741, -0.757757,
		40.554550, 31.233767, 40.309128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267365, 30.608881, 40.869385>,  <40.106895, 31.324583, 40.839558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267365, 30.608881, 40.869385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.552742, 30.759665, 40.633114>,  <40.723969, 30.850136, 40.491352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.552742, 30.759665, 40.633114>,  <40.267365, 30.608881, 40.869385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.552742, 30.759665, 40.633114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666686, -0.624656, 0.406613,
		-0.215690, -0.683890, -0.696974,
		0.713447, 0.376960, -0.590672,
		40.766777, 30.872753, 40.455914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675304, 30.024460, 40.497040>,  <40.267365, 30.608881, 40.869385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675304, 30.024460, 40.497040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.909073, 30.348896, 40.506737>,  <41.049332, 30.543558, 40.512554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.909073, 30.348896, 40.506737>,  <40.675304, 30.024460, 40.497040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909073, 30.348896, 40.506737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764716, -0.560504, 0.317876,
		0.271413, -0.167234, -0.947823,
		0.584418, 0.811091, 0.024242,
		41.084400, 30.592224, 40.514008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.357544, 29.814722, 40.188820>,  <40.675304, 30.024460, 40.497040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.357544, 29.814722, 40.188820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.443752, 30.148634, 40.391479>,  <41.495480, 30.348982, 40.513073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.443752, 30.148634, 40.391479>,  <41.357544, 29.814722, 40.188820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.443752, 30.148634, 40.391479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821555, -0.435456, 0.368002,
		0.527823, 0.336923, -0.779670,
		0.215524, 0.834782, 0.506645,
		41.508408, 30.399069, 40.543472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094807, 29.877728, 40.216339>,  <41.357544, 29.814722, 40.188820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.094807, 29.877728, 40.216339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.982178, 30.111374, 40.520844>,  <41.914600, 30.251562, 40.703548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.982178, 30.111374, 40.520844>,  <42.094807, 29.877728, 40.216339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.982178, 30.111374, 40.520844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847225, -0.221117, 0.483029,
		0.450474, 0.780971, -0.432617,
		-0.281573, 0.584116, 0.761266,
		41.897705, 30.286608, 40.749222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.706264, 30.322451, 40.421818>,  <42.094807, 29.877728, 40.216339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.706264, 30.322451, 40.421818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.480175, 30.311691, 40.751617>,  <42.344521, 30.305235, 40.949497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.480175, 30.311691, 40.751617>,  <42.706264, 30.322451, 40.421818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.480175, 30.311691, 40.751617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815170, -0.171581, 0.553224,
		0.126588, 0.984803, 0.118909,
		-0.565219, -0.026899, 0.824502,
		42.310608, 30.303621, 40.998966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.141331, 30.400597, 41.068653>,  <42.706264, 30.322451, 40.421818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.141331, 30.400597, 41.068653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.812973, 30.278824, 41.261921>,  <42.615959, 30.205761, 41.377884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.812973, 30.278824, 41.261921>,  <43.141331, 30.400597, 41.068653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.812973, 30.278824, 41.261921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566423, -0.326166, 0.756823,
		-0.072805, 0.894951, 0.440184,
		-0.820892, -0.304431, 0.483174,
		42.566704, 30.187494, 41.406872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.182945, 30.590994, 41.770126>,  <43.141331, 30.400597, 41.068653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.182945, 30.590994, 41.770126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.880241, 30.335396, 41.825253>,  <42.698620, 30.182037, 41.858330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.880241, 30.335396, 41.825253>,  <43.182945, 30.590994, 41.770126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.880241, 30.335396, 41.825253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441622, -0.344323, 0.828499,
		-0.481952, 0.687843, 0.542765,
		-0.756764, -0.638994, 0.137820,
		42.653214, 30.143698, 41.866600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.929459, 30.687080, 42.442078>,  <43.182945, 30.590994, 41.770126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.929459, 30.687080, 42.442078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.858799, 30.310328, 42.327778>,  <42.816402, 30.084276, 42.259197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.858799, 30.310328, 42.327778>,  <42.929459, 30.687080, 42.442078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.858799, 30.310328, 42.327778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517638, -0.335821, 0.786940,
		-0.837166, -0.008900, 0.546877,
		-0.176649, -0.941884, -0.285745,
		42.805805, 30.027763, 42.242054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.516666, 30.457178, 42.970989>,  <42.929459, 30.687080, 42.442078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.516666, 30.457178, 42.970989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.655380, 30.112513, 42.822784>,  <42.738609, 29.905714, 42.733860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.655380, 30.112513, 42.822784>,  <42.516666, 30.457178, 42.970989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.655380, 30.112513, 42.822784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239445, -0.300610, 0.923201,
		-0.906868, -0.408867, 0.102075,
		0.346781, -0.861662, -0.370515,
		42.759415, 29.854013, 42.711632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.095085, 29.968540, 43.311863>,  <42.516666, 30.457178, 42.970989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.095085, 29.968540, 43.311863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.420021, 29.780392, 43.173965>,  <42.614983, 29.667503, 43.091225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.420021, 29.780392, 43.173965>,  <42.095085, 29.968540, 43.311863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.420021, 29.780392, 43.173965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193702, -0.339964, 0.920274,
		-0.550072, -0.814356, -0.185056,
		0.812343, -0.470371, -0.344747,
		42.663723, 29.639280, 43.070541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.176968, 29.338430, 43.612144>,  <42.095085, 29.968540, 43.311863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.176968, 29.338430, 43.612144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.555359, 29.382753, 43.490265>,  <42.782394, 29.409348, 43.417137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.555359, 29.382753, 43.490265>,  <42.176968, 29.338430, 43.612144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.555359, 29.382753, 43.490265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322182, -0.426589, 0.845116,
		-0.036338, -0.897632, -0.439245,
		0.945980, 0.110807, -0.304703,
		42.839153, 29.415995, 43.398853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.522758, 28.752735, 43.799839>,  <42.176968, 29.338430, 43.612144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.522758, 28.752735, 43.799839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.817898, 29.021013, 43.769505>,  <42.994980, 29.181980, 43.751305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.817898, 29.021013, 43.769505>,  <42.522758, 28.752735, 43.799839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.817898, 29.021013, 43.769505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443733, -0.397337, 0.803258,
		0.508607, -0.626333, -0.590784,
		0.737848, 0.670694, -0.075836,
		43.039253, 29.222221, 43.746754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.141674, 28.416672, 43.781353>,  <42.522758, 28.752735, 43.799839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.141674, 28.416672, 43.781353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.228264, 28.783123, 43.916317>,  <43.280216, 29.002995, 43.997295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.228264, 28.783123, 43.916317>,  <43.141674, 28.416672, 43.781353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.228264, 28.783123, 43.916317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412866, -0.399083, 0.818703,
		0.884692, -0.037924, -0.464630,
		0.216474, 0.916130, 0.337408,
		43.293205, 29.057962, 44.017540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.580116, 28.209187, 44.284737>,  <43.141674, 28.416672, 43.781353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.580116, 28.209187, 44.284737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.557312, 28.601339, 44.360207>,  <43.543629, 28.836632, 44.405491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.557312, 28.601339, 44.360207>,  <43.580116, 28.209187, 44.284737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.557312, 28.601339, 44.360207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298623, -0.163586, 0.940247,
		0.952667, 0.109950, -0.283438,
		-0.057014, 0.980383, 0.188677,
		43.540207, 28.895454, 44.416809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.275780, 28.570841, 44.463539>,  <43.580116, 28.209187, 44.284737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.275780, 28.570841, 44.463539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.000275, 28.812883, 44.623264>,  <43.834972, 28.958109, 44.719101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.000275, 28.812883, 44.623264>,  <44.275780, 28.570841, 44.463539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.000275, 28.812883, 44.623264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521371, 0.030694, 0.852778,
		0.503766, 0.795551, -0.336627,
		-0.688761, 0.605108, 0.399315,
		43.793648, 28.994415, 44.743057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.733612, 28.847143, 45.043972>,  <44.275780, 28.570841, 44.463539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.733612, 28.847143, 45.043972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.364956, 28.992455, 45.098549>,  <44.143764, 29.079641, 45.131294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.364956, 28.992455, 45.098549>,  <44.733612, 28.847143, 45.043972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.364956, 28.992455, 45.098549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206236, 0.160711, 0.965214,
		0.328715, 0.917715, -0.223038,
		-0.921636, 0.363279, 0.136438,
		44.088467, 29.101439, 45.139481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.743046, 29.537409, 45.352802>,  <44.733612, 28.847143, 45.043972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.743046, 29.537409, 45.352802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.391109, 29.373312, 45.448788>,  <44.179947, 29.274855, 45.506378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.391109, 29.373312, 45.448788>,  <44.743046, 29.537409, 45.352802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.391109, 29.373312, 45.448788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303545, -0.096534, 0.947914,
		-0.365710, 0.906853, 0.209462,
		-0.879839, -0.410242, 0.239968,
		44.127159, 29.250238, 45.520779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.467613, 29.946657, 45.959457>,  <44.743046, 29.537409, 45.352802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.467613, 29.946657, 45.959457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.308144, 29.579872, 45.953281>,  <44.212460, 29.359802, 45.949577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.308144, 29.579872, 45.953281>,  <44.467613, 29.946657, 45.959457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.308144, 29.579872, 45.953281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281263, -0.138277, 0.949616,
		-0.872896, 0.374248, 0.313035,
		-0.398678, -0.916961, -0.015439,
		44.188541, 29.304783, 45.948650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.128975, 29.899956, 46.586052>,  <44.467613, 29.946657, 45.959457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.128975, 29.899956, 46.586052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.219780, 29.534149, 46.452114>,  <44.274261, 29.314665, 46.371750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.219780, 29.534149, 46.452114>,  <44.128975, 29.899956, 46.586052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.219780, 29.534149, 46.452114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380608, -0.233173, 0.894857,
		-0.896440, -0.330586, 0.295140,
		0.227009, -0.914518, -0.334849,
		44.287884, 29.259794, 46.351658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.892223, 29.499651, 47.104847>,  <44.128975, 29.899956, 46.586052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.892223, 29.499651, 47.104847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.125797, 29.242950, 46.905979>,  <44.265942, 29.088930, 46.786659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.125797, 29.242950, 46.905979>,  <43.892223, 29.499651, 47.104847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.125797, 29.242950, 46.905979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344577, -0.358582, 0.867574,
		-0.735043, -0.677919, 0.011745,
		0.583934, -0.641751, -0.497169,
		44.300976, 29.050425, 46.756828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.835350, 28.914936, 47.522221>,  <43.892223, 29.499651, 47.104847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.835350, 28.914936, 47.522221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.154579, 28.854053, 47.289017>,  <44.346119, 28.817524, 47.149094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.154579, 28.854053, 47.289017>,  <43.835350, 28.914936, 47.522221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.154579, 28.854053, 47.289017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457213, -0.477240, 0.750465,
		-0.392463, -0.865492, -0.311284,
		0.798078, -0.152207, -0.583013,
		44.394001, 28.808392, 47.114113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.074623, 28.288815, 47.698002>,  <43.835350, 28.914936, 47.522221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.074623, 28.288815, 47.698002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.399956, 28.462969, 47.543636>,  <44.595154, 28.567461, 47.451015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.399956, 28.462969, 47.543636>,  <44.074623, 28.288815, 47.698002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.399956, 28.462969, 47.543636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508945, -0.211033, 0.834530,
		0.281900, -0.875160, -0.393226,
		0.813331, 0.435384, -0.385918,
		44.643955, 28.593584, 47.427860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.703136, 27.693796, 47.699436>,  <44.074623, 28.288815, 47.698002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.703136, 27.693796, 47.699436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.796947, 28.082632, 47.696903>,  <44.853233, 28.315933, 47.695385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.796947, 28.082632, 47.696903>,  <44.703136, 27.693796, 47.699436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.796947, 28.082632, 47.696903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524212, -0.120981, 0.842951,
		0.818656, -0.201018, -0.537954,
		0.234531, 0.972088, -0.006334,
		44.867306, 28.374258, 47.695004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.411293, 27.684185, 47.665951>,  <44.703136, 27.693796, 47.699436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.411293, 27.684185, 47.665951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.319538, 28.039249, 47.825672>,  <45.264484, 28.252287, 47.921505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.319538, 28.039249, 47.825672>,  <45.411293, 27.684185, 47.665951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.319538, 28.039249, 47.825672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562592, -0.213854, 0.798597,
		0.794274, 0.407833, -0.450334,
		-0.229388, 0.887659, 0.399303,
		45.250721, 28.305548, 47.945461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.037727, 27.849752, 47.985065>,  <45.411293, 27.684185, 47.665951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.037727, 27.849752, 47.985065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.794624, 28.121948, 48.148804>,  <45.648762, 28.285267, 48.247047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.794624, 28.121948, 48.148804>,  <46.037727, 27.849752, 47.985065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.794624, 28.121948, 48.148804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356966, -0.226350, 0.906278,
		0.709369, 0.696920, -0.105346,
		-0.607759, 0.680490, 0.409343,
		45.612297, 28.326096, 48.271606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.469620, 28.233250, 48.479828>,  <46.037727, 27.849752, 47.985065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.469620, 28.233250, 48.479828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.096851, 28.328217, 48.589493>,  <45.873192, 28.385197, 48.655293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.096851, 28.328217, 48.589493>,  <46.469620, 28.233250, 48.479828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.096851, 28.328217, 48.589493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331784, 0.252812, 0.908848,
		0.146464, 0.937934, -0.314370,
		-0.931916, 0.237416, 0.274163,
		45.817276, 28.399441, 48.671741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.452789, 28.917791, 48.805340>,  <46.469620, 28.233250, 48.479828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.452789, 28.917791, 48.805340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.142727, 28.704540, 48.940933>,  <45.956688, 28.576590, 49.022289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.142727, 28.704540, 48.940933>,  <46.452789, 28.917791, 48.805340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.142727, 28.704540, 48.940933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187156, 0.318695, 0.929196,
		-0.603413, 0.783714, -0.147260,
		-0.775155, -0.533128, 0.338982,
		45.910179, 28.544601, 49.042629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.342087, 29.479198, 49.320194>,  <46.452789, 28.917791, 48.805340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.342087, 29.479198, 49.320194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.284115, 29.740927, 49.617073>,  <46.249332, 29.897964, 49.795200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.284115, 29.740927, 49.617073>,  <46.342087, 29.479198, 49.320194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.284115, 29.740927, 49.617073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435676, 0.631283, -0.641614,
		-0.888359, -0.416349, 0.193579,
		-0.144932, 0.654321, 0.742199,
		46.240635, 29.937223, 49.839733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.720951, 29.674028, 49.171982>,  <46.342087, 29.479198, 49.320194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.720951, 29.674028, 49.171982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.903133, 29.979794, 49.354511>,  <46.012444, 30.163254, 49.464027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.903133, 29.979794, 49.354511>,  <45.720951, 29.674028, 49.171982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.903133, 29.979794, 49.354511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480877, 0.642604, -0.596504,
		-0.749212, 0.052246, 0.660267,
		0.455455, 0.764415, 0.456322,
		46.039768, 30.209118, 49.491409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.231503, 30.126629, 49.250973>,  <45.720951, 29.674028, 49.171982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.231503, 30.126629, 49.250973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.562672, 30.350405, 49.266861>,  <45.761372, 30.484671, 49.276394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.562672, 30.350405, 49.266861>,  <45.231503, 30.126629, 49.250973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.562672, 30.350405, 49.266861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421885, 0.667881, -0.613146,
		-0.369545, 0.490879, 0.788970,
		0.827919, 0.559440, 0.039717,
		45.811047, 30.518236, 49.278778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.937012, 30.860371, 49.190372>,  <45.231503, 30.126629, 49.250973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.937012, 30.860371, 49.190372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.328991, 30.893648, 49.117947>,  <45.564178, 30.913614, 49.074490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.328991, 30.893648, 49.117947>,  <44.937012, 30.860371, 49.190372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.328991, 30.893648, 49.117947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187936, 0.687882, -0.701069,
		0.066230, 0.721039, 0.689722,
		0.979946, 0.083192, -0.181068,
		45.622974, 30.918606, 49.063625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.968525, 31.592102, 49.103844>,  <44.937012, 30.860371, 49.190372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.968525, 31.592102, 49.103844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.306293, 31.461657, 48.933853>,  <45.508953, 31.383389, 48.831860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.306293, 31.461657, 48.933853>,  <44.968525, 31.592102, 49.103844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.306293, 31.461657, 48.933853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180337, 0.573973, -0.798770,
		0.504418, 0.751135, 0.425862,
		0.844418, -0.326115, -0.424980,
		45.559620, 31.363823, 48.806358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.488289, 32.176342, 48.943184>,  <44.968525, 31.592102, 49.103844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.488289, 32.176342, 48.943184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.516830, 31.866760, 48.691498>,  <45.533955, 31.681011, 48.540485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.516830, 31.866760, 48.691498>,  <45.488289, 32.176342, 48.943184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.516830, 31.866760, 48.691498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197010, 0.607457, -0.769535,
		0.977802, 0.178867, -0.109135,
		0.071350, -0.773953, -0.629211,
		45.538235, 31.634575, 48.502735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.550068, 32.553776, 48.400982>,  <45.488289, 32.176342, 48.943184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.550068, 32.553776, 48.400982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.506950, 32.190868, 48.238380>,  <45.481079, 31.973124, 48.140820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.506950, 32.190868, 48.238380>,  <45.550068, 32.553776, 48.400982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.506950, 32.190868, 48.238380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302557, 0.419433, -0.855883,
		0.947016, 0.030731, -0.319713,
		-0.107796, -0.907266, -0.406507,
		45.474613, 31.918688, 48.116428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.896687, 32.547630, 47.746651>,  <45.550068, 32.553776, 48.400982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.896687, 32.547630, 47.746651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.624207, 32.254997, 47.735657>,  <45.460716, 32.079418, 47.729061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.624207, 32.254997, 47.735657>,  <45.896687, 32.547630, 47.746651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.624207, 32.254997, 47.735657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324623, 0.335498, -0.884342,
		0.656189, -0.593492, -0.466029,
		-0.681202, -0.731579, -0.027489,
		45.419846, 32.035522, 47.727409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.828117, 32.384079, 47.026321>,  <45.896687, 32.547630, 47.746651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.828117, 32.384079, 47.026321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.494774, 32.228119, 47.183029>,  <45.294765, 32.134541, 47.277054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.494774, 32.228119, 47.183029>,  <45.828117, 32.384079, 47.026321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.494774, 32.228119, 47.183029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511516, 0.275478, -0.813918,
		0.209424, -0.878686, -0.429014,
		-0.833362, -0.389902, 0.391770,
		45.244766, 32.111149, 47.300560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.503353, 32.033195, 46.474873>,  <45.828117, 32.384079, 47.026321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.503353, 32.033195, 46.474873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.230171, 32.084694, 46.762482>,  <45.066261, 32.115593, 46.935047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.230171, 32.084694, 46.762482>,  <45.503353, 32.033195, 46.474873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.230171, 32.084694, 46.762482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683801, 0.233477, -0.691307,
		-0.256875, -0.963802, -0.071421,
		-0.682958, 0.128742, 0.719023,
		45.025284, 32.123318, 46.978188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.924683, 31.511326, 46.334511>,  <45.503353, 32.033195, 46.474873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.924683, 31.511326, 46.334511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.777916, 31.800030, 46.569267>,  <44.689857, 31.973251, 46.710121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.777916, 31.800030, 46.569267>,  <44.924683, 31.511326, 46.334511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.777916, 31.800030, 46.569267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804079, 0.071187, -0.590246,
		-0.467795, -0.688472, 0.554233,
		-0.366914, 0.721761, 0.586887,
		44.667843, 32.016560, 46.745335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.240200, 31.416143, 46.316654>,  <44.924683, 31.511326, 46.334511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.240200, 31.416143, 46.316654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.264908, 31.790070, 46.456539>,  <44.279732, 32.014427, 46.540470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.264908, 31.790070, 46.456539>,  <44.240200, 31.416143, 46.316654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.264908, 31.790070, 46.456539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893308, 0.208066, -0.398384,
		-0.445180, -0.287793, 0.847933,
		0.061774, 0.934817, 0.349714,
		44.283440, 32.070515, 46.561455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.678413, 31.522774, 46.662594>,  <44.240200, 31.416143, 46.316654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.678413, 31.522774, 46.662594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.784988, 31.901951, 46.592831>,  <43.848934, 32.129456, 46.550972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.784988, 31.901951, 46.592831>,  <43.678413, 31.522774, 46.662594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.784988, 31.901951, 46.592831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815766, 0.125407, -0.564623,
		-0.513358, 0.292714, 0.806711,
		0.266440, 0.947941, -0.174408,
		43.864922, 32.186333, 46.540508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.061638, 31.823359, 46.627495>,  <43.678413, 31.522774, 46.662594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.061638, 31.823359, 46.627495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.307674, 32.072849, 46.434570>,  <43.455296, 32.222546, 46.318813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.307674, 32.072849, 46.434570>,  <43.061638, 31.823359, 46.627495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.307674, 32.072849, 46.434570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712612, 0.177997, -0.678602,
		-0.337412, 0.761106, 0.553960,
		0.615091, 0.623727, -0.482315,
		43.492203, 32.259968, 46.289875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.671429, 32.500259, 46.370514>,  <43.061638, 31.823359, 46.627495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.671429, 32.500259, 46.370514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.003433, 32.473732, 46.148994>,  <43.202637, 32.457817, 46.016083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.003433, 32.473732, 46.148994>,  <42.671429, 32.500259, 46.370514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.003433, 32.473732, 46.148994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542001, 0.138383, -0.828906,
		0.131608, 0.988156, 0.078914,
		0.830008, -0.066319, -0.553794,
		43.252438, 32.453835, 45.982857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.514122, 33.057430, 45.895386>,  <42.671429, 32.500259, 46.370514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.514122, 33.057430, 45.895386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.807301, 32.837967, 45.734505>,  <42.983208, 32.706287, 45.637978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.807301, 32.837967, 45.734505>,  <42.514122, 33.057430, 45.895386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.807301, 32.837967, 45.734505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467005, 0.024103, -0.883926,
		0.494668, 0.835699, -0.238560,
		0.732946, -0.548659, -0.402199,
		43.027184, 32.673370, 45.613846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.932796, 33.453674, 45.250946>,  <42.514122, 33.057430, 45.895386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.932796, 33.453674, 45.250946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.042965, 33.073467, 45.193451>,  <43.109066, 32.845345, 45.158955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.042965, 33.073467, 45.193451>,  <42.932796, 33.453674, 45.250946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.042965, 33.073467, 45.193451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256017, 0.071592, -0.964017,
		0.926607, 0.302305, -0.223632,
		0.275417, -0.950519, -0.143733,
		43.125591, 32.788311, 45.150330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.351391, 33.345871, 44.577881>,  <42.932796, 33.453674, 45.250946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.351391, 33.345871, 44.577881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.202328, 32.984303, 44.661846>,  <43.112892, 32.767361, 44.712227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.202328, 32.984303, 44.661846>,  <43.351391, 33.345871, 44.577881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.202328, 32.984303, 44.661846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164769, -0.158162, -0.973569,
		0.913226, -0.397391, -0.089998,
		-0.372653, -0.903917, 0.209916,
		43.090530, 32.713127, 44.724819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.604374, 32.961323, 44.013477>,  <43.351391, 33.345871, 44.577881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.604374, 32.961323, 44.013477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.288452, 32.772121, 44.169666>,  <43.098900, 32.658600, 44.263378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.288452, 32.772121, 44.169666>,  <43.604374, 32.961323, 44.013477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.288452, 32.772121, 44.169666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324974, -0.217208, -0.920441,
		0.520190, -0.853864, 0.017837,
		-0.789806, -0.473008, 0.390473,
		43.051510, 32.630219, 44.286808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.557102, 32.310894, 43.667980>,  <43.604374, 32.961323, 44.013477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.557102, 32.310894, 43.667980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.192726, 32.370831, 43.821732>,  <42.974102, 32.406792, 43.913982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.192726, 32.370831, 43.821732>,  <43.557102, 32.310894, 43.667980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.192726, 32.370831, 43.821732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404268, -0.138477, -0.904097,
		-0.082233, -0.978966, 0.186715,
		-0.910936, 0.149830, 0.384378,
		42.919445, 32.415783, 43.937046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.182777, 31.666039, 43.414536>,  <43.557102, 32.310894, 43.667980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.182777, 31.666039, 43.414536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.874443, 31.904335, 43.504780>,  <42.689442, 32.047314, 43.558926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.874443, 31.904335, 43.504780>,  <43.182777, 31.666039, 43.414536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.874443, 31.904335, 43.504780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404647, -0.184370, -0.895694,
		-0.492006, -0.781729, 0.383184,
		-0.770838, 0.595741, 0.225613,
		42.643192, 32.083057, 43.572464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.602985, 31.308884, 43.102940>,  <43.182777, 31.666039, 43.414536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.602985, 31.308884, 43.102940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516804, 31.693600, 43.170513>,  <42.465096, 31.924429, 43.211060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516804, 31.693600, 43.170513>,  <42.602985, 31.308884, 43.102940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.516804, 31.693600, 43.170513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394937, 0.072396, -0.915851,
		-0.893087, -0.264044, 0.364248,
		-0.215455, 0.961790, 0.168937,
		42.452168, 31.982136, 43.221195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959320, 31.457558, 42.673973>,  <42.602985, 31.308884, 43.102940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.959320, 31.457558, 42.673973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.135387, 31.804173, 42.768093>,  <42.241028, 32.012142, 42.824566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.135387, 31.804173, 42.768093>,  <41.959320, 31.457558, 42.673973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.135387, 31.804173, 42.768093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286167, 0.383762, -0.877972,
		-0.851095, 0.319120, 0.416894,
		0.440167, 0.866539, 0.235296,
		42.267437, 32.064133, 42.838680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491535, 32.043751, 42.552490>,  <41.959320, 31.457558, 42.673973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491535, 32.043751, 42.552490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.858109, 32.202881, 42.535145>,  <42.078053, 32.298359, 42.524738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.858109, 32.202881, 42.535145>,  <41.491535, 32.043751, 42.552490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.858109, 32.202881, 42.535145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207797, 0.380454, -0.901152,
		-0.342004, 0.834858, 0.431329,
		0.916435, 0.397827, -0.043365,
		42.133038, 32.322227, 42.522137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.444630, 32.675900, 42.270248>,  <41.491535, 32.043751, 42.552490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.444630, 32.675900, 42.270248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.841675, 32.632504, 42.248520>,  <42.079903, 32.606464, 42.235481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.841675, 32.632504, 42.248520>,  <41.444630, 32.675900, 42.270248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.841675, 32.632504, 42.248520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012180, 0.534548, -0.845050,
		0.120717, 0.838145, 0.531920,
		0.992612, -0.108491, -0.054321,
		42.139458, 32.599957, 42.232224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729656, 33.372326, 42.236355>,  <41.444630, 32.675900, 42.270248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.729656, 33.372326, 42.236355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.974644, 33.097015, 42.080837>,  <42.121635, 32.931831, 41.987526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.974644, 33.097015, 42.080837>,  <41.729656, 33.372326, 42.236355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.974644, 33.097015, 42.080837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083792, 0.545593, -0.833851,
		0.786040, 0.478131, 0.391832,
		0.612471, -0.688272, -0.388794,
		42.158386, 32.890533, 41.964199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.274384, 33.795208, 41.863110>,  <41.729656, 33.372326, 42.236355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.274384, 33.795208, 41.863110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.264233, 33.422234, 41.718933>,  <42.258141, 33.198448, 41.632427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.264233, 33.422234, 41.718933>,  <42.274384, 33.795208, 41.863110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.264233, 33.422234, 41.718933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042321, 0.359229, -0.932289,
		0.998782, -0.038912, 0.030345,
		-0.025376, -0.932438, -0.360439,
		42.256618, 33.142502, 41.610802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.766205, 33.700806, 41.484768>,  <42.274384, 33.795208, 41.863110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.766205, 33.700806, 41.484768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.539059, 33.414742, 41.321758>,  <42.402771, 33.243103, 41.223953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.539059, 33.414742, 41.321758>,  <42.766205, 33.700806, 41.484768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.539059, 33.414742, 41.321758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126019, 0.413728, -0.901636,
		0.813420, -0.563362, -0.144817,
		-0.567863, -0.715159, -0.407529,
		42.368698, 33.200195, 41.199501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.114807, 33.331627, 40.845123>,  <42.766205, 33.700806, 41.484768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.114807, 33.331627, 40.845123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.719585, 33.274399, 40.822220>,  <42.482452, 33.240063, 40.808479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.719585, 33.274399, 40.822220>,  <43.114807, 33.331627, 40.845123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.719585, 33.274399, 40.822220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013584, 0.450952, -0.892445,
		0.153505, -0.881007, -0.447508,
		-0.988055, -0.143074, -0.057256,
		42.423168, 33.231476, 40.805042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.065128, 33.118111, 40.264275>,  <43.114807, 33.331627, 40.845123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.065128, 33.118111, 40.264275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.691513, 33.233810, 40.348087>,  <42.467342, 33.303230, 40.398373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.691513, 33.233810, 40.348087>,  <43.065128, 33.118111, 40.264275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.691513, 33.233810, 40.348087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059065, 0.453475, -0.889310,
		-0.352246, -0.843028, -0.406480,
		-0.934042, 0.289248, 0.209528,
		42.411301, 33.320583, 40.410946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.628540, 32.959633, 39.676468>,  <43.065128, 33.118111, 40.264275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.628540, 32.959633, 39.676468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.424294, 33.245354, 39.867905>,  <42.301746, 33.416786, 39.982769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.424294, 33.245354, 39.867905>,  <42.628540, 32.959633, 39.676468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.424294, 33.245354, 39.867905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185784, 0.451820, -0.872550,
		-0.839499, -0.534451, -0.098000,
		-0.510614, 0.714298, 0.478594,
		42.271111, 33.459644, 40.011482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.945553, 32.987194, 39.451405>,  <42.628540, 32.959633, 39.676468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.945553, 32.987194, 39.451405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.043491, 33.347935, 39.593792>,  <42.102253, 33.564381, 39.679226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.043491, 33.347935, 39.593792>,  <41.945553, 32.987194, 39.451405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.043491, 33.347935, 39.593792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287306, 0.418145, -0.861748,
		-0.926016, 0.108723, 0.361488,
		0.244846, 0.901850, 0.355972,
		42.116943, 33.618488, 39.700584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.484596, 33.435574, 39.086807>,  <41.945553, 32.987194, 39.451405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.484596, 33.435574, 39.086807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.726807, 33.704254, 39.257523>,  <41.872135, 33.865463, 39.359951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.726807, 33.704254, 39.257523>,  <41.484596, 33.435574, 39.086807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.726807, 33.704254, 39.257523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019245, 0.523775, -0.851639,
		-0.795590, 0.523906, 0.304235,
		0.605530, 0.671701, 0.426793,
		41.908466, 33.905766, 39.385559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275124, 34.049068, 38.717495>,  <41.484596, 33.435574, 39.086807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.275124, 34.049068, 38.717495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.609283, 34.175816, 38.897141>,  <41.809780, 34.251862, 39.004929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.609283, 34.175816, 38.897141>,  <41.275124, 34.049068, 38.717495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.609283, 34.175816, 38.897141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178914, 0.615833, -0.767293,
		-0.519705, 0.721351, 0.457778,
		0.835402, 0.316863, 0.449111,
		41.859905, 34.270874, 39.031876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183743, 34.756565, 38.905636>,  <41.275124, 34.049068, 38.717495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183743, 34.756565, 38.905636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.576660, 34.683357, 38.889587>,  <41.812408, 34.639435, 38.879959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.576660, 34.683357, 38.889587>,  <41.183743, 34.756565, 38.905636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.576660, 34.683357, 38.889587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106553, 0.721797, -0.683853,
		0.154114, 0.667468, 0.728516,
		0.982291, -0.183017, -0.040118,
		41.871346, 34.628452, 38.877552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.632320, 35.393349, 39.020271>,  <41.183743, 34.756565, 38.905636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.632320, 35.393349, 39.020271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.869991, 35.138023, 38.824512>,  <42.012596, 34.984829, 38.707058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.869991, 35.138023, 38.824512>,  <41.632320, 35.393349, 39.020271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.869991, 35.138023, 38.824512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123230, 0.673507, -0.728837,
		0.794835, 0.372753, 0.478845,
		0.594182, -0.638313, -0.489393,
		42.048244, 34.946529, 38.677696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.265926, 35.801861, 38.756950>,  <41.632320, 35.393349, 39.020271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.265926, 35.801861, 38.756950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.281933, 35.491028, 38.505703>,  <42.291538, 35.304527, 38.354954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.281933, 35.491028, 38.505703>,  <42.265926, 35.801861, 38.756950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.281933, 35.491028, 38.505703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239047, 0.602922, -0.761145,
		0.970183, 0.180612, -0.161631,
		0.040021, -0.777087, -0.628120,
		42.293938, 35.257900, 38.317268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.741486, 35.862770, 38.158768>,  <42.265926, 35.801861, 38.756950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.741486, 35.862770, 38.158768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.481758, 35.587776, 38.028687>,  <42.325920, 35.422779, 37.950638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.481758, 35.587776, 38.028687>,  <42.741486, 35.862770, 38.158768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.481758, 35.587776, 38.028687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081528, 0.488061, -0.868993,
		0.756134, -0.537740, -0.372956,
		-0.649318, -0.687482, -0.325199,
		42.286964, 35.381531, 37.931126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013222, 35.670273, 37.530704>,  <42.741486, 35.862770, 38.158768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013222, 35.670273, 37.530704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.624130, 35.578159, 37.541775>,  <42.390675, 35.522892, 37.548416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.624130, 35.578159, 37.541775>,  <43.013222, 35.670273, 37.530704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.624130, 35.578159, 37.541775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119538, 0.395498, -0.910655,
		0.198762, -0.889130, -0.412241,
		-0.972730, -0.230282, 0.027675,
		42.332310, 35.509075, 37.550076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.952831, 35.235580, 36.975140>,  <43.013222, 35.670273, 37.530704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.952831, 35.235580, 36.975140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.595707, 35.395798, 37.057556>,  <42.381432, 35.491928, 37.107006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.595707, 35.395798, 37.057556>,  <42.952831, 35.235580, 36.975140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.595707, 35.395798, 37.057556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100011, 0.269730, -0.957728,
		-0.439188, -0.875677, -0.200759,
		-0.892811, 0.400545, 0.206040,
		42.327862, 35.515961, 37.119370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.745686, 35.377216, 36.364780>,  <42.952831, 35.235580, 36.975140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.745686, 35.377216, 36.364780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.485821, 35.571018, 36.599113>,  <42.329903, 35.687298, 36.739712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.485821, 35.571018, 36.599113>,  <42.745686, 35.377216, 36.364780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.485821, 35.571018, 36.599113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241720, 0.598961, -0.763425,
		-0.720772, -0.637574, -0.272006,
		-0.649661, 0.484506, 0.585828,
		42.290924, 35.716370, 36.774860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.093494, 35.304070, 36.094299>,  <42.745686, 35.377216, 36.364780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.093494, 35.304070, 36.094299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131042, 35.649132, 36.293098>,  <42.153572, 35.856171, 36.412380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131042, 35.649132, 36.293098>,  <42.093494, 35.304070, 36.094299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.131042, 35.649132, 36.293098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285639, 0.501555, -0.816611,
		-0.953729, -0.065310, 0.293488,
		0.093867, 0.862657, 0.497003,
		42.159203, 35.907928, 36.442200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423481, 35.658432, 36.063072>,  <42.093494, 35.304070, 36.094299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.423481, 35.658432, 36.063072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739582, 35.903389, 36.054367>,  <41.929241, 36.050365, 36.049145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739582, 35.903389, 36.054367>,  <41.423481, 35.658432, 36.063072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.739582, 35.903389, 36.054367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409576, 0.501446, -0.762102,
		-0.455795, 0.611165, 0.647092,
		0.790252, 0.612396, -0.021762,
		41.976658, 36.087109, 36.047840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127491, 36.217316, 35.858459>,  <41.423481, 35.658432, 36.063072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127491, 36.217316, 35.858459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.509834, 36.321880, 35.804794>,  <41.739239, 36.384621, 35.772594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.509834, 36.321880, 35.804794>,  <41.127491, 36.217316, 35.858459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.509834, 36.321880, 35.804794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243293, 0.448095, -0.860244,
		-0.164760, 0.854911, 0.491915,
		0.955857, 0.261414, -0.134166,
		41.796593, 36.400303, 35.764545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.220394, 36.970093, 35.819107>,  <41.127491, 36.217316, 35.858459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.220394, 36.970093, 35.819107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485298, 36.765350, 35.600231>,  <41.644241, 36.642506, 35.468906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485298, 36.765350, 35.600231>,  <41.220394, 36.970093, 35.819107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485298, 36.765350, 35.600231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331437, 0.454844, -0.826599,
		0.671984, 0.728783, 0.131579,
		0.662260, -0.511851, -0.547193,
		41.683975, 36.611794, 35.436073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794193, 37.365608, 35.390236>,  <41.220394, 36.970093, 35.819107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794193, 37.365608, 35.390236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.712276, 37.043709, 35.167370>,  <41.663124, 36.850567, 35.033649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.712276, 37.043709, 35.167370>,  <41.794193, 37.365608, 35.390236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.712276, 37.043709, 35.167370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021752, 0.572833, -0.819384,
		0.978563, -0.155685, -0.134818,
		-0.204794, -0.804751, -0.557167,
		41.650837, 36.802284, 35.000221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.195831, 37.272728, 34.737774>,  <41.794193, 37.365608, 35.390236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.195831, 37.272728, 34.737774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.836056, 37.107517, 34.680630>,  <41.620190, 37.008392, 34.646343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.836056, 37.107517, 34.680630>,  <42.195831, 37.272728, 34.737774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.836056, 37.107517, 34.680630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072244, 0.462906, -0.883458,
		0.431024, -0.784300, -0.446197,
		-0.899444, -0.413027, -0.142863,
		41.566223, 36.983608, 34.637772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.892929, 37.583950, 34.445580>,  <42.195831, 37.272728, 34.737774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.892929, 37.583950, 34.445580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.283527, 37.666199, 34.419739>,  <43.517887, 37.715546, 34.404236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.283527, 37.666199, 34.419739>,  <42.892929, 37.583950, 34.445580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.283527, 37.666199, 34.419739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129275, 0.318969, -0.938907,
		-0.172452, 0.925192, 0.338054,
		0.976498, 0.205618, -0.064597,
		43.576477, 37.727882, 34.400360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.020878, 38.294334, 34.310524>,  <42.892929, 37.583950, 34.445580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.020878, 38.294334, 34.310524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.319969, 38.080170, 34.153435>,  <43.499424, 37.951672, 34.059181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.319969, 38.080170, 34.153435>,  <43.020878, 38.294334, 34.310524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.319969, 38.080170, 34.153435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188541, 0.395914, -0.898724,
		0.636669, 0.746050, 0.195091,
		0.747733, -0.535407, -0.392728,
		43.544289, 37.919548, 34.035618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.223461, 38.694862, 33.838196>,  <43.020878, 38.294334, 34.310524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.223461, 38.694862, 33.838196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.385345, 38.349300, 33.718277>,  <43.482475, 38.141964, 33.646328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.385345, 38.349300, 33.718277>,  <43.223461, 38.694862, 33.838196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.385345, 38.349300, 33.718277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136890, 0.266914, -0.953949,
		0.904141, 0.427112, -0.010238,
		0.404711, -0.863905, -0.299795,
		43.506760, 38.090130, 33.628338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.705318, 38.907997, 33.230099>,  <43.223461, 38.694862, 33.838196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.705318, 38.907997, 33.230099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.647453, 38.513058, 33.204109>,  <43.612736, 38.276096, 33.188515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.647453, 38.513058, 33.204109>,  <43.705318, 38.907997, 33.230099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.647453, 38.513058, 33.204109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197696, 0.093182, -0.975824,
		0.969531, -0.128318, -0.208674,
		-0.144661, -0.987346, -0.064975,
		43.604053, 38.216854, 33.184616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.133873, 38.668987, 32.647308>,  <43.705318, 38.907997, 33.230099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.133873, 38.668987, 32.647308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.831562, 38.421768, 32.733856>,  <43.650177, 38.273438, 32.785786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.831562, 38.421768, 32.733856>,  <44.133873, 38.668987, 32.647308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.831562, 38.421768, 32.733856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309973, 0.046612, -0.949602,
		0.576816, -0.784756, -0.226807,
		-0.755778, -0.618050, 0.216367,
		43.604828, 38.236355, 32.798767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.207077, 38.190365, 32.171951>,  <44.133873, 38.668987, 32.647308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.207077, 38.190365, 32.171951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.827187, 38.144379, 32.288437>,  <43.599251, 38.116787, 32.358326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.827187, 38.144379, 32.288437>,  <44.207077, 38.190365, 32.171951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.827187, 38.144379, 32.288437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292036, -0.009969, -0.956355,
		0.112854, -0.993319, -0.024107,
		-0.949726, -0.114969, 0.291210,
		43.542271, 38.109890, 32.375801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.041481, 37.691883, 31.813051>,  <44.207077, 38.190365, 32.171951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.041481, 37.691883, 31.813051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.696640, 37.875713, 31.898438>,  <43.489735, 37.986012, 31.949669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.696640, 37.875713, 31.898438>,  <44.041481, 37.691883, 31.813051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.696640, 37.875713, 31.898438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173785, 0.127568, -0.976486,
		-0.476003, -0.878928, -0.030109,
		-0.862102, 0.459579, 0.213467,
		43.438011, 38.013588, 31.962477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.546112, 37.323616, 31.405357>,  <44.041481, 37.691883, 31.813051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.546112, 37.323616, 31.405357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.372219, 37.672909, 31.493420>,  <43.267883, 37.882484, 31.546257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.372219, 37.672909, 31.493420>,  <43.546112, 37.323616, 31.405357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.372219, 37.672909, 31.493420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286478, 0.097671, -0.953095,
		-0.853779, -0.477412, 0.207701,
		-0.434733, 0.873234, 0.220157,
		43.241798, 37.934879, 31.559467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.947124, 37.289906, 31.023973>,  <43.546112, 37.323616, 31.405357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.947124, 37.289906, 31.023973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.003910, 37.676140, 31.111145>,  <43.037979, 37.907879, 31.163448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.003910, 37.676140, 31.111145>,  <42.947124, 37.289906, 31.023973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.003910, 37.676140, 31.111145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219745, 0.245407, -0.944186,
		-0.965173, 0.086150, 0.247021,
		0.141962, 0.965585, 0.217929,
		43.046497, 37.965816, 31.176523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.325779, 37.591740, 30.677492>,  <42.947124, 37.289906, 31.023973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.325779, 37.591740, 30.677492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599171, 37.880379, 30.721586>,  <42.763206, 38.053562, 30.748043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599171, 37.880379, 30.721586>,  <42.325779, 37.591740, 30.677492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599171, 37.880379, 30.721586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071345, 0.216329, -0.973710,
		-0.726473, 0.657648, 0.199339,
		0.683481, 0.721596, 0.110237,
		42.804214, 38.096859, 30.754658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074699, 38.241463, 30.477573>,  <42.325779, 37.591740, 30.677492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.074699, 38.241463, 30.477573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.470066, 38.290565, 30.441881>,  <42.707287, 38.320026, 30.420465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.470066, 38.290565, 30.441881>,  <42.074699, 38.241463, 30.477573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.470066, 38.290565, 30.441881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120158, 0.273876, -0.954230,
		-0.092698, 0.953899, 0.285453,
		0.988418, 0.122754, -0.089230,
		42.766590, 38.327393, 30.415112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.099998, 38.783161, 30.043465>,  <42.074699, 38.241463, 30.477573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.099998, 38.783161, 30.043465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.454498, 38.598423, 30.029211>,  <42.667198, 38.487579, 30.020658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.454498, 38.598423, 30.029211>,  <42.099998, 38.783161, 30.043465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.454498, 38.598423, 30.029211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053972, -0.026557, -0.998189,
		0.460060, 0.886564, -0.048463,
		0.886246, -0.461842, -0.035632,
		42.720371, 38.459869, 30.018522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.449478, 39.199245, 29.587322>,  <42.099998, 38.783161, 30.043465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.449478, 39.199245, 29.587322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.668140, 38.864311, 29.584986>,  <42.799339, 38.663349, 29.583584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.668140, 38.864311, 29.584986>,  <42.449478, 39.199245, 29.587322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.668140, 38.864311, 29.584986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142796, 0.100095, -0.984678,
		0.825090, 0.537449, 0.174285,
		0.546659, -0.837335, -0.005842,
		42.832138, 38.613110, 29.583233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.134319, 39.451626, 29.250027>,  <42.449478, 39.199245, 29.587322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.134319, 39.451626, 29.250027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.122444, 39.052608, 29.224642>,  <43.115318, 38.813198, 29.209410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.122444, 39.052608, 29.224642>,  <43.134319, 39.451626, 29.250027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.122444, 39.052608, 29.224642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200831, 0.056244, -0.978010,
		0.979176, -0.041781, 0.198668,
		-0.029688, -0.997542, -0.063464,
		43.113537, 38.753345, 29.205603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.757431, 39.286987, 28.819756>,  <43.134319, 39.451626, 29.250027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.757431, 39.286987, 28.819756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.520138, 38.966507, 28.788397>,  <43.377762, 38.774220, 28.769583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.520138, 38.966507, 28.788397>,  <43.757431, 39.286987, 28.819756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.520138, 38.966507, 28.788397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334959, -0.157111, -0.929042,
		0.732035, -0.577398, 0.361574,
		-0.593234, -0.801204, -0.078394,
		43.342167, 38.726147, 28.764879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.214241, 38.694702, 28.471760>,  <43.757431, 39.286987, 28.819756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.214241, 38.694702, 28.471760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.829170, 38.607075, 28.408190>,  <43.598125, 38.554497, 28.370049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.829170, 38.607075, 28.408190>,  <44.214241, 38.694702, 28.471760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.829170, 38.607075, 28.408190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187510, -0.116435, -0.975337,
		0.195160, -0.968738, 0.153167,
		-0.962680, -0.219067, -0.158924,
		43.540367, 38.541355, 28.360512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.191055, 38.041885, 28.016579>,  <44.214241, 38.694702, 28.471760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.191055, 38.041885, 28.016579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.842945, 38.229961, 27.957857>,  <43.634079, 38.342808, 27.922625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.842945, 38.229961, 27.957857>,  <44.191055, 38.041885, 28.016579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.842945, 38.229961, 27.957857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130360, -0.067559, -0.989162,
		-0.475010, -0.879977, -0.002499,
		-0.870271, 0.470187, -0.146805,
		43.581863, 38.371017, 27.913816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.764603, 37.664104, 27.384193>,  <44.191055, 38.041885, 28.016579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.764603, 37.664104, 27.384193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.617313, 38.034126, 27.421494>,  <43.528942, 38.256138, 27.443872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.617313, 38.034126, 27.421494>,  <43.764603, 37.664104, 27.384193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.617313, 38.034126, 27.421494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117565, 0.145817, -0.982301,
		-0.922276, -0.350739, -0.162446,
		-0.368219, 0.925051, 0.093249,
		43.506847, 38.311642, 27.449469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.218597, 37.761799, 26.850231>,  <43.764603, 37.664104, 27.384193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.218597, 37.761799, 26.850231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.308914, 38.134312, 26.964586>,  <43.363106, 38.357819, 27.033199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.308914, 38.134312, 26.964586>,  <43.218597, 37.761799, 26.850231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.308914, 38.134312, 26.964586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113104, 0.266422, -0.957197,
		-0.967587, 0.248467, -0.045174,
		0.225796, 0.931280, 0.285889,
		43.376652, 38.413696, 27.050352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.854469, 38.158821, 26.400574>,  <43.218597, 37.761799, 26.850231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.854469, 38.158821, 26.400574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.151703, 38.388702, 26.537714>,  <43.330044, 38.526630, 26.619997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.151703, 38.388702, 26.537714>,  <42.854469, 38.158821, 26.400574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.151703, 38.388702, 26.537714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094489, 0.417089, -0.903941,
		-0.662494, 0.704099, 0.255629,
		0.743083, 0.574702, 0.342848,
		43.374626, 38.561111, 26.640568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.877224, 38.968151, 26.148312>,  <42.854469, 38.158821, 26.400574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.877224, 38.968151, 26.148312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.258606, 38.895931, 26.244913>,  <43.487434, 38.852600, 26.302874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.258606, 38.895931, 26.244913>,  <42.877224, 38.968151, 26.148312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.258606, 38.895931, 26.244913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290099, 0.330765, -0.898018,
		0.082259, 0.926280, 0.367748,
		0.953455, -0.180554, 0.241505,
		43.544643, 38.841766, 26.317364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.283104, 39.528309, 25.845142>,  <42.877224, 38.968151, 26.148312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.283104, 39.528309, 25.845142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.565063, 39.260918, 25.940008>,  <43.734241, 39.100483, 25.996927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.565063, 39.260918, 25.940008>,  <43.283104, 39.528309, 25.845142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.565063, 39.260918, 25.940008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497865, 0.228140, -0.836709,
		0.505215, 0.707875, 0.493629,
		0.704902, -0.668479, 0.237167,
		43.776535, 39.060375, 26.011158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.920021, 39.875629, 25.777931>,  <43.283104, 39.528309, 25.845142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.920021, 39.875629, 25.777931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.947159, 39.481720, 25.713900>,  <43.963440, 39.245377, 25.675482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.947159, 39.481720, 25.713900>,  <43.920021, 39.875629, 25.777931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.947159, 39.481720, 25.713900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435095, 0.173589, -0.883493,
		0.897825, -0.009710, 0.440245,
		0.067843, -0.984770, -0.160077,
		43.967510, 39.186291, 25.665876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.666595, 39.659306, 25.610357>,  <43.920021, 39.875629, 25.777931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.666595, 39.659306, 25.610357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.405460, 39.414516, 25.431786>,  <44.248779, 39.267643, 25.324642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.405460, 39.414516, 25.431786>,  <44.666595, 39.659306, 25.610357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.405460, 39.414516, 25.431786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433373, 0.181626, -0.882723,
		0.621283, -0.769743, 0.146639,
		-0.652837, -0.611970, -0.446428,
		44.209610, 39.230927, 25.297857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.010979, 39.119343, 25.115604>,  <44.666595, 39.659306, 25.610357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.010979, 39.119343, 25.115604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.667305, 39.289574, 25.001978>,  <44.461102, 39.391712, 24.933802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.667305, 39.289574, 25.001978>,  <45.010979, 39.119343, 25.115604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.667305, 39.289574, 25.001978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429783, 0.298975, -0.851998,
		-0.277658, -0.854109, -0.439778,
		-0.859182, 0.425573, -0.284068,
		44.409550, 39.417244, 24.916758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.646374, 38.804653, 25.236996>,  <45.010979, 39.119343, 25.115604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.646374, 38.804653, 25.236996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.337334, 38.804409, 25.490952>,  <45.151909, 38.804264, 25.643326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.337334, 38.804409, 25.490952>,  <45.646374, 38.804653, 25.236996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.337334, 38.804409, 25.490952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269791, -0.905537, 0.327438,
		0.574715, 0.424267, 0.699786,
		-0.772603, -0.000612, 0.634889,
		45.105553, 38.804226, 25.681417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.014236, 38.267029, 25.613565>,  <45.646374, 38.804653, 25.236996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.014236, 38.267029, 25.613565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.814705, 38.062668, 25.333521>,  <45.694988, 37.940052, 25.165495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.814705, 38.062668, 25.333521>,  <46.014236, 38.267029, 25.613565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.814705, 38.062668, 25.333521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145918, -0.845762, 0.513220,
		-0.854331, 0.153848, 0.496436,
		-0.498825, -0.510899, -0.700112,
		45.665058, 37.909397, 25.123487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.643223, 37.541389, 25.884628>,  <46.014236, 38.267029, 25.613565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.643223, 37.541389, 25.884628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.697876, 37.537567, 25.488398>,  <45.730667, 37.535275, 25.250660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.697876, 37.537567, 25.488398>,  <45.643223, 37.541389, 25.884628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.697876, 37.537567, 25.488398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338191, -0.939427, 0.055712,
		-0.931106, -0.342616, -0.125124,
		0.136633, -0.009557, -0.990576,
		45.738865, 37.534698, 25.191225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.384087, 36.863232, 25.614714>,  <45.643223, 37.541389, 25.884628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.384087, 36.863232, 25.614714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.675316, 36.988995, 25.371056>,  <45.850052, 37.064453, 25.224861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.675316, 36.988995, 25.371056>,  <45.384087, 36.863232, 25.614714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.675316, 36.988995, 25.371056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428198, -0.902515, 0.045976,
		-0.535307, -0.294309, -0.791725,
		0.728075, 0.314404, -0.609145,
		45.893738, 37.083317, 25.188313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.427338, 36.286057, 25.139345>,  <45.384087, 36.863232, 25.614714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.427338, 36.286057, 25.139345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.771023, 36.490341, 25.127157>,  <45.977234, 36.612911, 25.119844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.771023, 36.490341, 25.127157>,  <45.427338, 36.286057, 25.139345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.771023, 36.490341, 25.127157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508535, -0.845968, 0.160406,
		0.056144, -0.153318, -0.986581,
		0.859209, 0.510716, -0.030472,
		46.028786, 36.643555, 25.118015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.096954, 35.770061, 25.566833>,  <45.427338, 36.286057, 25.139345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.096954, 35.770061, 25.566833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.443188, 35.907150, 25.712875>,  <45.650928, 35.989403, 25.800501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.443188, 35.907150, 25.712875>,  <45.096954, 35.770061, 25.566833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.443188, 35.907150, 25.712875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433582, 0.148174, 0.888848,
		0.250534, -0.927676, 0.276858,
		0.865586, 0.342727, 0.365101,
		45.702866, 36.009968, 25.822407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.590931, 35.326168, 26.037689>,  <45.096954, 35.770061, 25.566833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.590931, 35.326168, 26.037689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.553806, 35.718639, 26.105419>,  <45.531532, 35.954124, 26.146057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.553806, 35.718639, 26.105419>,  <45.590931, 35.326168, 26.037689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.553806, 35.718639, 26.105419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410942, -0.192647, 0.891074,
		0.906925, 0.013119, 0.421089,
		-0.092812, 0.981180, 0.169325,
		45.525963, 36.012993, 26.156218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.879375, 35.599659, 26.680656>,  <45.590931, 35.326168, 26.037689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.879375, 35.599659, 26.680656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.564381, 35.822895, 26.576044>,  <45.375385, 35.956837, 26.513277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.564381, 35.822895, 26.576044>,  <45.879375, 35.599659, 26.680656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.564381, 35.822895, 26.576044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254915, 0.091409, 0.962633,
		0.561145, 0.824728, 0.070283,
		-0.787487, 0.558093, -0.261529,
		45.328136, 35.990322, 26.497585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.935009, 36.301605, 27.076036>,  <45.879375, 35.599659, 26.680656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.935009, 36.301605, 27.076036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.549805, 36.236141, 26.990404>,  <45.318684, 36.196861, 26.939026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.549805, 36.236141, 26.990404>,  <45.935009, 36.301605, 27.076036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.549805, 36.236141, 26.990404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203000, -0.081863, 0.975751,
		-0.177216, 0.983115, 0.045612,
		-0.963009, -0.163659, -0.214080,
		45.260902, 36.187042, 26.926180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.581367, 36.749783, 27.489378>,  <45.935009, 36.301605, 27.076036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.581367, 36.749783, 27.489378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.263973, 36.521076, 27.405991>,  <45.073536, 36.383854, 27.355959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.263973, 36.521076, 27.405991>,  <45.581367, 36.749783, 27.489378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.263973, 36.521076, 27.405991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196524, -0.083461, 0.976941,
		-0.575981, 0.816160, -0.046141,
		-0.793489, -0.571767, -0.208467,
		45.025925, 36.349545, 27.343451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.975399, 37.013443, 27.833565>,  <45.581367, 36.749783, 27.489378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.975399, 37.013443, 27.833565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.945873, 36.620224, 27.766430>,  <44.928158, 36.384293, 27.726149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.945873, 36.620224, 27.766430>,  <44.975399, 37.013443, 27.833565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.945873, 36.620224, 27.766430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244489, -0.145321, 0.958700,
		-0.966838, 0.111801, -0.229618,
		-0.073815, -0.983047, -0.167836,
		44.923729, 36.325310, 27.716080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.364429, 36.866707, 28.142782>,  <44.975399, 37.013443, 27.833565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.364429, 36.866707, 28.142782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.599762, 36.544544, 28.114004>,  <44.740963, 36.351246, 28.096737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.599762, 36.544544, 28.114004>,  <44.364429, 36.866707, 28.142782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.599762, 36.544544, 28.114004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048353, -0.123855, 0.991121,
		-0.807171, -0.579632, -0.111812,
		0.588334, -0.805411, -0.071945,
		44.776264, 36.302921, 28.092421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.062435, 36.316269, 28.668127>,  <44.364429, 36.866707, 28.142782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.062435, 36.316269, 28.668127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.432613, 36.198147, 28.573177>,  <44.654720, 36.127274, 28.516209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.432613, 36.198147, 28.573177>,  <44.062435, 36.316269, 28.668127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.432613, 36.198147, 28.573177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207263, -0.129874, 0.969626,
		-0.317162, -0.946535, -0.058986,
		0.925446, -0.295303, -0.237372,
		44.710247, 36.109558, 28.501966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.114719, 35.740517, 29.016180>,  <44.062435, 36.316269, 28.668127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.114719, 35.740517, 29.016180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.493610, 35.860001, 28.969652>,  <44.720943, 35.931690, 28.941736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.493610, 35.860001, 28.969652>,  <44.114719, 35.740517, 29.016180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.493610, 35.860001, 28.969652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130037, -0.026391, 0.991158,
		0.292998, -0.953979, -0.063841,
		0.947229, 0.298709, -0.116320,
		44.777779, 35.949612, 28.934755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.389736, 35.427982, 29.551720>,  <44.114719, 35.740517, 29.016180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.389736, 35.427982, 29.551720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.658379, 35.703281, 29.441982>,  <44.819565, 35.868462, 29.376139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.658379, 35.703281, 29.441982>,  <44.389736, 35.427982, 29.551720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.658379, 35.703281, 29.441982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221507, 0.166829, 0.960782,
		0.707021, -0.706037, -0.040408,
		0.671606, 0.688244, -0.274344,
		44.859859, 35.909756, 29.359678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.902294, 35.242119, 29.899118>,  <44.389736, 35.427982, 29.551720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.902294, 35.242119, 29.899118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.948856, 35.632648, 29.826189>,  <44.976795, 35.866966, 29.782431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.948856, 35.632648, 29.826189>,  <44.902294, 35.242119, 29.899118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.948856, 35.632648, 29.826189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474258, 0.106651, 0.873902,
		0.872656, -0.188198, -0.450615,
		0.116408, 0.976323, -0.182324,
		44.983780, 35.925545, 29.771492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.514515, 35.418602, 30.049658>,  <44.902294, 35.242119, 29.899118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.514515, 35.418602, 30.049658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.329990, 35.772808, 30.071754>,  <45.219276, 35.985332, 30.085012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.329990, 35.772808, 30.071754>,  <45.514515, 35.418602, 30.049658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.329990, 35.772808, 30.071754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551047, 0.237159, 0.800064,
		0.695369, 0.399521, -0.597366,
		-0.461313, 0.885516, 0.055242,
		45.191597, 36.038464, 30.088327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.081673, 35.862175, 30.269268>,  <45.514515, 35.418602, 30.049658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.081673, 35.862175, 30.269268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.736492, 36.044209, 30.357094>,  <45.529385, 36.153431, 30.409790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.736492, 36.044209, 30.357094>,  <46.081673, 35.862175, 30.269268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.736492, 36.044209, 30.357094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378085, 0.293293, 0.878084,
		0.335208, 0.840759, -0.425159,
		-0.862953, 0.455087, 0.219564,
		45.477608, 36.180737, 30.422962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.275944, 36.342159, 30.652311>,  <46.081673, 35.862175, 30.269268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.275944, 36.342159, 30.652311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.884262, 36.372353, 30.727646>,  <45.649254, 36.390469, 30.772846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.884262, 36.372353, 30.727646>,  <46.275944, 36.342159, 30.652311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.884262, 36.372353, 30.727646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202683, 0.321057, 0.925117,
		0.009365, 0.944047, -0.329678,
		-0.979200, 0.075484, 0.188336,
		45.590504, 36.394997, 30.784147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.149597, 36.965763, 31.058109>,  <46.275944, 36.342159, 30.652311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.149597, 36.965763, 31.058109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.829464, 36.735813, 31.126207>,  <45.637383, 36.597843, 31.167067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.829464, 36.735813, 31.126207>,  <46.149597, 36.965763, 31.058109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.829464, 36.735813, 31.126207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075942, 0.184466, 0.979901,
		-0.594726, 0.797176, -0.103977,
		-0.800334, -0.574876, 0.170246,
		45.589363, 36.563351, 31.177280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.836803, 37.283508, 31.620554>,  <46.149597, 36.965763, 31.058109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.836803, 37.283508, 31.620554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.658733, 36.925331, 31.619772>,  <45.551891, 36.710426, 31.619303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.658733, 36.925331, 31.619772>,  <45.836803, 37.283508, 31.620554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.658733, 36.925331, 31.619772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015081, -0.009682, 0.999839,
		-0.895315, 0.445077, 0.017814,
		-0.445178, -0.895440, -0.001956,
		45.525181, 36.656700, 31.619184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.317059, 37.284801, 32.056881>,  <45.836803, 37.283508, 31.620554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.317059, 37.284801, 32.056881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.379265, 36.890316, 32.034283>,  <45.416588, 36.653625, 32.020721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.379265, 36.890316, 32.034283>,  <45.317059, 37.284801, 32.056881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.379265, 36.890316, 32.034283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033836, -0.051842, 0.998082,
		-0.987254, -0.157125, 0.025308,
		0.155512, -0.986217, -0.056498,
		45.425919, 36.594452, 32.017334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.930111, 36.947666, 32.527035>,  <45.317059, 37.284801, 32.056881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.930111, 36.947666, 32.527035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.217403, 36.675777, 32.467552>,  <45.389778, 36.512642, 32.431862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.217403, 36.675777, 32.467552>,  <44.930111, 36.947666, 32.527035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.217403, 36.675777, 32.467552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183865, -0.020719, 0.982733,
		-0.671069, -0.733174, 0.110096,
		0.718234, -0.679725, -0.148710,
		45.432873, 36.471859, 32.422939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.799553, 36.502872, 33.028805>,  <44.930111, 36.947666, 32.527035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.799553, 36.502872, 33.028805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.176140, 36.437618, 32.910809>,  <45.402092, 36.398468, 32.840012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.176140, 36.437618, 32.910809>,  <44.799553, 36.502872, 33.028805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.176140, 36.437618, 32.910809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288159, -0.064640, 0.955398,
		-0.174927, -0.984484, -0.013848,
		0.941469, -0.163134, -0.294995,
		45.458580, 36.388680, 32.822311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.967659, 35.893547, 33.324818>,  <44.799553, 36.502872, 33.028805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.967659, 35.893547, 33.324818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.312332, 36.074207, 33.232288>,  <45.519138, 36.182602, 33.176769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.312332, 36.074207, 33.232288>,  <44.967659, 35.893547, 33.324818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.312332, 36.074207, 33.232288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299256, -0.084143, 0.950455,
		0.409809, -0.888219, -0.207664,
		0.861686, 0.451650, -0.231322,
		45.570839, 36.209702, 33.162891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.587574, 35.499256, 33.726780>,  <44.967659, 35.893547, 33.324818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.587574, 35.499256, 33.726780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.737713, 35.858791, 33.636272>,  <45.827797, 36.074512, 33.581966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.737713, 35.858791, 33.636272>,  <45.587574, 35.499256, 33.726780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.737713, 35.858791, 33.636272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235540, 0.143611, 0.961196,
		0.896456, -0.414081, -0.157808,
		0.375350, 0.898840, -0.226273,
		45.850319, 36.128445, 33.568390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.313210, 35.576824, 34.095428>,  <45.587574, 35.499256, 33.726780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.313210, 35.576824, 34.095428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.148106, 35.930367, 34.007404>,  <46.049046, 36.142494, 33.954590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.148106, 35.930367, 34.007404>,  <46.313210, 35.576824, 34.095428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.148106, 35.930367, 34.007404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207968, 0.326670, 0.921974,
		0.886782, 0.334784, -0.318649,
		-0.412755, 0.883859, -0.220061,
		46.024281, 36.195522, 33.941387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.708046, 36.130596, 34.429386>,  <46.313210, 35.576824, 34.095428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.708046, 36.130596, 34.429386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.349968, 36.298496, 34.369488>,  <46.135120, 36.399239, 34.333549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.349968, 36.298496, 34.369488>,  <46.708046, 36.130596, 34.429386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.349968, 36.298496, 34.369488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033023, 0.397556, 0.916984,
		0.444440, 0.815939, -0.369753,
		-0.895200, 0.419755, -0.149745,
		46.081409, 36.424423, 34.324566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.302799, 35.923717, 34.747654>,  <46.708046, 36.130596, 34.429386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.302799, 35.923717, 34.747654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.261543, 36.018852, 34.361328>,  <47.236790, 36.075935, 34.129532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.261543, 36.018852, 34.361328>,  <47.302799, 35.923717, 34.747654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.261543, 36.018852, 34.361328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666104, 0.704594, 0.244649,
		0.738693, 0.668565, 0.085752,
		-0.103143, 0.237840, -0.965812,
		47.230598, 36.090206, 34.071583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.108860, 35.417839, 34.367165>,  <47.302799, 35.923717, 34.747654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.108860, 35.417839, 34.367165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.503189, 35.351494, 34.357094>,  <47.739788, 35.311687, 34.351051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.503189, 35.351494, 34.357094>,  <47.108860, 35.417839, 34.367165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.503189, 35.351494, 34.357094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101609, -0.709743, 0.697094,
		-0.133496, -0.684655, -0.716538,
		0.985826, -0.165866, -0.025181,
		47.798939, 35.301735, 34.349541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.675323, 35.065914, 33.890541>,  <47.108860, 35.417839, 34.367165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.675323, 35.065914, 33.890541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.457489, 34.742573, 33.801109>,  <47.326790, 34.548569, 33.747452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.457489, 34.742573, 33.801109>,  <47.675323, 35.065914, 33.890541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.457489, 34.742573, 33.801109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392920, -0.010387, -0.919514,
		0.740974, -0.588600, 0.323276,
		-0.544584, -0.808358, -0.223576,
		47.294113, 34.500065, 33.734035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.652718, 34.733284, 34.707668>,  <47.675323, 35.065914, 33.890541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.652718, 34.733284, 34.707668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.826614, 34.996540, 34.953548>,  <47.930950, 35.154495, 35.101074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.826614, 34.996540, 34.953548>,  <47.652718, 34.733284, 34.707668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.826614, 34.996540, 34.953548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214927, 0.738676, -0.638877,
		-0.874534, 0.145629, 0.462582,
		0.434737, 0.658141, 0.614698,
		47.957035, 35.193981, 35.137959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.019989, 34.104923, 47.003185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.776157, 33.794518, 46.938419>,  <39.629856, 33.608276, 46.899559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.776157, 33.794518, 46.938419>,  <40.019989, 34.104923, 47.003185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776157, 33.794518, 46.938419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356399, 0.450730, -0.818427,
		0.708089, -0.441192, -0.551326,
		-0.609582, -0.776011, -0.161916,
		39.593281, 33.561714, 46.889843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120003, 33.859287, 46.274811>,  <40.019989, 34.104923, 47.003185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120003, 33.859287, 46.274811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.776722, 33.670528, 46.355614>,  <39.570755, 33.557274, 46.404095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.776722, 33.670528, 46.355614>,  <40.120003, 33.859287, 46.274811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776722, 33.670528, 46.355614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369038, 0.293676, -0.881796,
		0.356799, -0.831302, -0.426182,
		-0.858199, -0.471902, 0.201999,
		39.519260, 33.528961, 46.416214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926895, 33.584293, 45.692032>,  <40.120003, 33.859287, 46.274811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926895, 33.584293, 45.692032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.574062, 33.553761, 45.877979>,  <39.362362, 33.535439, 45.989548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.574062, 33.553761, 45.877979>,  <39.926895, 33.584293, 45.692032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574062, 33.553761, 45.877979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471027, 0.159988, -0.867489,
		-0.008157, -0.984163, -0.177077,
		-0.882081, -0.076332, 0.464872,
		39.309437, 33.530861, 46.017441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454010, 33.050629, 45.312984>,  <39.926895, 33.584293, 45.692032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454010, 33.050629, 45.312984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.205288, 33.291481, 45.513302>,  <39.056053, 33.435993, 45.633492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.205288, 33.291481, 45.513302>,  <39.454010, 33.050629, 45.312984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205288, 33.291481, 45.513302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576303, 0.081203, -0.813192,
		-0.530316, -0.794255, 0.296519,
		-0.621804, 0.602133, 0.500795,
		39.018745, 33.472122, 45.663540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842674, 32.829132, 45.087387>,  <39.454010, 33.050629, 45.312984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842674, 32.829132, 45.087387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.790314, 33.199863, 45.228157>,  <38.758896, 33.422302, 45.312618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.790314, 33.199863, 45.228157>,  <38.842674, 32.829132, 45.087387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790314, 33.199863, 45.228157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612455, 0.203540, -0.763852,
		-0.779592, -0.315525, 0.540999,
		-0.130900, 0.926831, 0.351923,
		38.751045, 33.477913, 45.333733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099998, 33.056152, 44.775776>,  <38.842674, 32.829132, 45.087387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099998, 33.056152, 44.775776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.291027, 33.386761, 44.894970>,  <38.405643, 33.585125, 44.966488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.291027, 33.386761, 44.894970>,  <38.099998, 33.056152, 44.775776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291027, 33.386761, 44.894970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502814, 0.535243, -0.678744,
		-0.720490, 0.174315, 0.671200,
		0.477570, 0.826517, 0.297989,
		38.434299, 33.634716, 44.984367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606537, 33.594357, 44.883457>,  <38.099998, 33.056152, 44.775776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606537, 33.594357, 44.883457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.955696, 33.783981, 44.837296>,  <38.165192, 33.897755, 44.809601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.955696, 33.783981, 44.837296>,  <37.606537, 33.594357, 44.883457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955696, 33.783981, 44.837296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406602, 0.576064, -0.709101,
		-0.269681, 0.665894, 0.695599,
		0.872896, 0.474063, -0.115400,
		38.217564, 33.926201, 44.802677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426926, 34.270073, 44.745422>,  <37.606537, 33.594357, 44.883457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426926, 34.270073, 44.745422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.799355, 34.220695, 44.608097>,  <38.022812, 34.191071, 44.525703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.799355, 34.220695, 44.608097>,  <37.426926, 34.270073, 44.745422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799355, 34.220695, 44.608097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255895, 0.449763, -0.855705,
		0.260038, 0.884576, 0.387175,
		0.931073, -0.123439, -0.343315,
		38.078678, 34.183662, 44.505104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577717, 34.852604, 44.420246>,  <37.426926, 34.270073, 44.745422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577717, 34.852604, 44.420246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.851429, 34.611149, 44.256592>,  <38.015656, 34.466278, 44.158401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.851429, 34.611149, 44.256592>,  <37.577717, 34.852604, 44.420246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.851429, 34.611149, 44.256592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132517, 0.448777, -0.883764,
		0.717079, 0.658957, 0.227096,
		0.684278, -0.603635, -0.409132,
		38.056713, 34.430058, 44.133854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970547, 35.293758, 44.002705>,  <37.577717, 34.852604, 44.420246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970547, 35.293758, 44.002705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.029751, 34.922138, 43.867085>,  <38.065273, 34.699165, 43.785713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.029751, 34.922138, 43.867085>,  <37.970547, 35.293758, 44.002705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029751, 34.922138, 43.867085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048436, 0.335607, -0.940756,
		0.987798, 0.155668, 0.004675,
		0.148014, -0.929051, -0.339052,
		38.074154, 34.643421, 43.765369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368656, 35.416695, 43.469944>,  <37.970547, 35.293758, 44.002705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368656, 35.416695, 43.469944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.253105, 35.039513, 43.403755>,  <38.183777, 34.813202, 43.364044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.253105, 35.039513, 43.403755>,  <38.368656, 35.416695, 43.469944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253105, 35.039513, 43.403755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064294, 0.153340, -0.986080,
		0.955206, -0.295490, 0.016331,
		-0.288873, -0.942959, -0.165469,
		38.166443, 34.756626, 43.354115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813915, 35.081261, 42.899239>,  <38.368656, 35.416695, 43.469944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813915, 35.081261, 42.899239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.462765, 34.890163, 42.912487>,  <38.252075, 34.775505, 42.920437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.462765, 34.890163, 42.912487>,  <38.813915, 35.081261, 42.899239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462765, 34.890163, 42.912487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091865, 0.100127, -0.990725,
		0.469999, -0.872773, -0.131787,
		-0.877873, -0.477746, 0.033118,
		38.199402, 34.746841, 42.922424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891987, 34.438328, 42.525826>,  <38.813915, 35.081261, 42.899239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891987, 34.438328, 42.525826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.502960, 34.531368, 42.526787>,  <38.269543, 34.587193, 42.527363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.502960, 34.531368, 42.526787>,  <38.891987, 34.438328, 42.525826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502960, 34.531368, 42.526787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008481, 0.045785, -0.998915,
		-0.232464, -0.971493, -0.046502,
		-0.972568, 0.232606, 0.002404,
		38.211189, 34.601151, 42.527508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645374, 34.014816, 42.035347>,  <38.891987, 34.438328, 42.525826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645374, 34.014816, 42.035347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.342335, 34.274166, 42.065407>,  <38.160511, 34.429775, 42.083443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.342335, 34.274166, 42.065407>,  <38.645374, 34.014816, 42.035347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342335, 34.274166, 42.065407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054684, 0.051680, -0.997165,
		-0.650425, -0.759561, -0.003696,
		-0.757600, 0.648379, 0.075150,
		38.115055, 34.468681, 42.087952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197487, 33.930534, 41.421452>,  <38.645374, 34.014816, 42.035347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197487, 33.930534, 41.421452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.023628, 34.274586, 41.528225>,  <37.919312, 34.481018, 41.592289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.023628, 34.274586, 41.528225>,  <38.197487, 33.930534, 41.421452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023628, 34.274586, 41.528225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002538, 0.297565, -0.954698,
		-0.900597, -0.414281, -0.131519,
		-0.434648, 0.860132, 0.266935,
		37.893234, 34.532627, 41.608307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492073, 34.171238, 41.014488>,  <38.197487, 33.930534, 41.421452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492073, 34.171238, 41.014488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.707367, 34.480103, 41.149586>,  <37.836544, 34.665421, 41.230644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.707367, 34.480103, 41.149586>,  <37.492073, 34.171238, 41.014488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707367, 34.480103, 41.149586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125920, 0.322572, -0.938132,
		-0.833333, 0.547467, 0.076390,
		0.538238, 0.772157, 0.337747,
		37.868839, 34.711750, 41.250912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178669, 34.725159, 40.735950>,  <37.492073, 34.171238, 41.014488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178669, 34.725159, 40.735950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.545105, 34.850594, 40.835903>,  <37.764965, 34.925854, 40.895874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.545105, 34.850594, 40.835903>,  <37.178669, 34.725159, 40.735950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545105, 34.850594, 40.835903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097403, 0.430490, -0.897324,
		-0.388961, 0.846370, 0.363824,
		0.916090, 0.313587, 0.249883,
		37.819931, 34.944668, 40.910870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199844, 35.408890, 40.504578>,  <37.178669, 34.725159, 40.735950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199844, 35.408890, 40.504578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.589508, 35.322781, 40.531948>,  <37.823307, 35.271114, 40.548370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.589508, 35.322781, 40.531948>,  <37.199844, 35.408890, 40.504578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589508, 35.322781, 40.531948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154433, 0.413668, -0.897234,
		0.164841, 0.884612, 0.436221,
		0.974155, -0.215268, 0.068424,
		37.881756, 35.258202, 40.552475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485340, 36.046894, 40.282455>,  <37.199844, 35.408890, 40.504578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485340, 36.046894, 40.282455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.803452, 35.804909, 40.266693>,  <37.994316, 35.659718, 40.257236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.803452, 35.804909, 40.266693>,  <37.485340, 36.046894, 40.282455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803452, 35.804909, 40.266693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270945, 0.412826, -0.869577,
		0.542334, 0.680875, 0.492222,
		0.795275, -0.604966, -0.039410,
		38.042034, 35.623421, 40.254871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957493, 36.444725, 40.116070>,  <37.485340, 36.046894, 40.282455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957493, 36.444725, 40.116070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.107513, 36.088520, 40.013058>,  <38.197525, 35.874798, 39.951252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.107513, 36.088520, 40.013058>,  <37.957493, 36.444725, 40.116070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107513, 36.088520, 40.013058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108731, 0.318148, -0.941785,
		0.920604, 0.325220, 0.216149,
		0.375055, -0.890513, -0.257526,
		38.220028, 35.821365, 39.935799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602993, 36.595402, 39.726231>,  <37.957493, 36.444725, 40.116070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602993, 36.595402, 39.726231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.473694, 36.227287, 39.638062>,  <38.396114, 36.006420, 39.585159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.473694, 36.227287, 39.638062>,  <38.602993, 36.595402, 39.726231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473694, 36.227287, 39.638062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012945, 0.228604, -0.973434,
		0.946227, -0.317510, -0.061981,
		-0.323244, -0.920287, -0.220421,
		38.376720, 35.951202, 39.571934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142754, 36.230709, 39.285454>,  <38.602993, 36.595402, 39.726231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142754, 36.230709, 39.285454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.784973, 36.064945, 39.218246>,  <38.570305, 35.965488, 39.177921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.784973, 36.064945, 39.218246>,  <39.142754, 36.230709, 39.285454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784973, 36.064945, 39.218246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112080, 0.155974, -0.981382,
		0.432898, -0.896626, -0.093063,
		-0.894448, -0.414407, -0.168015,
		38.516640, 35.940624, 39.167843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556934, 35.938583, 38.813030>,  <39.142754, 36.230709, 39.285454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556934, 35.938583, 38.813030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.875656, 36.171425, 38.748219>,  <40.066891, 36.311131, 38.709332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.875656, 36.171425, 38.748219>,  <39.556934, 35.938583, 38.813030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875656, 36.171425, 38.748219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340895, -0.211665, 0.915963,
		0.498892, -0.785079, -0.367093,
		0.796805, 0.582107, -0.162031,
		40.114697, 36.346058, 38.699608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163471, 35.645321, 39.056133>,  <39.556934, 35.938583, 38.813030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163471, 35.645321, 39.056133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.214626, 36.040756, 39.087959>,  <40.245319, 36.278019, 39.107056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.214626, 36.040756, 39.087959>,  <40.163471, 35.645321, 39.056133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214626, 36.040756, 39.087959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133622, -0.096671, 0.986306,
		0.982746, -0.115507, -0.144461,
		0.127890, 0.988592, 0.079569,
		40.252995, 36.337334, 39.111832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696877, 35.773315, 39.519360>,  <40.163471, 35.645321, 39.056133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696877, 35.773315, 39.519360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.520832, 36.131985, 39.500290>,  <40.415207, 36.347187, 39.488850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.520832, 36.131985, 39.500290>,  <40.696877, 35.773315, 39.519360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.520832, 36.131985, 39.500290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199020, 0.149177, 0.968575,
		0.875611, 0.416793, -0.244111,
		-0.440111, 0.896677, -0.047671,
		40.388798, 36.400990, 39.485989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862251, 36.006721, 40.106667>,  <40.696877, 35.773315, 39.519360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862251, 36.006721, 40.106667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.672806, 36.335705, 39.980652>,  <40.559139, 36.533096, 39.905045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.672806, 36.335705, 39.980652>,  <40.862251, 36.006721, 40.106667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.672806, 36.335705, 39.980652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129372, 0.418785, 0.898823,
		0.871179, 0.384938, -0.304745,
		-0.473614, 0.822461, -0.315036,
		40.530720, 36.582443, 39.886143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.380756, 36.648655, 40.104431>,  <40.862251, 36.006721, 40.106667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.380756, 36.648655, 40.104431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.000332, 36.747574, 40.178535>,  <40.772076, 36.806923, 40.222996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.000332, 36.747574, 40.178535>,  <41.380756, 36.648655, 40.104431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000332, 36.747574, 40.178535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250952, 0.268407, 0.930044,
		0.180270, 0.931023, -0.317331,
		-0.951066, 0.247293, 0.185256,
		40.715012, 36.821762, 40.234112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393467, 37.212128, 40.568108>,  <41.380756, 36.648655, 40.104431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.393467, 37.212128, 40.568108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.042500, 37.024078, 40.606293>,  <40.831917, 36.911247, 40.629204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.042500, 37.024078, 40.606293>,  <41.393467, 37.212128, 40.568108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042500, 37.024078, 40.606293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106606, 0.002929, 0.994297,
		-0.467722, 0.882596, 0.047548,
		-0.877423, -0.470123, 0.095460,
		40.779274, 36.883041, 40.634930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940918, 37.656818, 41.010849>,  <41.393467, 37.212128, 40.568108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940918, 37.656818, 41.010849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.794483, 37.284901, 41.026127>,  <40.706623, 37.061749, 41.035294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.794483, 37.284901, 41.026127>,  <40.940918, 37.656818, 41.010849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.794483, 37.284901, 41.026127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016010, 0.047329, 0.998751,
		-0.930444, 0.365015, -0.032213,
		-0.366084, -0.929798, 0.038193,
		40.684658, 37.005962, 41.037586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428253, 37.693481, 41.536037>,  <40.940918, 37.656818, 41.010849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428253, 37.693481, 41.536037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.497295, 37.300625, 41.506111>,  <40.538723, 37.064911, 41.488155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.497295, 37.300625, 41.506111>,  <40.428253, 37.693481, 41.536037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497295, 37.300625, 41.506111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078185, -0.062052, 0.995006,
		-0.981882, -0.177596, 0.066078,
		0.172609, -0.982145, -0.074813,
		40.549080, 37.005981, 41.483665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985897, 37.341980, 42.082230>,  <40.428253, 37.693481, 41.536037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985897, 37.341980, 42.082230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.272949, 37.082096, 41.981922>,  <40.445179, 36.926167, 41.921738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.272949, 37.082096, 41.981922>,  <39.985897, 37.341980, 42.082230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272949, 37.082096, 41.981922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126025, -0.232990, 0.964279,
		-0.684928, -0.723598, -0.085321,
		0.717629, -0.649709, -0.250773,
		40.488239, 36.887184, 41.906689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921585, 36.684002, 42.542347>,  <39.985897, 37.341980, 42.082230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921585, 36.684002, 42.542347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.284870, 36.650188, 42.378391>,  <40.502842, 36.629898, 42.280018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.284870, 36.650188, 42.378391>,  <39.921585, 36.684002, 42.542347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284870, 36.650188, 42.378391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268903, -0.632610, 0.726289,
		-0.320698, -0.769843, -0.551811,
		0.908209, -0.084536, -0.409890,
		40.557331, 36.624828, 42.255424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078751, 36.050148, 42.557701>,  <39.921585, 36.684002, 42.542347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078751, 36.050148, 42.557701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.430450, 36.236942, 42.520100>,  <40.641472, 36.349018, 42.497540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.430450, 36.236942, 42.520100>,  <40.078751, 36.050148, 42.557701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430450, 36.236942, 42.520100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361997, -0.526759, 0.769080,
		0.309636, -0.710243, -0.632203,
		0.879252, 0.466990, -0.094002,
		40.694225, 36.377041, 42.491898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455788, 35.500542, 42.434166>,  <40.078751, 36.050148, 42.557701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455788, 35.500542, 42.434166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.659149, 35.814934, 42.574886>,  <40.781166, 36.003567, 42.659317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.659149, 35.814934, 42.574886>,  <40.455788, 35.500542, 42.434166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659149, 35.814934, 42.574886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268000, -0.532668, 0.802771,
		0.818352, -0.313851, -0.481454,
		0.508406, 0.785979, 0.351797,
		40.811672, 36.050728, 42.680424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976528, 35.230648, 42.722336>,  <40.455788, 35.500542, 42.434166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976528, 35.230648, 42.722336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.974663, 35.596668, 42.883663>,  <40.973545, 35.816280, 42.980461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.974663, 35.596668, 42.883663>,  <40.976528, 35.230648, 42.722336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974663, 35.596668, 42.883663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252812, -0.389142, 0.885807,
		0.967504, 0.106092, -0.229522,
		-0.004661, 0.915048, 0.403318,
		40.973263, 35.871181, 43.004658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609966, 35.367241, 42.934486>,  <40.976528, 35.230648, 42.722336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609966, 35.367241, 42.934486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.363346, 35.585938, 43.161091>,  <41.215374, 35.717155, 43.297054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.363346, 35.585938, 43.161091>,  <41.609966, 35.367241, 42.934486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.363346, 35.585938, 43.161091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409021, -0.392397, 0.823849,
		0.672734, 0.739658, 0.018301,
		-0.616548, 0.546745, 0.566514,
		41.178383, 35.749962, 43.331047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.052059, 35.610863, 43.529541>,  <41.609966, 35.367241, 42.934486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.052059, 35.610863, 43.529541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.684433, 35.701122, 43.658779>,  <41.463856, 35.755280, 43.736324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.684433, 35.701122, 43.658779>,  <42.052059, 35.610863, 43.529541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.684433, 35.701122, 43.658779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268270, -0.242346, 0.932362,
		0.288690, 0.943583, 0.162198,
		-0.919070, 0.225651, 0.323098,
		41.408710, 35.768818, 43.755707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100594, 36.115570, 43.987133>,  <42.052059, 35.610863, 43.529541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.100594, 36.115570, 43.987133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.740208, 35.966007, 44.075188>,  <41.523975, 35.876270, 44.128021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.740208, 35.966007, 44.075188>,  <42.100594, 36.115570, 43.987133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.740208, 35.966007, 44.075188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292188, -0.147750, 0.944879,
		-0.320772, 0.915621, 0.242368,
		-0.900961, -0.373908, 0.220139,
		41.469921, 35.853836, 44.141228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.748634, 36.518612, 44.573879>,  <42.100594, 36.115570, 43.987133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.748634, 36.518612, 44.573879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.607910, 36.144348, 44.584991>,  <41.523476, 35.919792, 44.591660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.607910, 36.144348, 44.584991>,  <41.748634, 36.518612, 44.573879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.607910, 36.144348, 44.584991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311208, -0.088920, 0.946173,
		-0.882823, 0.341523, 0.322468,
		-0.351814, -0.935658, 0.027784,
		41.502365, 35.863651, 44.593327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.442020, 36.435581, 45.134464>,  <41.748634, 36.518612, 44.573879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.442020, 36.435581, 45.134464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.454826, 36.046246, 45.043610>,  <41.462509, 35.812645, 44.989098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.454826, 36.046246, 45.043610>,  <41.442020, 36.435581, 45.134464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.454826, 36.046246, 45.043610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024284, -0.227943, 0.973372,
		-0.999192, -0.025644, -0.030933,
		0.032012, -0.973337, -0.227136,
		41.464432, 35.754246, 44.975468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.928524, 36.009628, 45.742130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.197159, 35.757282, 45.586704>,  <41.358337, 35.605873, 45.493450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.197159, 35.757282, 45.586704>,  <40.928524, 36.009628, 45.742130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.197159, 35.757282, 45.586704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230651, -0.320361, 0.918787,
		-0.704114, -0.706664, -0.069638,
		0.671583, -0.630869, -0.388563,
		41.398632, 35.568020, 45.470135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695507, 35.378864, 46.074821>,  <40.928524, 36.009628, 45.742130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695507, 35.378864, 46.074821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.057819, 35.301735, 45.923893>,  <41.275208, 35.255455, 45.833336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.057819, 35.301735, 45.923893>,  <40.695507, 35.378864, 46.074821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.057819, 35.301735, 45.923893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189087, -0.612955, 0.767159,
		-0.379209, -0.766227, -0.518745,
		0.905785, -0.192825, -0.377322,
		41.329556, 35.243889, 45.810696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815006, 34.662453, 46.110729>,  <40.695507, 35.378864, 46.074821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815006, 34.662453, 46.110729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.181343, 34.819782, 46.078426>,  <41.401146, 34.914181, 46.059044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.181343, 34.819782, 46.078426>,  <40.815006, 34.662453, 46.110729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.181343, 34.819782, 46.078426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312205, -0.571073, 0.759213,
		0.252496, -0.720536, -0.645813,
		0.915846, 0.393324, -0.080761,
		41.456097, 34.937778, 46.054199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268120, 34.064396, 46.263424>,  <40.815006, 34.662453, 46.110729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.268120, 34.064396, 46.263424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.496712, 34.386967, 46.324207>,  <41.633865, 34.580509, 46.360676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.496712, 34.386967, 46.324207>,  <41.268120, 34.064396, 46.263424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496712, 34.386967, 46.324207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500867, -0.489451, 0.713841,
		0.650034, -0.331836, -0.683623,
		0.571479, 0.806426, 0.151954,
		41.668156, 34.628895, 46.369793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.854870, 33.888634, 46.075993>,  <41.268120, 34.064396, 46.263424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.854870, 33.888634, 46.075993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.909737, 34.192520, 46.330242>,  <41.942657, 34.374851, 46.482792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.909737, 34.192520, 46.330242>,  <41.854870, 33.888634, 46.075993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.909737, 34.192520, 46.330242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472871, -0.614074, 0.631906,
		0.870390, 0.213894, -0.443476,
		0.137166, 0.759712, 0.635628,
		41.950886, 34.420433, 46.520931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.504536, 33.811066, 46.373539>,  <41.854870, 33.888634, 46.075993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.504536, 33.811066, 46.373539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.325741, 34.041763, 46.647053>,  <42.218464, 34.180183, 46.811161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.325741, 34.041763, 46.647053>,  <42.504536, 33.811066, 46.373539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.325741, 34.041763, 46.647053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442201, -0.522007, 0.729360,
		0.777598, 0.628387, -0.021707,
		-0.446990, 0.576748, 0.683785,
		42.191643, 34.214787, 46.852188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.172531, 34.110561, 46.681980>,  <42.504536, 33.811066, 46.373539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.172531, 34.110561, 46.681980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.855671, 34.148918, 46.923080>,  <42.665554, 34.171932, 47.067741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.855671, 34.148918, 46.923080>,  <43.172531, 34.110561, 46.681980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.855671, 34.148918, 46.923080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531871, -0.375937, 0.758805,
		0.299363, 0.921670, 0.246793,
		-0.792146, 0.095897, 0.602751,
		42.618027, 34.177689, 47.103905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.392941, 34.477570, 47.321033>,  <43.172531, 34.110561, 46.681980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.392941, 34.477570, 47.321033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.051022, 34.304661, 47.435898>,  <42.845871, 34.200916, 47.504818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.051022, 34.304661, 47.435898>,  <43.392941, 34.477570, 47.321033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.051022, 34.304661, 47.435898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397086, -0.188535, 0.898208,
		-0.334130, 0.881814, 0.332809,
		-0.854798, -0.432272, 0.287161,
		42.794582, 34.174980, 47.522045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.291779, 34.646698, 47.966602>,  <43.392941, 34.477570, 47.321033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.291779, 34.646698, 47.966602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.055328, 34.325096, 47.940872>,  <42.913456, 34.132133, 47.925434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.055328, 34.325096, 47.940872>,  <43.291779, 34.646698, 47.966602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.055328, 34.325096, 47.940872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286118, -0.283587, 0.915268,
		-0.754123, 0.522638, 0.397678,
		-0.591130, -0.804007, -0.064323,
		42.877991, 34.083893, 47.921574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.921074, 34.649921, 48.571602>,  <43.291779, 34.646698, 47.966602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.921074, 34.649921, 48.571602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.926010, 34.284519, 48.408947>,  <42.928970, 34.065277, 48.311356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.926010, 34.284519, 48.408947>,  <42.921074, 34.649921, 48.571602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.926010, 34.284519, 48.408947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311753, -0.382878, 0.869606,
		-0.950083, -0.137501, 0.280063,
		0.012342, -0.913508, -0.406633,
		42.929714, 34.010468, 48.286957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.702965, 34.330086, 49.181969>,  <42.921074, 34.649921, 48.571602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.702965, 34.330086, 49.181969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.884972, 34.072090, 48.936386>,  <42.994175, 33.917294, 48.789036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.884972, 34.072090, 48.936386>,  <42.702965, 34.330086, 49.181969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.884972, 34.072090, 48.936386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240823, -0.574645, 0.782169,
		-0.857300, -0.503757, -0.106145,
		0.455018, -0.644991, -0.613959,
		43.021477, 33.878593, 48.752197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.439766, 33.647354, 49.315479>,  <42.702965, 34.330086, 49.181969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.439766, 33.647354, 49.315479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.795822, 33.606133, 49.137924>,  <43.009457, 33.581398, 49.031391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.795822, 33.606133, 49.137924>,  <42.439766, 33.647354, 49.315479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.795822, 33.606133, 49.137924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343311, -0.488878, 0.801957,
		-0.299649, -0.866244, -0.399790,
		0.890139, -0.103054, -0.443883,
		43.062862, 33.575218, 49.004761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.527000, 32.929363, 49.410912>,  <42.439766, 33.647354, 49.315479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.527000, 32.929363, 49.410912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.874554, 33.115353, 49.342979>,  <43.083088, 33.226944, 49.302219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.874554, 33.115353, 49.342979>,  <42.527000, 32.929363, 49.410912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.874554, 33.115353, 49.342979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384456, -0.417758, 0.823208,
		0.311820, -0.780564, -0.541744,
		0.868885, 0.464970, -0.169827,
		43.135220, 33.254845, 49.292030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.967976, 32.410618, 49.572754>,  <42.527000, 32.929363, 49.410912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.967976, 32.410618, 49.572754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.195763, 32.738388, 49.598820>,  <43.332436, 32.935051, 49.614460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.195763, 32.738388, 49.598820>,  <42.967976, 32.410618, 49.572754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.195763, 32.738388, 49.598820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120401, -0.161568, 0.979489,
		0.813149, -0.549940, -0.190667,
		0.569466, 0.819428, 0.065165,
		43.366604, 32.984215, 49.618370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.613667, 32.172192, 50.009537>,  <42.967976, 32.410618, 49.572754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.613667, 32.172192, 50.009537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.592411, 32.571606, 50.013424>,  <43.579659, 32.811256, 50.015755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.592411, 32.571606, 50.013424>,  <43.613667, 32.172192, 50.009537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.592411, 32.571606, 50.013424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239350, 0.003287, 0.970928,
		0.969478, 0.053921, -0.239175,
		-0.053140, 0.998540, 0.009719,
		43.576469, 32.871166, 50.016338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.282646, 32.380260, 50.091740>,  <43.613667, 32.172192, 50.009537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.282646, 32.380260, 50.091740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.050659, 32.670361, 50.240147>,  <43.911469, 32.844421, 50.329189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.050659, 32.670361, 50.240147>,  <44.282646, 32.380260, 50.091740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.050659, 32.670361, 50.240147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493520, -0.049555, 0.868321,
		0.648136, 0.686700, -0.329185,
		-0.579964, 0.725250, 0.371019,
		43.876671, 32.887936, 50.351452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.744511, 32.833546, 50.387856>,  <44.282646, 32.380260, 50.091740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.744511, 32.833546, 50.387856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.396427, 32.925850, 50.561974>,  <44.187576, 32.981232, 50.666443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.396427, 32.925850, 50.561974>,  <44.744511, 32.833546, 50.387856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.396427, 32.925850, 50.561974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367798, -0.283585, 0.885610,
		0.327806, 0.930768, 0.161906,
		-0.870211, 0.230759, 0.435295,
		44.135365, 32.995079, 50.692562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.911880, 33.372566, 50.926792>,  <44.744511, 32.833546, 50.387856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.911880, 33.372566, 50.926792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.570023, 33.184799, 51.015537>,  <44.364906, 33.072140, 51.068787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.570023, 33.184799, 51.015537>,  <44.911880, 33.372566, 50.926792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.570023, 33.184799, 51.015537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378648, -0.271124, 0.884939,
		-0.355256, 0.840319, 0.409460,
		-0.854646, -0.469421, 0.221866,
		44.313629, 33.043972, 51.082096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.014214, 33.338787, 51.707230>,  <44.911880, 33.372566, 50.926792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.014214, 33.338787, 51.707230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.694092, 33.105679, 51.650803>,  <44.502018, 32.965813, 51.616947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.694092, 33.105679, 51.650803>,  <45.014214, 33.338787, 51.707230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.694092, 33.105679, 51.650803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257251, -0.546241, 0.797146,
		-0.541609, 0.601667, 0.587075,
		-0.800301, -0.582767, -0.141070,
		44.454002, 32.930847, 51.608482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.707397, 33.263168, 52.375919>,  <45.014214, 33.338787, 51.707230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.707397, 33.263168, 52.375919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.562778, 32.960468, 52.158070>,  <44.476006, 32.778847, 52.027359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.562778, 32.960468, 52.158070>,  <44.707397, 33.263168, 52.375919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.562778, 32.960468, 52.158070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307286, -0.648215, 0.696702,
		-0.880260, 0.084537, 0.466900,
		-0.361548, -0.756750, -0.544621,
		44.454315, 32.733444, 51.994682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.387192, 32.785694, 52.841385>,  <44.707397, 33.263168, 52.375919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.387192, 32.785694, 52.841385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.488056, 32.592667, 52.505875>,  <44.548573, 32.476849, 52.304569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.488056, 32.592667, 52.505875>,  <44.387192, 32.785694, 52.841385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.488056, 32.592667, 52.505875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430191, -0.720520, 0.543863,
		-0.866806, -0.497972, 0.025914,
		0.252157, -0.482572, -0.838774,
		44.563702, 32.447895, 52.254242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.297012, 32.101032, 53.005333>,  <44.387192, 32.785694, 52.841385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.297012, 32.101032, 53.005333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.520298, 32.079800, 52.674133>,  <44.654270, 32.067059, 52.475414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.520298, 32.079800, 52.674133>,  <44.297012, 32.101032, 53.005333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.520298, 32.079800, 52.674133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540281, -0.734114, 0.411306,
		-0.629676, -0.676948, -0.381115,
		0.558215, -0.053080, -0.827997,
		44.687763, 32.063877, 52.425735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.392395, 31.336378, 52.884254>,  <44.297012, 32.101032, 53.005333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.392395, 31.336378, 52.884254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.690716, 31.545673, 52.719330>,  <44.869709, 31.671251, 52.620373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.690716, 31.545673, 52.719330>,  <44.392395, 31.336378, 52.884254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.690716, 31.545673, 52.719330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664565, -0.627319, 0.405984,
		-0.046226, -0.576793, -0.815581,
		0.745799, 0.523240, -0.412315,
		44.914455, 31.702646, 52.595634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.077229, 30.521589, 52.886108>,  <44.392395, 31.336378, 52.884254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.077229, 30.521589, 52.886108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.992882, 30.144621, 52.782276>,  <43.942272, 29.918440, 52.719978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.992882, 30.144621, 52.782276>,  <44.077229, 30.521589, 52.886108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.992882, 30.144621, 52.782276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624500, 0.334173, -0.705924,
		0.752020, 0.013250, -0.659007,
		-0.210869, -0.942419, -0.259579,
		43.929623, 29.861895, 52.704403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.262104, 30.173719, 52.174721>,  <44.077229, 30.521589, 52.886108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.262104, 30.173719, 52.174721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.918549, 30.017092, 52.306767>,  <43.712414, 29.923115, 52.385994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.918549, 30.017092, 52.306767>,  <44.262104, 30.173719, 52.174721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.918549, 30.017092, 52.306767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443987, 0.247956, -0.861042,
		0.255333, -0.886097, -0.386830,
		-0.858884, -0.391600, 0.330104,
		43.660881, 29.899620, 52.405800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.041420, 29.807421, 51.621475>,  <44.262104, 30.173719, 52.174721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.041420, 29.807421, 51.621475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.724594, 29.839598, 51.863518>,  <43.534496, 29.858904, 52.008743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.724594, 29.839598, 51.863518>,  <44.041420, 29.807421, 51.621475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.724594, 29.839598, 51.863518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592801, 0.135170, -0.793924,
		-0.145657, -0.987552, -0.059378,
		-0.792067, 0.080442, 0.605110,
		43.486973, 29.863729, 52.045052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.509151, 29.531662, 51.241150>,  <44.041420, 29.807421, 51.621475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.509151, 29.531662, 51.241150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.310806, 29.741669, 51.517838>,  <43.191799, 29.867672, 51.683849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.310806, 29.741669, 51.517838>,  <43.509151, 29.531662, 51.241150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.310806, 29.741669, 51.517838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548743, 0.427924, -0.718166,
		-0.673051, -0.735691, 0.075905,
		-0.495867, 0.525015, 0.691719,
		43.162045, 29.899174, 51.725353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.762623, 29.222097, 51.223530>,  <43.509151, 29.531662, 51.241150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.762623, 29.222097, 51.223530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.787846, 29.598425, 51.356724>,  <42.802979, 29.824223, 51.436642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.787846, 29.598425, 51.356724>,  <42.762623, 29.222097, 51.223530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.787846, 29.598425, 51.356724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639009, 0.294352, -0.710650,
		-0.766610, -0.167973, 0.619754,
		0.063056, 0.940820, 0.332989,
		42.806763, 29.880671, 51.456619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094303, 29.384594, 51.404812>,  <42.762623, 29.222097, 51.223530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.094303, 29.384594, 51.404812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.285938, 29.731726, 51.352127>,  <42.400921, 29.940004, 51.320518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.285938, 29.731726, 51.352127>,  <42.094303, 29.384594, 51.404812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.285938, 29.731726, 51.352127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667629, 0.262854, -0.696549,
		-0.569864, 0.421643, 0.705317,
		0.479090, 0.867828, -0.131710,
		42.429665, 29.992075, 51.312614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.537582, 29.871149, 51.344543>,  <42.094303, 29.384594, 51.404812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.537582, 29.871149, 51.344543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.870777, 30.031855, 51.192379>,  <42.070694, 30.128279, 51.101078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.870777, 30.031855, 51.192379>,  <41.537582, 29.871149, 51.344543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.870777, 30.031855, 51.192379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538069, 0.428072, -0.726110,
		-0.128881, 0.809531, 0.572756,
		0.832989, 0.401764, -0.380413,
		42.120674, 30.152384, 51.078255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.332100, 30.494682, 51.001869>,  <41.537582, 29.871149, 51.344543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.332100, 30.494682, 51.001869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.707108, 30.448336, 50.870644>,  <41.932114, 30.420528, 50.791908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.707108, 30.448336, 50.870644>,  <41.332100, 30.494682, 51.001869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.707108, 30.448336, 50.870644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212499, 0.555927, -0.803610,
		0.275490, 0.823116, 0.496573,
		0.937523, -0.115865, -0.328064,
		41.988365, 30.413576, 50.772224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564590, 31.132874, 50.830627>,  <41.332100, 30.494682, 51.001869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.564590, 31.132874, 50.830627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.812992, 30.920713, 50.599792>,  <41.962032, 30.793417, 50.461292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.812992, 30.920713, 50.599792>,  <41.564590, 31.132874, 50.830627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.812992, 30.920713, 50.599792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245409, 0.567672, -0.785826,
		0.744401, 0.629622, 0.222360,
		0.621001, -0.530400, -0.577090,
		41.999294, 30.761593, 50.426666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.991802, 31.647461, 50.488907>,  <41.564590, 31.132874, 50.830627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.991802, 31.647461, 50.488907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.984196, 31.331242, 50.244064>,  <41.979633, 31.141510, 50.097160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.984196, 31.331242, 50.244064>,  <41.991802, 31.647461, 50.488907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.984196, 31.331242, 50.244064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256838, 0.595535, -0.761165,
		0.966267, 0.142737, -0.214368,
		-0.019017, -0.790547, -0.612106,
		41.978489, 31.094078, 50.060432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.358181, 31.778753, 49.818974>,  <41.991802, 31.647461, 50.488907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.358181, 31.778753, 49.818974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.147003, 31.452105, 49.725674>,  <42.020298, 31.256115, 49.669693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.147003, 31.452105, 49.725674>,  <42.358181, 31.778753, 49.818974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.147003, 31.452105, 49.725674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168779, 0.370049, -0.913552,
		0.832340, -0.442935, -0.333194,
		-0.527942, -0.816622, -0.233249,
		41.988621, 31.207117, 49.655701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.643475, 31.559324, 49.212997>,  <42.358181, 31.778753, 49.818974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.643475, 31.559324, 49.212997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.272144, 31.414263, 49.245708>,  <42.049347, 31.327227, 49.265335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.272144, 31.414263, 49.245708>,  <42.643475, 31.559324, 49.212997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.272144, 31.414263, 49.245708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215330, 0.345208, -0.913490,
		0.303044, -0.865631, -0.398556,
		-0.928330, -0.362649, 0.081784,
		41.993645, 31.305466, 49.270245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.422012, 31.487370, 48.527943>,  <42.643475, 31.559324, 49.212997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.422012, 31.487370, 48.527943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.066288, 31.434542, 48.703068>,  <41.852852, 31.402845, 48.808144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.066288, 31.434542, 48.703068>,  <42.422012, 31.487370, 48.527943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.066288, 31.434542, 48.703068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456811, 0.212496, -0.863811,
		0.021051, -0.968196, -0.249307,
		-0.889315, -0.132070, 0.437809,
		41.799492, 31.394920, 48.834412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.006561, 31.089983, 48.061001>,  <42.422012, 31.487370, 48.527943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.006561, 31.089983, 48.061001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.745739, 31.266455, 48.307636>,  <41.589245, 31.372337, 48.455620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.745739, 31.266455, 48.307636>,  <42.006561, 31.089983, 48.061001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745739, 31.266455, 48.307636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613436, 0.170938, -0.771023,
		-0.445560, -0.880987, 0.159177,
		-0.652052, 0.441182, 0.616593,
		41.550125, 31.398809, 48.492615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363270, 30.857738, 47.873238>,  <42.006561, 31.089983, 48.061001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363270, 30.857738, 47.873238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.307056, 31.207048, 48.059845>,  <41.273327, 31.416636, 48.171810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.307056, 31.207048, 48.059845>,  <41.363270, 30.857738, 47.873238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.307056, 31.207048, 48.059845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504604, 0.342228, -0.792625,
		-0.851837, -0.346795, 0.392565,
		-0.140532, 0.873277, 0.466516,
		41.264896, 31.469032, 48.199799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642311, 31.115206, 47.583107>,  <41.363270, 30.857738, 47.873238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642311, 31.115206, 47.583107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.786835, 31.443626, 47.759892>,  <40.873550, 31.640678, 47.865963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.786835, 31.443626, 47.759892>,  <40.642311, 31.115206, 47.583107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.786835, 31.443626, 47.759892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578580, 0.569110, -0.584259,
		-0.731233, -0.044614, 0.680668,
		0.361309, 0.821051, 0.441964,
		40.895226, 31.689941, 47.892479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041813, 31.634899, 47.676231>,  <40.642311, 31.115206, 47.583107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041813, 31.634899, 47.676231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.348312, 31.890265, 47.705341>,  <40.532211, 32.043484, 47.722809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.348312, 31.890265, 47.705341>,  <40.041813, 31.634899, 47.676231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348312, 31.890265, 47.705341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617802, 0.763126, -0.189630,
		-0.176601, 0.100340, 0.979155,
		0.766246, 0.638412, 0.072779,
		40.578186, 32.081787, 47.727177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787331, 32.099869, 48.068096>,  <40.041813, 31.634899, 47.676231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787331, 32.099869, 48.068096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.104435, 32.277321, 47.900894>,  <40.294697, 32.383793, 47.800575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.104435, 32.277321, 47.900894>,  <39.787331, 32.099869, 48.068096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104435, 32.277321, 47.900894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543347, 0.825115, -0.154787,
		0.276232, 0.349829, 0.895162,
		0.792761, 0.443626, -0.418002,
		40.342262, 32.410408, 47.775494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797684, 32.676510, 48.399185>,  <39.787331, 32.099869, 48.068096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797684, 32.676510, 48.399185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.009720, 32.708527, 48.061523>,  <40.136940, 32.727737, 47.858925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.009720, 32.708527, 48.061523>,  <39.797684, 32.676510, 48.399185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.009720, 32.708527, 48.061523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679354, 0.635840, -0.366313,
		0.507428, 0.767659, 0.391428,
		0.530089, 0.080041, -0.844156,
		40.168747, 32.732540, 47.808277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810070, 33.422302, 48.203945>,  <39.797684, 32.676510, 48.399185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810070, 33.422302, 48.203945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.881702, 33.223530, 47.864300>,  <39.924683, 33.104267, 47.660515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.881702, 33.223530, 47.864300>,  <39.810070, 33.422302, 48.203945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881702, 33.223530, 47.864300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644661, 0.592694, -0.482830,
		0.743196, 0.633856, -0.214209,
		0.179084, -0.496930, -0.849111,
		39.935429, 33.074451, 47.609566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837143, 33.941807, 47.700516>,  <39.810070, 33.422302, 48.203945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837143, 33.941807, 47.700516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.776241, 33.608051, 47.488625>,  <39.739700, 33.407799, 47.361488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.776241, 33.608051, 47.488625>,  <39.837143, 33.941807, 47.700516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776241, 33.608051, 47.488625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492088, 0.528815, -0.691523,
		0.857129, 0.155388, -0.491106,
		-0.152250, -0.834392, -0.529727,
		39.730568, 33.357735, 47.329708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.676651, 38.166336, 26.372927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.409607, 38.438698, 26.252481>,  <44.249382, 38.602116, 26.180214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.409607, 38.438698, 26.252481>,  <44.676651, 38.166336, 26.372927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.409607, 38.438698, 26.252481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475368, -0.078578, 0.876271,
		0.572993, 0.728148, 0.376138,
		-0.667611, 0.680901, -0.301114,
		44.209324, 38.642967, 26.162148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.735744, 38.657997, 26.764181>,  <44.676651, 38.166336, 26.372927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.735744, 38.657997, 26.764181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.360184, 38.696548, 26.632017>,  <44.134846, 38.719681, 26.552719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.360184, 38.696548, 26.632017>,  <44.735744, 38.657997, 26.764181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.360184, 38.696548, 26.632017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329543, 0.025224, 0.943804,
		0.099299, 0.995025, 0.008079,
		-0.938904, 0.096382, -0.330408,
		44.078514, 38.725464, 26.532894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.496334, 39.130981, 27.190548>,  <44.735744, 38.657997, 26.764181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.496334, 39.130981, 27.190548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.158688, 38.970936, 27.047787>,  <43.956100, 38.874908, 26.962130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.158688, 38.970936, 27.047787>,  <44.496334, 39.130981, 27.190548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.158688, 38.970936, 27.047787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342838, -0.109005, 0.933049,
		-0.412233, 0.909958, -0.045163,
		-0.844113, -0.400117, -0.356903,
		43.905453, 38.850903, 26.940716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.912224, 39.498398, 27.537828>,  <44.496334, 39.130981, 27.190548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.912224, 39.498398, 27.537828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.755260, 39.163815, 27.384802>,  <43.661083, 38.963066, 27.292986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.755260, 39.163815, 27.384802>,  <43.912224, 39.498398, 27.537828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.755260, 39.163815, 27.384802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423996, -0.204605, 0.882250,
		-0.816240, 0.508405, -0.274366,
		-0.392404, -0.836457, -0.382568,
		43.637539, 38.912876, 27.270031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.093277, 39.489891, 27.678366>,  <43.912224, 39.498398, 27.537828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.093277, 39.489891, 27.678366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.200668, 39.112011, 27.603045>,  <43.265102, 38.885284, 27.557852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.200668, 39.112011, 27.603045>,  <43.093277, 39.489891, 27.678366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.200668, 39.112011, 27.603045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381870, -0.283843, 0.879550,
		-0.884361, -0.164234, -0.436959,
		0.268480, -0.944701, -0.188304,
		43.281212, 38.828602, 27.546553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.466770, 38.979706, 27.758358>,  <43.093277, 39.489891, 27.678366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.466770, 38.979706, 27.758358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.816200, 38.791370, 27.807629>,  <43.025860, 38.678368, 27.837191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.816200, 38.791370, 27.807629>,  <42.466770, 38.979706, 27.758358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.816200, 38.791370, 27.807629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268001, -0.254126, 0.929298,
		-0.406248, -0.844826, -0.348184,
		0.873578, -0.470839, 0.123176,
		43.078274, 38.650120, 27.844582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.304150, 38.265472, 28.172373>,  <42.466770, 38.979706, 27.758358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.304150, 38.265472, 28.172373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.692902, 38.339462, 28.230661>,  <42.926151, 38.383858, 28.265635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.692902, 38.339462, 28.230661>,  <42.304150, 38.265472, 28.172373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.692902, 38.339462, 28.230661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098371, -0.243321, 0.964945,
		0.213950, -0.952144, -0.218282,
		0.971879, 0.184977, 0.145721,
		42.984467, 38.394955, 28.274378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.556458, 37.721954, 28.604479>,  <42.304150, 38.265472, 28.172373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.556458, 37.721954, 28.604479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.803802, 38.029099, 28.671425>,  <42.952209, 38.213387, 28.711592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.803802, 38.029099, 28.671425>,  <42.556458, 37.721954, 28.604479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.803802, 38.029099, 28.671425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039879, -0.243345, 0.969120,
		0.784879, -0.592595, -0.181098,
		0.618365, 0.767864, 0.167364,
		42.989311, 38.259457, 28.721634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.010441, 37.419170, 29.071289>,  <42.556458, 37.721954, 28.604479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.010441, 37.419170, 29.071289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.056313, 37.814808, 29.108248>,  <43.083836, 38.052193, 29.130423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.056313, 37.814808, 29.108248>,  <43.010441, 37.419170, 29.071289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.056313, 37.814808, 29.108248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110222, -0.105104, 0.988334,
		0.987269, -0.103158, -0.121073,
		0.114680, 0.989096, 0.092395,
		43.090717, 38.111538, 29.135967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.528889, 37.521427, 29.516676>,  <43.010441, 37.419170, 29.071289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.528889, 37.521427, 29.516676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.332901, 37.869225, 29.541714>,  <43.215309, 38.077904, 29.556736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.332901, 37.869225, 29.541714>,  <43.528889, 37.521427, 29.516676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.332901, 37.869225, 29.541714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059934, -0.038034, 0.997477,
		0.869679, 0.492482, -0.033477,
		-0.489966, 0.869491, 0.062594,
		43.185913, 38.130074, 29.560492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.887852, 37.933594, 29.963453>,  <43.528889, 37.521427, 29.516676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.887852, 37.933594, 29.963453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.523300, 38.097103, 29.982588>,  <43.304569, 38.195210, 29.994068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.523300, 38.097103, 29.982588>,  <43.887852, 37.933594, 29.963453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.523300, 38.097103, 29.982588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067486, 0.033775, 0.997148,
		0.405993, 0.912010, -0.058369,
		-0.911381, 0.408774, 0.047836,
		43.249886, 38.219734, 29.996939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.997654, 38.627220, 30.295536>,  <43.887852, 37.933594, 29.963453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.997654, 38.627220, 30.295536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.620247, 38.508011, 30.353449>,  <43.393803, 38.436485, 30.388197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.620247, 38.508011, 30.353449>,  <43.997654, 38.627220, 30.295536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.620247, 38.508011, 30.353449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075785, 0.231267, 0.969934,
		-0.322549, 0.926119, -0.195618,
		-0.943514, -0.298027, 0.144781,
		43.337193, 38.418602, 30.396883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.723198, 39.047981, 30.805576>,  <43.997654, 38.627220, 30.295536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.723198, 39.047981, 30.805576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.468605, 38.739708, 30.817835>,  <43.315849, 38.554745, 30.825190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.468605, 38.739708, 30.817835>,  <43.723198, 39.047981, 30.805576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.468605, 38.739708, 30.817835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064769, 0.092998, 0.993558,
		-0.768571, 0.630392, -0.109107,
		-0.636478, -0.770686, 0.030646,
		43.277660, 38.508503, 30.827028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.269405, 39.248531, 31.338253>,  <43.723198, 39.047981, 30.805576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.269405, 39.248531, 31.338253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.186581, 38.859127, 31.299465>,  <43.136887, 38.625484, 31.276194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.186581, 38.859127, 31.299465>,  <43.269405, 39.248531, 31.338253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.186581, 38.859127, 31.299465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105179, -0.076390, 0.991515,
		-0.972657, 0.215508, -0.086575,
		-0.207066, -0.973509, -0.096969,
		43.124462, 38.567074, 31.270374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.659241, 39.039433, 31.837805>,  <43.269405, 39.248531, 31.338253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.659241, 39.039433, 31.837805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.845787, 38.700218, 31.737133>,  <42.957714, 38.496689, 31.676731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.845787, 38.700218, 31.737133>,  <42.659241, 39.039433, 31.837805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.845787, 38.700218, 31.737133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032119, -0.268091, 0.962858,
		-0.884010, -0.457125, -0.097789,
		0.466363, -0.848035, -0.251677,
		42.985695, 38.445808, 31.661631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.277409, 38.580906, 32.190117>,  <42.659241, 39.039433, 31.837805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.277409, 38.580906, 32.190117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.640594, 38.420185, 32.142521>,  <42.858505, 38.323753, 32.113964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.640594, 38.420185, 32.142521>,  <42.277409, 38.580906, 32.190117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.640594, 38.420185, 32.142521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026942, -0.227383, 0.973433,
		-0.418183, -0.887047, -0.195630,
		0.907963, -0.401803, -0.118986,
		42.912983, 38.299644, 32.106827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.359642, 38.099144, 32.810349>,  <42.277409, 38.580906, 32.190117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.359642, 38.099144, 32.810349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.732067, 38.066990, 32.667995>,  <42.955524, 38.047695, 32.582584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.732067, 38.066990, 32.667995>,  <42.359642, 38.099144, 32.810349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.732067, 38.066990, 32.667995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311584, -0.332291, 0.890224,
		-0.189821, -0.939745, -0.284337,
		0.931066, -0.080388, -0.355885,
		43.011387, 38.042873, 32.561230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.612732, 37.378880, 32.936901>,  <42.359642, 38.099144, 32.810349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.612732, 37.378880, 32.936901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.908245, 37.646317, 32.902973>,  <43.085552, 37.806778, 32.882618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.908245, 37.646317, 32.902973>,  <42.612732, 37.378880, 32.936901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.908245, 37.646317, 32.902973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409163, -0.344950, 0.844746,
		0.535530, -0.658784, -0.528404,
		0.738778, 0.668590, -0.084819,
		43.129879, 37.846893, 32.877529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.180656, 36.966827, 33.104881>,  <42.612732, 37.378880, 32.936901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.180656, 36.966827, 33.104881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.301884, 37.346394, 33.140018>,  <43.374619, 37.574131, 33.161102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.301884, 37.346394, 33.140018>,  <43.180656, 36.966827, 33.104881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.301884, 37.346394, 33.140018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546828, -0.248658, 0.799468,
		0.780468, -0.194254, -0.594251,
		0.303066, 0.948912, 0.087846,
		43.392803, 37.631065, 33.166370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.010761, 36.971939, 33.247334>,  <43.180656, 36.966827, 33.104881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.010761, 36.971939, 33.247334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.874996, 37.331940, 33.356735>,  <43.793537, 37.547939, 33.422375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.874996, 37.331940, 33.356735>,  <44.010761, 36.971939, 33.247334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.874996, 37.331940, 33.356735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378369, -0.135572, 0.915673,
		0.861184, 0.414273, -0.294517,
		-0.339410, 0.899999, 0.273501,
		43.773174, 37.601940, 33.438786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.617992, 37.290699, 33.608456>,  <44.010761, 36.971939, 33.247334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.617992, 37.290699, 33.608456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.277420, 37.464481, 33.725975>,  <44.073078, 37.568748, 33.796486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.277420, 37.464481, 33.725975>,  <44.617992, 37.290699, 33.608456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.277420, 37.464481, 33.725975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301251, -0.053444, 0.952046,
		0.429321, 0.899108, -0.085376,
		-0.851429, 0.434453, 0.293802,
		44.021992, 37.594818, 33.814117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.156563, 36.946587, 34.036766>,  <44.617992, 37.290699, 33.608456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.156563, 36.946587, 34.036766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.548119, 36.891392, 34.097069>,  <45.783054, 36.858273, 34.133251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.548119, 36.891392, 34.097069>,  <45.156563, 36.946587, 34.036766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.548119, 36.891392, 34.097069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131173, -0.141468, -0.981214,
		0.156725, 0.980278, -0.120382,
		0.978893, -0.137990, 0.150758,
		45.841785, 36.849995, 34.142296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.650429, 37.399319, 33.603344>,  <45.156563, 36.946587, 34.036766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.650429, 37.399319, 33.603344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.774651, 37.033680, 33.707634>,  <45.849182, 36.814297, 33.770206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.774651, 37.033680, 33.707634>,  <45.650429, 37.399319, 33.603344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.774651, 37.033680, 33.707634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050050, -0.258178, -0.964800,
		0.949237, 0.312671, -0.034428,
		0.310554, -0.914101, 0.260721,
		45.867817, 36.759449, 33.785851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.251255, 37.349892, 33.237610>,  <45.650429, 37.399319, 33.603344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.251255, 37.349892, 33.237610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.116257, 36.987152, 33.338573>,  <46.035255, 36.769508, 33.399151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.116257, 36.987152, 33.338573>,  <46.251255, 37.349892, 33.237610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.116257, 36.987152, 33.338573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041705, -0.282288, -0.958423,
		0.940402, -0.312938, 0.133091,
		-0.337498, -0.906853, 0.252413,
		46.015007, 36.715096, 33.414299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.647125, 36.783562, 32.901714>,  <46.251255, 37.349892, 33.237610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.647125, 36.783562, 32.901714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.293617, 36.622330, 32.996773>,  <46.081512, 36.525593, 33.053810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.293617, 36.622330, 32.996773>,  <46.647125, 36.783562, 32.901714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.293617, 36.622330, 32.996773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078418, -0.373120, -0.924463,
		0.461302, -0.835650, 0.298145,
		-0.883771, -0.403077, 0.237650,
		46.028484, 36.501408, 33.068069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.679436, 36.214020, 32.417240>,  <46.647125, 36.783562, 32.901714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.679436, 36.214020, 32.417240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.308777, 36.273254, 32.555458>,  <46.086384, 36.308796, 32.638390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.308777, 36.273254, 32.555458>,  <46.679436, 36.214020, 32.417240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.308777, 36.273254, 32.555458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361840, -0.101987, -0.926645,
		-0.101987, -0.983701, 0.148090,
		0.926645, -0.148090, -0.345541,
		46.030785, 36.317680, 32.659119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.331047, 35.546638, 32.238468>,  <46.679436, 36.214020, 32.417240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.331047, 35.546638, 32.238468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.069798, 35.843536, 32.298473>,  <45.913048, 36.021675, 32.334476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.069798, 35.843536, 32.298473>,  <46.331047, 35.546638, 32.238468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.069798, 35.843536, 32.298473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270900, -0.044028, -0.961600,
		-0.707140, -0.668679, 0.229830,
		-0.653121, 0.742246, 0.150011,
		45.873859, 36.066212, 32.343475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.693134, 35.298813, 31.880373>,  <46.331047, 35.546638, 32.238468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.693134, 35.298813, 31.880373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.647552, 35.693913, 31.923035>,  <45.620205, 35.930973, 31.948631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.647552, 35.693913, 31.923035>,  <45.693134, 35.298813, 31.880373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.647552, 35.693913, 31.923035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188665, 0.083886, -0.978452,
		-0.975408, -0.131620, 0.176794,
		-0.113954, 0.987745, 0.106656,
		45.613365, 35.990234, 31.955030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.086826, 35.386204, 31.597748>,  <45.693134, 35.298813, 31.880373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.086826, 35.386204, 31.597748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.252174, 35.750374, 31.591381>,  <45.351383, 35.968876, 31.587561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.252174, 35.750374, 31.591381>,  <45.086826, 35.386204, 31.597748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.252174, 35.750374, 31.591381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498006, 0.211417, -0.841007,
		-0.762307, 0.355577, 0.540790,
		0.413375, 0.910422, -0.015915,
		45.376186, 36.023502, 31.586607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.529579, 35.928722, 31.612850>,  <45.086826, 35.386204, 31.597748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.529579, 35.928722, 31.612850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.865002, 36.090076, 31.466372>,  <45.066257, 36.186890, 31.378485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.865002, 36.090076, 31.466372>,  <44.529579, 35.928722, 31.612850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.865002, 36.090076, 31.466372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455851, 0.151401, -0.877085,
		-0.298358, 0.902420, 0.310840,
		0.838560, 0.403382, -0.366197,
		45.116570, 36.211090, 31.356512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.287373, 36.317768, 31.060310>,  <44.529579, 35.928722, 31.612850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.287373, 36.317768, 31.060310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.678581, 36.336792, 30.979099>,  <44.913307, 36.348206, 30.930372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.678581, 36.336792, 30.979099>,  <44.287373, 36.317768, 31.060310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.678581, 36.336792, 30.979099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206625, 0.089895, -0.974282,
		-0.028090, 0.994815, 0.097747,
		0.978017, 0.047564, -0.203028,
		44.971985, 36.351063, 30.918190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.365402, 36.899216, 30.638220>,  <44.287373, 36.317768, 31.060310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.365402, 36.899216, 30.638220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.692261, 36.675114, 30.583975>,  <44.888374, 36.540653, 30.551428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.692261, 36.675114, 30.583975>,  <44.365402, 36.899216, 30.638220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.692261, 36.675114, 30.583975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110923, 0.078035, -0.990761,
		0.565663, 0.824635, 0.001620,
		0.817142, -0.560257, -0.135613,
		44.937405, 36.507038, 30.543291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.795692, 37.232262, 30.060358>,  <44.365402, 36.899216, 30.638220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.795692, 37.232262, 30.060358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.926968, 36.855480, 30.088690>,  <45.005733, 36.629410, 30.105688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.926968, 36.855480, 30.088690>,  <44.795692, 37.232262, 30.060358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.926968, 36.855480, 30.088690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117937, -0.115256, -0.986310,
		0.937221, 0.315341, -0.148917,
		0.328187, -0.941953, 0.070830,
		45.025425, 36.572895, 30.109940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.097157, 37.152443, 29.425127>,  <44.795692, 37.232262, 30.060358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.097157, 37.152443, 29.425127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.073547, 36.773727, 29.551687>,  <45.059383, 36.546497, 29.627623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.073547, 36.773727, 29.551687>,  <45.097157, 37.152443, 29.425127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.073547, 36.773727, 29.551687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011413, -0.316292, -0.948593,
		0.998192, -0.059596, 0.007861,
		-0.059018, -0.946788, 0.316400,
		45.055843, 36.489693, 29.646606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.748268, 36.822010, 29.151196>,  <45.097157, 37.152443, 29.425127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.748268, 36.822010, 29.151196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.484383, 36.527145, 29.209669>,  <45.326054, 36.350227, 29.244753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.484383, 36.527145, 29.209669>,  <45.748268, 36.822010, 29.151196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.484383, 36.527145, 29.209669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139915, -0.311591, -0.939859,
		0.738381, -0.599581, 0.308701,
		-0.659710, -0.737166, 0.146182,
		45.286469, 36.305996, 29.253523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.027695, 36.190067, 28.802441>,  <45.748268, 36.822010, 29.151196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.027695, 36.190067, 28.802441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.632950, 36.134705, 28.835783>,  <45.396103, 36.101486, 28.855787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.632950, 36.134705, 28.835783>,  <46.027695, 36.190067, 28.802441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.632950, 36.134705, 28.835783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043238, -0.270847, -0.961651,
		0.155677, -0.952620, 0.261304,
		-0.986861, -0.138409, 0.083354,
		45.336891, 36.093182, 28.860788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.870201, 35.536179, 28.482454>,  <46.027695, 36.190067, 28.802441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.870201, 35.536179, 28.482454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.513084, 35.713425, 28.450045>,  <45.298813, 35.819775, 28.430599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.513084, 35.713425, 28.450045>,  <45.870201, 35.536179, 28.482454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.513084, 35.713425, 28.450045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010941, -0.158484, -0.987301,
		-0.450334, -0.882342, 0.136645,
		-0.892793, 0.443120, -0.081024,
		45.245247, 35.846359, 28.425737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.429420, 35.155697, 27.933157>,  <45.870201, 35.536179, 28.482454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.429420, 35.155697, 27.933157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.240387, 35.504562, 27.983740>,  <45.126968, 35.713882, 28.014090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.240387, 35.504562, 27.983740>,  <45.429420, 35.155697, 27.933157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.240387, 35.504562, 27.983740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163704, 0.054118, -0.985024,
		-0.865948, -0.486208, 0.117201,
		-0.472584, 0.872166, 0.126457,
		45.098610, 35.766212, 28.021677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.829708, 35.072155, 27.482458>,  <45.429420, 35.155697, 27.933157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.829708, 35.072155, 27.482458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.834881, 35.467022, 27.546127>,  <44.837986, 35.703941, 27.584330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.834881, 35.467022, 27.546127>,  <44.829708, 35.072155, 27.482458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.834881, 35.467022, 27.546127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312784, 0.155192, -0.937060,
		-0.949736, -0.037666, 0.310777,
		0.012935, 0.987166, 0.159172,
		44.838760, 35.763172, 27.593880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.212769, 35.379032, 27.124510>,  <44.829708, 35.072155, 27.482458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.212769, 35.379032, 27.124510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.458763, 35.686752, 27.193758>,  <44.606361, 35.871384, 27.235308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.458763, 35.686752, 27.193758>,  <44.212769, 35.379032, 27.124510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.458763, 35.686752, 27.193758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017738, 0.205995, -0.978392,
		-0.788336, 0.604771, 0.113038,
		0.614989, 0.769297, 0.173121,
		44.643261, 35.917542, 27.245695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.015549, 35.981720, 26.690104>,  <44.212769, 35.379032, 27.124510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.015549, 35.981720, 26.690104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.406635, 36.029018, 26.759491>,  <44.641285, 36.057400, 26.801123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.406635, 36.029018, 26.759491>,  <44.015549, 35.981720, 26.690104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.406635, 36.029018, 26.759491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139959, 0.248737, -0.958406,
		-0.156478, 0.961326, 0.226644,
		0.977715, 0.118249, 0.173468,
		44.699951, 36.064491, 26.811531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.203995, 36.564701, 26.288902>,  <44.015549, 35.981720, 26.690104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.203995, 36.564701, 26.288902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.555702, 36.383846, 26.348854>,  <44.766727, 36.275333, 26.384825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.555702, 36.383846, 26.348854>,  <44.203995, 36.564701, 26.288902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.555702, 36.383846, 26.348854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194084, 0.052721, -0.979567,
		0.434992, 0.890391, 0.134108,
		0.879269, -0.452132, 0.149877,
		44.819481, 36.248207, 26.393818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.505554, 37.128170, 43.124062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.274765, 36.819241, 43.017765>,  <41.136292, 36.633884, 42.953987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.274765, 36.819241, 43.017765>,  <41.505554, 37.128170, 43.124062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.274765, 36.819241, 43.017765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034456, 0.302054, -0.952668,
		0.816034, -0.558823, -0.147667,
		-0.576977, -0.772321, -0.265741,
		41.101673, 36.587543, 42.938042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.901264, 36.902195, 42.513283>,  <41.505554, 37.128170, 43.124062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.901264, 36.902195, 42.513283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.536522, 36.737995, 42.514000>,  <41.317677, 36.639477, 42.514431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.536522, 36.737995, 42.514000>,  <41.901264, 36.902195, 42.513283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.536522, 36.737995, 42.514000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130759, 0.286323, -0.949169,
		0.389120, -0.865743, -0.314763,
		-0.911860, -0.410498, 0.001790,
		41.262962, 36.614845, 42.514538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768097, 36.359657, 41.947830>,  <41.901264, 36.902195, 42.513283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768097, 36.359657, 41.947830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.392559, 36.452911, 42.049191>,  <41.167236, 36.508865, 42.110008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.392559, 36.452911, 42.049191>,  <41.768097, 36.359657, 41.947830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392559, 36.452911, 42.049191> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267645, -0.031094, -0.963016,
		-0.216635, -0.971947, 0.091590,
		-0.938848, 0.233136, 0.253401,
		41.110905, 36.522850, 42.125210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395500, 35.950485, 41.597950>,  <41.768097, 36.359657, 41.947830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.395500, 35.950485, 41.597950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126530, 36.233162, 41.685978>,  <40.965149, 36.402767, 41.738796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126530, 36.233162, 41.685978>,  <41.395500, 35.950485, 41.597950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126530, 36.233162, 41.685978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257345, 0.055554, -0.964721,
		-0.693985, -0.705338, 0.144507,
		-0.672427, 0.706690, 0.220069,
		40.924801, 36.445168, 41.751999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743904, 35.755577, 41.392452>,  <41.395500, 35.950485, 41.597950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743904, 35.755577, 41.392452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697342, 36.152420, 41.411137>,  <40.669403, 36.390526, 41.422348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697342, 36.152420, 41.411137>,  <40.743904, 35.755577, 41.392452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697342, 36.152420, 41.411137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411494, -0.005372, -0.911397,
		-0.903948, -0.125310, 0.408870,
		-0.116404, 0.992103, 0.046709,
		40.662422, 36.450050, 41.425148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.150936, 35.827621, 40.940456>,  <40.743904, 35.755577, 41.392452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.150936, 35.827621, 40.940456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278416, 36.205246, 40.974331>,  <40.354904, 36.431820, 40.994656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278416, 36.205246, 40.974331>,  <40.150936, 35.827621, 40.940456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278416, 36.205246, 40.974331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203235, 0.155334, -0.966730,
		-0.925810, 0.290888, 0.241372,
		0.318703, 0.944063, 0.084691,
		40.374027, 36.488464, 40.999737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543388, 36.467937, 40.761845>,  <40.150936, 35.827621, 40.940456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543388, 36.467937, 40.761845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919289, 36.594669, 40.710484>,  <40.144829, 36.670708, 40.679665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919289, 36.594669, 40.710484>,  <39.543388, 36.467937, 40.761845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919289, 36.594669, 40.710484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204859, 0.221204, -0.953468,
		-0.273685, 0.922327, 0.272783,
		0.939750, 0.316832, -0.128407,
		40.201214, 36.689720, 40.671963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439823, 37.055752, 40.434177>,  <39.543388, 36.467937, 40.761845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439823, 37.055752, 40.434177> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826668, 36.967049, 40.384342>,  <40.058773, 36.913826, 40.354439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826668, 36.967049, 40.384342>,  <39.439823, 37.055752, 40.434177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826668, 36.967049, 40.384342> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097680, 0.128477, -0.986890,
		0.234855, 0.966601, 0.102590,
		0.967110, -0.221755, -0.124592,
		40.116802, 36.900520, 40.346966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512169, 37.191284, 39.817554>,  <39.439823, 37.055752, 40.434177>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512169, 37.191284, 39.817554> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887089, 37.052177, 39.826675>,  <40.112041, 36.968712, 39.832150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887089, 37.052177, 39.826675>,  <39.512169, 37.191284, 39.817554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887089, 37.052177, 39.826675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084733, 0.163918, -0.982828,
		0.338060, 0.923140, 0.183109,
		0.937302, -0.347770, 0.022806,
		40.168278, 36.947845, 39.833519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944241, 37.653198, 39.370453>,  <39.512169, 37.191284, 39.817554>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944241, 37.653198, 39.370453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089809, 37.282036, 39.402821>,  <40.177151, 37.059338, 39.422241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089809, 37.282036, 39.402821>,  <39.944241, 37.653198, 39.370453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089809, 37.282036, 39.402821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237074, 0.008261, -0.971456,
		0.900753, 0.372720, 0.222989,
		0.363924, -0.927907, 0.080921,
		40.198986, 37.003662, 39.427097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606430, 37.566189, 38.989975>,  <39.944241, 37.653198, 39.370453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606430, 37.566189, 38.989975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503254, 37.180885, 39.019894>,  <40.441349, 36.949703, 39.037846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503254, 37.180885, 39.019894>,  <40.606430, 37.566189, 38.989975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.503254, 37.180885, 39.019894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151667, -0.116827, -0.981503,
		0.954182, -0.241825, 0.176229,
		-0.257941, -0.963261, 0.074797,
		40.425873, 36.891907, 39.042332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.050610, 37.224781, 38.592426>,  <40.606430, 37.566189, 38.989975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.050610, 37.224781, 38.592426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738171, 36.980301, 38.643509>,  <40.550705, 36.833611, 38.674156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738171, 36.980301, 38.643509>,  <41.050610, 37.224781, 38.592426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.738171, 36.980301, 38.643509> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035392, -0.160854, -0.986343,
		0.623400, -0.774954, 0.104011,
		-0.781102, -0.611205, 0.127704,
		40.503841, 36.796940, 38.681820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162132, 36.422325, 38.287483>,  <41.050610, 37.224781, 38.592426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.162132, 36.422325, 38.287483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793957, 36.578495, 38.279774>,  <40.573051, 36.672195, 38.275146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793957, 36.578495, 38.279774>,  <41.162132, 36.422325, 38.287483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793957, 36.578495, 38.279774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051329, 0.071835, -0.996095,
		-0.387514, -0.917829, -0.086159,
		-0.920434, 0.390423, -0.019274,
		40.517826, 36.695621, 38.273991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078766, 36.792908, 37.745625>,  <41.162132, 36.422325, 38.287483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078766, 36.792908, 37.745625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.250492, 37.063869, 37.984558>,  <41.353527, 37.226448, 38.127918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.250492, 37.063869, 37.984558>,  <41.078766, 36.792908, 37.745625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.250492, 37.063869, 37.984558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508793, -0.365049, 0.779659,
		0.746204, -0.638637, 0.187940,
		0.429312, 0.677408, 0.597336,
		41.379284, 37.267090, 38.163757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.545757, 36.510155, 37.373508>,  <41.078766, 36.792908, 37.745625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.545757, 36.510155, 37.373508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.672287, 36.197231, 37.158871>,  <41.748203, 36.009476, 37.030090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.672287, 36.197231, 37.158871>,  <41.545757, 36.510155, 37.373508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.672287, 36.197231, 37.158871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166727, -0.602679, 0.780372,
		-0.933885, -0.157387, -0.321075,
		0.316326, -0.782309, -0.536592,
		41.767185, 35.962540, 36.997894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126579, 35.918137, 37.482677>,  <41.545757, 36.510155, 37.373508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126579, 35.918137, 37.482677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475426, 35.769810, 37.354988>,  <41.684734, 35.680813, 37.278374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475426, 35.769810, 37.354988>,  <41.126579, 35.918137, 37.482677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.475426, 35.769810, 37.354988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100839, -0.502197, 0.858854,
		-0.478778, -0.781218, -0.400587,
		0.872126, -0.370805, -0.319218,
		41.737061, 35.658566, 37.259220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.064003, 35.074863, 37.450245>,  <41.126579, 35.918137, 37.482677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.064003, 35.074863, 37.450245> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438065, 35.212112, 37.485474>,  <41.662502, 35.294460, 37.506611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438065, 35.212112, 37.485474>,  <41.064003, 35.074863, 37.450245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.438065, 35.212112, 37.485474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108241, -0.513500, 0.851235,
		0.337305, -0.786501, -0.517341,
		0.935152, 0.343123, 0.088075,
		41.718609, 35.315048, 37.511894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494030, 34.447533, 37.504398>,  <41.064003, 35.074863, 37.450245>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.494030, 34.447533, 37.504398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738892, 34.737587, 37.630543>,  <41.885807, 34.911617, 37.706230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738892, 34.737587, 37.630543>,  <41.494030, 34.447533, 37.504398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.738892, 34.737587, 37.630543> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270338, -0.566707, 0.778306,
		0.743095, -0.391185, -0.542940,
		0.612150, 0.725133, 0.315365,
		41.922535, 34.955128, 37.725151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191307, 34.143902, 37.728264>,  <41.494030, 34.447533, 37.504398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191307, 34.143902, 37.728264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186932, 34.493740, 37.922157>,  <42.184307, 34.703644, 38.038494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186932, 34.493740, 37.922157>,  <42.191307, 34.143902, 37.728264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.186932, 34.493740, 37.922157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231547, -0.469376, 0.852099,
		0.972762, 0.121558, -0.197375,
		-0.010936, 0.874591, 0.484738,
		42.183651, 34.756119, 38.067577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.774681, 34.022617, 38.110569>,  <42.191307, 34.143902, 37.728264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.774681, 34.022617, 38.110569> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.558971, 34.319370, 38.269966>,  <42.429546, 34.497421, 38.365604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.558971, 34.319370, 38.269966>,  <42.774681, 34.022617, 38.110569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.558971, 34.319370, 38.269966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042335, -0.496478, 0.867017,
		0.841067, 0.450687, 0.299144,
		-0.539271, 0.741884, 0.398492,
		42.397190, 34.541935, 38.389515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.096172, 34.181416, 38.764404>,  <42.774681, 34.022617, 38.110569>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.096172, 34.181416, 38.764404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.723225, 34.321266, 38.801178>,  <42.499458, 34.405178, 38.823242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.723225, 34.321266, 38.801178>,  <43.096172, 34.181416, 38.764404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.723225, 34.321266, 38.801178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059520, -0.399302, 0.914885,
		0.356581, 0.847536, 0.393106,
		-0.932366, 0.349629, 0.091938,
		42.443516, 34.426155, 38.828758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.045368, 34.588398, 39.460678>,  <43.096172, 34.181416, 38.764404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.045368, 34.588398, 39.460678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.679779, 34.473885, 39.345654>,  <42.460426, 34.405178, 39.276638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.679779, 34.473885, 39.345654>,  <43.045368, 34.588398, 39.460678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.679779, 34.473885, 39.345654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185805, -0.334734, 0.923813,
		-0.360723, 0.897774, 0.252747,
		-0.913978, -0.286279, -0.287557,
		42.405586, 34.388000, 39.259388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.558666, 34.872753, 39.941628>,  <43.045368, 34.588398, 39.460678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.558666, 34.872753, 39.941628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.362698, 34.563416, 39.780666>,  <42.245117, 34.377815, 39.684090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.362698, 34.563416, 39.780666>,  <42.558666, 34.872753, 39.941628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.362698, 34.563416, 39.780666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226304, -0.332947, 0.915387,
		-0.841883, 0.539529, -0.011893,
		-0.489918, -0.773340, -0.402399,
		42.215721, 34.331413, 39.659946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.003677, 34.786156, 40.293514>,  <42.558666, 34.872753, 39.941628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.003677, 34.786156, 40.293514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.059971, 34.426163, 40.128479>,  <42.093746, 34.210167, 40.029457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.059971, 34.426163, 40.128479>,  <42.003677, 34.786156, 40.293514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.059971, 34.426163, 40.128479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295504, -0.435925, 0.850086,
		-0.944919, 0.002286, -0.327297,
		0.140733, -0.899980, -0.412589,
		42.102192, 34.156170, 40.004704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474308, 34.364826, 40.494751>,  <42.003677, 34.786156, 40.293514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474308, 34.364826, 40.494751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.723335, 34.080193, 40.364479>,  <41.872749, 33.909412, 40.286316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.723335, 34.080193, 40.364479>,  <41.474308, 34.364826, 40.494751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.723335, 34.080193, 40.364479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098700, -0.484239, 0.869350,
		-0.776319, -0.509082, -0.371704,
		0.622565, -0.711581, -0.325678,
		41.910107, 33.866718, 40.266777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212387, 33.667759, 40.823566>,  <41.474308, 34.364826, 40.494751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.212387, 33.667759, 40.823566> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583412, 33.572136, 40.708694>,  <41.806026, 33.514763, 40.639771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583412, 33.572136, 40.708694>,  <41.212387, 33.667759, 40.823566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.583412, 33.572136, 40.708694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119136, -0.539251, 0.833676,
		-0.354158, -0.807503, -0.471711,
		0.927566, -0.239055, -0.287182,
		41.861683, 33.500420, 40.622540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194511, 32.972782, 40.846039>,  <41.212387, 33.667759, 40.823566>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.194511, 32.972782, 40.846039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.582886, 33.067753, 40.833942>,  <41.815910, 33.124733, 40.826687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.582886, 33.067753, 40.833942>,  <41.194511, 32.972782, 40.846039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.582886, 33.067753, 40.833942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145409, -0.484797, 0.862455,
		0.190109, -0.841785, -0.505230,
		0.970935, 0.237425, -0.030239,
		41.874165, 33.138981, 40.824871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581562, 32.233856, 40.793701>,  <41.194511, 32.972782, 40.846039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581562, 32.233856, 40.793701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.804314, 32.543324, 40.914577>,  <41.937965, 32.729004, 40.987103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.804314, 32.543324, 40.914577>,  <41.581562, 32.233856, 40.793701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.804314, 32.543324, 40.914577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386179, -0.563287, 0.730461,
		0.735357, -0.290078, -0.612458,
		0.556880, 0.773668, 0.302195,
		41.971378, 32.775425, 41.005238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850189, 31.652771, 40.560085>,  <41.581562, 32.233856, 40.793701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850189, 31.652771, 40.560085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617222, 31.328007, 40.544128>,  <41.477440, 31.133148, 40.534554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617222, 31.328007, 40.544128>,  <41.850189, 31.652771, 40.560085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.617222, 31.328007, 40.544128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559026, 0.435675, -0.705463,
		0.590152, -0.388574, -0.707623,
		-0.582419, -0.811910, -0.039891,
		41.442497, 31.084435, 40.532162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768959, 31.449715, 39.838303>,  <41.850189, 31.652771, 40.560085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768959, 31.449715, 39.838303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460175, 31.310526, 40.051090>,  <41.274902, 31.227013, 40.178764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460175, 31.310526, 40.051090>,  <41.768959, 31.449715, 39.838303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.460175, 31.310526, 40.051090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635668, 0.423724, -0.645278,
		-0.000869, -0.836286, -0.548294,
		-0.771962, -0.347972, 0.531968,
		41.228584, 31.206135, 40.210682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.333870, 31.073692, 39.342819>,  <41.768959, 31.449715, 39.838303>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.333870, 31.073692, 39.342819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101177, 31.146952, 39.659817>,  <40.961563, 31.190907, 39.850018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101177, 31.146952, 39.659817>,  <41.333870, 31.073692, 39.342819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.101177, 31.146952, 39.659817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724079, 0.327254, -0.607136,
		-0.370543, -0.927018, -0.057759,
		-0.581728, 0.183148, 0.792496,
		40.926659, 31.201897, 39.897564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669094, 30.906733, 39.108364>,  <41.333870, 31.073692, 39.342819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669094, 30.906733, 39.108364> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554577, 31.120470, 39.426487>,  <40.485867, 31.248713, 39.617359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554577, 31.120470, 39.426487>,  <40.669094, 30.906733, 39.108364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.554577, 31.120470, 39.426487> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761268, 0.377180, -0.527452,
		-0.581815, -0.756446, 0.298798,
		-0.286289, 0.534345, 0.795308,
		40.468689, 31.280773, 39.665081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922077, 30.867693, 39.142311>,  <40.669094, 30.906733, 39.108364>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922077, 30.867693, 39.142311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016132, 31.187553, 39.363316>,  <40.072567, 31.379471, 39.495918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016132, 31.187553, 39.363316>,  <39.922077, 30.867693, 39.142311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016132, 31.187553, 39.363316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724549, 0.523114, -0.448754,
		-0.647872, -0.294800, 0.702392,
		0.235138, 0.799653, 0.552508,
		40.086674, 31.427450, 39.529068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243893, 31.158911, 39.374386>,  <39.922077, 30.867693, 39.142311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243893, 31.158911, 39.374386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527439, 31.439030, 39.408066>,  <39.697567, 31.607101, 39.428272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527439, 31.439030, 39.408066>,  <39.243893, 31.158911, 39.374386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527439, 31.439030, 39.408066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632025, 0.683639, -0.364941,
		-0.313126, 0.205482, 0.927216,
		0.708870, 0.700296, 0.084195,
		39.740101, 31.649118, 39.433323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969769, 31.722555, 39.782742>,  <39.243893, 31.158911, 39.374386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969769, 31.722555, 39.782742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254494, 31.880470, 39.550377>,  <39.425331, 31.975220, 39.410957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254494, 31.880470, 39.550377>,  <38.969769, 31.722555, 39.782742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254494, 31.880470, 39.550377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679411, 0.596744, -0.426963,
		0.178095, 0.698597, 0.692996,
		0.711816, 0.394789, -0.580912,
		39.468040, 31.998907, 39.376102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653831, 32.366219, 39.854259>,  <38.969769, 31.722555, 39.782742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653831, 32.366219, 39.854259> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905285, 32.395596, 39.544571>,  <39.056156, 32.413223, 39.358757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905285, 32.395596, 39.544571>,  <38.653831, 32.366219, 39.854259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905285, 32.395596, 39.544571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417728, 0.871616, -0.256494,
		0.655989, 0.484656, 0.578608,
		0.628635, 0.073443, -0.774225,
		39.093876, 32.417629, 39.312302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853039, 33.070267, 39.713932>,  <38.653831, 32.366219, 39.854259>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853039, 33.070267, 39.713932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940701, 32.907734, 39.359108>,  <38.993298, 32.810215, 39.146214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940701, 32.907734, 39.359108>,  <38.853039, 33.070267, 39.713932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940701, 32.907734, 39.359108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333751, 0.823093, -0.459486,
		0.916833, 0.396753, 0.044770,
		0.219152, -0.406330, -0.887056,
		39.006447, 32.785835, 39.092991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384144, 33.420689, 39.402912>,  <38.853039, 33.070267, 39.713932>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384144, 33.420689, 39.402912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146366, 33.227371, 39.145832>,  <39.003700, 33.111382, 38.991585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146366, 33.227371, 39.145832>,  <39.384144, 33.420689, 39.402912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146366, 33.227371, 39.145832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188542, 0.860729, -0.472860,
		0.781725, -0.159910, -0.602772,
		-0.594439, -0.483295, -0.642704,
		38.968033, 33.082382, 38.953022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472752, 33.802235, 38.871277>,  <39.384144, 33.420689, 39.402912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472752, 33.802235, 38.871277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168823, 33.587982, 38.723892>,  <38.986465, 33.459431, 38.635460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168823, 33.587982, 38.723892>,  <39.472752, 33.802235, 38.871277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168823, 33.587982, 38.723892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202263, 0.733388, -0.649023,
		0.617862, -0.418619, -0.665586,
		-0.759826, -0.535630, -0.368462,
		38.940876, 33.427292, 38.613354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644909, 34.225727, 39.488159>,  <39.472752, 33.802235, 38.871277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644909, 34.225727, 39.488159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560284, 34.616333, 39.504425>,  <39.509506, 34.850697, 39.514187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560284, 34.616333, 39.504425>,  <39.644909, 34.225727, 39.488159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560284, 34.616333, 39.504425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736343, -0.131894, -0.663629,
		-0.642682, -0.170345, 0.746956,
		-0.211565, 0.976518, 0.040667,
		39.496815, 34.909286, 39.516624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<44.021400, 29.600513, 42.906231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.656288, 29.541021, 43.058395>,  <43.437222, 29.505327, 43.149696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.656288, 29.541021, 43.058395>,  <44.021400, 29.600513, 42.906231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.656288, 29.541021, 43.058395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368006, -0.104645, -0.923916,
		0.177224, -0.983325, 0.040783,
		-0.912778, -0.148731, 0.380415,
		43.382454, 29.496403, 43.172520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.730797, 29.084614, 42.495461>,  <44.021400, 29.600513, 42.906231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.730797, 29.084614, 42.495461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.417980, 29.253841, 42.678513>,  <43.230289, 29.355377, 42.788342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.417980, 29.253841, 42.678513>,  <43.730797, 29.084614, 42.495461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.417980, 29.253841, 42.678513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448776, 0.127234, -0.884540,
		-0.432448, -0.897120, 0.090361,
		-0.782042, 0.423069, 0.457628,
		43.183369, 29.380762, 42.815800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.237770, 28.854403, 42.125587>,  <43.730797, 29.084614, 42.495461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.237770, 28.854403, 42.125587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.057976, 29.166050, 42.300373>,  <42.950100, 29.353039, 42.405243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.057976, 29.166050, 42.300373>,  <43.237770, 28.854403, 42.125587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.057976, 29.166050, 42.300373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291149, 0.334671, -0.896230,
		-0.844508, -0.530064, 0.076410,
		-0.449487, 0.779120, 0.436960,
		42.923130, 29.399786, 42.431461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.502522, 28.785992, 41.859947>,  <43.237770, 28.854403, 42.125587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.502522, 28.785992, 41.859947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.549042, 29.156103, 42.004353>,  <42.576954, 29.378170, 42.090996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.549042, 29.156103, 42.004353>,  <42.502522, 28.785992, 41.859947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.549042, 29.156103, 42.004353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614241, 0.352640, -0.705941,
		-0.780502, -0.139652, 0.609355,
		0.116297, 0.925280, 0.361016,
		42.583931, 29.433687, 42.112656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.869232, 29.133362, 41.771755>,  <42.502522, 28.785992, 41.859947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.869232, 29.133362, 41.771755> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.122932, 29.439318, 41.816780>,  <42.275154, 29.622890, 41.843796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.122932, 29.439318, 41.816780>,  <41.869232, 29.133362, 41.771755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.122932, 29.439318, 41.816780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517989, 0.528499, -0.672589,
		-0.573945, 0.368285, 0.731405,
		0.634251, 0.764889, 0.112562,
		42.313210, 29.668785, 41.850548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.461693, 29.631470, 41.842068>,  <41.869232, 29.133362, 41.771755>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.461693, 29.631470, 41.842068> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.806038, 29.793531, 41.718933>,  <42.012646, 29.890768, 41.645054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.806038, 29.793531, 41.718933>,  <41.461693, 29.631470, 41.842068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.806038, 29.793531, 41.718933> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505985, 0.617678, -0.602040,
		-0.053774, 0.674036, 0.736739,
		0.860864, 0.405153, -0.307837,
		42.064297, 29.915077, 41.626583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326721, 30.328981, 41.918400>,  <41.461693, 29.631470, 41.842068>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326721, 30.328981, 41.918400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.641487, 30.342819, 41.671963>,  <41.830345, 30.351122, 41.524101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.641487, 30.342819, 41.671963>,  <41.326721, 30.328981, 41.918400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.641487, 30.342819, 41.671963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478927, 0.663815, -0.574438,
		0.389102, 0.747097, 0.538930,
		0.786911, 0.034593, -0.616097,
		41.877560, 30.353197, 41.487133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.512814, 31.049112, 41.736767>,  <41.326721, 30.328981, 41.918400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.512814, 31.049112, 41.736767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.624481, 30.808784, 41.437145>,  <41.691483, 30.664587, 41.257374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.624481, 30.808784, 41.437145>,  <41.512814, 31.049112, 41.736767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.624481, 30.808784, 41.437145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635568, 0.469132, -0.613163,
		0.719806, 0.647248, -0.250897,
		0.279165, -0.600820, -0.749054,
		41.708229, 30.628538, 41.212429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.698536, 31.490459, 41.230286>,  <41.512814, 31.049112, 41.736767>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.698536, 31.490459, 41.230286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.638966, 31.156122, 41.018932>,  <41.603226, 30.955521, 40.892120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.638966, 31.156122, 41.018932>,  <41.698536, 31.490459, 41.230286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.638966, 31.156122, 41.018932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586747, 0.504802, -0.633170,
		0.795959, 0.215735, -0.565604,
		-0.148921, -0.835843, -0.528383,
		41.594288, 30.905369, 40.860416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.199360, 31.909079, 41.153614>,  <41.698536, 31.490459, 41.230286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.199360, 31.909079, 41.153614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.240459, 32.284222, 41.286198>,  <42.265118, 32.509308, 41.365749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.240459, 32.284222, 41.286198>,  <42.199360, 31.909079, 41.153614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.240459, 32.284222, 41.286198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305028, -0.346874, 0.886925,
		0.946784, 0.009975, -0.321713,
		0.102747, 0.937859, 0.331458,
		42.271282, 32.565578, 41.385635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.958927, 32.062168, 41.426743>,  <42.199360, 31.909079, 41.153614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.958927, 32.062168, 41.426743> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.692394, 32.313755, 41.586941>,  <42.532475, 32.464706, 41.683060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.692394, 32.313755, 41.586941>,  <42.958927, 32.062168, 41.426743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.692394, 32.313755, 41.586941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295048, -0.270870, 0.916284,
		0.684796, 0.728717, -0.005086,
		-0.666334, 0.628968, 0.400497,
		42.492493, 32.502445, 41.707088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.333092, 32.260365, 41.998829>,  <42.958927, 32.062168, 41.426743>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.333092, 32.260365, 41.998829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.952957, 32.368950, 42.059715>,  <42.724876, 32.434101, 42.096249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.952957, 32.368950, 42.059715>,  <43.333092, 32.260365, 41.998829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.952957, 32.368950, 42.059715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141507, -0.058713, 0.988195,
		0.277193, 0.960657, 0.017383,
		-0.950337, 0.271460, 0.152215,
		42.667854, 32.450390, 42.105381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.337566, 32.836704, 42.537350>,  <43.333092, 32.260365, 41.998829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.337566, 32.836704, 42.537350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.961334, 32.700905, 42.540066>,  <42.735596, 32.619427, 42.541695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.961334, 32.700905, 42.540066>,  <43.337566, 32.836704, 42.537350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.961334, 32.700905, 42.540066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056611, -0.137051, 0.988945,
		-0.334811, 0.930570, 0.148127,
		-0.940583, -0.339495, 0.006794,
		42.679161, 32.599056, 42.542103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.878941, 33.169445, 43.079269>,  <43.337566, 32.836704, 42.537350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.878941, 33.169445, 43.079269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.685516, 32.827114, 43.005806>,  <42.569462, 32.621716, 42.961727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.685516, 32.827114, 43.005806>,  <42.878941, 33.169445, 43.079269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.685516, 32.827114, 43.005806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012539, -0.203028, 0.979093,
		-0.875222, 0.475752, 0.087445,
		-0.483559, -0.855827, -0.183660,
		42.540447, 32.570366, 42.950706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.279926, 33.306824, 43.373325>,  <42.878941, 33.169445, 43.079269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.279926, 33.306824, 43.373325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.326099, 32.911037, 43.338387>,  <42.353802, 32.673565, 43.317425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.326099, 32.911037, 43.338387>,  <42.279926, 33.306824, 43.373325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.326099, 32.911037, 43.338387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216817, -0.110913, 0.969891,
		-0.969364, -0.093019, -0.227336,
		0.115433, -0.989467, -0.087347,
		42.360729, 32.614197, 43.312183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769821, 32.973824, 43.826588>,  <42.279926, 33.306824, 43.373325>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.769821, 32.973824, 43.826588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.037601, 32.684956, 43.756947>,  <42.198269, 32.511635, 43.715160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.037601, 32.684956, 43.756947>,  <41.769821, 32.973824, 43.826588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.037601, 32.684956, 43.756947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118811, -0.127262, 0.984728,
		-0.733298, -0.679907, 0.000607,
		0.669446, -0.722171, -0.174101,
		42.238434, 32.468304, 43.704716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.790390, 32.650936, 44.482502>,  <41.769821, 32.973824, 43.826588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.790390, 32.650936, 44.482502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.137558, 32.560474, 44.305607>,  <42.345860, 32.506195, 44.199471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.137558, 32.560474, 44.305607>,  <41.790390, 32.650936, 44.482502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.137558, 32.560474, 44.305607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460837, 0.034411, 0.886817,
		-0.185344, -0.973482, 0.134088,
		0.867915, -0.226159, -0.442239,
		42.397934, 32.492626, 44.172935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.099506, 31.947418, 44.746338>,  <41.790390, 32.650936, 44.482502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.099506, 31.947418, 44.746338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.382980, 32.195782, 44.612328>,  <42.553062, 32.344799, 44.531921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.382980, 32.195782, 44.612328>,  <42.099506, 31.947418, 44.746338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.382980, 32.195782, 44.612328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548828, -0.186760, 0.814806,
		0.443351, -0.761310, -0.473125,
		0.708681, 0.620909, -0.335028,
		42.595585, 32.382053, 44.511818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.649719, 31.541073, 44.975662>,  <42.099506, 31.947418, 44.746338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.649719, 31.541073, 44.975662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.791294, 31.909510, 44.910770>,  <42.876240, 32.130573, 44.871834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.791294, 31.909510, 44.910770>,  <42.649719, 31.541073, 44.975662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.791294, 31.909510, 44.910770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602498, -0.091875, 0.792815,
		0.715351, -0.378348, -0.587474,
		0.353934, 0.921093, -0.162231,
		42.897472, 32.185837, 44.862103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.401146, 31.467108, 45.038235>,  <42.649719, 31.541073, 44.975662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.401146, 31.467108, 45.038235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.274612, 31.843231, 45.088444>,  <43.198692, 32.068905, 45.118568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.274612, 31.843231, 45.088444>,  <43.401146, 31.467108, 45.038235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.274612, 31.843231, 45.088444> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608924, 0.099806, 0.786925,
		0.727424, 0.325363, -0.604147,
		-0.316333, 0.940307, 0.125520,
		43.179714, 32.125324, 45.126099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.983471, 31.887129, 45.058670>,  <43.401146, 31.467108, 45.038235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.983471, 31.887129, 45.058670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.710743, 32.131973, 45.218887>,  <43.547104, 32.278881, 45.315018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.710743, 32.131973, 45.218887>,  <43.983471, 31.887129, 45.058670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.710743, 32.131973, 45.218887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591371, 0.138936, 0.794341,
		0.430577, 0.778470, -0.456715,
		-0.681825, 0.612112, 0.400542,
		43.506195, 32.315605, 45.339050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.293209, 32.467075, 45.276489>,  <43.983471, 31.887129, 45.058670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.293209, 32.467075, 45.276489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.959480, 32.456055, 45.496723>,  <43.759243, 32.449444, 45.628864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.959480, 32.456055, 45.496723>,  <44.293209, 32.467075, 45.276489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.959480, 32.456055, 45.496723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545565, 0.102071, 0.831830,
		-0.079114, 0.994395, -0.070131,
		-0.834326, -0.027548, 0.550583,
		43.709183, 32.447792, 45.661900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.415512, 32.961491, 45.671585>,  <44.293209, 32.467075, 45.276489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.415512, 32.961491, 45.671585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.132137, 32.748764, 45.857185>,  <43.962112, 32.621128, 45.968544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.132137, 32.748764, 45.857185>,  <44.415512, 32.961491, 45.671585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.132137, 32.748764, 45.857185> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431344, 0.194116, 0.881057,
		-0.558627, 0.824314, 0.091876,
		-0.708433, -0.531813, 0.464002,
		43.919609, 32.589222, 45.996387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.345776, 30.877100, 48.631977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.556362, 30.674623, 48.358742>,  <38.682716, 30.553139, 48.194801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.556362, 30.674623, 48.358742>,  <38.345776, 30.877100, 48.631977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556362, 30.674623, 48.358742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603910, 0.342880, -0.719532,
		0.598435, 0.791332, -0.125177,
		0.526468, -0.506189, -0.683084,
		38.714302, 30.522766, 48.153816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525162, 31.329538, 48.136112>,  <38.345776, 30.877100, 48.631977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525162, 31.329538, 48.136112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.548927, 30.971130, 47.960106>,  <38.563187, 30.756084, 47.854504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.548927, 30.971130, 47.960106>,  <38.525162, 31.329538, 48.136112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548927, 30.971130, 47.960106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481921, 0.360279, -0.798718,
		0.874198, 0.259506, -0.410408,
		0.059411, -0.896022, -0.440017,
		38.566750, 30.702324, 47.828102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846577, 31.435680, 47.460133>,  <38.525162, 31.329538, 48.136112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846577, 31.435680, 47.460133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.665752, 31.081625, 47.415993>,  <38.557259, 30.869192, 47.389507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.665752, 31.081625, 47.415993>,  <38.846577, 31.435680, 47.460133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665752, 31.081625, 47.415993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394753, 0.309464, -0.865102,
		0.799884, -0.347513, -0.489306,
		-0.452056, -0.885137, -0.110353,
		38.530136, 30.816084, 47.382885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947849, 31.258450, 46.709492>,  <38.846577, 31.435680, 47.460133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947849, 31.258450, 46.709492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.643543, 31.038361, 46.847179>,  <38.460960, 30.906307, 46.929790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.643543, 31.038361, 46.847179>,  <38.947849, 31.258450, 46.709492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643543, 31.038361, 46.847179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491195, 0.141457, -0.859487,
		0.424218, -0.822948, -0.377883,
		-0.760767, -0.550224, 0.344219,
		38.415314, 30.873293, 46.950447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812244, 30.711346, 46.277096>,  <38.947849, 31.258450, 46.709492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812244, 30.711346, 46.277096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.461788, 30.735910, 46.468346>,  <38.251514, 30.750648, 46.583096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.461788, 30.735910, 46.468346>,  <38.812244, 30.711346, 46.277096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461788, 30.735910, 46.468346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470267, 0.109050, -0.875761,
		-0.105922, -0.992137, -0.066663,
		-0.876145, 0.061413, 0.478120,
		38.198944, 30.754333, 46.611782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373447, 30.222933, 45.909702>,  <38.812244, 30.711346, 46.277096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373447, 30.222933, 45.909702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.158592, 30.495403, 46.108696>,  <38.029678, 30.658886, 46.228092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.158592, 30.495403, 46.108696>,  <38.373447, 30.222933, 45.909702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158592, 30.495403, 46.108696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380235, 0.330923, -0.863662,
		-0.752934, -0.653060, 0.081257,
		-0.537133, 0.681177, 0.497479,
		37.997452, 30.699757, 46.257938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708824, 30.238541, 45.519711>,  <38.373447, 30.222933, 45.909702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708824, 30.238541, 45.519711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.713997, 30.574284, 45.737080>,  <37.717102, 30.775730, 45.867500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.713997, 30.574284, 45.737080>,  <37.708824, 30.238541, 45.519711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713997, 30.574284, 45.737080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467154, 0.485583, -0.738902,
		-0.884081, -0.244305, 0.398391,
		0.012934, 0.839360, 0.543423,
		37.717876, 30.826092, 45.900108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041889, 30.389788, 45.473183>,  <37.708824, 30.238541, 45.519711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041889, 30.389788, 45.473183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.235394, 30.721104, 45.586254>,  <37.351498, 30.919893, 45.654099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.235394, 30.721104, 45.586254>,  <37.041889, 30.389788, 45.473183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235394, 30.721104, 45.586254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431641, 0.506778, -0.746232,
		-0.761354, 0.238982, 0.602684,
		0.483762, 0.828290, 0.282683,
		37.380524, 30.969591, 45.671059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570190, 30.894278, 45.525547>,  <37.041889, 30.389788, 45.473183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570190, 30.894278, 45.525547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.909771, 31.101099, 45.481850>,  <37.113518, 31.225193, 45.455631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.909771, 31.101099, 45.481850>,  <36.570190, 30.894278, 45.525547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909771, 31.101099, 45.481850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386712, 0.466921, -0.795260,
		-0.360186, 0.717383, 0.596345,
		0.848952, 0.517056, -0.109243,
		37.164455, 31.256216, 45.449078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314865, 31.583889, 45.497150>,  <36.570190, 30.894278, 45.525547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314865, 31.583889, 45.497150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.672737, 31.557838, 45.320377>,  <36.887459, 31.542208, 45.214314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.672737, 31.557838, 45.320377>,  <36.314865, 31.583889, 45.497150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672737, 31.557838, 45.320377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319113, 0.599120, -0.734317,
		0.312595, 0.798006, 0.515238,
		0.894679, -0.065125, -0.441936,
		36.941139, 31.538301, 45.187798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481171, 32.319923, 45.326141>,  <36.314865, 31.583889, 45.497150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481171, 32.319923, 45.326141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.736343, 32.101250, 45.109188>,  <36.889446, 31.970045, 44.979015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.736343, 32.101250, 45.109188>,  <36.481171, 32.319923, 45.326141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736343, 32.101250, 45.109188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171468, 0.585794, -0.792113,
		0.750759, 0.598317, 0.279959,
		0.637933, -0.546682, -0.542383,
		36.927723, 31.937244, 44.946472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906696, 32.764706, 45.002899>,  <36.481171, 32.319923, 45.326141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906696, 32.764706, 45.002899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.918922, 32.432884, 44.779861>,  <36.926258, 32.233791, 44.646038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.918922, 32.432884, 44.779861>,  <36.906696, 32.764706, 45.002899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918922, 32.432884, 44.779861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089104, 0.553371, -0.828156,
		0.995553, 0.074996, -0.057003,
		0.030565, -0.829552, -0.557592,
		36.928093, 32.184017, 44.612583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283928, 33.050617, 44.485306>,  <36.906696, 32.764706, 45.002899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283928, 33.050617, 44.485306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.116142, 32.728840, 44.317055>,  <37.015469, 32.535774, 44.216106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.116142, 32.728840, 44.317055>,  <37.283928, 33.050617, 44.485306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116142, 32.728840, 44.317055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316520, 0.563891, -0.762785,
		0.850800, -0.186828, -0.491156,
		-0.419468, -0.804439, -0.420624,
		36.990303, 32.487507, 44.190868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395191, 33.167824, 43.828247>,  <37.283928, 33.050617, 44.485306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395191, 33.167824, 43.828247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.118858, 32.878754, 43.837135>,  <36.953060, 32.705311, 43.842468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.118858, 32.878754, 43.837135>,  <37.395191, 33.167824, 43.828247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118858, 32.878754, 43.837135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326984, 0.284864, -0.901074,
		0.644855, -0.629754, -0.433096,
		-0.690828, -0.722677, 0.022223,
		36.911610, 32.661949, 43.843803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108166, 33.435463, 43.504826>,  <37.395191, 33.167824, 43.828247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108166, 33.435463, 43.504826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.090733, 33.830143, 43.567474>,  <38.080273, 34.066952, 43.605064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.090733, 33.830143, 43.567474>,  <38.108166, 33.435463, 43.504826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090733, 33.830143, 43.567474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292532, -0.137299, 0.946348,
		0.955262, 0.087058, -0.282657,
		-0.043579, 0.986696, 0.156624,
		38.077660, 34.126152, 43.614460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819683, 33.584499, 43.592556>,  <38.108166, 33.435463, 43.504826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819683, 33.584499, 43.592556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.576157, 33.847816, 43.769642>,  <38.430042, 34.005806, 43.875893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.576157, 33.847816, 43.769642>,  <38.819683, 33.584499, 43.592556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576157, 33.847816, 43.769642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423564, -0.202129, 0.883027,
		0.670777, 0.725116, -0.155771,
		-0.608812, 0.658294, 0.442716,
		38.393513, 34.045303, 43.902458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270714, 33.883114, 44.016705>,  <38.819683, 33.584499, 43.592556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270714, 33.883114, 44.016705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.908863, 33.990711, 44.148941>,  <38.691753, 34.055267, 44.228283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.908863, 33.990711, 44.148941>,  <39.270714, 33.883114, 44.016705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908863, 33.990711, 44.148941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301760, -0.143524, 0.942519,
		0.300976, 0.952389, 0.048665,
		-0.904629, 0.268990, 0.330591,
		38.637474, 34.071407, 44.248119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368084, 34.447765, 44.588692>,  <39.270714, 33.883114, 44.016705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368084, 34.447765, 44.588692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.026817, 34.248348, 44.650097>,  <38.822056, 34.128700, 44.686939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.026817, 34.248348, 44.650097>,  <39.368084, 34.447765, 44.588692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026817, 34.248348, 44.650097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326792, -0.281440, 0.902219,
		-0.406587, 0.819909, 0.403034,
		-0.853167, -0.498538, 0.153510,
		38.770866, 34.098785, 44.696148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178890, 34.618774, 45.351490>,  <39.368084, 34.447765, 44.588692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178890, 34.618774, 45.351490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.953827, 34.309616, 45.234158>,  <38.818790, 34.124119, 45.163757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.953827, 34.309616, 45.234158>,  <39.178890, 34.618774, 45.351490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953827, 34.309616, 45.234158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012002, -0.347152, 0.937732,
		-0.826603, 0.531143, 0.186052,
		-0.562658, -0.772899, -0.293332,
		38.785030, 34.077747, 45.146156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683182, 34.709747, 45.824459>,  <39.178890, 34.618774, 45.351490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683182, 34.709747, 45.824459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.697865, 34.338451, 45.676395>,  <38.706673, 34.115673, 45.587559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.697865, 34.338451, 45.676395>,  <38.683182, 34.709747, 45.824459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697865, 34.338451, 45.676395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076656, -0.366699, 0.927176,
		-0.996382, -0.062408, 0.057695,
		0.036706, -0.928244, -0.370156,
		38.708878, 34.059978, 45.565350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282124, 34.304886, 46.281895>,  <38.683182, 34.709747, 45.824459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282124, 34.304886, 46.281895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.514488, 34.035427, 46.099144>,  <38.653908, 33.873753, 45.989494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.514488, 34.035427, 46.099144>,  <38.282124, 34.304886, 46.281895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514488, 34.035427, 46.099144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211578, -0.417032, 0.883922,
		-0.785986, -0.610147, -0.099731,
		0.580914, -0.673650, -0.456875,
		38.688763, 33.833332, 45.962082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189884, 33.644405, 46.694405>,  <38.282124, 34.304886, 46.281895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189884, 33.644405, 46.694405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.524406, 33.591675, 46.481537>,  <38.725121, 33.560036, 46.353817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.524406, 33.591675, 46.481537>,  <38.189884, 33.644405, 46.694405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524406, 33.591675, 46.481537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464760, -0.344444, 0.815694,
		-0.290832, -0.929506, -0.226796,
		0.836310, -0.131824, -0.532172,
		38.775299, 33.552128, 46.321884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389748, 32.901489, 46.692570>,  <38.189884, 33.644405, 46.694405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389748, 32.901489, 46.692570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.723610, 33.115021, 46.638351>,  <38.923927, 33.243141, 46.605820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.723610, 33.115021, 46.638351>,  <38.389748, 32.901489, 46.692570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723610, 33.115021, 46.638351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402794, -0.423785, 0.811273,
		0.375638, -0.731733, -0.568738,
		0.834658, 0.533829, -0.135548,
		38.974007, 33.275169, 46.597687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991272, 32.423443, 46.820530>,  <38.389748, 32.901489, 46.692570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991272, 32.423443, 46.820530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.190426, 32.770332, 46.818573>,  <39.309917, 32.978466, 46.817398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.190426, 32.770332, 46.818573>,  <38.991272, 32.423443, 46.820530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190426, 32.770332, 46.818573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604604, -0.343055, 0.718865,
		0.621741, -0.360872, -0.695133,
		0.497887, 0.867228, -0.004894,
		39.339790, 33.030502, 46.817104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621246, 32.262520, 46.671806>,  <38.991272, 32.423443, 46.820530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621246, 32.262520, 46.671806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.659462, 32.615765, 46.855537>,  <39.682392, 32.827713, 46.965775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.659462, 32.615765, 46.855537>,  <39.621246, 32.262520, 46.671806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659462, 32.615765, 46.855537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824010, -0.329041, 0.461237,
		0.558463, 0.334426, -0.759130,
		0.095535, 0.883114, 0.459328,
		39.688122, 32.880699, 46.993336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296982, 32.432751, 46.560333>,  <39.621246, 32.262520, 46.671806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296982, 32.432751, 46.560333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.163872, 32.610569, 46.892994>,  <40.084003, 32.717258, 47.092590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.163872, 32.610569, 46.892994>,  <40.296982, 32.432751, 46.560333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.163872, 32.610569, 46.892994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791401, -0.347906, 0.502639,
		0.512781, 0.825435, -0.236035,
		-0.332778, 0.444542, 0.831650,
		40.064037, 32.743931, 47.142490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812340, 32.924911, 46.712654>,  <40.296982, 32.432751, 46.560333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.812340, 32.924911, 46.712654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.615105, 32.827637, 47.046772>,  <40.496761, 32.769272, 47.247242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.615105, 32.827637, 47.046772>,  <40.812340, 32.924911, 46.712654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615105, 32.827637, 47.046772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849280, -0.342743, 0.401560,
		0.188638, 0.907407, 0.375538,
		-0.493092, -0.243187, 0.835297,
		40.467178, 32.754681, 47.297359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158680, 33.234478, 47.247593>,  <40.812340, 32.924911, 46.712654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.158680, 33.234478, 47.247593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.961075, 32.922600, 47.401489>,  <40.842514, 32.735474, 47.493828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.961075, 32.922600, 47.401489>,  <41.158680, 33.234478, 47.247593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961075, 32.922600, 47.401489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802757, -0.239054, 0.546291,
		-0.333967, 0.578728, 0.744002,
		-0.494011, -0.779697, 0.384742,
		40.812870, 32.688690, 47.516911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.597191, 33.700993, 47.669163>,  <41.158680, 33.234478, 47.247593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.597191, 33.700993, 47.669163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.965679, 33.856583, 47.672138>,  <42.186771, 33.949936, 47.673923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.965679, 33.856583, 47.672138>,  <41.597191, 33.700993, 47.669163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.965679, 33.856583, 47.672138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249936, 0.606371, -0.754882,
		-0.298144, 0.693551, 0.655819,
		0.921218, 0.388976, 0.007442,
		42.242046, 33.973274, 47.674370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584095, 34.371262, 47.891300>,  <41.597191, 33.700993, 47.669163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.584095, 34.371262, 47.891300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.913548, 34.349499, 47.665497>,  <42.111217, 34.336441, 47.530014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.913548, 34.349499, 47.665497>,  <41.584095, 34.371262, 47.891300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.913548, 34.349499, 47.665497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412494, 0.625639, -0.662136,
		0.389207, 0.778212, 0.492852,
		0.823630, -0.054409, -0.564511,
		42.160637, 34.333176, 47.496143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.719559, 35.041153, 47.756969>,  <41.584095, 34.371262, 47.891300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.719559, 35.041153, 47.756969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.860573, 34.795155, 47.474834>,  <41.945179, 34.647556, 47.305553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.860573, 34.795155, 47.474834>,  <41.719559, 35.041153, 47.756969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.860573, 34.795155, 47.474834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324464, 0.626639, -0.708552,
		0.877750, 0.478643, 0.021365,
		0.352531, -0.614999, -0.705335,
		41.966331, 34.610653, 47.263233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.018143, 35.473473, 47.265015>,  <41.719559, 35.041153, 47.756969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.018143, 35.473473, 47.265015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.021076, 35.136684, 47.049225>,  <42.022835, 34.934612, 46.919750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.021076, 35.136684, 47.049225>,  <42.018143, 35.473473, 47.265015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.021076, 35.136684, 47.049225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211379, 0.525991, -0.823804,
		0.977377, 0.120075, -0.174117,
		0.007335, -0.841971, -0.539472,
		42.023277, 34.884094, 46.887383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.421993, 35.613255, 46.716770>,  <42.018143, 35.473473, 47.265015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.421993, 35.613255, 46.716770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.182308, 35.317173, 46.594761>,  <42.038498, 35.139523, 46.521557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.182308, 35.317173, 46.594761>,  <42.421993, 35.613255, 46.716770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.182308, 35.317173, 46.594761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025739, 0.398608, -0.916760,
		0.800175, -0.541485, -0.257904,
		-0.599214, -0.740206, -0.305019,
		42.002544, 35.095112, 46.503254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.648415, 35.417061, 46.029255>,  <42.421993, 35.613255, 46.716770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.648415, 35.417061, 46.029255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.282028, 35.256603, 46.032825>,  <42.062195, 35.160328, 46.034966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.282028, 35.256603, 46.032825>,  <42.648415, 35.417061, 46.029255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.282028, 35.256603, 46.032825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114265, 0.239466, -0.964157,
		0.384635, -0.884158, -0.265181,
		-0.915969, -0.401150, 0.008921,
		42.007236, 35.136257, 46.035503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.583054, 34.961674, 45.404873>,  <42.648415, 35.417061, 46.029255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.583054, 34.961674, 45.404873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.206120, 35.025898, 45.522335>,  <41.979961, 35.064434, 45.592812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.206120, 35.025898, 45.522335>,  <42.583054, 34.961674, 45.404873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.206120, 35.025898, 45.522335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286006, 0.069376, -0.955713,
		-0.173821, -0.984585, -0.019454,
		-0.942330, 0.160559, 0.293656,
		41.923420, 35.074066, 45.610432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.153915, 34.704868, 44.924171>,  <42.583054, 34.961674, 45.404873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.153915, 34.704868, 44.924171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.879925, 34.949173, 45.083054>,  <41.715530, 35.095757, 45.178383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.879925, 34.949173, 45.083054>,  <42.153915, 34.704868, 44.924171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.879925, 34.949173, 45.083054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374385, 0.172623, -0.911064,
		-0.625012, -0.772766, 0.110418,
		-0.684979, 0.610765, 0.397204,
		41.674431, 35.132401, 45.202213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.541176, 34.508938, 44.596645>,  <42.153915, 34.704868, 44.924171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.541176, 34.508938, 44.596645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.492836, 34.883846, 44.727440>,  <41.463833, 35.108791, 44.805916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.492836, 34.883846, 44.727440>,  <41.541176, 34.508938, 44.596645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.492836, 34.883846, 44.727440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411634, 0.252424, -0.875694,
		-0.903301, -0.240425, 0.355307,
		-0.120851, 0.937272, 0.326982,
		41.456581, 35.165028, 44.825535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835316, 34.708565, 44.658058>,  <41.541176, 34.508938, 44.596645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835316, 34.708565, 44.658058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.028069, 35.057362, 44.623589>,  <41.143719, 35.266640, 44.602905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.028069, 35.057362, 44.623589>,  <40.835316, 34.708565, 44.658058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.028069, 35.057362, 44.623589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558737, 0.230022, -0.796808,
		-0.674986, 0.432115, 0.598056,
		0.481878, 0.871990, -0.086177,
		41.172630, 35.318958, 44.597736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377487, 35.174000, 44.404606>,  <40.835316, 34.708565, 44.658058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377487, 35.174000, 44.404606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.711220, 35.373524, 44.310722>,  <40.911457, 35.493237, 44.254391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.711220, 35.373524, 44.310722>,  <40.377487, 35.174000, 44.404606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.711220, 35.373524, 44.310722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442265, 0.351497, -0.825137,
		-0.329084, 0.792239, 0.513868,
		0.834329, 0.498805, -0.234708,
		40.961517, 35.523167, 44.240311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195759, 35.943031, 44.181549>,  <40.377487, 35.174000, 44.404606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195759, 35.943031, 44.181549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.565731, 35.884964, 44.041023>,  <40.787716, 35.850124, 43.956707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.565731, 35.884964, 44.041023>,  <40.195759, 35.943031, 44.181549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565731, 35.884964, 44.041023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121249, 0.763266, -0.634605,
		0.360269, 0.629565, 0.688370,
		0.924935, -0.145164, -0.351316,
		40.843212, 35.841415, 43.935627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471531, 36.643894, 43.953899>,  <40.195759, 35.943031, 44.181549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471531, 36.643894, 43.953899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.729065, 36.404270, 43.763489>,  <40.883587, 36.260494, 43.649242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.729065, 36.404270, 43.763489>,  <40.471531, 36.643894, 43.953899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.729065, 36.404270, 43.763489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087535, 0.675705, -0.731956,
		0.760141, 0.429590, 0.487481,
		0.643835, -0.599061, -0.476028,
		40.922215, 36.224552, 43.620682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995129, 37.067772, 43.650219>,  <40.471531, 36.643894, 43.953899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.995129, 37.067772, 43.650219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.003197, 36.727482, 43.440128>,  <41.008038, 36.523308, 43.314072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.003197, 36.727482, 43.440128>,  <40.995129, 37.067772, 43.650219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003197, 36.727482, 43.440128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031363, 0.525615, -0.850144,
		0.999305, 0.000676, 0.037283,
		0.020172, -0.850722, -0.525229,
		41.009247, 36.472263, 43.282558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.429520, 27.716787, 37.967686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.061520, 27.840189, 38.064373>,  <25.840719, 27.914230, 38.122387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.061520, 27.840189, 38.064373>,  <26.429520, 27.716787, 37.967686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.061520, 27.840189, 38.064373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313800, 0.949332, -0.017283,
		-0.234802, 0.059950, -0.970193,
		-0.919999, 0.308505, 0.241717,
		25.785521, 27.932741, 38.136887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.413948, 28.262680, 37.618542>,  <26.429520, 27.716787, 37.967686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.413948, 28.262680, 37.618542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.117447, 28.286695, 37.885956>,  <25.939547, 28.301104, 38.046402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.117447, 28.286695, 37.885956>,  <26.413948, 28.262680, 37.618542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.117447, 28.286695, 37.885956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157979, 0.983617, 0.086830,
		-0.652368, 0.169977, -0.738595,
		-0.741254, 0.060038, 0.668534,
		25.895071, 28.304707, 38.086517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.989153, 28.788456, 37.352348>,  <26.413948, 28.262680, 37.618542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.989153, 28.788456, 37.352348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.896170, 28.790106, 37.741386>,  <25.840380, 28.791096, 37.974812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.896170, 28.790106, 37.741386>,  <25.989153, 28.788456, 37.352348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.896170, 28.790106, 37.741386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011754, 0.999906, -0.007048,
		-0.972535, -0.013070, -0.232389,
		-0.232459, 0.004123, 0.972598,
		25.826431, 28.791342, 38.033165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.416126, 29.240438, 37.460861>,  <25.989153, 28.788456, 37.352348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.416126, 29.240438, 37.460861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.601042, 29.216122, 37.814720>,  <25.711990, 29.201530, 38.027035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.601042, 29.216122, 37.814720>,  <25.416126, 29.240438, 37.460861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.601042, 29.216122, 37.814720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000705, 0.997672, 0.068192,
		-0.886729, -0.030901, 0.461255,
		0.462289, -0.060793, 0.884643,
		25.739729, 29.197884, 38.080112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.135378, 29.782909, 37.732826>,  <25.416126, 29.240438, 37.460861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.135378, 29.782909, 37.732826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.464691, 29.686295, 37.938297>,  <25.662279, 29.628326, 38.061581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.464691, 29.686295, 37.938297>,  <25.135378, 29.782909, 37.732826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.464691, 29.686295, 37.938297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262147, 0.964452, 0.033341,
		-0.503469, 0.107209, 0.857336,
		0.823285, -0.241535, 0.513676,
		25.711678, 29.613834, 38.092400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.154638, 30.312937, 38.318111>,  <25.135378, 29.782909, 37.732826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.154638, 30.312937, 38.318111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.520611, 30.153040, 38.295830>,  <25.740194, 30.057102, 38.282459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.520611, 30.153040, 38.295830>,  <25.154638, 30.312937, 38.318111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.520611, 30.153040, 38.295830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402264, 0.914412, 0.045113,
		0.032905, -0.063684, 0.997427,
		0.914932, -0.399744, -0.055706,
		25.795090, 30.033117, 38.279118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.541887, 30.636770, 38.898403>,  <25.154638, 30.312937, 38.318111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.541887, 30.636770, 38.898403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.784542, 30.509583, 38.606953>,  <25.930134, 30.433270, 38.432083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.784542, 30.509583, 38.606953>,  <25.541887, 30.636770, 38.898403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.784542, 30.509583, 38.606953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444067, 0.895743, -0.021180,
		0.659392, -0.310708, 0.684589,
		0.606635, -0.317969, -0.728622,
		25.966532, 30.414192, 38.388367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.074722, 31.015352, 38.989208>,  <25.541887, 30.636770, 38.898403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.074722, 31.015352, 38.989208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.177839, 30.853613, 38.638199>,  <26.239710, 30.756569, 38.427593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.177839, 30.853613, 38.638199>,  <26.074722, 31.015352, 38.989208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.177839, 30.853613, 38.638199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640548, 0.751469, -0.158089,
		0.723354, -0.521342, 0.452726,
		0.257791, -0.404347, -0.877523,
		26.255177, 30.732309, 38.374943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.888111, 31.002897, 38.934780>,  <26.074722, 31.015352, 38.989208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.888111, 31.002897, 38.934780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.686119, 31.015121, 38.589745>,  <26.564924, 31.022457, 38.382725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.686119, 31.015121, 38.589745>,  <26.888111, 31.002897, 38.934780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.686119, 31.015121, 38.589745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515647, 0.812113, -0.273097,
		0.692173, -0.582700, -0.425860,
		-0.504980, 0.030563, -0.862590,
		26.534626, 31.024290, 38.330967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.360634, 31.275377, 38.525204>,  <26.888111, 31.002897, 38.934780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.360634, 31.275377, 38.525204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.038120, 31.314720, 38.291885>,  <26.844612, 31.338326, 38.151894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.038120, 31.314720, 38.291885>,  <27.360634, 31.275377, 38.525204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.038120, 31.314720, 38.291885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304231, 0.914615, -0.266315,
		0.507293, -0.392182, -0.767364,
		-0.806286, 0.098357, -0.583291,
		26.796234, 31.344227, 38.116898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.637197, 31.448771, 37.788200>,  <27.360634, 31.275377, 38.525204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.637197, 31.448771, 37.788200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.266163, 31.561378, 37.886448>,  <27.043541, 31.628942, 37.945396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.266163, 31.561378, 37.886448>,  <27.637197, 31.448771, 37.788200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.266163, 31.561378, 37.886448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178145, 0.911159, -0.371555,
		-0.328399, -0.300894, -0.895330,
		-0.927587, 0.281518, 0.245621,
		26.987886, 31.645834, 37.960133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.422901, 31.790260, 37.097656>,  <27.637197, 31.448771, 37.788200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.422901, 31.790260, 37.097656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.179941, 31.906994, 37.393196>,  <27.034166, 31.977034, 37.570518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.179941, 31.906994, 37.393196>,  <27.422901, 31.790260, 37.097656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.179941, 31.906994, 37.393196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057910, 0.911337, -0.407568,
		-0.792284, -0.290343, -0.536644,
		-0.607398, 0.291833, 0.738851,
		26.997723, 31.994543, 37.614853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.781364, 32.158779, 36.819756>,  <27.422901, 31.790260, 37.097656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.781364, 32.158779, 36.819756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.815645, 32.296505, 37.193729>,  <26.836214, 32.379139, 37.418114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.815645, 32.296505, 37.193729>,  <26.781364, 32.158779, 36.819756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.815645, 32.296505, 37.193729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102076, 0.936483, -0.335529,
		-0.991078, -0.066679, 0.115403,
		0.085701, 0.344315, 0.934934,
		26.841356, 32.399799, 37.474209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.359678, 32.840065, 36.858562>,  <26.781364, 32.158779, 36.819756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.359678, 32.840065, 36.858562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.604099, 32.835472, 37.175163>,  <26.750751, 32.832718, 37.365124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.604099, 32.835472, 37.175163>,  <26.359678, 32.840065, 36.858562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.604099, 32.835472, 37.175163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230539, 0.959131, -0.164069,
		-0.757275, 0.282728, 0.588727,
		0.611053, -0.011479, 0.791506,
		26.787415, 32.832027, 37.412617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.056015, 33.321918, 37.409443>,  <26.359678, 32.840065, 36.858562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.056015, 33.321918, 37.409443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.450024, 33.288891, 37.469997>,  <26.686428, 33.269073, 37.506329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.450024, 33.288891, 37.469997>,  <26.056015, 33.321918, 37.409443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.450024, 33.288891, 37.469997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063232, 0.989706, 0.128390,
		-0.160426, -0.116895, 0.980102,
		0.985020, -0.082571, 0.151383,
		26.745529, 33.264118, 37.515411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.151567, 33.806702, 37.846569>,  <26.056015, 33.321918, 37.409443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.151567, 33.806702, 37.846569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.534632, 33.751095, 37.745724>,  <26.764469, 33.717731, 37.685215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.534632, 33.751095, 37.745724>,  <26.151567, 33.806702, 37.846569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.534632, 33.751095, 37.745724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188905, 0.964249, 0.185849,
		0.217266, -0.225606, 0.949683,
		0.957659, -0.139021, -0.252117,
		26.821930, 33.709389, 37.670090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.403139, 34.241554, 38.283760>,  <26.151567, 33.806702, 37.846569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.403139, 34.241554, 38.283760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.676582, 34.178463, 37.998718>,  <26.840649, 34.140610, 37.827694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.676582, 34.178463, 37.998718>,  <26.403139, 34.241554, 38.283760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.676582, 34.178463, 37.998718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313860, 0.945009, 0.091921,
		0.658915, -0.286495, 0.695522,
		0.683610, -0.157729, -0.712600,
		26.881666, 34.131145, 37.784939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.121031, 34.430340, 38.574200>,  <26.403139, 34.241554, 38.283760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.121031, 34.430340, 38.574200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.115364, 34.458179, 38.175209>,  <27.111965, 34.474884, 37.935814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.115364, 34.458179, 38.175209>,  <27.121031, 34.430340, 38.574200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.115364, 34.458179, 38.175209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595088, 0.802255, 0.047529,
		0.803536, -0.592911, -0.052783,
		-0.014165, 0.069601, -0.997474,
		27.111115, 34.479061, 37.875965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.657024, 34.874195, 38.423405>,  <27.121031, 34.430340, 38.574200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.657024, 34.874195, 38.423405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.526226, 34.869518, 38.045422>,  <27.447746, 34.866711, 37.818634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.526226, 34.869518, 38.045422>,  <27.657024, 34.874195, 38.423405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.526226, 34.869518, 38.045422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238040, 0.966663, -0.094335,
		0.914555, -0.255784, -0.313312,
		-0.326996, -0.011694, -0.944953,
		27.428127, 34.866009, 37.761936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.181284, 35.129303, 38.008396>,  <27.657024, 34.874195, 38.423405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.181284, 35.129303, 38.008396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.834768, 35.198021, 37.820770>,  <27.626858, 35.239250, 37.708195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.834768, 35.198021, 37.820770>,  <28.181284, 35.129303, 38.008396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.834768, 35.198021, 37.820770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264069, 0.954569, -0.138081,
		0.424036, -0.243484, -0.872301,
		-0.866292, 0.171797, -0.469068,
		27.574881, 35.249561, 37.680050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.735432, 34.801266, 38.296444>,  <28.181284, 35.129303, 38.008396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.735432, 34.801266, 38.296444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.103376, 34.901955, 38.416771>,  <29.324144, 34.962368, 38.488968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.103376, 34.901955, 38.416771>,  <28.735432, 34.801266, 38.296444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.103376, 34.901955, 38.416771> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167010, -0.945271, 0.280306,
		0.354909, -0.207604, -0.911559,
		0.919863, 0.251722, 0.300813,
		29.379335, 34.977470, 38.507015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.100523, 34.310558, 38.000931>,  <28.735432, 34.801266, 38.296444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.100523, 34.310558, 38.000931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.337347, 34.447647, 38.292686>,  <29.479441, 34.529900, 38.467739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.337347, 34.447647, 38.292686>,  <29.100523, 34.310558, 38.000931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.337347, 34.447647, 38.292686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315422, -0.931412, 0.181608,
		0.741603, 0.122542, -0.659552,
		0.592060, 0.342718, 0.729390,
		29.514965, 34.550461, 38.511505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723845, 33.985088, 37.935871>,  <29.100523, 34.310558, 38.000931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723845, 33.985088, 37.935871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.737135, 34.110455, 38.315487>,  <29.745110, 34.185673, 38.543255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.737135, 34.110455, 38.315487>,  <29.723845, 33.985088, 37.935871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.737135, 34.110455, 38.315487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322715, -0.902060, 0.286604,
		0.945913, 0.296745, -0.131115,
		0.033225, 0.313415, 0.949035,
		29.747103, 34.204479, 38.600197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.329433, 33.712814, 38.162945>,  <29.723845, 33.985088, 37.935871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.329433, 33.712814, 38.162945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.180103, 33.795444, 38.524708>,  <30.090506, 33.845024, 38.741764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.180103, 33.795444, 38.524708>,  <30.329433, 33.712814, 38.162945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180103, 33.795444, 38.524708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187489, -0.937974, 0.291639,
		0.908556, 0.278443, 0.311440,
		-0.373327, 0.206579, 0.904407,
		30.068106, 33.857418, 38.796028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.861298, 33.446476, 38.780643>,  <30.329433, 33.712814, 38.162945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.861298, 33.446476, 38.780643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.478933, 33.468285, 38.896065>,  <30.249516, 33.481369, 38.965317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.478933, 33.468285, 38.896065>,  <30.861298, 33.446476, 38.780643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478933, 33.468285, 38.896065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030989, -0.958393, 0.283764,
		0.292016, 0.280195, 0.914449,
		-0.955911, 0.054526, 0.288549,
		30.192160, 33.484642, 38.982628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.850964, 33.061348, 39.413204>,  <30.861298, 33.446476, 38.780643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.850964, 33.061348, 39.413204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.482849, 33.056664, 39.256779>,  <30.261980, 33.053852, 39.162922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.482849, 33.056664, 39.256779>,  <30.850964, 33.061348, 39.413204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.482849, 33.056664, 39.256779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028985, -0.994765, 0.097993,
		-0.390167, 0.101517, 0.915131,
		-0.920288, -0.011709, -0.391067,
		30.206762, 33.053150, 39.139458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546558, 32.427757, 39.683014>,  <30.850964, 33.061348, 39.413204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.546558, 32.427757, 39.683014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.262424, 32.550861, 39.429806>,  <30.091944, 32.624722, 39.277882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.262424, 32.550861, 39.429806>,  <30.546558, 32.427757, 39.683014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.262424, 32.550861, 39.429806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364348, -0.930250, -0.043415,
		-0.602225, 0.199799, 0.772920,
		-0.710335, 0.307757, -0.633016,
		30.049324, 32.643188, 39.239902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.879683, 32.315041, 39.976982>,  <30.546558, 32.427757, 39.683014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.879683, 32.315041, 39.976982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.835075, 32.317238, 39.579483>,  <29.808311, 32.318554, 39.340984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.835075, 32.317238, 39.579483>,  <29.879683, 32.315041, 39.976982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.835075, 32.317238, 39.579483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448643, -0.892556, 0.045414,
		-0.886726, 0.450902, 0.101999,
		-0.111517, 0.005491, -0.993747,
		29.801620, 32.318886, 39.281361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.155214, 32.046162, 39.886887>,  <29.879683, 32.315041, 39.976982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.155214, 32.046162, 39.886887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.343864, 32.002209, 39.536915>,  <29.457054, 31.975836, 39.326931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.343864, 32.002209, 39.536915>,  <29.155214, 32.046162, 39.886887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.343864, 32.002209, 39.536915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388269, -0.916723, -0.094159,
		-0.791719, 0.384115, -0.475013,
		0.471624, -0.109885, -0.874927,
		29.485352, 31.969244, 39.274437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.667524, 31.669550, 39.482372>,  <29.155214, 32.046162, 39.886887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.667524, 31.669550, 39.482372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.020807, 31.601328, 39.307625>,  <29.232777, 31.560394, 39.202778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.020807, 31.601328, 39.307625>,  <28.667524, 31.669550, 39.482372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.020807, 31.601328, 39.307625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273559, -0.943992, -0.184511,
		-0.380929, 0.282471, -0.880399,
		0.883209, -0.170555, -0.436867,
		29.285770, 31.550161, 39.176563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.597761, 31.248840, 38.966908>,  <28.667524, 31.669550, 39.482372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.597761, 31.248840, 38.966908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.989643, 31.184147, 39.014271>,  <29.224773, 31.145330, 39.042686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.989643, 31.184147, 39.014271>,  <28.597761, 31.248840, 38.966908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.989643, 31.184147, 39.014271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105130, -0.917558, -0.383450,
		0.170659, 0.363221, -0.915940,
		0.979706, -0.161732, 0.118404,
		29.283554, 31.135628, 39.049793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.859310, 30.939547, 38.319420>,  <28.597761, 31.248840, 38.966908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.859310, 30.939547, 38.319420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.133020, 30.828501, 38.589146>,  <29.297247, 30.761873, 38.750980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.133020, 30.828501, 38.589146>,  <28.859310, 30.939547, 38.319420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.133020, 30.828501, 38.589146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112496, -0.953816, -0.278530,
		0.720496, 0.114733, -0.683902,
		0.684274, -0.277616, 0.674314,
		29.338303, 30.745216, 38.791439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.497362, 30.571377, 37.917969>,  <28.859310, 30.939547, 38.319420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.497362, 30.571377, 37.917969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.481001, 30.466242, 38.303558>,  <29.471184, 30.403160, 38.534912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.481001, 30.466242, 38.303558>,  <29.497362, 30.571377, 37.917969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481001, 30.466242, 38.303558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131158, -0.955019, -0.265963,
		0.990517, -0.137312, 0.004589,
		-0.040902, -0.262839, 0.963973,
		29.468731, 30.387390, 38.592751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.893951, 29.878258, 37.962532>,  <29.497362, 30.571377, 37.917969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.893951, 29.878258, 37.962532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.712917, 29.899462, 38.318588>,  <29.604296, 29.912184, 38.532223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.712917, 29.899462, 38.318588>,  <29.893951, 29.878258, 37.962532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.712917, 29.899462, 38.318588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310910, -0.944971, -0.101807,
		0.835763, -0.322831, 0.444162,
		-0.452587, 0.053008, 0.890143,
		29.577141, 29.915363, 38.585632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029560, 29.251247, 38.261929>,  <29.893951, 29.878258, 37.962532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029560, 29.251247, 38.261929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.706022, 29.380436, 38.458485>,  <29.511900, 29.457949, 38.576416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.706022, 29.380436, 38.458485>,  <30.029560, 29.251247, 38.261929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.706022, 29.380436, 38.458485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383565, -0.923186, -0.024586,
		0.445702, -0.208366, 0.870594,
		-0.808843, 0.322971, 0.491388,
		29.463369, 29.477327, 38.605900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915932, 28.729151, 38.949677>,  <30.029560, 29.251247, 38.261929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915932, 28.729151, 38.949677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.578024, 28.921158, 38.855061>,  <29.375280, 29.036362, 38.798290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.578024, 28.921158, 38.855061>,  <29.915932, 28.729151, 38.949677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.578024, 28.921158, 38.855061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504977, -0.861347, 0.055493,
		-0.177105, 0.166326, 0.970036,
		-0.844768, 0.480017, -0.236539,
		29.324594, 29.065163, 38.784100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.478825, 28.560595, 39.360863>,  <29.915932, 28.729151, 38.949677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.478825, 28.560595, 39.360863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.230820, 28.701475, 39.080425>,  <29.082016, 28.786003, 38.912163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.230820, 28.701475, 39.080425>,  <29.478825, 28.560595, 39.360863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.230820, 28.701475, 39.080425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587428, -0.800740, 0.117232,
		-0.520107, 0.484530, 0.703363,
		-0.620014, 0.352202, -0.701097,
		29.044815, 28.807137, 38.870098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.839659, 28.274872, 39.545887>,  <29.478825, 28.560595, 39.360863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.839659, 28.274872, 39.545887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.731831, 28.362026, 39.170685>,  <28.667133, 28.414320, 38.945564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.731831, 28.362026, 39.170685>,  <28.839659, 28.274872, 39.545887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.731831, 28.362026, 39.170685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548290, -0.835491, -0.036505,
		-0.791651, 0.504459, 0.344688,
		-0.269568, 0.217888, -0.938008,
		28.650961, 28.427393, 38.889282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.117603, 28.275787, 39.432674>,  <28.839659, 28.274872, 39.545887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.117603, 28.275787, 39.432674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.255260, 28.244047, 39.058453>,  <28.337854, 28.225004, 38.833920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.255260, 28.244047, 39.058453>,  <28.117603, 28.275787, 39.432674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.255260, 28.244047, 39.058453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656807, -0.732386, -0.179487,
		-0.670948, 0.676250, -0.304162,
		0.344142, -0.079349, -0.935559,
		28.358503, 28.220242, 38.777786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.475115, 28.360756, 38.978313>,  <28.117603, 28.275787, 39.432674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.475115, 28.360756, 38.978313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.753069, 28.173012, 38.760384>,  <27.919842, 28.060366, 38.629627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.753069, 28.173012, 38.760384>,  <27.475115, 28.360756, 38.978313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.753069, 28.173012, 38.760384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678722, -0.678423, -0.281209,
		-0.237632, 0.565192, -0.789993,
		0.694887, -0.469361, -0.544823,
		27.961535, 28.032204, 38.596935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.123964, 28.126377, 38.450195>,  <27.475115, 28.360756, 38.978313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.123964, 28.126377, 38.450195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.454243, 27.903217, 38.416805>,  <27.652411, 27.769321, 38.396770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.454243, 27.903217, 38.416805>,  <27.123964, 28.126377, 38.450195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.454243, 27.903217, 38.416805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546553, -0.754555, -0.363217,
		0.139649, 0.345534, -0.927957,
		0.825698, -0.557901, -0.083479,
		27.701952, 27.735847, 38.391762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.345978, 28.009184, 37.768814>,  <27.123964, 28.126377, 38.450195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.345978, 28.009184, 37.768814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.438046, 27.730183, 38.040257>,  <27.493286, 27.562782, 38.203121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.438046, 27.730183, 38.040257>,  <27.345978, 28.009184, 37.768814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.438046, 27.730183, 38.040257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483056, -0.687246, -0.542540,
		0.844795, -0.202929, -0.495118,
		0.230171, -0.697504, 0.678608,
		27.507097, 27.520931, 38.243839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<44.210766, 33.396893, 46.334526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.094479, 33.019524, 46.398319>,  <44.024708, 32.793102, 46.436596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.094479, 33.019524, 46.398319>,  <44.210766, 33.396893, 46.334526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.094479, 33.019524, 46.398319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616715, -0.057326, 0.785096,
		-0.731536, 0.326596, 0.598490,
		-0.290718, -0.943424, 0.159481,
		44.007263, 32.736496, 46.446163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.306870, 33.284618, 47.022652>,  <44.210766, 33.396893, 46.334526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.306870, 33.284618, 47.022652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.283165, 32.905060, 46.898666>,  <44.268944, 32.677322, 46.824276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.283165, 32.905060, 46.898666>,  <44.306870, 33.284618, 47.022652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.283165, 32.905060, 46.898666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668903, -0.268232, 0.693268,
		-0.740984, -0.166255, 0.650617,
		-0.059257, -0.948900, -0.309964,
		44.265388, 32.620388, 46.805676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.362190, 32.997139, 47.565315>,  <44.306870, 33.284618, 47.022652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.362190, 32.997139, 47.565315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.420002, 32.693283, 47.311684>,  <44.454689, 32.510971, 47.159504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.420002, 32.693283, 47.311684>,  <44.362190, 32.997139, 47.565315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.420002, 32.693283, 47.311684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677456, -0.391102, 0.622970,
		-0.721223, -0.519601, 0.458096,
		0.144534, -0.759640, -0.634079,
		44.463364, 32.465389, 47.121460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.128826, 32.366249, 47.908756>,  <44.362190, 32.997139, 47.565315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.128826, 32.366249, 47.908756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.398323, 32.277828, 47.626701>,  <44.560020, 32.224777, 47.457470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.398323, 32.277828, 47.626701>,  <44.128826, 32.366249, 47.908756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.398323, 32.277828, 47.626701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599305, -0.394808, 0.696391,
		-0.432332, -0.891774, -0.133518,
		0.673737, -0.221054, -0.705133,
		44.600445, 32.211514, 47.415161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.163395, 31.683796, 47.907345>,  <44.128826, 32.366249, 47.908756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.163395, 31.683796, 47.907345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.497829, 31.822039, 47.736931>,  <44.698490, 31.904985, 47.634682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.497829, 31.822039, 47.736931>,  <44.163395, 31.683796, 47.907345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.497829, 31.822039, 47.736931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547797, -0.567773, 0.614453,
		-0.029534, -0.747120, -0.664033,
		0.836090, 0.345608, -0.426039,
		44.748657, 31.925720, 47.609119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.492737, 31.104809, 47.718636>,  <44.163395, 31.683796, 47.907345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.492737, 31.104809, 47.718636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.769608, 31.393169, 47.732452>,  <44.935730, 31.566187, 47.740742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.769608, 31.393169, 47.732452>,  <44.492737, 31.104809, 47.718636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.769608, 31.393169, 47.732452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573628, -0.578548, 0.579856,
		0.438002, -0.381549, -0.813986,
		0.692174, 0.720904, 0.034538,
		44.977261, 31.609440, 47.742813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.141773, 30.721544, 47.570343>,  <44.492737, 31.104809, 47.718636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.141773, 30.721544, 47.570343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.249195, 31.069414, 47.736015>,  <45.313648, 31.278137, 47.835419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.249195, 31.069414, 47.736015>,  <45.141773, 30.721544, 47.570343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.249195, 31.069414, 47.736015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637604, -0.482786, 0.600315,
		0.722038, 0.102864, -0.684163,
		0.268554, 0.869676, 0.414177,
		45.329762, 31.330317, 47.860268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.929688, 30.732527, 47.650822>,  <45.141773, 30.721544, 47.570343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.929688, 30.732527, 47.650822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.805698, 31.007164, 47.913883>,  <45.731304, 31.171946, 48.071720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.805698, 31.007164, 47.913883>,  <45.929688, 30.732527, 47.650822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.805698, 31.007164, 47.913883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543019, -0.439945, 0.715248,
		0.780415, 0.578825, -0.236462,
		-0.309973, 0.686593, 0.657653,
		45.712708, 31.213142, 48.111179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.490578, 30.756605, 48.150536>,  <45.929688, 30.732527, 47.650822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.490578, 30.756605, 48.150536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.216141, 30.954399, 48.363987>,  <46.051479, 31.073076, 48.492058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.216141, 30.954399, 48.363987>,  <46.490578, 30.756605, 48.150536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.216141, 30.954399, 48.363987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296063, -0.480239, 0.825661,
		0.664548, 0.724468, 0.183089,
		-0.686092, 0.494486, 0.533630,
		46.010315, 31.102745, 48.524075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.845116, 31.129360, 48.604481>,  <46.490578, 30.756605, 48.150536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.845116, 31.129360, 48.604481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.489067, 31.042009, 48.764481>,  <46.275440, 30.989599, 48.860481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.489067, 31.042009, 48.764481>,  <46.845116, 31.129360, 48.604481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.489067, 31.042009, 48.764481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455008, -0.475170, 0.753114,
		0.025604, 0.852364, 0.522322,
		-0.890119, -0.218378, 0.399998,
		46.222031, 30.976496, 48.884480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.935619, 31.166838, 49.254246>,  <46.845116, 31.129360, 48.604481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.935619, 31.166838, 49.254246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.591751, 30.962833, 49.265900>,  <46.385429, 30.840431, 49.272892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.591751, 30.962833, 49.265900>,  <46.935619, 31.166838, 49.254246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.591751, 30.962833, 49.265900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281880, -0.426032, 0.859674,
		-0.426032, 0.747252, 0.510011,
		-0.859674, -0.510011, 0.029132,
		46.333847, 30.809830, 49.274639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.765602, 31.188349, 49.943485>,  <46.935619, 31.166838, 49.254246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.765602, 31.188349, 49.943485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.539619, 30.893152, 49.795868>,  <46.404030, 30.716034, 49.707298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.539619, 30.893152, 49.795868>,  <46.765602, 31.188349, 49.943485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.539619, 30.893152, 49.795868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103882, -0.507319, 0.855474,
		-0.818553, 0.444971, 0.363278,
		-0.564959, -0.737989, -0.369043,
		46.370132, 30.671755, 49.685154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.146145, 31.429508, 50.161865>,  <46.765602, 31.188349, 49.943485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.146145, 31.429508, 50.161865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.769279, 31.307680, 50.217823>,  <45.543159, 31.234583, 50.251396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.769279, 31.307680, 50.217823>,  <46.146145, 31.429508, 50.161865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.769279, 31.307680, 50.217823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242169, -0.330071, 0.912364,
		-0.231707, 0.893470, 0.384738,
		-0.942160, -0.304572, 0.139890,
		45.486629, 31.216309, 50.259789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.883221, 31.692619, 50.847157>,  <46.146145, 31.429508, 50.161865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.883221, 31.692619, 50.847157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.708214, 31.359024, 50.712669>,  <45.603210, 31.158867, 50.631977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.708214, 31.359024, 50.712669>,  <45.883221, 31.692619, 50.847157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.708214, 31.359024, 50.712669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293061, -0.485736, 0.823514,
		-0.850116, 0.261765, 0.456926,
		-0.437513, -0.833990, -0.336219,
		45.576962, 31.108828, 50.611805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.344051, 31.948652, 51.310154>,  <45.883221, 31.692619, 50.847157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.344051, 31.948652, 51.310154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.141411, 31.983828, 51.653229>,  <45.019829, 32.004932, 51.859074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.141411, 31.983828, 51.653229>,  <45.344051, 31.948652, 51.310154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.141411, 31.983828, 51.653229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736137, 0.473757, -0.483380,
		-0.448843, -0.876254, -0.175270,
		-0.506599, 0.087939, 0.857685,
		44.989429, 32.010208, 51.910534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.732059, 31.673832, 51.228111>,  <45.344051, 31.948652, 51.310154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.732059, 31.673832, 51.228111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.681343, 31.915424, 51.542850>,  <44.650913, 32.060379, 51.731693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.681343, 31.915424, 51.542850>,  <44.732059, 31.673832, 51.228111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.681343, 31.915424, 51.542850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761994, 0.448548, -0.467086,
		-0.635051, -0.658795, 0.403361,
		-0.126787, 0.603982, 0.786849,
		44.643307, 32.096619, 51.778904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.057251, 31.636221, 51.397522>,  <44.732059, 31.673832, 51.228111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.057251, 31.636221, 51.397522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.184727, 31.983473, 51.549725>,  <44.261211, 32.191826, 51.641045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.184727, 31.983473, 51.549725>,  <44.057251, 31.636221, 51.397522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.184727, 31.983473, 51.549725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783538, 0.467186, -0.409641,
		-0.533389, -0.167591, 0.829102,
		0.318692, 0.868131, 0.380506,
		44.280334, 32.243912, 51.663876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.473774, 32.116695, 51.362938>,  <44.057251, 31.636221, 51.397522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.473774, 32.116695, 51.362938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.777500, 32.366512, 51.436028>,  <43.959736, 32.516403, 51.479881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.777500, 32.366512, 51.436028>,  <43.473774, 32.116695, 51.362938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.777500, 32.366512, 51.436028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312589, 0.596360, -0.739353,
		-0.570727, 0.504284, 0.648050,
		0.759315, 0.624542, 0.182725,
		44.005295, 32.553875, 51.490845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.161144, 32.647835, 51.595505>,  <43.473774, 32.116695, 51.362938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.161144, 32.647835, 51.595505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.506180, 32.737473, 51.414078>,  <43.713200, 32.791256, 51.305222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.506180, 32.737473, 51.414078>,  <43.161144, 32.647835, 51.595505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.506180, 32.737473, 51.414078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504502, 0.447797, -0.738211,
		0.037681, 0.865598, 0.499318,
		0.862588, 0.224090, -0.453570,
		43.764957, 32.804699, 51.278008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.982479, 33.212017, 51.185352>,  <43.161144, 32.647835, 51.595505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.982479, 33.212017, 51.185352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.343708, 33.128635, 51.035152>,  <43.560448, 33.078606, 50.945034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.343708, 33.128635, 51.035152>,  <42.982479, 33.212017, 51.185352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.343708, 33.128635, 51.035152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247026, 0.463096, -0.851188,
		0.351327, 0.861445, 0.366717,
		0.903077, -0.208457, -0.375497,
		43.614632, 33.066097, 50.922504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.999413, 33.802856, 50.591595>,  <42.982479, 33.212017, 51.185352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.999413, 33.802856, 50.591595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.303997, 33.551418, 50.528301>,  <43.486748, 33.400555, 50.490326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.303997, 33.551418, 50.528301>,  <42.999413, 33.802856, 50.591595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.303997, 33.551418, 50.528301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031912, 0.280167, -0.959421,
		0.647420, 0.725516, 0.233397,
		0.761465, -0.628596, -0.158233,
		43.532436, 33.362839, 50.480831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.513062, 34.184059, 50.191589>,  <42.999413, 33.802856, 50.591595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.513062, 34.184059, 50.191589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.534622, 33.787613, 50.142941>,  <43.547558, 33.549747, 50.113750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.534622, 33.787613, 50.142941>,  <43.513062, 34.184059, 50.191589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.534622, 33.787613, 50.142941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071709, 0.125329, -0.989520,
		0.995968, 0.044613, 0.077827,
		0.053899, -0.991112, -0.121625,
		43.550793, 33.490280, 50.106453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.108215, 34.009300, 49.780811>,  <43.513062, 34.184059, 50.191589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.108215, 34.009300, 49.780811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.856247, 33.700264, 49.749050>,  <43.705067, 33.514843, 49.729992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.856247, 33.700264, 49.749050>,  <44.108215, 34.009300, 49.780811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.856247, 33.700264, 49.749050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015811, 0.089460, -0.995865,
		0.776502, -0.628568, -0.044137,
		-0.629917, -0.772593, -0.079405,
		43.667271, 33.468487, 49.725227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.177269, 33.925503, 49.036541>,  <44.108215, 34.009300, 49.780811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.177269, 33.925503, 49.036541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.882629, 33.668179, 49.120033>,  <43.705845, 33.513783, 49.170128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.882629, 33.668179, 49.120033>,  <44.177269, 33.925503, 49.036541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.882629, 33.668179, 49.120033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320419, 0.060146, -0.945364,
		0.595612, -0.763236, -0.250433,
		-0.736599, -0.643314, 0.208732,
		43.661648, 33.475185, 49.182652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.248840, 33.439808, 48.493496>,  <44.177269, 33.925503, 49.036541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.248840, 33.439808, 48.493496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.880802, 33.479965, 48.644939>,  <43.659981, 33.504059, 48.735806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.880802, 33.479965, 48.644939>,  <44.248840, 33.439808, 48.493496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.880802, 33.479965, 48.644939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324703, 0.345095, -0.880612,
		-0.219065, -0.933183, -0.284922,
		-0.920097, 0.100397, 0.378605,
		43.604774, 33.510086, 48.758522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.780632, 33.149895, 48.050865>,  <44.248840, 33.439808, 48.493496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.780632, 33.149895, 48.050865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.526890, 33.347969, 48.288315>,  <43.374645, 33.466812, 48.430786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.526890, 33.347969, 48.288315>,  <43.780632, 33.149895, 48.050865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.526890, 33.347969, 48.288315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633857, 0.106393, -0.766097,
		-0.442517, -0.862249, 0.246385,
		-0.634353, 0.495184, 0.593624,
		43.336582, 33.496525, 48.466400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.090229, 32.832184, 47.902763>,  <43.780632, 33.149895, 48.050865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.090229, 32.832184, 47.902763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.034313, 33.206852, 48.031204>,  <43.000763, 33.431652, 48.108269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.034313, 33.206852, 48.031204>,  <43.090229, 32.832184, 47.902763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.034313, 33.206852, 48.031204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742080, 0.115601, -0.660268,
		-0.655573, -0.330584, 0.678925,
		-0.139790, 0.936670, 0.321105,
		42.992374, 33.487854, 48.127537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.413757, 32.892887, 47.939598>,  <43.090229, 32.832184, 47.902763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.413757, 32.892887, 47.939598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.563107, 33.261356, 47.895710>,  <42.652714, 33.482437, 47.869377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.563107, 33.261356, 47.895710>,  <42.413757, 32.892887, 47.939598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.563107, 33.261356, 47.895710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629167, 0.164529, -0.759657,
		-0.681722, 0.352668, 0.641000,
		0.373370, 0.921171, -0.109724,
		42.675117, 33.537708, 47.862793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.821556, 32.588009, 47.620182>,  <42.413757, 32.892887, 47.939598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.821556, 32.588009, 47.620182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.447021, 32.455341, 47.666260>,  <41.222301, 32.375740, 47.693905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.447021, 32.455341, 47.666260>,  <41.821556, 32.588009, 47.620182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.447021, 32.455341, 47.666260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315501, -0.650852, 0.690544,
		-0.154059, 0.682925, 0.714058,
		-0.936336, -0.331671, 0.115194,
		41.166122, 32.355839, 47.700817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.546429, 32.710503, 48.304996>,  <41.821556, 32.588009, 47.620182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.546429, 32.710503, 48.304996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.332550, 32.395451, 48.182529>,  <41.204224, 32.206421, 48.109047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.332550, 32.395451, 48.182529>,  <41.546429, 32.710503, 48.304996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332550, 32.395451, 48.182529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282497, -0.508073, 0.813669,
		-0.796426, 0.348575, 0.494168,
		-0.534698, -0.787628, -0.306171,
		41.172142, 32.159161, 48.090679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126877, 32.574837, 48.806183>,  <41.546429, 32.710503, 48.304996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126877, 32.574837, 48.806183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.183792, 32.227840, 48.615513>,  <41.217941, 32.019642, 48.501110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.183792, 32.227840, 48.615513>,  <41.126877, 32.574837, 48.806183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.183792, 32.227840, 48.615513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214308, -0.443152, 0.870453,
		-0.966347, -0.226011, 0.122854,
		0.142289, -0.867488, -0.476674,
		41.226479, 31.967594, 48.472511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802483, 32.120663, 49.305695>,  <41.126877, 32.574837, 48.806183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.802483, 32.120663, 49.305695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.017143, 31.893236, 49.056301>,  <41.145939, 31.756779, 48.906666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.017143, 31.893236, 49.056301>,  <40.802483, 32.120663, 49.305695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.017143, 31.893236, 49.056301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340414, -0.530215, 0.776524,
		-0.772089, -0.628967, -0.090992,
		0.536653, -0.568571, -0.623482,
		41.178139, 31.722666, 48.869255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731503, 31.320810, 49.494106>,  <40.802483, 32.120663, 49.305695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731503, 31.320810, 49.494106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.064247, 31.331848, 49.272388>,  <41.263893, 31.338470, 49.139359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.064247, 31.331848, 49.272388>,  <40.731503, 31.320810, 49.494106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.064247, 31.331848, 49.272388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452633, -0.611667, 0.648836,
		-0.321142, -0.790634, -0.521311,
		0.831860, 0.027594, -0.554299,
		41.313805, 31.340126, 49.106098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861237, 30.671951, 49.254910>,  <40.731503, 31.320810, 49.494106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.861237, 30.671951, 49.254910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.196644, 30.889370, 49.270111>,  <41.397888, 31.019821, 49.279232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.196644, 30.889370, 49.270111>,  <40.861237, 30.671951, 49.254910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.196644, 30.889370, 49.270111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411443, -0.677359, 0.609836,
		0.357215, -0.495723, -0.791616,
		0.838518, 0.543547, 0.038002,
		41.448200, 31.052435, 49.281513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286240, 30.207600, 49.387119>,  <40.861237, 30.671951, 49.254910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.286240, 30.207600, 49.387119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.487518, 30.544035, 49.466480>,  <41.608288, 30.745895, 49.514095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.487518, 30.544035, 49.466480>,  <41.286240, 30.207600, 49.387119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.487518, 30.544035, 49.466480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567235, -0.494680, 0.658435,
		0.651947, -0.218784, -0.726016,
		0.503200, 0.841086, 0.198403,
		41.638477, 30.796360, 49.526001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326027, 29.514744, 49.077198>,  <41.286240, 30.207600, 49.387119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326027, 29.514744, 49.077198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.105019, 29.230700, 49.251770>,  <40.972416, 29.060274, 49.356514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.105019, 29.230700, 49.251770>,  <41.326027, 29.514744, 49.077198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105019, 29.230700, 49.251770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819235, 0.366197, -0.441310,
		0.153558, -0.601370, -0.784075,
		-0.552517, -0.710108, 0.436431,
		40.939262, 29.017668, 49.382698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.040180, 29.124996, 48.496166>,  <41.326027, 29.514744, 49.077198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.040180, 29.124996, 48.496166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.823856, 29.145580, 48.831993>,  <40.694061, 29.157930, 49.033489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.823856, 29.145580, 48.831993>,  <41.040180, 29.124996, 48.496166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.823856, 29.145580, 48.831993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757254, 0.404740, -0.512594,
		-0.366186, -0.912983, -0.179917,
		-0.540809, 0.051462, 0.839570,
		40.661613, 29.161018, 49.083862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385929, 29.021046, 48.248608>,  <41.040180, 29.124996, 48.496166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385929, 29.021046, 48.248608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.287804, 29.124418, 48.622353>,  <40.228928, 29.186441, 48.846600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.287804, 29.124418, 48.622353>,  <40.385929, 29.021046, 48.248608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287804, 29.124418, 48.622353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875979, 0.353806, -0.327845,
		-0.415308, -0.898908, 0.139585,
		-0.245317, 0.258430, 0.934363,
		40.214211, 29.201946, 48.902660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751671, 28.722193, 48.378868>,  <40.385929, 29.021046, 48.248608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751671, 28.722193, 48.378868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.809921, 29.052696, 48.596523>,  <39.844872, 29.250998, 48.727116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.809921, 29.052696, 48.596523>,  <39.751671, 28.722193, 48.378868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809921, 29.052696, 48.596523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875727, 0.363559, -0.317690,
		-0.460322, -0.430257, 0.776519,
		0.145622, 0.826259, 0.544142,
		39.853607, 29.300573, 48.759766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072479, 28.950804, 48.576290>,  <39.751671, 28.722193, 48.378868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072479, 28.950804, 48.576290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.271248, 29.292603, 48.636826>,  <39.390511, 29.497683, 48.673145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.271248, 29.292603, 48.636826>,  <39.072479, 28.950804, 48.576290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271248, 29.292603, 48.636826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755910, 0.511874, -0.408148,
		-0.426226, 0.088423, 0.900285,
		0.496922, 0.854498, 0.151334,
		39.420326, 29.548952, 48.682224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626331, 29.444157, 48.743824>,  <39.072479, 28.950804, 48.576290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626331, 29.444157, 48.743824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.936764, 29.678640, 48.650818>,  <39.123024, 29.819330, 48.595016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.936764, 29.678640, 48.650818>,  <38.626331, 29.444157, 48.743824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936764, 29.678640, 48.650818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610003, 0.604268, -0.512598,
		-0.159989, 0.539650, 0.826548,
		0.776079, 0.586207, -0.232512,
		39.169586, 29.854502, 48.581062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382545, 30.150433, 48.959042>,  <38.626331, 29.444157, 48.743824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382545, 30.150433, 48.959042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.687336, 30.180149, 48.701710>,  <38.870213, 30.197979, 48.547310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.687336, 30.180149, 48.701710>,  <38.382545, 30.150433, 48.959042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687336, 30.180149, 48.701710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581500, 0.515727, -0.629193,
		0.285037, 0.853526, 0.436173,
		0.761979, 0.074291, -0.643326,
		38.915928, 30.202436, 48.508713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<45.531769, 27.531483, 49.559952> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<45.587090, 27.927486, 49.570919>,  <45.620281, 28.165089, 49.577499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<45.587090, 27.927486, 49.570919>,  <45.531769, 27.531483, 49.559952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<45.587090, 27.927486, 49.570919> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352874, 0.075122, -0.932651,
		-0.925394, 0.119310, 0.359738,
		0.138299, 0.990011, 0.027416,
		45.628578, 28.224489, 49.579144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.878345, 27.937946, 49.427219>,  <45.531769, 27.531483, 49.559952>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.878345, 27.937946, 49.427219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<45.210320, 28.129318, 49.312454>,  <45.409504, 28.244141, 49.243595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<45.210320, 28.129318, 49.312454>,  <44.878345, 27.937946, 49.427219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<45.210320, 28.129318, 49.312454> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406479, 0.166362, -0.898387,
		-0.382084, 0.862223, 0.332541,
		0.829932, 0.478430, -0.286911,
		45.459301, 28.272846, 49.226379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.619347, 28.497953, 49.073486>,  <44.878345, 27.937946, 49.427219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.619347, 28.497953, 49.073486> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.997726, 28.504932, 48.943951>,  <45.224754, 28.509121, 48.866230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.997726, 28.504932, 48.943951>,  <44.619347, 28.497953, 49.073486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<44.997726, 28.504932, 48.943951> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321415, 0.183637, -0.928962,
		0.043260, 0.982839, 0.179320,
		0.945950, 0.017449, -0.323843,
		45.281513, 28.510168, 48.846798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.681694, 29.168293, 48.748810>,  <44.619347, 28.497953, 49.073486>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.681694, 29.168293, 48.748810> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.968781, 28.927637, 48.608574>,  <45.141033, 28.783243, 48.524433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.968781, 28.927637, 48.608574>,  <44.681694, 29.168293, 48.748810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<44.968781, 28.927637, 48.608574> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283672, 0.207187, -0.936271,
		0.635933, 0.771431, -0.021966,
		0.717718, -0.601637, -0.350590,
		45.184097, 28.747147, 48.503395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.234764, 29.593002, 48.290077>,  <44.681694, 29.168293, 48.748810>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.234764, 29.593002, 48.290077> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<45.222530, 29.210176, 48.174778>,  <45.215191, 28.980480, 48.105598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<45.222530, 29.210176, 48.174778>,  <45.234764, 29.593002, 48.290077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<45.222530, 29.210176, 48.174778> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283373, 0.284856, -0.915728,
		0.958522, 0.053679, -0.279918,
		-0.030581, -0.957066, -0.288252,
		45.213356, 28.923056, 48.088303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.450588, 29.503340, 47.588734>,  <45.234764, 29.593002, 48.290077>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.450588, 29.503340, 47.588734> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<45.241611, 29.165226, 47.633537>,  <45.116226, 28.962358, 47.660419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<45.241611, 29.165226, 47.633537>,  <45.450588, 29.503340, 47.588734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<45.241611, 29.165226, 47.633537> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363963, 0.102273, -0.925781,
		0.771093, -0.524436, -0.361084,
		-0.522443, -0.845285, 0.112013,
		45.084877, 28.911640, 47.667141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.705818, 29.136784, 46.995960>,  <45.450588, 29.503340, 47.588734>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.705818, 29.136784, 46.995960> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<45.361454, 28.969328, 47.111591>,  <45.154835, 28.868855, 47.180969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<45.361454, 28.969328, 47.111591>,  <45.705818, 29.136784, 46.995960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<45.361454, 28.969328, 47.111591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337674, 0.045204, -0.940177,
		0.380529, -0.907026, -0.180281,
		-0.860914, -0.418641, 0.289077,
		45.103180, 28.843735, 47.198315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.556530, 28.599966, 46.554531>,  <45.705818, 29.136784, 46.995960>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.556530, 28.599966, 46.554531> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<45.202320, 28.684053, 46.720261>,  <44.989796, 28.734505, 46.819698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<45.202320, 28.684053, 46.720261>,  <45.556530, 28.599966, 46.554531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<45.202320, 28.684053, 46.720261> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431982, -0.044287, -0.900794,
		-0.171014, -0.976651, 0.130028,
		-0.885520, 0.210218, 0.414322,
		44.936665, 28.747118, 46.844559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.094021, 28.178730, 46.202560>,  <45.556530, 28.599966, 46.554531>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.094021, 28.178730, 46.202560> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.879688, 28.470356, 46.372902>,  <44.751087, 28.645332, 46.475105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.879688, 28.470356, 46.372902>,  <45.094021, 28.178730, 46.202560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<44.879688, 28.470356, 46.372902> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568647, 0.061214, -0.820301,
		-0.624121, -0.681702, 0.381780,
		-0.535831, 0.729064, 0.425853,
		44.718941, 28.689075, 46.500656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.446190, 27.972357, 46.006031>,  <45.094021, 28.178730, 46.202560>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.446190, 27.972357, 46.006031> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.404301, 28.357834, 46.104279>,  <44.379169, 28.589121, 46.163227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.404301, 28.357834, 46.104279>,  <44.446190, 27.972357, 46.006031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<44.404301, 28.357834, 46.104279> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563784, 0.145928, -0.812928,
		-0.819256, -0.223605, 0.528034,
		-0.104720, 0.963694, 0.245617,
		44.372887, 28.646942, 46.177963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.708118, 28.076691, 45.976139>,  <44.446190, 27.972357, 46.006031>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.708118, 28.076691, 45.976139> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.865582, 28.443630, 45.952454>,  <43.960060, 28.663794, 45.938244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.865582, 28.443630, 45.952454>,  <43.708118, 28.076691, 45.976139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.865582, 28.443630, 45.952454> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609994, 0.212490, -0.763384,
		-0.687708, 0.336627, 0.643226,
		0.393655, 0.917349, -0.059209,
		43.983677, 28.718836, 45.934692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.102482, 28.592752, 45.852867>,  <43.708118, 28.076691, 45.976139>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.102482, 28.592752, 45.852867> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.439667, 28.775394, 45.739071>,  <43.641975, 28.884979, 45.670795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.439667, 28.775394, 45.739071>,  <43.102482, 28.592752, 45.852867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.439667, 28.775394, 45.739071> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442588, 0.287970, -0.849229,
		-0.305841, 0.841774, 0.444835,
		0.842958, 0.456607, -0.284486,
		43.692554, 28.912376, 45.653725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.388016, 28.717915, 46.074329>,  <43.102482, 28.592752, 45.852867>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.388016, 28.717915, 46.074329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.174843, 28.400633, 45.956474>,  <42.046940, 28.210264, 45.885761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.174843, 28.400633, 45.956474>,  <42.388016, 28.717915, 46.074329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.174843, 28.400633, 45.956474> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329402, -0.515224, 0.791226,
		-0.779410, 0.324613, 0.535861,
		-0.532930, -0.793203, -0.294642,
		42.014965, 28.162672, 45.868080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.949615, 28.504227, 46.669037>,  <42.388016, 28.717915, 46.074329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.949615, 28.504227, 46.669037> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.997684, 28.198942, 46.415085>,  <42.026524, 28.015772, 46.262714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.997684, 28.198942, 46.415085>,  <41.949615, 28.504227, 46.669037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.997684, 28.198942, 46.415085> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339303, -0.569426, 0.748751,
		-0.932970, -0.305393, 0.190531,
		0.120170, -0.763210, -0.634878,
		42.033737, 27.969978, 46.224621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.676407, 28.008774, 47.088364>,  <41.949615, 28.504227, 46.669037>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.676407, 28.008774, 47.088364> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.889740, 27.792940, 46.827778>,  <42.017742, 27.663441, 46.671429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.889740, 27.792940, 46.827778>,  <41.676407, 28.008774, 47.088364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889740, 27.792940, 46.827778> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300375, -0.599144, 0.742159,
		-0.790777, -0.591504, -0.157468,
		0.533336, -0.539583, -0.651463,
		42.049740, 27.631065, 46.632339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.401817, 27.389341, 47.225723>,  <41.676407, 28.008774, 47.088364>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.401817, 27.389341, 47.225723> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.771496, 27.385214, 47.073017>,  <41.993305, 27.382738, 46.981392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.771496, 27.385214, 47.073017>,  <41.401817, 27.389341, 47.225723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.771496, 27.385214, 47.073017> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304028, -0.585102, 0.751813,
		-0.231130, -0.810894, -0.537615,
		0.924200, -0.010316, -0.381769,
		42.048756, 27.382118, 46.958485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.599667, 26.779392, 47.451576>,  <41.401817, 27.389341, 47.225723>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.599667, 26.779392, 47.451576> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.955048, 26.894194, 47.308311>,  <42.168278, 26.963076, 47.222351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.955048, 26.894194, 47.308311>,  <41.599667, 26.779392, 47.451576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.955048, 26.894194, 47.308311> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452022, -0.411899, 0.791211,
		0.079554, -0.864851, -0.495685,
		0.888452, 0.287005, -0.358163,
		42.221584, 26.980295, 47.200863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.003689, 26.194330, 47.306732>,  <41.599667, 26.779392, 47.451576>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.003689, 26.194330, 47.306732> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.260548, 26.494892, 47.367451>,  <42.414661, 26.675230, 47.403881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.260548, 26.494892, 47.367451>,  <42.003689, 26.194330, 47.306732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.260548, 26.494892, 47.367451> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421646, -0.511578, 0.748667,
		0.640209, -0.416747, -0.645333,
		0.642143, 0.751405, 0.151798,
		42.453190, 26.720314, 47.412991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.626465, 25.923883, 47.186249>,  <42.003689, 26.194330, 47.306732>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.626465, 25.923883, 47.186249> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.688053, 26.249449, 47.410336>,  <42.725006, 26.444788, 47.544788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.688053, 26.249449, 47.410336>,  <42.626465, 25.923883, 47.186249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.688053, 26.249449, 47.410336> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591914, -0.529962, 0.607272,
		0.791157, 0.238094, -0.563367,
		0.153975, 0.813912, 0.560214,
		42.734245, 26.493622, 47.578400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.377205, 25.958675, 47.360725>,  <42.626465, 25.923883, 47.186249>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.377205, 25.958675, 47.360725> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.205212, 26.191267, 47.636986>,  <43.102016, 26.330822, 47.802742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.205212, 26.191267, 47.636986>,  <43.377205, 25.958675, 47.360725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.205212, 26.191267, 47.636986> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524133, -0.462096, 0.715369,
		0.735116, 0.669591, -0.106076,
		-0.429987, 0.581477, 0.690648,
		43.076214, 26.365709, 47.844181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.869675, 26.078369, 47.796577>,  <43.377205, 25.958675, 47.360725>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.869675, 26.078369, 47.796577> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.542160, 26.163168, 48.009983>,  <43.345650, 26.214046, 48.138027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.542160, 26.163168, 48.009983>,  <43.869675, 26.078369, 47.796577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.542160, 26.163168, 48.009983> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417428, -0.418157, 0.806783,
		0.394130, 0.883290, 0.253889,
		-0.818789, 0.211997, 0.533518,
		43.296524, 26.226767, 48.170040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.136456, 26.348150, 48.399349>,  <43.869675, 26.078369, 47.796577>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.136456, 26.348150, 48.399349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.750065, 26.269600, 48.466663>,  <43.518230, 26.222469, 48.507053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.750065, 26.269600, 48.466663>,  <44.136456, 26.348150, 48.399349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.750065, 26.269600, 48.466663> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220971, -0.288605, 0.931600,
		-0.134374, 0.937094, 0.322179,
		-0.965979, -0.196375, 0.168289,
		43.460270, 26.210688, 48.517151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.980843, 26.631296, 49.015221>,  <44.136456, 26.348150, 48.399349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.980843, 26.631296, 49.015221> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.668587, 26.383753, 48.980316>,  <43.481232, 26.235228, 48.959373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.668587, 26.383753, 48.980316>,  <43.980843, 26.631296, 49.015221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.668587, 26.383753, 48.980316> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085424, -0.243964, 0.966015,
		-0.619113, 0.746658, 0.243314,
		-0.780642, -0.618857, -0.087258,
		43.434395, 26.198095, 48.954140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.423416, 26.810993, 49.596191>,  <43.980843, 26.631296, 49.015221>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.423416, 26.810993, 49.596191> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.370129, 26.427004, 49.497635>,  <43.338154, 26.196611, 49.438503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.370129, 26.427004, 49.497635>,  <43.423416, 26.810993, 49.596191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.370129, 26.427004, 49.497635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213440, -0.270560, 0.938744,
		-0.967830, 0.072472, 0.240941,
		-0.133221, -0.959972, -0.246387,
		43.330162, 26.139013, 49.423717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.952873, 26.568584, 50.066513>,  <43.423416, 26.810993, 49.596191>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.952873, 26.568584, 50.066513> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.155243, 26.250639, 49.932503>,  <43.276665, 26.059872, 49.852097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.155243, 26.250639, 49.932503>,  <42.952873, 26.568584, 50.066513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.155243, 26.250639, 49.932503> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137858, -0.308896, 0.941052,
		-0.851493, -0.522282, -0.046698,
		0.505920, -0.794862, -0.335023,
		43.307018, 26.012180, 49.831997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.740425, 25.900808, 50.439579>,  <42.952873, 26.568584, 50.066513>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.740425, 25.900808, 50.439579> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.095390, 25.810045, 50.279076>,  <43.308369, 25.755587, 50.182774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.095390, 25.810045, 50.279076>,  <42.740425, 25.900808, 50.439579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.095390, 25.810045, 50.279076> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300979, -0.374102, 0.877188,
		-0.349148, -0.899201, -0.263691,
		0.887416, -0.226903, -0.401258,
		43.361614, 25.741974, 50.158699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.213802, 26.416054, 50.754936>,  <42.740425, 25.900808, 50.439579>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.213802, 26.416054, 50.754936> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.350750, 26.767160, 50.888985>,  <42.432919, 26.977825, 50.969414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.350750, 26.767160, 50.888985>,  <42.213802, 26.416054, 50.754936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.350750, 26.767160, 50.888985> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628332, 0.479084, -0.612925,
		-0.698557, -0.000721, 0.715554,
		0.342369, 0.877769, 0.335121,
		42.453461, 27.030491, 50.989521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.575466, 26.748234, 51.007133>,  <42.213802, 26.416054, 50.754936>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.575466, 26.748234, 51.007133> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.864643, 27.019220, 50.952877>,  <42.038147, 27.181812, 50.920322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.864643, 27.019220, 50.952877>,  <41.575466, 26.748234, 51.007133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.864643, 27.019220, 50.952877> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652928, 0.605709, -0.454754,
		-0.225923, 0.417322, 0.880228,
		0.722940, 0.677465, -0.135638,
		42.081524, 27.222460, 50.912186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188320, 27.405588, 51.167446>,  <41.575466, 26.748234, 51.007133>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188320, 27.405588, 51.167446> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.514725, 27.510960, 50.961636>,  <41.710567, 27.574183, 50.838150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.514725, 27.510960, 50.961636>,  <41.188320, 27.405588, 51.167446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514725, 27.510960, 50.961636> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566448, 0.541774, -0.620981,
		0.115172, 0.798177, 0.591311,
		0.816010, 0.263428, -0.514523,
		41.759529, 27.589989, 50.807278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179176, 28.196043, 51.180996>,  <41.188320, 27.405588, 51.167446>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.179176, 28.196043, 51.180996> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.403828, 28.070526, 50.874767>,  <41.538620, 27.995216, 50.691029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.403828, 28.070526, 50.874767>,  <41.179176, 28.196043, 51.180996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403828, 28.070526, 50.874767> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467131, 0.643454, -0.606429,
		0.682904, 0.698213, 0.214802,
		0.561632, -0.313792, -0.765574,
		41.572319, 27.976389, 50.645096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.319046, 28.794750, 50.894203>,  <41.179176, 28.196043, 51.180996>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.319046, 28.794750, 50.894203> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.368034, 28.519476, 50.608154>,  <41.397427, 28.354311, 50.436523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.368034, 28.519476, 50.608154>,  <41.319046, 28.794750, 50.894203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368034, 28.519476, 50.608154> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268817, 0.670611, -0.691389,
		0.955374, 0.276910, -0.102869,
		0.122467, -0.688188, -0.715122,
		41.404774, 28.313019, 50.393620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549740, 29.201990, 50.353489>,  <41.319046, 28.794750, 50.894203>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.549740, 29.201990, 50.353489> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.420933, 28.859190, 50.192566>,  <41.343651, 28.653509, 50.096012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.420933, 28.859190, 50.192566>,  <41.549740, 29.201990, 50.353489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.420933, 28.859190, 50.192566> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584872, 0.514235, -0.627285,
		0.744467, 0.033305, -0.666827,
		-0.322014, -0.857002, -0.402311,
		41.324329, 28.602089, 50.071873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.694302, 29.403187, 49.744659>,  <41.549740, 29.201990, 50.353489>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.694302, 29.403187, 49.744659> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.423431, 29.109364, 49.727413>,  <41.260910, 28.933069, 49.717064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.423431, 29.109364, 49.727413>,  <41.694302, 29.403187, 49.744659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423431, 29.109364, 49.727413> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569041, 0.559937, -0.602215,
		0.466502, -0.383272, -0.797169,
		-0.677177, -0.734556, -0.043115,
		41.220280, 28.888996, 49.714478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.992264, 29.964191, 49.432152>,  <41.694302, 29.403187, 49.744659>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.992264, 29.964191, 49.432152> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.031895, 30.313335, 49.623276>,  <42.055672, 30.522821, 49.737949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.031895, 30.313335, 49.623276>,  <41.992264, 29.964191, 49.432152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.031895, 30.313335, 49.623276> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484548, -0.461716, 0.742988,
		0.869136, 0.157908, -0.468688,
		0.099077, 0.872859, 0.477808,
		42.061619, 30.575193, 49.766617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.592407, 29.850388, 49.807308>,  <41.992264, 29.964191, 49.432152>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.592407, 29.850388, 49.807308> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.411690, 30.151384, 49.998989>,  <42.303261, 30.331982, 50.113998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.411690, 30.151384, 49.998989>,  <42.592407, 29.850388, 49.807308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.411690, 30.151384, 49.998989> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258202, -0.403867, 0.877624,
		0.853940, 0.520237, -0.011830,
		-0.451795, 0.752492, 0.479204,
		42.276150, 30.377132, 50.142750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.143333, 29.991394, 50.246586>,  <42.592407, 29.850388, 49.807308>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.143333, 29.991394, 50.246586> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.807335, 30.156403, 50.387569>,  <42.605736, 30.255407, 50.472160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.807335, 30.156403, 50.387569>,  <43.143333, 29.991394, 50.246586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.807335, 30.156403, 50.387569> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357185, -0.068571, 0.931513,
		0.408438, 0.908363, -0.089748,
		-0.839998, 0.412522, 0.352461,
		42.555336, 30.280159, 50.493309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.265583, 30.527351, 50.772320>,  <43.143333, 29.991394, 50.246586>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.265583, 30.527351, 50.772320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.895779, 30.399418, 50.855247>,  <42.673897, 30.322659, 50.905003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.895779, 30.399418, 50.855247>,  <43.265583, 30.527351, 50.772320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.895779, 30.399418, 50.855247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287579, -0.228352, 0.930136,
		-0.250147, 0.919544, 0.303092,
		-0.924513, -0.319834, 0.207320,
		42.618423, 30.303467, 50.917442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.120495, 31.087788, 51.247826>,  <43.265583, 30.527351, 50.772320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.120495, 31.087788, 51.247826> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.886597, 30.763731, 51.264545>,  <42.746258, 30.569298, 51.274578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.886597, 30.763731, 51.264545>,  <43.120495, 31.087788, 51.247826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.886597, 30.763731, 51.264545> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245899, -0.127912, 0.960818,
		-0.773051, 0.572111, 0.274009,
		-0.584744, -0.810140, 0.041799,
		42.711174, 30.520689, 51.277084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.744019, 31.104078, 51.926830>,  <43.120495, 31.087788, 51.247826>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.744019, 31.104078, 51.926830> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.767937, 30.736629, 51.770596>,  <42.782288, 30.516161, 51.676853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.767937, 30.736629, 51.770596>,  <42.744019, 31.104078, 51.926830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.767937, 30.736629, 51.770596> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224498, -0.368888, 0.901955,
		-0.972638, -0.141622, 0.184169,
		0.059799, -0.918621, -0.390588,
		42.785877, 30.461042, 51.653419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.508423, 30.680864, 52.507092>,  <42.744019, 31.104078, 51.926830>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.508423, 30.680864, 52.507092> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.691498, 30.405226, 52.282352>,  <42.801342, 30.239843, 52.147511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.691498, 30.405226, 52.282352>,  <42.508423, 30.680864, 52.507092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.691498, 30.405226, 52.282352> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384960, -0.416027, 0.823849,
		-0.801453, -0.593354, 0.074863,
		0.457689, -0.689096, -0.561843,
		42.828804, 30.198498, 52.113800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.421402, 29.960165, 52.770168>,  <42.508423, 30.680864, 52.507092>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.421402, 29.960165, 52.770168> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.752197, 29.939930, 52.546192>,  <42.950672, 29.927790, 52.411808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.752197, 29.939930, 52.546192>,  <42.421402, 29.960165, 52.770168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.752197, 29.939930, 52.546192> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492420, -0.415462, 0.764797,
		-0.271323, -0.908203, -0.318671,
		0.826986, -0.050587, -0.559941,
		43.000294, 29.924753, 52.378208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.672737, 29.277931, 52.854595>,  <42.421402, 29.960165, 52.770168>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.672737, 29.277931, 52.854595> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.977367, 29.507626, 52.734428>,  <43.160145, 29.645443, 52.662327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.977367, 29.507626, 52.734428>,  <42.672737, 29.277931, 52.854595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.977367, 29.507626, 52.734428> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602000, -0.455178, 0.656056,
		0.239988, -0.680489, -0.692345,
		0.761579, 0.574237, -0.300417,
		43.205841, 29.679897, 52.644302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.505074, 35.135212, 39.013546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837891, 35.354939, 39.044415>,  <38.037582, 35.486774, 39.062935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837891, 35.354939, 39.044415>,  <37.505074, 35.135212, 39.013546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837891, 35.354939, 39.044415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149714, -0.356341, 0.922283,
		0.534127, -0.755824, -0.378732,
		0.832042, 0.549318, 0.077174,
		38.087502, 35.519733, 39.067566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025394, 34.702904, 39.330215>,  <37.505074, 35.135212, 39.013546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025394, 34.702904, 39.330215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146214, 35.078812, 39.394207>,  <38.218704, 35.304356, 39.432602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146214, 35.078812, 39.394207>,  <38.025394, 34.702904, 39.330215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146214, 35.078812, 39.394207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143216, -0.210642, 0.967016,
		0.942474, -0.269173, -0.198214,
		0.302047, 0.939774, 0.159974,
		38.236828, 35.360744, 39.442200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618702, 34.641117, 39.652824>,  <38.025394, 34.702904, 39.330215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618702, 34.641117, 39.652824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.502705, 35.010792, 39.752239>,  <38.433105, 35.232597, 39.811890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.502705, 35.010792, 39.752239>,  <38.618702, 34.641117, 39.652824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502705, 35.010792, 39.752239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198362, -0.196014, 0.960329,
		0.936244, 0.327794, -0.126481,
		-0.289998, 0.924191, 0.248539,
		38.415707, 35.288048, 39.826801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962532, 34.723923, 40.199497>,  <38.618702, 34.641117, 39.652824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962532, 34.723923, 40.199497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.696003, 35.021595, 40.218319>,  <38.536087, 35.200199, 40.229610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.696003, 35.021595, 40.218319>,  <38.962532, 34.723923, 40.199497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696003, 35.021595, 40.218319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125557, -0.174177, 0.976677,
		0.735018, 0.644873, 0.209495,
		-0.666321, 0.744178, 0.047055,
		38.496105, 35.244850, 40.232437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166798, 35.049694, 40.790962>,  <38.962532, 34.723923, 40.199497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166798, 35.049694, 40.790962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.783798, 35.128948, 40.707123>,  <38.553997, 35.176502, 40.656818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.783798, 35.128948, 40.707123>,  <39.166798, 35.049694, 40.790962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783798, 35.128948, 40.707123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256637, -0.253646, 0.932631,
		0.131627, 0.946787, 0.293716,
		-0.957503, 0.198138, -0.209594,
		38.496548, 35.188389, 40.644245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971581, 35.442070, 41.196884>,  <39.166798, 35.049694, 40.790962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971581, 35.442070, 41.196884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620853, 35.269623, 41.111721>,  <38.410416, 35.166157, 41.060623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620853, 35.269623, 41.111721>,  <38.971581, 35.442070, 41.196884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620853, 35.269623, 41.111721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197903, -0.079967, 0.976954,
		-0.438204, 0.898747, -0.015202,
		-0.876819, -0.431113, -0.212906,
		38.357807, 35.140289, 41.047848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482761, 35.668774, 41.793491>,  <38.971581, 35.442070, 41.196884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482761, 35.668774, 41.793491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303955, 35.360088, 41.612541>,  <38.196671, 35.174877, 41.503971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303955, 35.360088, 41.612541>,  <38.482761, 35.668774, 41.793491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303955, 35.360088, 41.612541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236097, -0.385993, 0.891778,
		-0.862806, 0.505443, -0.009653,
		-0.447016, -0.771710, -0.452371,
		38.169849, 35.128574, 41.476830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809235, 35.777969, 41.899433>,  <38.482761, 35.668774, 41.793491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809235, 35.777969, 41.899433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.838253, 35.384636, 41.832745>,  <37.855663, 35.148636, 41.792732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.838253, 35.384636, 41.832745>,  <37.809235, 35.777969, 41.899433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838253, 35.384636, 41.832745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520066, -0.179935, 0.834958,
		-0.851040, 0.026138, -0.524450,
		0.072542, -0.983331, -0.166725,
		37.860016, 35.089638, 41.782726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187717, 35.384953, 42.189140>,  <37.809235, 35.777969, 41.899433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187717, 35.384953, 42.189140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.462456, 35.096146, 42.155834>,  <37.627300, 34.922859, 42.135853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.462456, 35.096146, 42.155834>,  <37.187717, 35.384953, 42.189140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462456, 35.096146, 42.155834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189740, -0.288714, 0.938426,
		-0.701600, -0.628755, -0.335297,
		0.686845, -0.722019, -0.083262,
		37.668510, 34.879539, 42.130856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914978, 34.852921, 42.534397>,  <37.187717, 35.384953, 42.189140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914978, 34.852921, 42.534397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305542, 34.766560, 42.533283>,  <37.539879, 34.714745, 42.532616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305542, 34.766560, 42.533283>,  <36.914978, 34.852921, 42.534397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305542, 34.766560, 42.533283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060410, -0.285524, 0.956466,
		-0.207296, -0.933736, -0.291832,
		0.976411, -0.215901, -0.002782,
		37.598465, 34.701790, 42.532448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008583, 34.116322, 42.846161>,  <36.914978, 34.852921, 42.534397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008583, 34.116322, 42.846161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363792, 34.296337, 42.883854>,  <37.576920, 34.404346, 42.906471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363792, 34.296337, 42.883854>,  <37.008583, 34.116322, 42.846161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363792, 34.296337, 42.883854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092450, -0.375528, 0.922189,
		0.450406, -0.810214, -0.375084,
		0.888024, 0.450036, 0.094235,
		37.630199, 34.431347, 42.912125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450531, 33.668846, 43.185932>,  <37.008583, 34.116322, 42.846161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450531, 33.668846, 43.185932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.677357, 33.996010, 43.224865>,  <37.813450, 34.192307, 43.248226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.677357, 33.996010, 43.224865>,  <37.450531, 33.668846, 43.185932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677357, 33.996010, 43.224865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348521, -0.345325, 0.871369,
		0.746309, -0.460196, -0.480877,
		0.567060, 0.817906, 0.097331,
		37.847473, 34.241383, 43.254063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353874, 32.982239, 43.114960>,  <37.450531, 33.668846, 43.185932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353874, 32.982239, 43.114960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028370, 32.809574, 43.270630>,  <36.833065, 32.705975, 43.364033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028370, 32.809574, 43.270630>,  <37.353874, 32.982239, 43.114960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028370, 32.809574, 43.270630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490175, 0.149954, -0.858628,
		0.312282, -0.889482, -0.333618,
		-0.813762, -0.431665, 0.389174,
		36.784241, 32.680077, 43.387383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215672, 32.423401, 42.692337>,  <37.353874, 32.982239, 43.114960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215672, 32.423401, 42.692337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879845, 32.549736, 42.869141>,  <36.678349, 32.625538, 42.975224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879845, 32.549736, 42.869141>,  <37.215672, 32.423401, 42.692337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879845, 32.549736, 42.869141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394258, 0.205518, -0.895725,
		-0.373741, -0.926289, -0.048027,
		-0.839570, 0.315834, 0.442007,
		36.627972, 32.644485, 43.001743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686481, 32.083153, 42.358288>,  <37.215672, 32.423401, 42.692337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686481, 32.083153, 42.358288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487595, 32.378826, 42.540001>,  <36.368263, 32.556232, 42.649029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487595, 32.378826, 42.540001>,  <36.686481, 32.083153, 42.358288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487595, 32.378826, 42.540001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540076, 0.146099, -0.828838,
		-0.679038, -0.657463, 0.326574,
		-0.497218, 0.739187, 0.454287,
		36.338428, 32.600582, 42.676289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993843, 32.037945, 42.184792>,  <36.686481, 32.083153, 42.358288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993843, 32.037945, 42.184792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.007755, 32.424603, 42.286297>,  <36.016102, 32.656597, 42.347202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.007755, 32.424603, 42.286297>,  <35.993843, 32.037945, 42.184792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007755, 32.424603, 42.286297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667648, 0.211417, -0.713827,
		-0.743665, -0.144602, 0.652728,
		0.034777, 0.966640, 0.253766,
		36.018188, 32.714596, 42.362427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244423, 32.352798, 42.074821>,  <35.993843, 32.037945, 42.184792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244423, 32.352798, 42.074821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489750, 32.668381, 42.089756>,  <35.636948, 32.857731, 42.098717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489750, 32.668381, 42.089756>,  <35.244423, 32.352798, 42.074821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489750, 32.668381, 42.089756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503641, 0.427056, -0.750979,
		-0.608432, 0.441785, 0.659270,
		0.613316, 0.788955, 0.037333,
		35.673744, 32.905067, 42.100956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833569, 33.018612, 42.183064>,  <35.244423, 32.352798, 42.074821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833569, 33.018612, 42.183064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187237, 33.116486, 42.023876>,  <35.399437, 33.175209, 41.928364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187237, 33.116486, 42.023876>,  <34.833569, 33.018612, 42.183064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187237, 33.116486, 42.023876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466982, 0.486759, -0.738237,
		0.013081, 0.838569, 0.544638,
		0.884170, 0.244680, -0.397964,
		35.452488, 33.189888, 41.904488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766277, 33.695644, 41.927166>,  <34.833569, 33.018612, 42.183064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766277, 33.695644, 41.927166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102245, 33.583633, 41.741211>,  <35.303825, 33.516426, 41.629639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102245, 33.583633, 41.741211>,  <34.766277, 33.695644, 41.927166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102245, 33.583633, 41.741211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160046, 0.690708, -0.705201,
		0.518575, 0.666716, 0.535322,
		0.839920, -0.280023, -0.464889,
		35.354221, 33.499626, 41.601746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076878, 34.313305, 41.811974>,  <34.766277, 33.695644, 41.927166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076878, 34.313305, 41.811974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232349, 34.055069, 41.549026>,  <35.325634, 33.900127, 41.391258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232349, 34.055069, 41.549026>,  <35.076878, 34.313305, 41.811974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232349, 34.055069, 41.549026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307416, 0.581718, -0.753060,
		0.868575, 0.494786, 0.027636,
		0.388680, -0.645594, -0.657371,
		35.348953, 33.861389, 41.351814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336063, 34.758270, 41.317032>,  <35.076878, 34.313305, 41.811974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336063, 34.758270, 41.317032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341892, 34.403473, 41.132408>,  <35.345390, 34.190594, 41.021633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341892, 34.403473, 41.132408>,  <35.336063, 34.758270, 41.317032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341892, 34.403473, 41.132408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160613, 0.453536, -0.876646,
		0.986910, 0.086904, -0.135855,
		0.014569, -0.886991, -0.461557,
		35.346264, 34.137375, 40.993942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781029, 34.908810, 40.731895>,  <35.336063, 34.758270, 41.317032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781029, 34.908810, 40.731895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584831, 34.572063, 40.641846>,  <35.467113, 34.370018, 40.587814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584831, 34.572063, 40.641846>,  <35.781029, 34.908810, 40.731895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584831, 34.572063, 40.641846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010464, 0.252629, -0.967507,
		0.871383, -0.476910, -0.115103,
		-0.490492, -0.841864, -0.225127,
		35.437683, 34.319504, 40.574306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948483, 34.618191, 40.074543>,  <35.781029, 34.908810, 40.731895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948483, 34.618191, 40.074543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.599586, 34.423271, 40.091175>,  <35.390247, 34.306320, 40.101154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.599586, 34.423271, 40.091175>,  <35.948483, 34.618191, 40.074543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599586, 34.423271, 40.091175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231160, 0.335856, -0.913108,
		0.430994, -0.806064, -0.405592,
		-0.872244, -0.487301, 0.041578,
		35.337914, 34.277081, 40.103649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765911, 34.360004, 39.371563>,  <35.948483, 34.618191, 40.074543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765911, 34.360004, 39.371563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411407, 34.330166, 39.554424>,  <35.198708, 34.312263, 39.664143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411407, 34.330166, 39.554424>,  <35.765911, 34.360004, 39.371563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411407, 34.330166, 39.554424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437525, 0.458822, -0.773340,
		-0.152067, -0.885392, -0.439269,
		-0.886255, -0.074592, 0.457152,
		35.145531, 34.307789, 39.691570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234669, 34.083031, 38.888824>,  <35.765911, 34.360004, 39.371563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234669, 34.083031, 38.888824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066174, 34.323406, 39.160542>,  <34.965076, 34.467632, 39.323570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066174, 34.323406, 39.160542>,  <35.234669, 34.083031, 38.888824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066174, 34.323406, 39.160542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329818, 0.596208, -0.731954,
		-0.844856, -0.532367, -0.052944,
		-0.421234, 0.600934, 0.679294,
		34.939804, 34.503685, 39.364330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009117, 34.027443, 38.595921>,  <35.234669, 34.083031, 38.888824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009117, 34.027443, 38.595921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941051, 33.788471, 38.282459>,  <35.900211, 33.645088, 38.094383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941051, 33.788471, 38.282459>,  <36.009117, 34.027443, 38.595921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941051, 33.788471, 38.282459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620395, -0.682816, 0.385839,
		-0.765606, -0.420521, 0.486836,
		-0.170166, -0.597432, -0.783657,
		35.890003, 33.609241, 38.047363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947002, 33.290974, 38.790272>,  <36.009117, 34.027443, 38.595921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947002, 33.290974, 38.790272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096954, 33.310162, 38.419941>,  <36.186928, 33.321674, 38.197742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096954, 33.310162, 38.419941>,  <35.947002, 33.290974, 38.790272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096954, 33.310162, 38.419941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541853, -0.821660, 0.176836,
		-0.752236, -0.567957, -0.334017,
		0.374883, 0.047966, -0.925830,
		36.209419, 33.324551, 38.142193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702530, 32.736309, 38.550156>,  <35.947002, 33.290974, 38.790272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702530, 32.736309, 38.550156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060658, 32.840458, 38.405598>,  <36.275536, 32.902946, 38.318863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060658, 32.840458, 38.405598>,  <35.702530, 32.736309, 38.550156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060658, 32.840458, 38.405598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430110, -0.716281, 0.549497,
		-0.115790, -0.647416, -0.753289,
		0.895320, 0.260371, -0.361398,
		36.329254, 32.918568, 38.297176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977642, 32.096798, 38.118443>,  <35.702530, 32.736309, 38.550156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977642, 32.096798, 38.118443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271645, 32.323055, 38.268009>,  <36.448048, 32.458809, 38.357750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271645, 32.323055, 38.268009>,  <35.977642, 32.096798, 38.118443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271645, 32.323055, 38.268009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499190, -0.824601, 0.266163,
		0.458886, -0.008976, -0.888450,
		0.735006, 0.565643, 0.373917,
		36.492146, 32.492748, 38.380184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502430, 31.764858, 37.770695>,  <35.977642, 32.096798, 38.118443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502430, 31.764858, 37.770695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.562031, 31.947281, 38.121651>,  <36.597790, 32.056736, 38.332226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.562031, 31.947281, 38.121651>,  <36.502430, 31.764858, 37.770695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562031, 31.947281, 38.121651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438953, -0.825584, 0.354585,
		0.886069, 0.332300, -0.323199,
		0.148999, 0.456056, 0.877389,
		36.606731, 32.084099, 38.384869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100880, 31.494677, 37.869396>,  <36.502430, 31.764858, 37.770695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100880, 31.494677, 37.869396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978455, 31.637409, 38.222439>,  <36.904999, 31.723049, 38.434265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978455, 31.637409, 38.222439>,  <37.100880, 31.494677, 37.869396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978455, 31.637409, 38.222439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565640, -0.677553, 0.470078,
		0.765753, 0.643111, 0.005535,
		-0.306063, 0.356833, 0.882607,
		36.886635, 31.744459, 38.487221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699963, 31.518969, 38.413441>,  <37.100880, 31.494677, 37.869396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699963, 31.518969, 38.413441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388870, 31.533987, 38.664433>,  <37.202217, 31.542999, 38.815029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388870, 31.533987, 38.664433>,  <37.699963, 31.518969, 38.413441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388870, 31.533987, 38.664433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513059, -0.538837, 0.668151,
		0.363196, 0.841573, 0.399804,
		-0.777727, 0.037547, 0.627480,
		37.155552, 31.545252, 38.852676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946335, 31.619867, 39.041519>,  <37.699963, 31.518969, 38.413441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946335, 31.619867, 39.041519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587086, 31.495903, 39.166309>,  <37.371536, 31.421524, 39.241184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587086, 31.495903, 39.166309>,  <37.946335, 31.619867, 39.041519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587086, 31.495903, 39.166309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432938, -0.498864, 0.750799,
		-0.077051, 0.809375, 0.582215,
		-0.898125, -0.309913, 0.311972,
		37.317650, 31.402929, 39.259899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877686, 31.792479, 39.832451>,  <37.946335, 31.619867, 39.041519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877686, 31.792479, 39.832451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648983, 31.488148, 39.709660>,  <37.511761, 31.305550, 39.635983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648983, 31.488148, 39.709660>,  <37.877686, 31.792479, 39.832451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648983, 31.488148, 39.709660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328929, -0.555366, 0.763790,
		-0.751598, 0.335727, 0.567792,
		-0.571757, -0.760826, -0.306981,
		37.477455, 31.259899, 39.617565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475433, 31.575815, 40.471554>,  <37.877686, 31.792479, 39.832451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475433, 31.575815, 40.471554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450188, 31.263206, 40.223282>,  <37.435040, 31.075642, 40.074318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450188, 31.263206, 40.223282>,  <37.475433, 31.575815, 40.471554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450188, 31.263206, 40.223282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157885, -0.621902, 0.767014,
		-0.985439, -0.049586, 0.162642,
		-0.063114, -0.781524, -0.620675,
		37.431255, 31.028749, 40.037079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931458, 31.141733, 40.676502>,  <37.475433, 31.575815, 40.471554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931458, 31.141733, 40.676502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173977, 30.901161, 40.468395>,  <37.319489, 30.756817, 40.343529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173977, 30.901161, 40.468395>,  <36.931458, 31.141733, 40.676502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173977, 30.901161, 40.468395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153088, -0.553725, 0.818506,
		-0.780362, -0.575907, -0.243651,
		0.606299, -0.601431, -0.520271,
		37.355865, 30.720732, 40.312313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894890, 30.569042, 41.061447>,  <36.931458, 31.141733, 40.676502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894890, 30.569042, 41.061447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.190472, 30.439024, 40.825382>,  <37.367821, 30.361013, 40.683743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.190472, 30.439024, 40.825382>,  <36.894890, 30.569042, 41.061447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190472, 30.439024, 40.825382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466117, -0.385859, 0.796146,
		-0.486505, -0.863399, -0.133622,
		0.738951, -0.325045, -0.590167,
		37.412159, 30.341511, 40.648331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017891, 29.806572, 41.195705>,  <36.894890, 30.569042, 41.061447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017891, 29.806572, 41.195705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350677, 29.955301, 41.030983>,  <37.550350, 30.044538, 40.932148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350677, 29.955301, 41.030983>,  <37.017891, 29.806572, 41.195705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350677, 29.955301, 41.030983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546319, -0.419482, 0.724962,
		0.096813, -0.828120, -0.552129,
		0.831963, 0.371824, -0.411807,
		37.600266, 30.066849, 40.907440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509804, 29.245947, 41.086296>,  <37.017891, 29.806572, 41.195705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509804, 29.245947, 41.086296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.704643, 29.592535, 41.130058>,  <37.821545, 29.800488, 41.156315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.704643, 29.592535, 41.130058>,  <37.509804, 29.245947, 41.086296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704643, 29.592535, 41.130058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548715, -0.401080, 0.733516,
		0.679449, -0.297261, -0.670809,
		0.487094, 0.866470, 0.109402,
		37.850773, 29.852476, 41.162880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130665, 28.997303, 41.212765>,  <37.509804, 29.245947, 41.086296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130665, 28.997303, 41.212765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192295, 29.378654, 41.316559>,  <38.229275, 29.607466, 41.378838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192295, 29.378654, 41.316559>,  <38.130665, 28.997303, 41.212765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192295, 29.378654, 41.316559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614656, -0.298106, 0.730295,
		0.773601, 0.046976, -0.631930,
		0.154075, 0.953376, 0.259489,
		38.238518, 29.664667, 41.394405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901913, 29.135260, 41.276035>,  <38.130665, 28.997303, 41.212765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901913, 29.135260, 41.276035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741848, 29.429996, 41.494003>,  <38.645809, 29.606838, 41.624783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741848, 29.429996, 41.494003>,  <38.901913, 29.135260, 41.276035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741848, 29.429996, 41.494003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699612, -0.138453, 0.700981,
		0.591958, 0.661735, -0.460100,
		-0.400161, 0.736842, 0.544917,
		38.621799, 29.651049, 41.657478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472347, 29.342075, 41.668758>,  <38.901913, 29.135260, 41.276035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472347, 29.342075, 41.668758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154877, 29.488422, 41.863167>,  <38.964394, 29.576231, 41.979813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154877, 29.488422, 41.863167>,  <39.472347, 29.342075, 41.668758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154877, 29.488422, 41.863167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527826, 0.016947, 0.849184,
		0.302452, 0.930513, -0.206565,
		-0.793677, 0.365868, 0.486023,
		38.916775, 29.598183, 42.008972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790337, 29.760330, 42.107189>,  <39.472347, 29.342075, 41.668758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790337, 29.760330, 42.107189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422157, 29.696041, 42.249702>,  <39.201248, 29.657469, 42.335209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422157, 29.696041, 42.249702>,  <39.790337, 29.760330, 42.107189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422157, 29.696041, 42.249702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373311, -0.091458, 0.923187,
		-0.115790, 0.982753, 0.144182,
		-0.920452, -0.160720, 0.356283,
		39.146023, 29.647825, 42.356586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683590, 30.241713, 42.590942>,  <39.790337, 29.760330, 42.107189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683590, 30.241713, 42.590942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437801, 29.943083, 42.692966>,  <39.290329, 29.763905, 42.754181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437801, 29.943083, 42.692966>,  <39.683590, 30.241713, 42.590942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437801, 29.943083, 42.692966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476015, -0.093019, 0.874504,
		-0.629157, 0.658767, 0.412538,
		-0.614469, -0.746574, 0.255060,
		39.253460, 29.719110, 42.769485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435898, 30.399601, 43.255501>,  <39.683590, 30.241713, 42.590942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435898, 30.399601, 43.255501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380875, 30.006781, 43.203880>,  <39.347858, 29.771090, 43.172909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380875, 30.006781, 43.203880>,  <39.435898, 30.399601, 43.255501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380875, 30.006781, 43.203880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463215, -0.178952, 0.867991,
		-0.875505, 0.059623, 0.479517,
		-0.137563, -0.982050, -0.129055,
		39.339607, 29.712166, 43.165165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296452, 30.069313, 43.958553>,  <39.435898, 30.399601, 43.255501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296452, 30.069313, 43.958553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395813, 29.755920, 43.730709>,  <39.455429, 29.567884, 43.594002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395813, 29.755920, 43.730709>,  <39.296452, 30.069313, 43.958553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395813, 29.755920, 43.730709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570519, -0.356886, 0.739689,
		-0.782819, -0.508711, 0.358341,
		0.248401, -0.783483, -0.569606,
		39.470333, 29.520876, 43.559826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198509, 29.558748, 44.419361>,  <39.296452, 30.069313, 43.958553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198509, 29.558748, 44.419361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.421974, 29.398792, 44.128708>,  <39.556053, 29.302818, 43.954315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.421974, 29.398792, 44.128708>,  <39.198509, 29.558748, 44.419361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421974, 29.398792, 44.128708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681511, -0.277986, 0.676954,
		-0.472698, -0.873392, 0.117228,
		0.558658, -0.399888, -0.726630,
		39.589573, 29.278826, 43.910721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353218, 28.905331, 44.717110>,  <39.198509, 29.558748, 44.419361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353218, 28.905331, 44.717110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.614410, 28.988525, 44.425808>,  <39.771126, 29.038443, 44.251026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.614410, 28.988525, 44.425808>,  <39.353218, 28.905331, 44.717110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614410, 28.988525, 44.425808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750635, -0.305692, 0.585747,
		-0.100794, -0.929136, -0.355734,
		0.652983, 0.207986, -0.728254,
		39.810307, 29.050920, 44.207333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634689, 28.256832, 44.517803>,  <39.353218, 28.905331, 44.717110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634689, 28.256832, 44.517803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.891560, 28.550220, 44.428692>,  <40.045681, 28.726254, 44.375225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.891560, 28.550220, 44.428692>,  <39.634689, 28.256832, 44.517803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891560, 28.550220, 44.428692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747145, -0.533921, 0.395857,
		0.171404, -0.420656, -0.890881,
		0.642180, 0.733469, -0.222774,
		40.084213, 28.770262, 44.361858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203964, 27.916340, 44.233131>,  <39.634689, 28.256832, 44.517803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203964, 27.916340, 44.233131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.369877, 28.266260, 44.333279>,  <40.469425, 28.476212, 44.393368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.369877, 28.266260, 44.333279>,  <40.203964, 27.916340, 44.233131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369877, 28.266260, 44.333279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823960, -0.477839, 0.304566,
		0.386069, 0.079964, -0.918998,
		0.414778, 0.874801, 0.250365,
		40.494308, 28.528700, 44.408390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985031, 27.908953, 44.086597>,  <40.203964, 27.916340, 44.233131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.985031, 27.908953, 44.086597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937325, 28.221567, 44.331539>,  <40.908703, 28.409136, 44.478504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937325, 28.221567, 44.331539>,  <40.985031, 27.908953, 44.086597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.937325, 28.221567, 44.331539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759215, -0.325664, 0.563503,
		0.639819, 0.532116, -0.554513,
		-0.119264, 0.781534, 0.612356,
		40.901546, 28.456028, 44.515247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675919, 28.197899, 44.296291>,  <40.985031, 27.908953, 44.086597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.675919, 28.197899, 44.296291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433044, 28.330364, 44.585194>,  <41.287319, 28.409843, 44.758537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433044, 28.330364, 44.585194>,  <41.675919, 28.197899, 44.296291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433044, 28.330364, 44.585194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752267, -0.053024, 0.656722,
		0.255780, 0.942082, -0.216928,
		-0.607183, 0.331164, 0.722260,
		41.250889, 28.429714, 44.801872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.052654, 28.592823, 44.606010>,  <41.675919, 28.197899, 44.296291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.052654, 28.592823, 44.606010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.779881, 28.477076, 44.874702>,  <41.616215, 28.407627, 45.035919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.779881, 28.477076, 44.874702>,  <42.052654, 28.592823, 44.606010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.779881, 28.477076, 44.874702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730765, -0.308110, 0.609140,
		0.030701, 0.906274, 0.421573,
		-0.681939, -0.289370, 0.671733,
		41.575298, 28.390265, 45.076221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.343128, 28.801281, 45.220993>,  <42.052654, 28.592823, 44.606010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.343128, 28.801281, 45.220993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.065739, 28.528561, 45.314152>,  <41.899303, 28.364929, 45.370049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.065739, 28.528561, 45.314152>,  <42.343128, 28.801281, 45.220993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.065739, 28.528561, 45.314152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604039, -0.373983, 0.703757,
		-0.392722, 0.628717, 0.671182,
		-0.693474, -0.681801, 0.232898,
		41.857697, 28.324020, 45.384022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.813328, 29.228247, 45.656727>,  <42.343128, 28.801281, 45.220993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.813328, 29.228247, 45.656727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.172825, 29.195652, 45.484386>,  <43.388523, 29.176094, 45.380981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.172825, 29.195652, 45.484386>,  <42.813328, 29.228247, 45.656727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.172825, 29.195652, 45.484386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406096, 0.215943, -0.887950,
		0.165395, 0.973000, 0.160984,
		0.898738, -0.081488, -0.430847,
		43.442448, 29.171206, 45.355133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.003048, 29.839621, 45.222057>,  <42.813328, 29.228247, 45.656727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.003048, 29.839621, 45.222057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.265556, 29.577850, 45.071835>,  <43.423061, 29.420788, 44.981701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.265556, 29.577850, 45.071835>,  <43.003048, 29.839621, 45.222057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.265556, 29.577850, 45.071835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183396, 0.344460, -0.920714,
		0.731901, 0.673110, 0.106039,
		0.656268, -0.654424, -0.375556,
		43.462437, 29.381523, 44.959167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.391113, 30.174545, 44.745064>,  <43.003048, 29.839621, 45.222057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.391113, 30.174545, 44.745064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.438072, 29.792362, 44.636753>,  <43.466248, 29.563053, 44.571766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.438072, 29.792362, 44.636753>,  <43.391113, 30.174545, 44.745064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.438072, 29.792362, 44.636753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050751, 0.266536, -0.962488,
		0.991787, 0.126739, -0.017199,
		0.117400, -0.955456, -0.270780,
		43.473293, 29.505726, 44.555519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.816113, 30.227093, 44.169628>,  <43.391113, 30.174545, 44.745064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.816113, 30.227093, 44.169628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.663002, 29.858490, 44.143398>,  <43.571136, 29.637327, 44.127659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.663002, 29.858490, 44.143398>,  <43.816113, 30.227093, 44.169628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.663002, 29.858490, 44.143398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194398, 0.149735, -0.969427,
		0.903155, -0.358330, -0.236455,
		-0.382780, -0.921509, -0.065575,
		43.548168, 29.582037, 44.123726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.986279, 30.043169, 43.496681>,  <43.816113, 30.227093, 44.169628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.986279, 30.043169, 43.496681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.693508, 29.788483, 43.593739>,  <43.517845, 29.635672, 43.651974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.693508, 29.788483, 43.593739>,  <43.986279, 30.043169, 43.496681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.693508, 29.788483, 43.593739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219810, -0.116433, -0.968570,
		0.644956, -0.762257, -0.054736,
		-0.731926, -0.636716, 0.242646,
		43.473930, 29.597467, 43.666531>
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
